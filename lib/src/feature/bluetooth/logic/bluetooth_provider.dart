import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../bluetooth.dart';

abstract class IBluetoothProvider {
  FlutterBluetoothSerial get flutterBluetoothSerial;
  IBluetoothBackgroundConnection get bluetoothBackgroundConnection;

  Future<void> dispose();
}

class BluetoothProvider implements IBluetoothProvider {
  final FlutterBluetoothSerial _flutterBluetoothSerial;
  final IBluetoothBackgroundConnection _bluetoothBackgroundConnection;

  BluetoothProvider({
    required FlutterBluetoothSerial flutterBluetoothSerial,
    required IBluetoothBackgroundConnection bluetoothBackgroundConnection,
  })  : _flutterBluetoothSerial = flutterBluetoothSerial,
        _bluetoothBackgroundConnection = bluetoothBackgroundConnection;

  @override
  FlutterBluetoothSerial get flutterBluetoothSerial => _flutterBluetoothSerial;

  @override
  IBluetoothBackgroundConnection get bluetoothBackgroundConnection =>
      _bluetoothBackgroundConnection;

  @override
  Future<void> dispose() async {
    await bluetoothBackgroundConnection.dispose();
  }
}
