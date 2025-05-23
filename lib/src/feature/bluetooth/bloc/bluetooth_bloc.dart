import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';
import '../../audio/audio.dart';
import '../../database/drift/app_database.dart';
import '../../database/model/automatic_start.dart';
import '../../log/log.dart';
import '../../settings/settings.dart';
import '../bluetooth.dart';

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

    _btStateSubscription = bluetoothProvider.flutterBluetoothSerial.onStateChanged().listen((btState) {
      if (btState == BluetoothState.STATE_OFF || btState == BluetoothState.STATE_ON) {
        add(const BluetoothEvent.initialize());
      }
    });

    on<BluetoothEvent>(transformer: sequential(), (event, emit) async {
      switch (event) {
        case _Initialize():
          final isAvailable = await bluetoothProvider.flutterBluetoothSerial.isAvailable ?? false;
          if (isAvailable) {
            final isEnabled = await bluetoothProvider.flutterBluetoothSerial.isEnabled ?? false;
            if (isEnabled) {
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
            } else {
              emit(const BluetoothBlocState.notEnabled());
            }
          } else {
            emit(const BluetoothBlocState.notAvailable());
          }
        case _Enable():
          await bluetoothProvider.flutterBluetoothSerial.requestEnable();
          add(const BluetoothEvent.initialize());
        case _SelectDevice():
          _reconnectActive = false;
          final device = event.deviceWithAvailability;
          if (device != null) {
            // Если выбран новый блютусдевайс
            if (device.device != _bluetoothDevice) {
              // Отменяем подписки и останавливаем соединение (если было)
              await _messageSubscription?.cancel();
              await bluetoothProvider.bluetoothBackgroundConnection.stop();
              // Если девайс выбран - обновляем
              _bluetoothDevice = device.device;
              emit(BluetoothBlocState.disconnected(bluetoothDevice: _bluetoothDevice));
              logger.i('Bluetooth -> Device selected ${_bluetoothDevice?.name}');
              // Если девайс доступен - соединяемся
              if (device.availability == BluetoothDeviceAvailability.yes) {
                add(BluetoothEvent.connect(selectedDevice: device.device));
              }
              // Если девайс равен предыдущему:
              // Если девайс отключён и доступен - соединяемся
            } else {
              switch (state) {
                case BluetoothBlocStateDisconnected():
                  if (device.availability == BluetoothDeviceAvailability.yes) {
                    add(BluetoothEvent.connect(selectedDevice: device.device));
                  }
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
            // Состояние соединения
            emit(const BluetoothBlocState.connecting());
            await bluetoothProvider.bluetoothBackgroundConnection.connect(device);
            if (bluetoothProvider.bluetoothBackgroundConnection.isConnected) {
              // Запускаем событие 'соединён'
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
              emit(BluetoothBlocState.disconnected(bluetoothDevice: event.selectedDevice));
              if (_reconnectActive) {
                Timer(
                  Duration(seconds: _reconnectDelay),
                  () => add(BluetoothEvent.connect(selectedDevice: _bluetoothDevice)),
                );
              }
            }
          }
        case _Disconnect():
          _reconnectActive = false;
          logger.i('Bluetooth -> Disconnecting...');
          switch (state) {
            case BluetoothBlocStateConnected():
              emit(const BluetoothBlocState.disconnecting());
              add(const BluetoothEvent.disconnected());
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
          final message = _parseBT(event.message, now);

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
            case BluetoothMessageModuleSettings():
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

  BluetoothDevice? _bluetoothDevice;

  bool _reconnect = true;
  bool _reconnectActive = false;
  final int _reconnectDelay = 1;

  int _stageId = -1;

  StreamSubscription<String>? _messageSubscription;

  late StreamSubscription<AppSettings> _settingsSubscription;

  late StreamSubscription<BluetoothState> _btStateSubscription;

  BluetoothDevice? get bluetoothDevice => _bluetoothDevice;

  IBluetoothProvider get bluetoothProvider => _bluetoothProvider;

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    _btStateSubscription.cancel();
    _settingsSubscription.cancel();
    _bluetoothProvider.dispose();
    return super.close();
  }

  BluetoothMessage _parseBT(String message, DateTime now) {
    var parsedMessage = message;
    _database.addLog(
      level: LogLevel.information,
      source: LogSource.bluetooth,
      direction: LogSourceDirection.output,
      rawData: parsedMessage,
    );
    if (parsedMessage.startsWith(r'$') && parsedMessage.endsWith('#')) {
      try {
        parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
        final messageList = parsedMessage.split(';');
        final correction = int.parse(messageList[1]);
        logger
          ..d('Bluetooth -> correction: $correction')
          ..d('Bluetooth -> gotime: ${messageList.first}');
        final automaticStart = AutomaticStart(
          messageList.first,
          correction,
          now,
          // Проверяем обновлять или нет в HomeScreen BlocListener
          // ignore: avoid_redundant_argument_values
          updating: false,
        );
        return BluetoothMessage.automaticStart(automaticStart: automaticStart);
      } on Exception catch (e) {
        logger.e('Bluetooth -> Something wrong with parsing Bluetooth packet $parsedMessage', error: e);
        return const BluetoothMessage.empty();
      } catch (e) {
        logger.e('Bluetooth -> Something wrong with parsing Bluetooth packet $parsedMessage', error: e);
        return const BluetoothMessage.empty();
      }
    } else if (parsedMessage.startsWith('B') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.t('Bluetooth -> Message parsed: beep: $parsedMessage');
      return BluetoothMessage.countdown(time: parsedMessage);
    } else if (parsedMessage.startsWith('V') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.t('Bluetooth -> Message parsed: speak: $parsedMessage');
      return BluetoothMessage.voice(time: parsedMessage);
    } else if (parsedMessage.startsWith('F') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.t('Bluetooth -> Message parsed: finish: $parsedMessage');
      return BluetoothMessage.finish(time: parsedMessage, timestamp: now);
    } else if (parsedMessage.startsWith('{') && parsedMessage.endsWith('}')) {
      logger.i('Bluetooth -> Parsing JSON...');
      return BluetoothMessage.moduleSettings(json: parsedMessage);
    } else {
      logger.e('Bluetooth -> Cannot parse data: $parsedMessage');
      return const BluetoothMessage.empty();
    }
  }
}
