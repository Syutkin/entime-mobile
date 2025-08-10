

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:rxdart/subjects.dart';

import '../../../common/logger/logger.dart';
import 'bluetooth_connection_interface.dart';

typedef ErrorHandler = void Function(String error);

abstract class IBluetoothBackgroundConnection {
  Future<void> connect(BluetoothDevice bluetoothDevice);

  Stream<String> get message;

  bool get isConnected;

  Future<void> start();

  Future<void> stop();

  /// Отсылает [text] в Bluetooth Serial
  ///
  /// Обрезает [text] с помощью trim() и добавляет в конец \r\n.
  /// Вызывает [onSendError] при ошибке
  Future<bool> sendMessage(String text);

  Future<void> dispose();

  void onDisconnect(VoidCallback callback);

  void onSendError(ErrorHandler error);
}

class BluetoothBackgroundConnection implements IBluetoothBackgroundConnection {
  /// Конструктор с возможностью внедрения фабрики соединений
  BluetoothBackgroundConnection({
    IBluetoothConnectionFactory? connectionFactory,
  }) : _connectionFactory = connectionFactory ?? BluetoothConnectionFactory();
  IBluetoothConnection? _connection;
  StreamSubscription<Uint8List>? _connectionSubscription;

  String _messageBuffer = '';
  String _messagePacket = '';

  // Стрим с поступающей информацией от модуля
  final StreamController<String> _messageController = BehaviorSubject();

  @override
  Stream<String> get message => _messageController.stream;

  // bool isDisconnecting = false;

  @override
  bool get isConnected => _connection != null && _connection!.isConnected;

  VoidCallback? _onDisconnect;
  ErrorHandler? _onSendError;

  /// Фабрика для создания Bluetooth-соединений
  /// По умолчанию использует реальную фабрику, но может быть заменена в тестах
  final IBluetoothConnectionFactory _connectionFactory;

  @override
  void onDisconnect(VoidCallback callback) {
    _onDisconnect = callback;
  }

  @override
  void onSendError(ErrorHandler error) {
    _onSendError = error;
  }

  @override
  Future<void> connect(BluetoothDevice bluetoothDevice) async {
    try {
      await _connection?.close();
      _connection = await _connectionFactory.connectToAddress(bluetoothDevice.address);
      _connectionSubscription = _connection?.input?.listen(_onDataReceived);
      _connectionSubscription?.onDone(() async {
        // Сообщаем что соединение закрыто
        // Далее на основе того, когда это произошло,
        // определяем кто закрыл соединение (в BluetoothBloc event/state)
        _onDisconnect?.call();
        await _connectionSubscription?.cancel();
      });
    } catch (e) {
      logger.e('BluetoothConnection -> Cannot connect', error: e);
    }
  }

  @override
  Future<void> start() async {
    await _connection?.output?.allSent;
  }

  @override
  Future<void> stop() async {
    await _connection?.finish();
  }

  @override
  Future<void> dispose() async {
    await _messageController.close();
    await _connectionSubscription?.cancel();
    await _connection?.finish();
  }

  @override
  Future<bool> sendMessage(String message) async {
    var result = false;
    if (isConnected) {
      final text = message.trim();
      if (text.isNotEmpty) {
        try {
          logger.i('Sending message: $text');
          _connection?.output?.add(utf8.encode('$text\r\n'));
          await _connection?.output?.allSent;
          result = true;
        } on Exception catch (e) {
          // Ignore error, but notify state
          logger.e('Error sending message', error: e);
          _onSendError?.call('$e');
          result = false;
        }
      }
    } else {
      logger.w('Can not sending message: connection is not established');
      result = false;
    }
    return result;
  }

  void _onDataReceived(Uint8List data) {
    // Create message if there is '\r\n' sequence
    _messageBuffer += String.fromCharCodes(data);
    while (_messageBuffer.contains('\r\n')) {
      final index = _messageBuffer.indexOf('\r\n');
      _messagePacket = _messageBuffer.substring(0, index).trim();
      _messageController.add(_messagePacket);
      _messageBuffer = _messageBuffer.substring(index + 2);
    }
  }
}
