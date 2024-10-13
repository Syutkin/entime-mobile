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
  final IBluetoothProvider bluetoothProvider;

  // final IProtocolProvider protocolProvider;
  // final ILogProvider logProvider;
  final AppDatabase database;
  final IAudioController audioController;
  final SettingsProvider settingsProvider;

  BluetoothDevice? _bluetoothDevice;

  bool _reconnect = true;
  bool _reconnectActive = false;
  final int _reconnectDelay = 1;

  bool _isEnabled = false;

  int _stageId = -1;

  StreamSubscription<String>? _messageSubscription;

  BluetoothDevice? get bluetoothDevice => _bluetoothDevice;

  BluetoothBloc({
    required this.settingsProvider,
    // required this.logProvider,
    required this.audioController,
    required this.bluetoothProvider,
    // required this.protocolProvider,
    required this.database,
  }) : super(const BluetoothBlocState.notInitialized()) {
    settingsProvider.state.listen((state) {
      _reconnect = state.reconnect;
      _stageId = state.stageId;
    });

    on<BluetoothEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        initialize: (event) async {
          _isEnabled =
              await bluetoothProvider.flutterBluetoothSerial.isEnabled ?? false;
          _isEnabled
              ? emit(
                  BluetoothBlocState.disconnected(
                    bluetoothDevice: _bluetoothDevice,
                  ),
                )
              : emit(const BluetoothBlocState.notEnabled());
        },
        enable: (event) async {
          await bluetoothProvider.flutterBluetoothSerial.requestEnable();
          add(const BluetoothEvent.initialize());
        },
        disable: (event) async {
          await bluetoothProvider.flutterBluetoothSerial.requestDisable();
          add(const BluetoothEvent.initialize());
        },
        selectDevice: (event) async {
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
              emit(
                BluetoothBlocState.disconnected(
                  bluetoothDevice: _bluetoothDevice,
                ),
              );
              logger.i(
                'Bluetooth -> Device selected ${_bluetoothDevice?.name}',
              );
              // Если девайс доступен - соединяемся
              if (device.availability == BluetoothDeviceAvailability.yes) {
                add(
                  BluetoothEvent.connect(
                    selectedDevice: device.device,
                  ),
                );
              }
              // Если девайс равен предыдущему:
              // Если девайс отключён и доступен - соединяемся
            } else {
              state.mapOrNull(
                disconnected: (state) {
                  if (device.availability == BluetoothDeviceAvailability.yes) {
                    add(
                      BluetoothEvent.connect(
                        selectedDevice: device.device,
                      ),
                    );
                  }
                },
              );
            }
          }
        },
        connected: (event) {
          //Успешное соединение
          emit(const BluetoothBlocState.connected());
          logger.i('Bluetooth -> Connected');
          _reconnectActive = false;
        },
        connect: (event) async {
          // Соединяемся
          _bluetoothDevice = event.selectedDevice;
          final device = event.selectedDevice;
          if (device != null) {
            // Состояние соединения
            emit(const BluetoothBlocState.connecting());
            await bluetoothProvider.bluetoothBackgroundConnection
                .connect(device);
            if (bluetoothProvider.bluetoothBackgroundConnection.isConnected) {
              // Запускаем событие 'соединён'
              add(const BluetoothEvent.connected());
              logger.i('Bluetooth -> Connecting...');
              // Если соединение успешно, запускаем сборщик поступающих сообщений
              await bluetoothProvider.bluetoothBackgroundConnection.start();
              // и подписываемся на его события (поступающие сообщения)
              _messageSubscription = bluetoothProvider
                  .bluetoothBackgroundConnection.message
                  .listen(
                (message) => add(BluetoothEvent.messageReceived(
                  message: message,
                  stageId: _stageId,
                )),
              );
              bluetoothProvider.bluetoothBackgroundConnection.onDisconnect(() {
                add(const BluetoothEvent.disconnected());
              });
            } else {
              logger.i("Bluetooth -> Can't connect");
              emit(
                BluetoothBlocState.disconnected(
                  bluetoothDevice: event.selectedDevice,
                ),
              );
              if (_reconnectActive) {
                Timer(
                  Duration(seconds: _reconnectDelay),
                  () => add(
                    BluetoothEvent.connect(selectedDevice: _bluetoothDevice),
                  ),
                );
              }
            }
          }
        },
        disconnect: (event) {
          _reconnectActive = false;
          logger.i('Bluetooth -> Disconnecting...');

          state.whenOrNull(
            connected: (_) {
              emit(const BluetoothBlocState.disconnecting());
              add(const BluetoothEvent.disconnected());
            },
          );
        },
        disconnected: (event) async {
          await _messageSubscription?.cancel();
          await bluetoothProvider.bluetoothBackgroundConnection.stop();
          // Если перед разъединением было состояние DisconnectingState,
          // то соединение было закрыто локально.
          // Если же состояние было другим, то соединение было закрыто удалённо.
          state.maybeMap(
            disconnecting: (_) {
              logger.i('Bluetooth -> Disconnected locally');
              emit(
                BluetoothBlocState.disconnected(
                  bluetoothDevice: _bluetoothDevice,
                ),
              );
            },
            connected: (_) {
              logger.i('Bluetooth -> Disconnected remotely');
              emit(
                BluetoothBlocState.disconnected(
                  bluetoothDevice: _bluetoothDevice,
                ),
              );
              if (_reconnect) {
                _reconnectActive = true;
                add(BluetoothEvent.connect(selectedDevice: _bluetoothDevice));
              }
            },
            orElse: () {
              emit(
                BluetoothBlocState.disconnected(
                  bluetoothDevice: _bluetoothDevice,
                ),
              );
            },
          );
        },
        messageReceived: (event) {
          //Пришло соообщение из Bluetooth serial
          final DateTime timeStamp = DateTime.now();
          logger.i(
            'Bluetooth -> Received message: ${event.message}, time: $timeStamp',
          );
          final BluetoothMessage message = _parseBT(event.message, timeStamp);
          message.when(
            automaticStart: (automaticStart) {
              emit(BluetoothBlocState.connected(message: message));
            },
            finish: (time, timeStamp) {
              emit(BluetoothBlocState.connected(message: message));
            },
            countdown: (countdown) async {
              final stageId = event.stageId;
              await audioController.playCountdown(
                time: countdown,
                stageId: stageId,
              );
            },
            voice: (time) async {
              final stageId = event.stageId;
              await audioController.callParticipant(
                time: time,
                stageId: stageId,
              );
            },
            moduleSettings: (moduleSettings) {
              emit(BluetoothBlocState.connected(message: message));
            },
            empty: () => null,
          );
        },
        sendMessage: (event) async {
          //Отправлено соообщение в Bluetooth serial
          logger.i('Bluetooth -> Sent message: ${event.message}');
          final isMessageSended = await bluetoothProvider
              .bluetoothBackgroundConnection
              .sendMessage(event.message);
          if (isMessageSended) {
            await database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: event.message,
            );
          }
        },
      );
    });
  }

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    // protocolSubscription.cancel();
    // settingsSubscription.cancel();
    bluetoothProvider.dispose();
    return super.close();
  }

  BluetoothMessage _parseBT(String message, DateTime timeStamp) {
    String parsedMessage = message;
    database.addLog(
      level: LogLevel.information,
      source: LogSource.bluetooth,
      direction: LogSourceDirection.output,
      rawData: parsedMessage,
    );
    if (parsedMessage.startsWith(r'$') && parsedMessage.endsWith('#')) {
      try {
        parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
        final List<String> messageList = parsedMessage.split(';');
        final int correction = int.parse(messageList[1]);
        logger
          ..d('Bluetooth -> correction: $correction')
          ..d('Bluetooth -> gotime: ${messageList.first}');
        final AutomaticStart automaticStart = AutomaticStart(
          messageList.first,
          correction,
          timeStamp,
          // Проверяем обновлять или нет в HomeScreen BlocListener
          updating: false,
        );
        return BluetoothMessage.automaticStart(
          automaticStart: automaticStart,
        );
      } on Exception catch (e) {
        logger.e(
          'Bluetooth -> Something wrong with parsing Bluetooth packet $parsedMessage',
          error: e,
        );
        return const BluetoothMessage.empty();
      } on Error catch (e) {
        logger.e(
          'Bluetooth -> Something wrong with parsing Bluetooth packet $parsedMessage',
          error: e,
        );
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
      return BluetoothMessage.finish(time: parsedMessage, timeStamp: timeStamp);
    } else if (parsedMessage.startsWith('{') && parsedMessage.endsWith('}')) {
      logger.i('Bluetooth -> Parsing JSON...');
      return BluetoothMessage.moduleSettings(json: parsedMessage);
    } else {
      logger.e('Bluetooth -> Cannot parse data: $parsedMessage');
      return const BluetoothMessage.empty();
    }
  }
}
