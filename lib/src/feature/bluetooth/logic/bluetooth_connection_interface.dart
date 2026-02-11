import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../../../common/logger/logger.dart';
import 'bluetooth_uuids.dart';
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
        _seenDisconnected = true;
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
  bool _seenDisconnected = false;
  Completer<void>? _closeCompleter;

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
    if (_closeCompleter != null) {
      return _closeCompleter!.future;
    }
    _closeCompleter = Completer<void>();
    try {
      await _rxSubscription.cancel();
      await _batterySubscription?.cancel();
      await _connectionStateSubscription.cancel();
      if (!_seenDisconnected && _device.isConnected) {
        try {
          await _device.disconnect();
        } on FlutterBluePlusException catch (e) {
          if (e.function == 'disconnect' && e.code == FbpErrorCode.timeout.index) {
            logger.w('Bluetooth -> disconnect timed out', error: e);
          } else {
            logger.w('Bluetooth -> disconnect failed', error: e);
          }
        } on Exception catch (e) {
          logger.w('Bluetooth -> disconnect failed', error: e);
        }
      }
    } finally {
      _closeInput();
      _closeBattery();
      if (!(_closeCompleter?.isCompleted ?? true)) {
        _closeCompleter?.complete();
      }
    }
    return _closeCompleter!.future;
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
      if (service.uuid == BluetoothUuids.nusService) {
        for (final characteristic in service.characteristics) {
          if (characteristic.uuid == BluetoothUuids.nusTx) {
            tx = characteristic;
          } else if (characteristic.uuid == BluetoothUuids.nusRx) {
            rx = characteristic;
          }
        }
      } else if (service.uuid == BluetoothUuids.batteryService) {
        for (final characteristic in service.characteristics) {
          if (characteristic.uuid == BluetoothUuids.batteryLevel) {
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
