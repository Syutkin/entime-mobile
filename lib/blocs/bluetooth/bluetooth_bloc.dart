import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/models/models.dart';
import 'package:entime/data_providers/data/protocol_provider.dart';
import 'package:entime/data_providers/bluetooth/bluetooth.dart';
import 'package:entime/utils/helper.dart';
import 'package:entime/utils/logger.dart';

part 'bluetooth_bloc_event.dart';

part 'bluetooth_bloc_state.dart';

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothConnectionState> {
  BluetoothBackgroundConnection? _serialConnection;

  final ModuleSettingsBloc moduleSettingsBloc;
  final ProtocolBloc protocolBloc;
  late final StreamSubscription protocolSubscription;
  final SettingsBloc settingsBloc;
  late final StreamSubscription settingsSubscription;
  bool _protocolSelectedState = false;
  final LogBloc logBloc;
  final AudioBloc audioBloc;

  BluetoothDevice? _bluetoothDevice;

  bool _voiceName = false;

  bool _reconnect = true;
  bool _reconnectActive = false;
  final int _reconnectDelay = 1;

  StreamSubscription? _messageSubscription;

  BluetoothDevice? get bluetoothDevice => _bluetoothDevice;

  // для голоса
  bool _isStarted = false;
  bool _isBetweenCategory = false;

  BluetoothBloc({
    required this.moduleSettingsBloc,
    required this.protocolBloc,
    required this.settingsBloc,
    required this.logBloc,
    required this.audioBloc,
  }) : super(const BluetoothDisconnectedState()) {
    protocolSubscription = protocolBloc.stream.listen((state) {
      if (state is ProtocolSelectedState) {
        _protocolSelectedState = true;
      } else {
        _protocolSelectedState = false;
      }
    });
    settingsSubscription = settingsBloc.stream.listen((state) {
      _voiceName = state.voiceName;
      _reconnect = state.reconnect;
    });

    on<Connect>((event, emit) => _handleConnect(event, emit));
    on<Connected>((event, emit) => _handleConnected(event, emit));
    on<Disconnect>((event, emit) => _handleDisconnect(event, emit));
    on<Disconnected>((event, emit) => _handleDisconnected(event, emit));
    on<MessageReceived>((event, emit) => _handleMessageReceived(event, emit));
    on<SendMessage>((event, emit) => _handleSendMessage(event, emit));
    on<SelectDevice>((event, emit) => _handleSelectDevice(event, emit));
  }

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    protocolSubscription.cancel();
    settingsSubscription.cancel();
    _serialConnection?.dispose();
    return super.close();
  }

  void _handleConnect(
      Connect event, Emitter<BluetoothConnectionState> emit) async {
    // Состояние соединения
    emit(BluetoothConnectingState());
    // Соединяемся
    _serialConnection =
        await BluetoothBackgroundConnection.connect(event.selectedDevice!);
    if (_serialConnection!.isConnected) {
      // Запускаем событие 'соединён'
      add(Connected());
      logger.i('Bluetooth -> Connecting...');
      // Если соединение успешно, запускаем сборщик поступающих сообщений
      await _serialConnection!.start();
      // и подписываемся на его события (поступающие сообщения)
      _messageSubscription = _serialConnection!.message
          .listen((message) => add(MessageReceived(message)));
      _serialConnection!.onDisconnect(() {
        add(Disconnected());
      });
    } else {
      logger.i("Bluetooth -> Can't connect");
      emit(const BluetoothDisconnectedState());
      if (_reconnectActive) {
        Timer(Duration(seconds: _reconnectDelay),
            () => add(Connect(_bluetoothDevice)));
      }
    }
  }

  void _handleConnected(
      Connected event, Emitter<BluetoothConnectionState> emit) {
    //Успешное соединение
    emit(BluetoothConnectedState());
    logger.i('Bluetooth -> Connected');
    _reconnectActive = false;
  }

  void _handleDisconnect(
      Disconnect event, Emitter<BluetoothConnectionState> emit) {
    _reconnectActive = false;
    logger.i('Bluetooth -> Disconnecting...');
    if (state is BluetoothConnectedState) {
      emit(BluetoothDisconnectingState());
      add(Disconnected());
    }
  }

  void _handleDisconnected(
      Disconnected event, Emitter<BluetoothConnectionState> emit) async {
    // Если перед разъединением было состояние DisconnectingState,
    // то соединение было закрыто локально.
    // Если же состояние было другим, то соединение было закрыто удалённо.
    if (state is BluetoothDisconnectingState) {
      logger.i('Bluetooth -> Disconnected locally');
    } else if (state is BluetoothConnectedState) {
      logger.i('Bluetooth -> Disconnected remotely');
      if (_reconnect) {
        _reconnectActive = true;
        add(Connect(_bluetoothDevice));
      }
    }
    emit(const BluetoothDisconnectedState());
    await _messageSubscription?.cancel();
    await _serialConnection?.stop();
  }

  void _handleMessageReceived(
      MessageReceived event, Emitter<BluetoothConnectionState> emit) {
    //Пришло соообщение из Bluetooth serial
    final DateTime timeStamp = DateTime.now();
    logger
        .i('Bluetooth -> Received message: ${event.message}, time: $timeStamp');
    _parseBT(event.message, timeStamp);
  }

  void _handleSendMessage(
      SendMessage event, Emitter<BluetoothConnectionState> emit) async {
    //Отправлено соообщение в Bluetooth serial
    logger.i('Bluetooth -> Sent message: ${event.message}');
    await _serialConnection?.sendMessage(event.message);
    logBloc.add(LogAdd(
      level: LogLevel.information,
      source: LogSource.bluetooth,
      direction: LogSourceDirection.output,
      rawData: event.message,
    ));
  }

  void _handleSelectDevice(
      SelectDevice event, Emitter<BluetoothConnectionState> emit) async {
    // Если выбран новый блютусдевайс
    _reconnectActive = false;
    if (event.deviceWithAvailability != null) {
      if (event.deviceWithAvailability!.device != _bluetoothDevice) {
        // Отменяем подписки и останавливаем соединение (если было)
        await _messageSubscription?.cancel();
        await _serialConnection?.stop();
        // Если девайс выбран - обновляем
        _bluetoothDevice = event.deviceWithAvailability!.device;
        emit(BluetoothDisconnectedState(bluetoothDevice: _bluetoothDevice));
        logger.i('Bluetooth -> Device selected ' + _bluetoothDevice!.name!);
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
  }

  void _parseBT(String message, DateTime timeStamp) {
    logBloc.add(LogAdd(
      level: LogLevel.information,
      source: LogSource.bluetooth,
      direction: LogSourceDirection.input,
      rawData: message,
    ));
    if (message.startsWith(r'$') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      final List _message = message.split(';');
      final int? correction = int.tryParse(_message[1]);
      logger.d('Bluetooth -> correction: ' + correction.toString());
      logger.d('Bluetooth -> gotime: ' + _message[0]);
      if (correction != null && _message[0] != null) {
        AutomaticStart automaticStart =
            AutomaticStart(_message[0], correction, timeStamp, true);
        protocolBloc.add(ProtocolUpdateAutomaticCorrection(automaticStart));
      } else {
        logger.e(
            'Bluetooth -> Something wrong with parsing Bluetooth packet $message');
      }
    } else if (message.startsWith('B') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      logger.v('Bluetooth -> Message parsed: beep: $message');
      _countdown(message);
    } else if (message.startsWith('V') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      logger.v('Bluetooth -> Message parsed: speak: $message');
      _voice(message);
    } else if (message.startsWith('F') && message.endsWith('#')) {
      message = message.substring(1, message.length - 1);
      logger.v('Bluetooth -> Message parsed: finish: $message');
      protocolBloc.add(ProtocolAddFinishTime(
        time: message,
        timeStamp: timeStamp,
      ));
    } else if (message.startsWith('{') && message.endsWith('}')) {
      logger.i('Bluetooth -> Parsing JSON...');
      moduleSettingsBloc.add(GetModuleSettings(message));
    } else {
      logger.e('Bluetooth -> Cannot parse data: $message');
    }
  }

  Future<void> _countdown(String time) async {
    if (_protocolSelectedState) {
      if (await ProtocolProvider.db.getStart(time) > 0) {
        audioBloc.add(Countdown());
        logger.i('Bluetooth -> Beep start $time');
      } else {
        logger.i(
            'Bluetooth -> Cannot find participant with start time around $time');
      }
    } else {
      logger.i('Bluetooth -> Protocol not selected');
    }
  }

  Future _voice(String time) async {
    logger.i('StartPage -> Voice time: $time');
    // if (sound && voice) {
    if (_protocolSelectedState) {
      List<StartItem> participant;
      List<String> start = [];
      String _newVoiceText = '';

      //высчитываем диапазоны времени участников
      DateTime? dateTime = strTimeToDateTime(time);
      if (dateTime != null) {
        start.add(DateFormat('HH:mm:ss').format(dateTime));
        dateTime = dateTime.add(const Duration(minutes: 1));
        start.add(DateFormat('HH:mm:ss').format(dateTime));
      }
      participant = await ProtocolProvider.db.getStartingParticipants(start[0]);
      if (participant.isNotEmpty) {
        _isStarted = true;
        _isBetweenCategory = false;
        logger.d(
            'First participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory');
        _newVoiceText = 'На старт приглашается номер ${participant[0].number}';
        if (_voiceName && participant[0].name != null) {
          _newVoiceText += ', ${participant[0].name}.';
        } else {
          _newVoiceText += '.';
        }
        participant =
            await ProtocolProvider.db.getStartingParticipants(start[1]);
        if (participant.isNotEmpty) {
          _newVoiceText += ' Следующий номер ${participant[0].number}';
          if (_voiceName && participant[0].name != null) {
            _newVoiceText += ', ${participant[0].name}.';
          } else {
            _newVoiceText += '.';
          }
        }
      } else {
        participant =
            await ProtocolProvider.db.getStartingParticipants(start[1]);
        if (participant.isNotEmpty) {
          _isStarted = true;
          _isBetweenCategory = false;
          logger.d(
              'Second participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory');
          _newVoiceText = 'Готовится номер ${participant[0].number}';
          if (_voiceName && participant[0].name != null) {
            _newVoiceText += ', ${participant[0].name}.';
          } else {
            _newVoiceText += '.';
          }
        } else {
          // если нет стартов в следующие две минуты,
          // сообщить сколько времени до старта след участника
          if (_isStarted && !_isBetweenCategory) {
            logger.d(
                'Between category: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory');
            participant =
                await ProtocolProvider.db.getNextParticipants(start[0]);
            if (participant.isNotEmpty) {
              _isBetweenCategory = true;
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
              _isStarted = false;
              _newVoiceText = 'Старты окончены, спасибо';
            }
          }
        }
      }
      audioBloc.add(Speak(_newVoiceText));
    } else {
      logger.i('Bluetooth -> Protocol not selected');
    }
  }
}
