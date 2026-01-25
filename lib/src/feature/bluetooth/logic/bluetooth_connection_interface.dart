import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

/// Интерфейс для Bluetooth-соединения
/// Позволяет легко тестировать BluetoothBackgroundConnection
abstract class IBluetoothConnection {
  /// Проверяет, активно ли соединение
  bool get isConnected;

  /// Входящий поток данных
  Stream<Uint8List>? get input;

  /// Поток уровня батареи (0..100), если поддерживается
  Stream<int>? get batteryLevel;

  /// Отправка данных в характеристику TX (NUS)
  Future<void> write(Uint8List data);

  /// Закрывает соединение
  Future<void> close();

  /// Завершает соединение
  Future<void> finish();
}

/// Интерфейс для фабрики Bluetooth-соединений
/// Позволяет легко заменить реальное соединение на мок в тестах
abstract class IBluetoothConnectionFactory {
  /// Создает соединение с BLE-устройством
  Future<IBluetoothConnection> connectToDevice(BluetoothDevice device);
}

/// Обертка для BLE-соединения
/// Реализует интерфейс IBluetoothConnection
class BleConnectionWrapper implements IBluetoothConnection {
  BleConnectionWrapper({
    required BluetoothDevice device,
    required BluetoothCharacteristic txCharacteristic,
    required BluetoothCharacteristic rxCharacteristic,
    BluetoothCharacteristic? batteryCharacteristic,
  }) : _device = device,
       _txCharacteristic = txCharacteristic,
       _rxCharacteristic = rxCharacteristic,
       _batteryCharacteristic = batteryCharacteristic {
    _rxSubscription = _rxCharacteristic.onValueReceived.listen((value) {
      if (!_inputController.isClosed) {
        _inputController.add(Uint8List.fromList(value));
      }
    });
    if (_batteryCharacteristic != null) {
      _batterySubscription = _batteryCharacteristic.onValueReceived.listen((value) {
        if (value.isNotEmpty && !_batteryController.isClosed) {
          _batteryController.add(value.first);
        }
      });
      unawaited(_readInitialBatteryLevel());
    }
    _connectionStateSubscription = _device.connectionState.listen((state) {
      if (state == BluetoothConnectionState.disconnected) {
        _closeInput();
        _closeBattery();
      }
    });
  }

  final BluetoothDevice _device;
  final BluetoothCharacteristic _txCharacteristic;
  final BluetoothCharacteristic _rxCharacteristic;
  final BluetoothCharacteristic? _batteryCharacteristic;
  final StreamController<Uint8List> _inputController = StreamController.broadcast();
  final StreamController<int> _batteryController = StreamController.broadcast();
  late final StreamSubscription<List<int>> _rxSubscription;
  StreamSubscription<List<int>>? _batterySubscription;
  late final StreamSubscription<BluetoothConnectionState> _connectionStateSubscription;

  @override
  bool get isConnected => _device.isConnected;

  @override
  Stream<Uint8List>? get input => _inputController.stream;

  @override
  Stream<int>? get batteryLevel => _batteryCharacteristic == null ? null : _batteryController.stream;

  @override
  Future<void> write(Uint8List data) => _txCharacteristic.write(
    data,
  );

  @override
  Future<void> close() async {
    await _rxSubscription.cancel();
    await _batterySubscription?.cancel();
    await _connectionStateSubscription.cancel();
    await _device.disconnect();
    _closeInput();
    _closeBattery();
  }

  @override
  Future<void> finish() => close();

  void _closeInput() {
    if (!_inputController.isClosed) {
      unawaited(_inputController.close());
    }
  }

  void _closeBattery() {
    if (!_batteryController.isClosed) {
      unawaited(_batteryController.close());
    }
  }

  Future<void> _readInitialBatteryLevel() async {
    try {
      final value = await _batteryCharacteristic?.read();
      if (value != null && value.isNotEmpty && !_batteryController.isClosed) {
        _batteryController.add(value.first);
      }
    } on Exception {
      // Ignore initial read failures.
    }
  }
}

/// Реальная фабрика для создания BLE-соединений (Nordic UART Service)
/// Используется в продакшене
class BluetoothConnectionFactory implements IBluetoothConnectionFactory {
  static final Guid _nusServiceUuid = Guid('6E400001-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid _nusTxUuid = Guid('6E400002-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid _nusRxUuid = Guid('6E400003-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid _batteryServiceUuid = Guid('0000180F-0000-1000-8000-00805F9B34FB');
  static final Guid _batteryLevelUuid = Guid('00002A19-0000-1000-8000-00805F9B34FB');

  @override
  Future<IBluetoothConnection> connectToDevice(BluetoothDevice device) async {
    await device.connect(license: License.free);
    try {
      await device.requestMtu(247);
    } on Exception {
      // MTU request can fail on some devices; continue with default.
    }
    final services = await device.discoverServices();
    BluetoothCharacteristic? tx;
    BluetoothCharacteristic? rx;
    BluetoothCharacteristic? battery;

    for (final service in services) {
      if (service.uuid == _nusServiceUuid) {
        for (final characteristic in service.characteristics) {
          if (characteristic.uuid == _nusTxUuid) {
            tx = characteristic;
          } else if (characteristic.uuid == _nusRxUuid) {
            rx = characteristic;
          }
        }
      } else if (service.uuid == _batteryServiceUuid) {
        for (final characteristic in service.characteristics) {
          if (characteristic.uuid == _batteryLevelUuid) {
            battery = characteristic;
          }
        }
      }
    }

    if (tx == null || rx == null) {
      await device.disconnect();
      throw StateError('NUS service/characteristics not found');
    }

    await rx.setNotifyValue(true);
    if (battery != null) {
      try {
        await battery.setNotifyValue(true);
      } on Exception {
        // Some devices don't allow BAS notifications; ignore.
      }
    }

    return BleConnectionWrapper(
      device: device,
      txCharacteristic: tx,
      rxCharacteristic: rx,
      batteryCharacteristic: battery,
    );
  }
}
