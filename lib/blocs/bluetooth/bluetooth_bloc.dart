import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:entime/models/bluetooth.dart';
import 'package:entime/blocs/blocs.dart';
import 'package:entime/data_providers/data/protocol_provider.dart';
import 'package:entime/data_providers/bluetooth/bluetooth.dart';
import 'package:entime/models/models.dart';
import 'package:entime/utils/helper.dart';

part 'bluetooth_bloc_event.dart';

part 'bluetooth_bloc_state.dart';

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothConnectionState> {
  BluetoothBackgroundConnection? _serialConnection;

  late final ModuleSettingsBloc moduleSettingsBloc;
  late final ProtocolBloc protocolBloc;
  late final StreamSubscription protocolSubscription;
  late final SettingsBloc settingsBloc;
  late final StreamSubscription settingsSubscription;
  bool protocolSelectedState = false;
  late final LogBloc logBloc;
  late final AudioBloc audioBloc;

  BluetoothDevice? _bluetoothDevice;

  bool voice_name = false;

  bool reconnect = true;
  bool _reconnectActive = false;
  final int _reconnectDelay = 1;

  StreamSubscription? _messageSubscription;

  BluetoothDevice? get bluetoothDevice => _bluetoothDevice;

  // для голоса
  bool isStarted = false;
  bool isBetweenCategory = false;

  BluetoothBloc({
    required this.moduleSettingsBloc,
    required this.protocolBloc,
    required this.settingsBloc,
    required this.logBloc,
    required this.audioBloc,
  }) : super(BluetoothDisconnectedState()) {
    protocolSubscription = protocolBloc.stream.listen((state) {
      if (state is ProtocolSelectedState) {
        protocolSelectedState = true;
      } else {
        protocolSelectedState = false;
      }
    });
    settingsSubscription = settingsBloc.stream.listen((state) {
      voice_name = state.voice_name;
      reconnect = state.reconnect;
    });
  }

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    protocolSubscription.cancel();
    settingsSubscription.cancel();
    _serialConnection?.dispose();
    return super.close();
  }

  @override
  Stream<BluetoothConnectionState> mapEventToState(
      BluetoothEvent event) async* {
    // Соединяемся
    if (event is Connect) {
      // Состояние соединения
      yield BluetoothConnectingState();
      // Соединяемся
      _serialConnection =
          await BluetoothBackgroundConnection.connect(event.selectedDevice!);
      if (_serialConnection!.isConnected) {
        // Запускаем событие 'соединён'
        add(Connected());
        print('Bluetooth -> Connecting...');
        // Если соединение успешно, запускаем сборщик поступающих сообщений
        await _serialConnection!.start();
        // и подписываемся на его события (поступающие сообщения)
        _messageSubscription = _serialConnection!.message
            .listen((message) => add(MessageReceived(message)));
        _serialConnection!.onDisconnect(() {
          add(Disconnected());
        });
      } else {
        print("'Bluetooth -> Can't connect'");
        yield BluetoothDisconnectedState();
        if (_reconnectActive) {
          Timer(Duration(seconds: _reconnectDelay),
              () => add(Connect(_bluetoothDevice)));
        }
      }
    } else if (event is Connected) {
      //Успешное соединение
      yield BluetoothConnectedState();
      print('Bluetooth -> Connected');
      _reconnectActive = false;
    } else if (event is Disconnect) {
      _reconnectActive = false;
      print('Bluetooth -> Disconnecting...');
      if (state is BluetoothConnectedState) {
        yield BluetoothDisconnectingState();
        add(Disconnected());
      }
    } else if (event is Disconnected) {
      // Если перед разъединением было состояние DisconnectingState,
      // то соединение было закрыто локально.
      // Если же состояние было другим, то соединение было закрыто удалённо.
      if (state is BluetoothDisconnectingState) {
        print('Bluetooth -> Disconnected locally');
      } else if (state is BluetoothConnectedState) {
        print('Bluetooth -> Disconnected remotely');
        if (reconnect) {
          _reconnectActive = true;
          add(Connect(_bluetoothDevice));
        }
      }
      yield BluetoothDisconnectedState();
      await _messageSubscription?.cancel();
      await _serialConnection?.stop();
    } else if (event is MessageReceived) {
      //Пришло соообщение из Bluetooth serial
      final DateTime timeStamp = DateTime.now();
      print(
          'Bluetooth -> Received message: ${event.message}, time: $timeStamp');
      _parseBT(event.message, timeStamp);
    } else if (event is SendMessage) {
      //Отправлено соообщение в Bluetooth serial
      print('Bluetooth -> Sent message: ${event.message}');
      await _serialConnection?.sendMessage(event.message);
      logBloc.add(LogAdd(
        level: LogLevel.Information,
        source: LogSource.Bluetooth,
        direction: LogSourceDirection.Out,
        rawData: event.message,
      ));
    } else if (event is SelectDevice) {
      // Если выбран новый блютусдевайс
      _reconnectActive = false;
      if (event.deviceWithAvailability != null) {
        if (event.deviceWithAvailability!.device != _bluetoothDevice) {
          // Отменяем подписки и останавливаем соединение (если было)
          await _messageSubscription?.cancel();
          await _serialConnection?.stop();
          // Если девайс выбран - обновляем
//          if (event.deviceWithAvailability.device != null) {
          _bluetoothDevice = event.deviceWithAvailability!.device;
//          }
          yield BluetoothDisconnectedState(bluetoothDevice: _bluetoothDevice);
          print('Bluetooth -> Device selected ' + _bluetoothDevice!.name!);
          // Если девайс доступен - соединяемся
          if (event.deviceWithAvailability!.availability ==
              BluetoothDeviceAvailability.yes) {
            add(Connect(event.deviceWithAvailability!.device));
          }
          // Если девайс равен предыдущему:
          // Если девайс отключён и доступен - соединяемся
        } else if (state is BluetoothDisconnectedState &&
            event.deviceWithAvailability!.availability ==
                BluetoothDeviceAvailability.yes) {
          add(Connect(event.deviceWithAvailability!.device));
        }
      }
    } else {
      print('Bluetooth -> ERROR: Unknown event type');
    }
  }

  void _parseBT(String message, DateTime timeStamp) {
    logBloc.add(LogAdd(
      level: LogLevel.Information,
      source: LogSource.Bluetooth,
      direction: LogSourceDirection.In,
      rawData: message,
    ));
    if (message.startsWith(r'$') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      final List _message = message.split(';');
      final int? correction = int.tryParse(_message[1]);
      print('Bluetooth -> correction: ' + correction.toString());
      print('Bluetooth -> gotime: ' + _message[0]);
      if (correction != null && _message[0] != null) {
        AutomaticStart automaticStart =
            AutomaticStart(_message[0], correction, timeStamp, true);
        protocolBloc.add(ProtocolUpdateAutomaticCorrection(automaticStart));
      } else {
        print(
            'Bluetooth -> Something wrong with parsing Bluetooth packet $message');
      }
    } else if (message.startsWith('B') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      print('Bluetooth -> Message parsed: beep: $message');
      _countdown(message);
    } else if (message.startsWith('V') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      print('Bluetooth -> Message parsed: speak: $message');
      _voice(message);
    } else if (message.startsWith('F') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      print('Bluetooth -> Message parsed: finish: $message');
      protocolBloc.add(ProtocolAddFinishTime(
        time: message,
        timeStamp: timeStamp,
      ));
    } else if (message.startsWith('{') && message.endsWith('}')) {
      print('Bluetooth -> Parsing JSON...');
      moduleSettingsBloc.add(GetModuleSettings(message));
    } else {
      print('Bluetooth -> Cannot parse data: $message');
    }
  }

  Future<void> _countdown(String time) async {
    if (protocolSelectedState) {
      if (await ProtocolProvider.db.getStart(time) > 0) {
        audioBloc.add(Countdown());
        print('Bluetooth -> Beep start $time');
      } else {
        print(
            'Bluetooth -> Cannot find participant with start time around $time');
      }
    } else {
      print('Bluetooth -> Protocol not selected');
    }
  }

  Future _voice(String time) async {
    print('StartPage -> Voice time: $time');
    // if (sound && voice) {
    if (protocolSelectedState) {
      List<StartItem> participant;
      List<String> start = [];
      String _newVoiceText = '';

      //высчитываем диапазоны времени участников
      DateTime? dateTime = strTimeToDateTime(time);
      if (dateTime != null) {
        start.add(DateFormat('HH:mm:ss').format(dateTime));
        dateTime = dateTime.add(Duration(minutes: 1));
        start.add(DateFormat('HH:mm:ss').format(dateTime));
      }
      participant = await ProtocolProvider.db.getStartingParticipants(start[0]);
      if (participant.isNotEmpty) {
        isStarted = true;
        isBetweenCategory = false;
        print(
            'First participant: isStarted: $isStarted, isBetweenCategory: $isBetweenCategory');
        _newVoiceText = 'На старт приглашается номер ${participant[0].number}';
        if (voice_name && participant[0].name != null) {
          _newVoiceText += ', ${participant[0].name}.';
        } else {
          _newVoiceText += '.';
        }
        participant =
            await ProtocolProvider.db.getStartingParticipants(start[1]);
        if (participant.isNotEmpty) {
          _newVoiceText += ' Следующий номер ${participant[0].number}';
          if (voice_name && participant[0].name != null) {
            _newVoiceText += ', ${participant[0].name}.';
          } else {
            _newVoiceText += '.';
          }
        }
      } else {
        participant =
            await ProtocolProvider.db.getStartingParticipants(start[1]);
        if (participant.isNotEmpty) {
          isStarted = true;
          isBetweenCategory = false;
          print(
              'Second participant: isStarted: $isStarted, isBetweenCategory: $isBetweenCategory');
          _newVoiceText = 'Готовится номер ${participant[0].number}';
          if (voice_name && participant[0].name != null) {
            _newVoiceText += ', ${participant[0].name}.';
          } else {
            _newVoiceText += '.';
          }
        } else {
          // если нет стартов в следующие две минуты,
          // сообщить сколько времени до старта след участника
          if (isStarted && !isBetweenCategory) {
            print(
                'Between category: isStarted: $isStarted, isBetweenCategory: $isBetweenCategory');
            participant =
                await ProtocolProvider.db.getNextParticipants(start[0]);
            if (participant.isNotEmpty) {
              isBetweenCategory = true;
              final DateTime? lastStart = strTimeToDateTime(start[0]);
              DateTime? nextStart;
              if (participant[0].starttime != null) {
                nextStart = strTimeToDateTime(participant[0].starttime!);
              }
              if (lastStart != null && nextStart != null) {
                final Duration delay = nextStart.difference(lastStart);
                _newVoiceText =
                    'Старт следующего участника номер ${participant[0].number}, ';
                _newVoiceText += 'через ${delay.inMinutes} мин 30 с';
              }
            } else {
              // если это был последний старт (следующий участник не найден),
              // сообщить об окончании стартов
              isStarted = false;
              _newVoiceText = 'Старты окончены, спасибо';
            }
          }
        }
      }
      audioBloc.add(Speak(_newVoiceText));
    } else {
      print('Bluetooth -> Protocol not selected');
    }
  }
}
