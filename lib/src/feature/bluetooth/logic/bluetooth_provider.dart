import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/logger/logger.dart';
import '../../../common/model/platform_info.dart';
import '../../app_info/logic/app_info_provider.dart';
import '../../app_info/logic/app_info_provider_io.dart';
import '../bluetooth.dart';

abstract class IBluetoothProvider {
  Stream<BluetoothAdapterState> get adapterState;

  Stream<bool> get isScanning;

  Stream<List<ScanResult>> get scanResults;

  Stream<List<ScanResult>> scanResultsAggregated();

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
    required IAppInfoProvider appInfo,
    required IBluetoothBackgroundConnection bluetoothBackgroundConnection,
    PlatformInfo? platformInfo,
  })  : _appInfo = appInfo,
        _platformInfo = platformInfo ?? DefaultPlatformInfo(),
        _bluetoothBackgroundConnection = bluetoothBackgroundConnection;
  final IBluetoothBackgroundConnection _bluetoothBackgroundConnection;
  final IAppInfoProvider _appInfo;
  final PlatformInfo _platformInfo;

  @override
  Stream<BluetoothAdapterState> get adapterState => FlutterBluePlus.adapterState;

  @override
  Stream<bool> get isScanning => FlutterBluePlus.isScanning;

  @override
  Stream<List<ScanResult>> get scanResults => FlutterBluePlus.scanResults;

  @override
  Stream<List<ScanResult>> scanResultsAggregated() async* {
    final devices = <ScanResult>[];
    await for (final results in scanResults) {
      for (final result in results) {
        final existingIndex = devices.indexWhere((d) => d.device.remoteId == result.device.remoteId);
        if (existingIndex == -1) {
          devices.add(result);
        } else {
          devices[existingIndex] = result;
        }
      }
      yield List<ScanResult>.unmodifiable(devices);
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
    if (!(_platformInfo.isAndroid || _platformInfo.isIOS)) {
      return;
    }
    try {
      if (_platformInfo.isAndroid) {
        final sdkInt = _appInfo is AndroidAppInfoProvider
            ? _appInfo.androidSdkInt
            : null;
        if (sdkInt != null && sdkInt >= 31) {
          await [
            Permission.bluetoothScan,
            Permission.bluetoothConnect,
          ].request();
        } else {
          await [
            Permission.locationWhenInUse,
          ].request();
        }
        return;
      }
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
  Future<void> startScan({Duration timeout = const Duration(seconds: 15)}) {
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
