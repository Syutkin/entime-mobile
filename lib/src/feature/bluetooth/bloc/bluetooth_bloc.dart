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

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothBlocState> {
  BluetoothBloc({
    required IBluetoothProvider bluetoothProvider,
    required AppDatabase database,
    required IAudioController audioController,
    required ISettingsProvider settingsProvider,
  }) : _bluetoothProvider = bluetoothProvider,
       _database = database,
       _audioController = audioController,
       _settingsProvider = settingsProvider,
       super(const BluetoothBlocState.notInitialized()) {
    _settingsSubscription = _settingsProvider.state.listen((state) {
      _reconnect = state.reconnect;
      _stageId = state.stageId;
    });

    _btStateSubscription = bluetoothProvider.adapterState.listen((btState) {
      if (btState == BluetoothAdapterState.off || btState == BluetoothAdapterState.on) {
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
          final device = event.deviceWithRssi;
          if (device != null) {
            // Если выбран новый блютусдевайс
            if (_bluetoothDevice == null || device.device.remoteId != _bluetoothDevice!.remoteId) {
              // Отменяем подписки и останавливаем соединение (если было)
              await _messageSubscription?.cancel();
              await bluetoothProvider.bluetoothBackgroundConnection.stop();
              // Если девайс выбран - обновляем
              _bluetoothDevice = device.device;
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
              logger.i('Bluetooth -> Device selected ${_bluetoothDevice?.platformName}');
              add(BluetoothEvent.connect(selectedDevice: device.device));
              // Если девайс равен предыдущему:
              // Если девайс отключён и доступен - соединяемся
            } else {
              switch (state) {
                case BluetoothBlocStateDisconnected():
                  add(BluetoothEvent.connect(selectedDevice: device.device));
                default:
              }
            }
          }
        case _Connected():
          //Успешное соединение
          emit(const BluetoothBlocState.connected());
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
            unawaited(_handleConnect(device, attempt));
          }
        case _Disconnect():
          _reconnectActive = false;
          logger.i('Bluetooth -> Disconnecting...');
          switch (state) {
            case BluetoothBlocStateConnected():
              emit(const BluetoothBlocState.disconnecting());
              add(const BluetoothEvent.disconnected());
            case BluetoothBlocStateConnecting():
              _connectAttempt++;
              await _messageSubscription?.cancel();
              await bluetoothProvider.bluetoothBackgroundConnection.stop();
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
            default:
          }

        case _Disconnected():
          await _messageSubscription?.cancel();
          await bluetoothProvider.bluetoothBackgroundConnection.stop();
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
              emit(BluetoothBlocState.connected(message: message));
            case BluetoothMessageFinish():
              emit(BluetoothBlocState.connected(message: message));
            case BluetoothMessageCountdown(time: final countdown):
              // Запускаем звуковой обратный отсчёт только если не используем
              // время из приложения
              if (!_settingsProvider.settings.beepFromApp) {
                final stageId = event.stageId;
                await _audioController.playCountdown(time: countdown, stageId: stageId);
              }
            case BluetoothMessageVoice(time: final time):
              // Вызываем участника голосом только если не используем
              // время из приложения
              if (!_settingsProvider.settings.voiceFromApp) {
                final stageId = event.stageId;
                await _audioController.callParticipant(time: time, stageId: stageId);
              }
            case BluetoothMessageJsonEvent():
              emit(BluetoothBlocState.connected(message: message));
            case BluetoothMessageJsonResponse():
              emit(BluetoothBlocState.connected(message: message));
            case BluetoothMessageEmpty():
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

  int _stageId = -1;

  StreamSubscription<String>? _messageSubscription;

  late StreamSubscription<AppSettings> _settingsSubscription;

  late StreamSubscription<BluetoothAdapterState> _btStateSubscription;

  BluetoothDevice? get bluetoothDevice => _bluetoothDevice;

  IBluetoothProvider get bluetoothProvider => _bluetoothProvider;

  @override
  Future<void> close() async {
    await _messageSubscription?.cancel();
    await _btStateSubscription.cancel();
    await _settingsSubscription.cancel();
    await _bluetoothProvider.dispose();
    return super.close();
  }

  Future<BluetoothMessage> _parseBT(String message, DateTime now) async {
    final parsedMessage = message;
    await _database.addLog(
      level: LogLevel.information,
      source: LogSource.bluetooth,
      direction: LogSourceDirection.output,
      rawData: parsedMessage,
    );
    final protocolMessage = _protocolParser.parse(parsedMessage);
    switch (protocolMessage) {
      case BluetoothProtocolPacketMessage(
        type: BluetoothProtocolPacketType.start,
        raw: final raw,
        time: final time,
        correction: final correction,
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
        time: final time,
      ):
        logger.t('Bluetooth -> Message parsed: beep: $time');
        return BluetoothMessage.countdown(time: time);
      case BluetoothProtocolPacketMessage(
        type: BluetoothProtocolPacketType.voice,
        time: final time,
      ):
        logger.t('Bluetooth -> Message parsed: speak: $time');
        return BluetoothMessage.voice(time: time);
      case BluetoothProtocolPacketMessage(
        type: BluetoothProtocolPacketType.finish,
        time: final time,
      ):
        logger.t('Bluetooth -> Message parsed: finish: $time');
        return BluetoothMessage.finish(time: time, timestamp: now);
      case BluetoothProtocolJsonCommandMessage():
        logger.i('Bluetooth -> Received JSON command from module: $parsedMessage');
        return const BluetoothMessage.empty();
      case BluetoothProtocolJsonEventMessage(event: final event):
        logger.i('Bluetooth -> Parsing JSON event...');
        return BluetoothMessage.jsonEvent(event: event, rawJson: parsedMessage);
      case BluetoothProtocolJsonResponseMessage(response: final response):
        logger.i('Bluetooth -> Parsing JSON response...');
        return BluetoothMessage.jsonResponse(response: response, rawJson: parsedMessage);
      case BluetoothProtocolUnknownMessage():
        logger.e('Bluetooth -> Cannot parse data: $parsedMessage');
        return const BluetoothMessage.empty();
    }
  }

  Future<void> _handleConnect(BluetoothDevice device, int attempt) async {
    await bluetoothProvider.bluetoothBackgroundConnection.connect(device);
    if (attempt != _connectAttempt) {
      await bluetoothProvider.bluetoothBackgroundConnection.stop();
      if (state is! BluetoothBlocStateDisconnected) {
        add(const BluetoothEvent.disconnected());
      }
      return;
    }
    if (bluetoothProvider.bluetoothBackgroundConnection.isConnected) {
      add(const BluetoothEvent.connected());
      logger.i('Bluetooth -> Connecting...');
      // Если соединение успешно, запускаем сборщик поступающих сообщений
      await bluetoothProvider.bluetoothBackgroundConnection.start();
      // и подписываемся на его события (поступающие сообщения)
      _messageSubscription = bluetoothProvider.bluetoothBackgroundConnection.message.listen(
        (message) => add(BluetoothEvent.messageReceived(message: message, stageId: _stageId)),
      );
      bluetoothProvider.bluetoothBackgroundConnection.onDisconnect(() {
        add(const BluetoothEvent.disconnected());
      });
    } else {
      logger.i("Bluetooth -> Can't connect");
      if (state is! BluetoothBlocStateDisconnected) {
        add(const BluetoothEvent.disconnected());
      }
      if (_reconnectActive) {
        Timer(
          Duration(seconds: _reconnectDelay),
          () => add(BluetoothEvent.connect(selectedDevice: _bluetoothDevice)),
        );
      }
    }
  }
}
