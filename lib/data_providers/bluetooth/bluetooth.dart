import 'dart:async';
import 'dart:typed_data';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

typedef ErrorHandler = void Function(String error);

class BluetoothBackgroundConnection {
  final BluetoothConnection _connection;

  String _messageBuffer = '';
  String _messagePacket = '';

  // Стрим с поступающей информацией от модуля
  final StreamController _messageController = StreamController.broadcast();

  Stream get message => _messageController.stream;

  bool isDisconnecting = false;

  bool get isConnected => _connection != null && _connection.isConnected;

  VoidCallback _onDisconnect;
  ErrorHandler _onSendError;

  void onDisconnect(VoidCallback callback) {
    _onDisconnect = callback;
  }

  void onSendError(ErrorHandler error) {
    _onSendError = error;
  }

  BluetoothBackgroundConnection._fromConnection(this._connection) {
    if (_connection != null) {
      _connection.input.listen(_onDataReceived).onDone(() {
        // Сообщаем что соединение закрыто
        // Далее на основе того, когда это произошло,
        // определяем кто закрыл соединение (в BluetoothBloc event/state)
        _onDisconnect();
      });
    }
  }

  void dispose() {
    _connection?.finish();
    _messageController.close();
  }

  void _onDataReceived(Uint8List data) {
    // Create message if there is '\r\n' sequence
    _messageBuffer += String.fromCharCodes(data);
    while (_messageBuffer.contains('\r\n')) {
      int index = _messageBuffer.indexOf('\r\n');
      _messagePacket = _messageBuffer.substring(0, index).trim();
      _messageController.add(_messagePacket);
      _messageBuffer = _messageBuffer.substring(index + 2);
    }
  }

  static Future<BluetoothBackgroundConnection> connect(
      BluetoothDevice server) async {
    final BluetoothConnection connection =
        await BluetoothConnection.toAddress(server.address).catchError((error) {
      print('BluetoothConnection -> Cannot connect, exception occurred');
      print(error);
    });
    return BluetoothBackgroundConnection._fromConnection(connection);
  }

  Future<void> start() async {
    await _connection.output.allSent;
  }

  Future<void> stop() async {
    await _connection?.finish();
  }

  /// Отсылает [text] в Bluetooth Serial
  ///
  /// Обрезает [text] с помощью trim() и добавляет в конец \r\n.
  /// Вызывает [onSendError] при ошибке
  Future<bool> sendMessage(String text) async {
    bool result = false;
    text.trim();
    //textEditingController.clear();
    if (text.isNotEmpty) {
      try {
        print('Sending message: $text');
        _connection.output.add(utf8.encode(text + '\r\n'));
        await _connection.output.allSent;
        result = true;
      } catch (e) {
        // Ignore error, but notify state
        print('Error sending message: $e');
        _onSendError(e);
        result = false;
      }
    }
    return result;
  }
}
