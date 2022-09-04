import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/helper.dart';
import '../../audio/logic/audio_service.dart';
import '../../log/log.dart';
import '../../log/logic/log_provider.dart';
import '../../protocol/logic/protocol_provider.dart';
import '../../protocol/protocol.dart';
import '../../settings/settings.dart';
import '../bluetooth.dart';

part 'bluetooth_bloc.freezed.dart';
part 'bluetooth_bloc_event.dart';
part 'bluetooth_bloc_state.dart';

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothBlocState> {
  final IBluetoothProvider bluetoothProvider;
  final IProtocolProvider protocolProvider;
  final ILogProvider logProvider;

  // final ModuleSettingsBloc moduleSettingsBloc;
  // late final StreamSubscription<ProtocolState> protocolSubscription;
  final SettingsProvider settingsProvider;
  // late final StreamSubscription<AppSettings> settingsSubscription;
  bool _protocolSelectedState = false;
  final AudioService audioService;

  BluetoothDevice? _bluetoothDevice;

  bool _voiceName = false;

  bool _reconnect = true;
  bool _reconnectActive = false;
  final int _reconnectDelay = 1;

  bool _isEnabled = false;

  StreamSubscription<String>? _messageSubscription;

  BluetoothDevice? get bluetoothDevice => _bluetoothDevice;

  // для голоса
  bool _isStarted = false;
  bool _isBetweenCategory = false;

  BluetoothBloc({
    required this.settingsProvider,
    required this.logProvider,
    required this.audioService,
    required this.bluetoothProvider,
    required this.protocolProvider,
  }) : super(const BluetoothBlocState.notInitialized()) {
    protocolProvider.state.listen((value) {
      value.when(
        notSelected: () {
          _protocolSelectedState = false;
        },
        selected: (updated) {
          _protocolSelectedState = true;
        },
      );
    });
    settingsProvider.state.listen((state) {
      _voiceName = state.voiceName;
      _reconnect = state.reconnect;
    });

    on<BluetoothEvent>((event, emit) {
      event.map(
        initialize: (event) async {
          _isEnabled =
              await bluetoothProvider.flutterBluetoothSerial.isEnabled ?? false;
          _isEnabled
              ? emit(const BluetoothBlocState.disconnected())
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
          // Если выбран новый блютусдевайс
          if (event.deviceWithAvailability != null) {
            if (event.deviceWithAvailability!.device != _bluetoothDevice) {
              // Отменяем подписки и останавливаем соединение (если было)
              await _messageSubscription?.cancel();
              await bluetoothProvider.bluetoothBackgroundConnection.stop();
              // Если девайс выбран - обновляем
              _bluetoothDevice = event.deviceWithAvailability!.device;
              emit(
                BluetoothBlocState.disconnected(
                  bluetoothDevice: _bluetoothDevice,
                ),
              );
              logger
                  .i('Bluetooth -> Device selected ${_bluetoothDevice?.name}');
              // Если девайс доступен - соединяемся
              if (event.deviceWithAvailability!.availability ==
                  BluetoothDeviceAvailability.yes) {
                add(
                  BluetoothEvent.connect(
                    selectedDevice: event.deviceWithAvailability!.device,
                  ),
                );
              }
              // Если девайс равен предыдущему:
              // Если девайс отключён и доступен - соединяемся
            } else {
              state.mapOrNull(
                disconnected: (state) {
                  if (event.deviceWithAvailability!.availability ==
                      BluetoothDeviceAvailability.yes) {
                    add(
                      BluetoothEvent.connect(
                        selectedDevice: event.deviceWithAvailability!.device,
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
          // Состояние соединения
          emit(const BluetoothBlocState.connecting());
          // Соединяемся
          await bluetoothProvider.bluetoothBackgroundConnection
              .connect(event.selectedDevice!);
          if (bluetoothProvider.bluetoothBackgroundConnection.isConnected) {
            // Запускаем событие 'соединён'
            add(const BluetoothEvent.connected());
            logger.i('Bluetooth -> Connecting...');
            // Если соединение успешно, запускаем сборщик поступающих сообщений
            await bluetoothProvider.bluetoothBackgroundConnection.start();
            // и подписываемся на его события (поступающие сообщения)
            _messageSubscription =
                bluetoothProvider.bluetoothBackgroundConnection.message.listen(
              (message) =>
                  add(BluetoothEvent.messageReceived(message: message)),
            );
            bluetoothProvider.bluetoothBackgroundConnection.onDisconnect(() {
              add(const BluetoothEvent.disconnected());
            });
          } else {
            logger.i("Bluetooth -> Can't connect");
            emit(const BluetoothBlocState.disconnected());
            if (_reconnectActive) {
              Timer(
                Duration(seconds: _reconnectDelay),
                () => add(
                  BluetoothEvent.connect(selectedDevice: _bluetoothDevice),
                ),
              );
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
          // Если перед разъединением было состояние DisconnectingState,
          // то соединение было закрыто локально.
          // Если же состояние было другим, то соединение было закрыто удалённо.

          state.mapOrNull(
            disconnecting: (_) {
              logger.i('Bluetooth -> Disconnected locally');
            },
            connected: (_) {
              logger.i('Bluetooth -> Disconnected remotely');
              if (_reconnect) {
                _reconnectActive = true;
                add(BluetoothEvent.connect(selectedDevice: _bluetoothDevice));
              }
            },
          );

          // if (state is BluetoothDisconnectingState) {
          //   logger.i('Bluetooth -> Disconnected locally');
          // } else if (state is BluetoothConnectedState) {
          //   logger.i('Bluetooth -> Disconnected remotely');
          //   if (_reconnect) {
          //     _reconnectActive = true;
          //     add(BluetoothEvent.connect(selectedDevice: _bluetoothDevice));
          //   }
          // }
          emit(const BluetoothBlocState.disconnected());
          await _messageSubscription?.cancel();
          await bluetoothProvider.bluetoothBackgroundConnection.stop();
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
              await _countdown(countdown);
            },
            voice: (time) async {
              await _voice(time);
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
          await bluetoothProvider.bluetoothBackgroundConnection
              .sendMessage(event.message);
          await logProvider.addLog(
            level: LogLevel.information,
            source: LogSource.bluetooth,
            direction: LogSourceDirection.output,
            rawData: event.message,
          );
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
    logProvider.addLog(
      level: LogLevel.information,
      source: LogSource.bluetooth,
      direction: LogSourceDirection.output,
      rawData: parsedMessage,
    );
    if (parsedMessage.startsWith(r'$') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      final List<String> messageList = parsedMessage.split(';');
      final int? correction = int.tryParse(messageList[1]);
      logger
        ..d('Bluetooth -> correction: $correction')
        ..d('Bluetooth -> gotime: ${messageList.first}');
      if (correction != null) {
        final AutomaticStart automaticStart = AutomaticStart(
          messageList.first,
          correction,
          timeStamp,
          updating: true,
        );
        return BluetoothMessage.automaticStart(automaticStart: automaticStart);
      } else {
        logger.e(
          'Bluetooth -> Something wrong with parsing Bluetooth packet $parsedMessage',
        );
        return const BluetoothMessage.empty();
      }
    } else if (parsedMessage.startsWith('B') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.v('Bluetooth -> Message parsed: beep: $parsedMessage');
      return BluetoothMessage.countdown(time: parsedMessage);
    } else if (parsedMessage.startsWith('V') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.v('Bluetooth -> Message parsed: speak: $parsedMessage');
      return BluetoothMessage.voice(time: parsedMessage);
    } else if (parsedMessage.startsWith('F') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.v('Bluetooth -> Message parsed: finish: $parsedMessage');
      return BluetoothMessage.finish(time: parsedMessage, timeStamp: timeStamp);
    } else if (parsedMessage.startsWith('{') && parsedMessage.endsWith('}')) {
      logger.i('Bluetooth -> Parsing JSON...');
      return BluetoothMessage.moduleSettings(json: parsedMessage);
    } else {
      logger.e('Bluetooth -> Cannot parse data: $parsedMessage');
      return const BluetoothMessage.empty();
    }
  }

  Future<void> _countdown(String time) async {
    if (_protocolSelectedState) {
      if (await protocolProvider.getStart(time) > 0) {
        await audioService.countdown();
        logger.i('Bluetooth -> Beep start $time');
      } else {
        logger.i(
          'Bluetooth -> Cannot find participant with start time around $time',
        );
      }
    } else {
      logger.i('Bluetooth -> Protocol not selected');
    }
  }

  Future<void> _voice(String time) async {
    logger.i('StartPage -> Voice time: $time');
    // if (sound && voice) {
    if (_protocolSelectedState) {
      List<StartItem> participant;
      final List<String> start = [];
      String newVoiceText = '';

      //высчитываем диапазоны времени участников
      DateTime? dateTime = strTimeToDateTime(time);
      if (dateTime != null) {
        start.add(DateFormat('HH:mm:ss').format(dateTime));
        dateTime = dateTime.add(const Duration(minutes: 1));
        start.add(DateFormat('HH:mm:ss').format(dateTime));
      }
      participant = await protocolProvider.getStartingParticipants(start.first);
      if (participant.isNotEmpty) {
        _isStarted = true;
        _isBetweenCategory = false;
        logger.d(
          'First participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
        );
        newVoiceText =
            'На старт приглашается номер ${participant.first.number}';
        _voiceName && participant.first.name != null ? newVoiceText += ', ${participant.first.name}.' : newVoiceText += '.';
        participant = await protocolProvider.getStartingParticipants(start[1]);
        if (participant.isNotEmpty) {
          newVoiceText += ' Следующий номер ${participant.first.number}';
          if (_voiceName && participant.first.name != null) {
            newVoiceText += ', ${participant.first.name}.';
          } else {
            newVoiceText += '.';
          }
        }
      } else {
        participant = await protocolProvider.getStartingParticipants(start[1]);
        if (participant.isNotEmpty) {
          _isStarted = true;
          _isBetweenCategory = false;
          logger.d(
            'Second participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
          );
          newVoiceText = 'Готовится номер ${participant.first.number}';
          if (_voiceName && participant.first.name != null) {
            newVoiceText += ', ${participant.first.name}.';
          } else {
            newVoiceText += '.';
          }
        } else {
          // если нет стартов в следующие две минуты,
          // сообщить сколько времени до старта след участника
          if (_isStarted && !_isBetweenCategory) {
            logger.d(
              'Between category: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
            );
            participant =
                await protocolProvider.getNextParticipants(start.first);
            if (participant.isNotEmpty) {
              _isBetweenCategory = true;
              final DateTime? lastStart = strTimeToDateTime(start.first);
              DateTime? nextStart;
              if (participant.first.starttime != null) {
                nextStart = strTimeToDateTime(participant.first.starttime!);
              }
              if (lastStart != null && nextStart != null) {
                final Duration delay = nextStart.difference(lastStart);
                newVoiceText =
                    'Старт следующего участника номер ${participant.first.number}, ';
                newVoiceText += 'через ${delay.inMinutes} мин 30 с';
              }
            } else {
              // если это был последний старт (следующий участник не найден),
              // сообщить об окончании стартов
              _isStarted = false;
              newVoiceText = 'Старты окончены, спасибо';
            }
          }
        }
      }
      await audioService.speak(newVoiceText);
    } else {
      logger.i('Bluetooth -> Protocol not selected');
    }
  }
}
