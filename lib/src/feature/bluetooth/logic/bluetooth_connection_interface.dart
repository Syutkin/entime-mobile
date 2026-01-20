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
  }) : _device = device,
       _txCharacteristic = txCharacteristic,
       _rxCharacteristic = rxCharacteristic {
    _rxSubscription = _rxCharacteristic.onValueReceived.listen((value) {
      if (!_inputController.isClosed) {
        _inputController.add(Uint8List.fromList(value));
      }
    });
    _connectionStateSubscription = _device.connectionState.listen((state) {
      if (state == BluetoothConnectionState.disconnected) {
        _closeInput();
      }
    });
  }

  final BluetoothDevice _device;
  final BluetoothCharacteristic _txCharacteristic;
  final BluetoothCharacteristic _rxCharacteristic;
  final StreamController<Uint8List> _inputController = StreamController.broadcast();
  late final StreamSubscription<List<int>> _rxSubscription;
  late final StreamSubscription<BluetoothConnectionState> _connectionStateSubscription;

  @override
  bool get isConnected => _device.isConnected;

  @override
  Stream<Uint8List>? get input => _inputController.stream;

  @override
  Future<void> write(Uint8List data) => _txCharacteristic.write(
        data,
        withoutResponse: false,
      );

  @override
  Future<void> close() async {
    await _rxSubscription.cancel();
    await _connectionStateSubscription.cancel();
    await _device.disconnect();
    _closeInput();
  }

  @override
  Future<void> finish() => close();

  void _closeInput() {
    if (!_inputController.isClosed) {
      _inputController.close();
    }
  }
}

/// Реальная фабрика для создания BLE-соединений (Nordic UART Service)
/// Используется в продакшене
class BluetoothConnectionFactory implements IBluetoothConnectionFactory {
  static final Guid _nusServiceUuid = Guid('6E400001-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid _nusTxUuid = Guid('6E400002-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid _nusRxUuid = Guid('6E400003-B5A3-F393-E0A9-E50E24DCCA9E');

  @override
  Future<IBluetoothConnection> connectToDevice(BluetoothDevice device) async {
    await device.connect(license: License.free, autoConnect: false);
    try {
      await device.requestMtu(247);
    } on Exception {
      // MTU request can fail on some devices; continue with default.
    }
    final services = await device.discoverServices();
    BluetoothCharacteristic? tx;
    BluetoothCharacteristic? rx;

    for (final service in services) {
      if (service.uuid == _nusServiceUuid) {
        for (final characteristic in service.characteristics) {
          if (characteristic.uuid == _nusTxUuid) {
            tx = characteristic;
          } else if (characteristic.uuid == _nusRxUuid) {
            rx = characteristic;
          }
        }
      }
    }

    if (tx == null || rx == null) {
      await device.disconnect();
      throw StateError('NUS service/characteristics not found');
    }

    await rx.setNotifyValue(true);

    return BleConnectionWrapper(
      device: device,
      txCharacteristic: tx,
      rxCharacteristic: rx,
    );
  }
}
