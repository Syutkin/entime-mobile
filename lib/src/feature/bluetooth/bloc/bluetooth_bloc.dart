import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart' hide LogLevel;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';
import '../../audio/audio.dart';
import '../../database/drift/app_database.dart';
import '../../database/model/automatic_start.dart';
import '../../log/log.dart';
import '../../settings/settings.dart';
import '../bluetooth.dart';
import '../logic/bluetooth_protocol_parser.dart';

part 'bluetooth_bloc.freezed.dart';
part 'bluetooth_bloc_event.dart';
part 'bluetooth_bloc_state.dart';

// _handleConnect runs in background and reports the outcome back to the event
// handler, so connection code does not dispatch bloc events directly.
enum _ConnectResult { connected, disconnected, stale, canceled }

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothBlocState> {
  BluetoothBloc({
    required IBluetoothProvider bluetoothProvider,
    required this._database,
    required this._audioController,
    required this._settingsProvider,
  }) : _bluetoothProvider = bluetoothProvider,
       super(const BluetoothBlocState.notInitialized()) {
    _settingsSubscription = _settingsProvider.state.listen((state) {
      _reconnect = state.reconnect;
      _stageId = state.stageId;
    });

    _btStateSubscription = bluetoothProvider.adapterState.listen((btState) {
      if (btState == BluetoothAdapterState.off || btState == BluetoothAdapterState.on) {
        if (!_canAddEvents) return;
        add(const BluetoothEvent.initialize());
      }
    });

    on<BluetoothEvent>(transformer: sequential(), (event, emit) async {
      switch (event) {
        case _Initialize():
          final isSupported = await bluetoothProvider.isSupported;
          if (isSupported) {
            final isEnabled = await bluetoothProvider.isOn;
            if (isEnabled) {
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
            } else {
              emit(const BluetoothBlocState.notEnabled());
            }
          } else {
            emit(const BluetoothBlocState.notAvailable());
          }
        case _Enable():
          await bluetoothProvider.requestEnable();
          add(const BluetoothEvent.initialize());
        case _SelectDevice():
          _reconnectActive = false;
          _cancelReconnectTimer();
          final device = event.device;
          if (device != null) {
            // Если выбран новый блютусдевайс
            if (_bluetoothDevice == null || device.remoteId != _bluetoothDevice!.remoteId) {
              // Отменяем подписки и останавливаем соединение (если было)
              await _messageSubscription?.cancel();
              await _batterySubscription?.cancel();
              await bluetoothProvider.bluetoothBackgroundConnection.stop();
              // Если девайс выбран - обновляем
              _bluetoothDevice = device;
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
              logger.i('Bluetooth -> Device selected ${_bluetoothDevice?.platformName}');
              add(BluetoothEvent.connect(selectedDevice: device));
              // Если девайс равен предыдущему:
              // Если девайс отключён и доступен - соединяемся
            } else {
              switch (state) {
                case BluetoothBlocStateDisconnected():
                  add(BluetoothEvent.connect(selectedDevice: device));
                default:
              }
            }
          }
        case _Connected():
          _cancelReconnectTimer();
          //Успешное соединение
          emit(BluetoothBlocState.connected(batteryLevel: _batteryLevel));
          logger.i('Bluetooth -> Connected');
          _reconnectActive = false;
        case _Connect():
          // Соединяемся
          _bluetoothDevice = event.selectedDevice;
          final device = event.selectedDevice;
          if (device != null) {
            final attempt = ++_connectAttempt;
            // Состояние соединения
            emit(const BluetoothBlocState.connecting());
            // Не await-им подключение: иначе sequential() заблокирует disconnect,
            // selectDevice и новые connect-события до завершения connect().
            unawaited(
              _handleConnect(device, attempt).then((result) {
                switch (result) {
                  case _ConnectResult.canceled:
                    return;
                  case _ConnectResult.connected:
                    if (!_canAddEvents) return;
                    add(const BluetoothEvent.connected());
                  case _ConnectResult.disconnected:
                    if (!_canAddEvents) return;
                    if (state is! BluetoothBlocStateDisconnected) {
                      add(const BluetoothEvent.disconnected());
                    }
                    _scheduleReconnect();
                  case _ConnectResult.stale:
                    if (!_canAddEvents) return;
                    if (state is! BluetoothBlocStateDisconnected) {
                      add(const BluetoothEvent.disconnected());
                    }
                }
              }),
            );
          }
        case _Disconnect():
          _reconnectActive = false;
          _cancelReconnectTimer();
          logger.i('Bluetooth -> Disconnecting...');
          switch (state) {
            case BluetoothBlocStateConnected():
              emit(const BluetoothBlocState.disconnecting());
              add(const BluetoothEvent.disconnected());
            case BluetoothBlocStateConnecting():
              _connectAttempt++;
              await _messageSubscription?.cancel();
              await _batterySubscription?.cancel();
              await bluetoothProvider.bluetoothBackgroundConnection.stop();
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
            default:
          }

        case _Disconnected():
          await _messageSubscription?.cancel();
          await _batterySubscription?.cancel();
          await bluetoothProvider.bluetoothBackgroundConnection.stop();
          _batteryLevel = null;
          // Если перед разъединением было состояние DisconnectingState,
          // то соединение было закрыто локально.
          // Если же состояние было другим, то соединение было закрыто удалённо.

          switch (state) {
            case BluetoothBlocStateConnected():
              logger.i('Bluetooth -> Disconnected remotely');
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
              if (_reconnect) {
                _reconnectActive = true;
                add(BluetoothEvent.connect(selectedDevice: _bluetoothDevice));
              }
            case BluetoothBlocStateDisconnecting():
              logger.i('Bluetooth -> Disconnected locally');
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
            default:
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
          }

        case _MessageReceived():
          //Пришло сообщение из Bluetooth serial
          final now = DateTime.now();
          logger.i('Bluetooth -> Received message: ${event.message}, time: $now');
          final message = await _parseBT(event.message, now);

          switch (message) {
            case BluetoothMessageAutomaticStart():
              emit(BluetoothBlocState.connected(message: message, batteryLevel: _batteryLevel));
            case BluetoothMessageFinish():
              emit(BluetoothBlocState.connected(message: message, batteryLevel: _batteryLevel));
            case BluetoothMessageCountdown(time: final countdown):
              // Запускаем звуковой обратный отсчёт только если не используем
              // время из приложения
              if (!_settingsProvider.settings.beepFromApp) {
                final stageId = event.stageId;
                await _audioController.playCountdown(time: countdown, stageId: stageId);
              }
            case BluetoothMessageVoice(:final time):
              // Вызываем участника голосом только если не используем
              // время из приложения
              if (!_settingsProvider.settings.voiceFromApp) {
                final stageId = event.stageId;
                await _audioController.callParticipant(time: time, stageId: stageId);
              }
            case BluetoothMessageJsonEvent():
              emit(BluetoothBlocState.connected(message: message, batteryLevel: _batteryLevel));
            case BluetoothMessageJsonResponse():
              emit(BluetoothBlocState.connected(message: message, batteryLevel: _batteryLevel));
            case BluetoothMessageEmpty():
          }

        case _BatteryLevelUpdated():
          if (_batteryLevel == event.level) {
            return;
          }
          _batteryLevel = event.level;
          switch (state) {
            case BluetoothBlocStateConnected(:final message):
              emit(BluetoothBlocState.connected(message: message, batteryLevel: _batteryLevel));
            default:
          }

        case _SendMessage():
          //Отправлено соообщение в Bluetooth serial
          logger.i('Bluetooth -> Sent message: ${event.message}');
          final isMessageSended = await bluetoothProvider.bluetoothBackgroundConnection.sendMessage(event.message);
          if (isMessageSended) {
            await _database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: event.message,
            );
          }
      }
    });
  }

  final IBluetoothProvider _bluetoothProvider;

  final AppDatabase _database;
  final IAudioController _audioController;
  final ISettingsProvider _settingsProvider;
  final BluetoothProtocolParser _protocolParser = const BluetoothProtocolParser();

  BluetoothDevice? _bluetoothDevice;
  int _connectAttempt = 0;

  bool _reconnect = true;
  bool _reconnectActive = false;
  final int _reconnectDelay = 1;
  Timer? _reconnectTimer;
  // isClosed станет true только после super.close(), а async callbacks могут
  // проснуться в промежутке между началом close() и закрытием bloc.
  bool _isClosing = false;

  int _stageId = -1;

  StreamSubscription<String>? _messageSubscription;
  StreamSubscription<int>? _batterySubscription;
  int? _batteryLevel;

  late StreamSubscription<AppSettings> _settingsSubscription;

  late StreamSubscription<BluetoothAdapterState> _btStateSubscription;

  BluetoothDevice? get bluetoothDevice => _bluetoothDevice;

  IBluetoothProvider get bluetoothProvider => _bluetoothProvider;

  // Любой callback снаружи очереди bloc обязан проверить это перед add().
  bool get _canAddEvents => !_isClosing && !isClosed;

  @override
  Future<void> close() async {
    // Делаем текущие pending connect-попытки неактуальными до отмены подписок.
    _isClosing = true;
    _reconnectActive = false;
    _connectAttempt++;
    _cancelReconnectTimer();
    await _messageSubscription?.cancel();
    await _batterySubscription?.cancel();
    await _btStateSubscription.cancel();
    await _settingsSubscription.cancel();
    await _bluetoothProvider.dispose();
    return super.close();
  }

  void _cancelReconnectTimer() {
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
  }

  void _scheduleReconnect() {
    if (!_reconnectActive || !_canAddEvents) return;

    // Timer храним явно, чтобы отменять reconnect при close(), disconnect(),
    // выборе устройства и успешном подключении.
    _cancelReconnectTimer();
    _reconnectTimer = Timer(Duration(seconds: _reconnectDelay), () {
      _reconnectTimer = null;
      if (!_canAddEvents) return;
      add(BluetoothEvent.connect(selectedDevice: _bluetoothDevice));
    });
  }

  Future<BluetoothMessage> _parseBT(String message, DateTime now) async {
    final parsedMessage = message;
    await _database.addLog(
      level: LogLevel.information,
      source: LogSource.bluetooth,
      direction: LogSourceDirection.input,
      rawData: parsedMessage,
    );
    final protocolMessage = _protocolParser.parse(parsedMessage);
    switch (protocolMessage) {
      case BluetoothProtocolPacketMessage(
        type: BluetoothProtocolPacketType.start,
        :final raw,
        :final time,
        :final correction,
      ):
        if (correction == null) {
          logger.i('Bluetooth -> Start packet without correction: $raw');
        } else {
          logger.d('Bluetooth -> correction: $correction');
        }
        logger.d('Bluetooth -> gotime: $time');
        final automaticStart = AutomaticStart(
          time,
          correction,
          now,
          // Проверяем обновлять или нет в HomeScreen BlocListener
          // ignore: avoid_redundant_argument_values
          updating: false,
        );
        return BluetoothMessage.automaticStart(automaticStart: automaticStart);
      case BluetoothProtocolPacketMessage(
        type: BluetoothProtocolPacketType.beep,
        :final time,
      ):
        logger.t('Bluetooth -> Message parsed: beep: $time');
        return BluetoothMessage.countdown(time: time);
      case BluetoothProtocolPacketMessage(
        type: BluetoothProtocolPacketType.voice,
        :final time,
      ):
        logger.t('Bluetooth -> Message parsed: speak: $time');
        return BluetoothMessage.voice(time: time);
      case BluetoothProtocolPacketMessage(
        type: BluetoothProtocolPacketType.finish,
        :final time,
      ):
        logger.t('Bluetooth -> Message parsed: finish: $time');
        return BluetoothMessage.finish(time: time, timestamp: now);
      case BluetoothProtocolJsonCommandMessage():
        logger.i('Bluetooth -> Received JSON command from module: $parsedMessage');
        return const BluetoothMessage.empty();
      case BluetoothProtocolJsonEventMessage(:final event):
        logger.i('Bluetooth -> Parsing JSON event...');
        return BluetoothMessage.jsonEvent(event: event, rawJson: parsedMessage);
      case BluetoothProtocolJsonResponseMessage(:final response):
        logger.i('Bluetooth -> Parsing JSON response...');
        return BluetoothMessage.jsonResponse(response: response, rawJson: parsedMessage);
      case BluetoothProtocolUnknownMessage():
        logger.e('Bluetooth -> Cannot parse data: $parsedMessage');
        return const BluetoothMessage.empty();
    }
  }

  // Этот метод может завершиться после close() или после новой connect-попытки.
  // Поэтому он возвращает результат, а не вызывает add() сам.
  Future<_ConnectResult> _handleConnect(BluetoothDevice device, int attempt) async {
    await bluetoothProvider.bluetoothBackgroundConnection.connect(device);
    if (!_canAddEvents) return _ConnectResult.canceled;

    // Пока connect ждал, пользователь мог выбрать другое устройство или
    // стартовать новую попытку. Старую попытку надо остановить.
    if (attempt != _connectAttempt) {
      await bluetoothProvider.bluetoothBackgroundConnection.stop();
      if (!_canAddEvents) return _ConnectResult.canceled;
      return _ConnectResult.stale;
    }

    if (bluetoothProvider.bluetoothBackgroundConnection.isConnected) {
      logger.i('Bluetooth -> Connecting...');
      // Если соединение успешно, запускаем сборщик поступающих сообщений
      await bluetoothProvider.bluetoothBackgroundConnection.start();
      if (!_canAddEvents) return _ConnectResult.canceled;

      // и подписываемся на его события (поступающие сообщения)
      await _batterySubscription?.cancel();
      if (!_canAddEvents) return _ConnectResult.canceled;

      _batterySubscription = bluetoothProvider.bluetoothBackgroundConnection.batteryLevel.listen(
        (level) {
          if (!_canAddEvents) return;
          add(BluetoothEvent.batteryLevelUpdated(level: level));
        },
      );
      _messageSubscription = bluetoothProvider.bluetoothBackgroundConnection.message.listen(
        (message) {
          if (!_canAddEvents) return;
          add(BluetoothEvent.messageReceived(message: message, stageId: _stageId));
        },
      );
      bluetoothProvider.bluetoothBackgroundConnection.onDisconnect(() {
        if (!_canAddEvents) return;
        add(const BluetoothEvent.disconnected());
      });
      return _ConnectResult.connected;
    } else {
      logger.i("Bluetooth -> Can't connect");
      return _ConnectResult.disconnected;
    }
  }
}
