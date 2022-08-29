import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../common/database/logic/database_provider.dart';
import '../../../common/logger/logger.dart';
import '../../../common/utils/helper.dart';
import '../../audio/logic/audio_service.dart';
import '../../log/log.dart';
import '../../module_settings/module_settings.dart';
import '../../protocol/protocol.dart';
import '../../settings/settings.dart';
import '../bluetooth.dart';

part 'bluetooth_bloc_event.dart';

part 'bluetooth_bloc_state.dart';

part 'bluetooth_bloc.freezed.dart';

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothBlocState> {
  final IBluetoothProvider bluetoothProvider;
  final IDatabaseProvider databaseProvider;

  final ModuleSettingsBloc moduleSettingsBloc;
  final ProtocolBloc protocolBloc;
  late final StreamSubscription<ProtocolState> protocolSubscription;
  final SettingsBloc settingsBloc;
  late final StreamSubscription<SettingsState> settingsSubscription;
  bool _protocolSelectedState = false;
  final LogBloc logBloc;
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
    required this.moduleSettingsBloc,
    required this.protocolBloc,
    required this.settingsBloc,
    required this.logBloc,
    required this.audioService,
    required this.bluetoothProvider,
    required this.databaseProvider,
  }) : super(const BluetoothNotInitializedState()) {
    protocolSubscription = protocolBloc.stream.listen((state) {
      if (state is ProtocolSelectedState) {
        _protocolSelectedState = true;
      } else {
        _protocolSelectedState = false;
      }
    });
    settingsSubscription = settingsBloc.stream.listen((state) {
      _voiceName = state.settings.voiceName;
      _reconnect = state.settings.reconnect;
    });

    on<InitializeBluetooth>(
      (event, emit) => _handleInitializeBluetooth(event, emit),
    );
    on<Connect>((event, emit) => _handleConnect(event, emit));
    on<Connected>((event, emit) => _handleConnected(event, emit));
    on<Disconnect>((event, emit) => _handleDisconnect(event, emit));
    on<Disconnected>((event, emit) => _handleDisconnected(event, emit));
    on<MessageReceived>((event, emit) => _handleMessageReceived(event, emit));
    on<SendMessage>((event, emit) => _handleSendMessage(event, emit));
    on<SelectDevice>((event, emit) => _handleSelectDevice(event, emit));
    on<EnableBluetooth>((event, emit) => _handleEnableBluetooth(event, emit));
    on<DisableBluetooth>((event, emit) => _handleDisableBluetooth(event, emit));
  }

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    protocolSubscription.cancel();
    settingsSubscription.cancel();
    bluetoothProvider.dispose();
    return super.close();
  }

  Future<void> _handleInitializeBluetooth(
    InitializeBluetooth event,
    Emitter<BluetoothBlocState> emit,
  ) async {
    _isEnabled =
        await bluetoothProvider.flutterBluetoothSerial.isEnabled ?? false;
    _isEnabled
        ? emit(const BluetoothDisconnectedState())
        : emit(const BluetoothNotEnabledState());
  }

  Future<void> _handleEnableBluetooth(
    EnableBluetooth event,
    Emitter<BluetoothBlocState> emit,
  ) async {
    await bluetoothProvider.flutterBluetoothSerial.requestEnable();
    add(const InitializeBluetooth());
  }

  Future<void> _handleDisableBluetooth(
    DisableBluetooth event,
    Emitter<BluetoothBlocState> emit,
  ) async {
    await bluetoothProvider.flutterBluetoothSerial.requestDisable();
    add(const InitializeBluetooth());
  }

  Future<void> _handleConnect(
    Connect event,
    Emitter<BluetoothBlocState> emit,
  ) async {
    // Состояние соединения
    emit(const BluetoothConnectingState());
    // Соединяемся
    await bluetoothProvider.bluetoothBackgroundConnection
        .connect(event.selectedDevice!);
    if (bluetoothProvider.bluetoothBackgroundConnection.isConnected) {
      // Запускаем событие 'соединён'
      add(const Connected());
      logger.i('Bluetooth -> Connecting...');
      // Если соединение успешно, запускаем сборщик поступающих сообщений
      await bluetoothProvider.bluetoothBackgroundConnection.start();
      // и подписываемся на его события (поступающие сообщения)
      _messageSubscription = bluetoothProvider
          .bluetoothBackgroundConnection.message
          .listen((message) => add(MessageReceived(message: message)));
      bluetoothProvider.bluetoothBackgroundConnection.onDisconnect(() {
        add(const Disconnected());
      });
    } else {
      logger.i("Bluetooth -> Can't connect");
      emit(const BluetoothDisconnectedState());
      if (_reconnectActive) {
        Timer(
          Duration(seconds: _reconnectDelay),
          () => add(Connect(selectedDevice: _bluetoothDevice)),
        );
      }
    }
  }

  void _handleConnected(
    Connected event,
    Emitter<BluetoothBlocState> emit,
  ) {
    //Успешное соединение
    emit(const BluetoothConnectedState());
    logger.i('Bluetooth -> Connected');
    _reconnectActive = false;
  }

  void _handleDisconnect(
    Disconnect event,
    Emitter<BluetoothBlocState> emit,
  ) {
    _reconnectActive = false;
    logger.i('Bluetooth -> Disconnecting...');
    if (state is BluetoothConnectedState) {
      emit(const BluetoothDisconnectingState());
      add(const Disconnected());
    }
  }

  Future<void> _handleDisconnected(
    Disconnected event,
    Emitter<BluetoothBlocState> emit,
  ) async {
    // Если перед разъединением было состояние DisconnectingState,
    // то соединение было закрыто локально.
    // Если же состояние было другим, то соединение было закрыто удалённо.
    if (state is BluetoothDisconnectingState) {
      logger.i('Bluetooth -> Disconnected locally');
    } else if (state is BluetoothConnectedState) {
      logger.i('Bluetooth -> Disconnected remotely');
      if (_reconnect) {
        _reconnectActive = true;
        add(Connect(selectedDevice: _bluetoothDevice));
      }
    }
    emit(const BluetoothDisconnectedState());
    await _messageSubscription?.cancel();
    await bluetoothProvider.bluetoothBackgroundConnection.stop();
  }

  void _handleMessageReceived(
    MessageReceived event,
    Emitter<BluetoothBlocState> emit,
  ) {
    //Пришло соообщение из Bluetooth serial
    final DateTime timeStamp = DateTime.now();
    logger
        .i('Bluetooth -> Received message: ${event.message}, time: $timeStamp');
    _parseBT(event.message, timeStamp);
  }

  Future<void> _handleSendMessage(
    SendMessage event,
    Emitter<BluetoothBlocState> emit,
  ) async {
    //Отправлено соообщение в Bluetooth serial
    logger.i('Bluetooth -> Sent message: ${event.message}');
    await bluetoothProvider.bluetoothBackgroundConnection
        .sendMessage(event.message);
    logBloc.add(
      LogAdd(
        level: LogLevel.information,
        source: LogSource.bluetooth,
        direction: LogSourceDirection.output,
        rawData: event.message,
      ),
    );
  }

  Future<void> _handleSelectDevice(
    SelectDevice event,
    Emitter<BluetoothBlocState> emit,
  ) async {
    // Если выбран новый блютусдевайс
    _reconnectActive = false;
    if (event.deviceWithAvailability != null) {
      if (event.deviceWithAvailability!.device != _bluetoothDevice) {
        // Отменяем подписки и останавливаем соединение (если было)
        await _messageSubscription?.cancel();
        await bluetoothProvider.bluetoothBackgroundConnection.stop();
        // Если девайс выбран - обновляем
        _bluetoothDevice = event.deviceWithAvailability!.device;
        emit(BluetoothDisconnectedState(bluetoothDevice: _bluetoothDevice));
        logger.i('Bluetooth -> Device selected ${_bluetoothDevice?.name}');
        // Если девайс доступен - соединяемся
        if (event.deviceWithAvailability!.availability ==
            BluetoothDeviceAvailability.yes) {
          add(Connect(selectedDevice: event.deviceWithAvailability!.device));
        }
        // Если девайс равен предыдущему:
        // Если девайс отключён и доступен - соединяемся
      } else if (state is BluetoothDisconnectedState &&
          event.deviceWithAvailability!.availability ==
              BluetoothDeviceAvailability.yes) {
        add(Connect(selectedDevice: event.deviceWithAvailability!.device));
      }
    }
  }

  void _parseBT(String message, DateTime timeStamp) {
    String parsedMessage = message;
    logBloc.add(
      LogAdd(
        level: LogLevel.information,
        source: LogSource.bluetooth,
        direction: LogSourceDirection.input,
        rawData: parsedMessage,
      ),
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
        protocolBloc.add(
          ProtocolUpdateAutomaticCorrection(automaticStart: automaticStart),
        );
      } else {
        logger.e(
          'Bluetooth -> Something wrong with parsing Bluetooth packet $parsedMessage',
        );
      }
    } else if (parsedMessage.startsWith('B') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.v('Bluetooth -> Message parsed: beep: $parsedMessage');
      _countdown(parsedMessage);
    } else if (parsedMessage.startsWith('V') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.v('Bluetooth -> Message parsed: speak: $parsedMessage');
      _voice(parsedMessage);
    } else if (parsedMessage.startsWith('F') && parsedMessage.endsWith('#')) {
      parsedMessage = parsedMessage.substring(1, parsedMessage.length - 1);
      logger.v('Bluetooth -> Message parsed: finish: $parsedMessage');
      protocolBloc.add(
        ProtocolAddFinishTime(
          time: parsedMessage,
          timeStamp: timeStamp,
        ),
      );
    } else if (parsedMessage.startsWith('{') && parsedMessage.endsWith('}')) {
      logger.i('Bluetooth -> Parsing JSON...');
      moduleSettingsBloc.add(GetModuleSettings(parsedMessage));
    } else {
      logger.e('Bluetooth -> Cannot parse data: $parsedMessage');
    }
  }

  Future<void> _countdown(String time) async {
    if (_protocolSelectedState) {
      if (await databaseProvider.getStart(time) > 0) {
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
      participant = await databaseProvider.getStartingParticipants(start.first);
      if (participant.isNotEmpty) {
        _isStarted = true;
        _isBetweenCategory = false;
        logger.d(
          'First participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
        );
        newVoiceText =
            'На старт приглашается номер ${participant.first.number}';
        if (_voiceName && participant.first.name != null) {
          newVoiceText += ', ${participant.first.name}.';
        } else {
          newVoiceText += '.';
        }
        participant = await databaseProvider.getStartingParticipants(start[1]);
        if (participant.isNotEmpty) {
          newVoiceText += ' Следующий номер ${participant.first.number}';
          if (_voiceName && participant.first.name != null) {
            newVoiceText += ', ${participant.first.name}.';
          } else {
            newVoiceText += '.';
          }
        }
      } else {
        participant = await databaseProvider.getStartingParticipants(start[1]);
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
                await databaseProvider.getNextParticipants(start.first);
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
