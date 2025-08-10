import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

/// Интерфейс для Bluetooth-соединения
/// Позволяет легко тестировать BluetoothBackgroundConnection
abstract class IBluetoothConnection {
  /// Проверяет, активно ли соединение
  bool get isConnected;

  /// Входящий поток данных
  Stream<Uint8List>? get input;

  /// Исходящий поток данных
  BluetoothStreamSink<Uint8List>? get output;

  /// Закрывает соединение
  Future<void> close();

  /// Завершает соединение
  Future<void> finish();
}

/// Интерфейс для фабрики Bluetooth-соединений
/// Позволяет легко заменить реальное соединение на мок в тестах
abstract class IBluetoothConnectionFactory {
  /// Создает соединение с устройством по адресу
  Future<IBluetoothConnection> connectToAddress(String address);
}

/// Обертка для реального BluetoothConnection
/// Реализует интерфейс IBluetoothConnection
class BluetoothConnectionWrapper implements IBluetoothConnection {
  BluetoothConnectionWrapper(this._connection);
  final BluetoothConnection _connection;

  @override
  bool get isConnected => _connection.isConnected;

  @override
  Stream<Uint8List>? get input => _connection.input;

  @override
  BluetoothStreamSink<Uint8List>? get output => _connection.output;

  @override
  Future<void> close() => _connection.close();

  @override
  Future<void> finish() => _connection.finish();
}

/// Реальная фабрика для создания Bluetooth-соединений
/// Используется в продакшене
class BluetoothConnectionFactory implements IBluetoothConnectionFactory {
  @override
  Future<IBluetoothConnection> connectToAddress(String address) async {
    final connection = await BluetoothConnection.toAddress(address);
    return BluetoothConnectionWrapper(connection);
  }
}
