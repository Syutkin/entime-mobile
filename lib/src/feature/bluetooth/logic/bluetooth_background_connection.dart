// ignore_for_file: use_setters_to_change_properties, inference_failure_on_untyped_parameter

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:rxdart/subjects.dart';

import '../../../common/logger/logger.dart';

typedef ErrorHandler = void Function(String error);

abstract class IBluetoothBackgroundConnection {
  Future<void> connect(
    BluetoothDevice bluetoothDevice,
  );

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
  BluetoothConnection? _connection;

  String _messageBuffer = '';
  String _messagePacket = '';

  // Стрим с поступающей информацией от модуля
  final StreamController<String> _messageController = BehaviorSubject();

  @override
  Stream<String> get message => _messageController.stream;

  // bool isDisconnecting = false;

  @override
  bool get isConnected => _connection != null && _connection!.isConnected;

  late VoidCallback _onDisconnect;
  late ErrorHandler _onSendError;

  @override
  void onDisconnect(VoidCallback callback) {
    _onDisconnect = callback;
  }

  @override
  void onSendError(ErrorHandler error) {
    _onSendError = error;
  }

  // void _fromConnection(BluetoothConnection? connection) {
  //   if (_connection != null) {
  //     _connection!.input!.listen(_onDataReceived).onDone(() {
  //       // Сообщаем что соединение закрыто
  //       // Далее на основе того, когда это произошло,
  //       // определяем кто закрыл соединение (в BluetoothBloc event/state)
  //       _onDisconnect();
  //     });
  //   }
  // }

  @override
  Future<void> connect(
    BluetoothDevice bluetoothDevice,
  ) async {
    BluetoothConnection.toAddress(bluetoothDevice.address).then((connection) {
      _connection = connection;
    }).catchError((error) {
      logger.e('BluetoothConnection -> Cannot connect', error: error);
    });

    // if (_connection != null) {
    _connection?.input?.listen(_onDataReceived).onDone(() {
      // Сообщаем что соединение закрыто
      // Далее на основе того, когда это произошло,
      // определяем кто закрыл соединение (в BluetoothBloc event/state)
      _onDisconnect();
    });
    // }

    // BluetoothBackgroundConnection._fromConnection(connection);
  }

  @override
  Future<void> start() async {
    await _connection?.output.allSent;
  }

  @override
  Future<void> stop() async {
    await _connection?.finish();
  }

  @override
  Future<void> dispose() async {
    await _messageController.close();
    await _connection?.finish();
  }

  @override
  Future<bool> sendMessage(String text) async {
    bool result = false;
    text.trim();
    //textEditingController.clear();
    if (text.isNotEmpty) {
      try {
        logger.i('Sending message: $text');
        _connection?.output.add(utf8.encode('$text\r\n'));
        await _connection?.output.allSent;
        result = true;
      } on Exception catch (e) {
        // Ignore error, but notify state
        logger.e('Error sending message', error: e);
        _onSendError('$e');
        result = false;
      }
    }
    return result;
  }

  void _onDataReceived(Uint8List data) {
    // Create message if there is '\r\n' sequence
    _messageBuffer += String.fromCharCodes(data);
    while (_messageBuffer.contains('\r\n')) {
      final int index = _messageBuffer.indexOf('\r\n');
      _messagePacket = _messageBuffer.substring(0, index).trim();
      _messageController.add(_messagePacket);
      _messageBuffer = _messageBuffer.substring(index + 2);
    }
  }
}
