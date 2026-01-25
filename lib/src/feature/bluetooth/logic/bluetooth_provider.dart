import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/logger/logger.dart';
import '../bluetooth.dart';

abstract class IBluetoothProvider {
  Stream<BluetoothAdapterState> get adapterState;

  Stream<bool> get isScanning;

  Stream<List<ScanResult>> get scanResults;

  Stream<List<BluetoothDeviceWithRSSI>> scanResultsWithRssi();

  Future<bool> get isSupported;

  Future<bool> get isOn;

  Future<void> requestEnable();

  Future<void> requestPermissions();

  Future<void> startScan({Duration timeout});

  Future<void> stopScan();

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
  Stream<bool> get isScanning => FlutterBluePlus.isScanning;

  @override
  Stream<List<ScanResult>> get scanResults => FlutterBluePlus.scanResults;

  @override
  Stream<List<BluetoothDeviceWithRSSI>> scanResultsWithRssi() async* {
    final devices = <BluetoothDeviceWithRSSI>[];
    await for (final results in scanResults) {
      for (final result in results) {
        final existingIndex = devices.indexWhere((d) => d.device.remoteId == result.device.remoteId);
        if (existingIndex == -1) {
          devices.add(BluetoothDeviceWithRSSI(result.device, result.rssi));
        } else {
          devices[existingIndex].rssi = result.rssi;
        }
      }
      yield List<BluetoothDeviceWithRSSI>.unmodifiable(devices);
    }
  }

  @override
  Future<bool> get isSupported => FlutterBluePlus.isSupported;

  @override
  Future<bool> get isOn async => await FlutterBluePlus.adapterState.first == BluetoothAdapterState.on;

  @override
  Future<void> requestEnable() => FlutterBluePlus.turnOn();

  @override
  Future<void> requestPermissions() async {
    if (!(Platform.isAndroid || Platform.isIOS)) {
      return;
    }
    try {
      await [
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
        Permission.locationWhenInUse,
      ].request();
    } on MissingPluginException {
      return;
    } catch (e) {
      logger.e('Bluetooth -> Can not request permissions', error: e);
    }
  }

  @override
  Future<void> startScan({Duration timeout = const Duration(seconds: 4)}) {
    return FlutterBluePlus.startScan(timeout: timeout);
  }

  @override
  Future<void> stopScan() => FlutterBluePlus.stopScan();

  @override
  IBluetoothBackgroundConnection get bluetoothBackgroundConnection => _bluetoothBackgroundConnection;

  @override
  Future<void> dispose() async {
    await bluetoothBackgroundConnection.dispose();
  }
}
