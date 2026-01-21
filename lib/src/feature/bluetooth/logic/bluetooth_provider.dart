import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../bluetooth.dart';

abstract class IBluetoothProvider {
  Stream<BluetoothAdapterState> get adapterState;

  Future<bool> get isAvailable;

  Future<bool> get isOn;

  Future<void> requestEnable();

  IBluetoothBackgroundConnection get bluetoothBackgroundConnection;

  Future<void> dispose();
}

class BluetoothProvider implements IBluetoothProvider {
  BluetoothProvider({
    required IBluetoothBackgroundConnection bluetoothBackgroundConnection,
  }) : _bluetoothBackgroundConnection = bluetoothBackgroundConnection;
  final IBluetoothBackgroundConnection _bluetoothBackgroundConnection;

  @override
  Stream<BluetoothAdapterState> get adapterState => FlutterBluePlus.adapterState;

  @override
  Future<bool> get isAvailable => FlutterBluePlus.isAvailable;

  @override
  Future<bool> get isOn async =>
      await FlutterBluePlus.adapterState.first == BluetoothAdapterState.on;

  @override
  Future<void> requestEnable() => FlutterBluePlus.turnOn();

  @override
  IBluetoothBackgroundConnection get bluetoothBackgroundConnection => _bluetoothBackgroundConnection;

  @override
  Future<void> dispose() async {
    await bluetoothBackgroundConnection.dispose();
  }
}
