import 'dart:async';

import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:entime/models/models.dart';

class BleScanner implements ReactiveState<BleScannerStateModel> {
  BleScanner({
    required FlutterReactiveBle ble,
  }) : _ble = ble;

  final FlutterReactiveBle _ble;

  final StreamController<BleScannerStateModel> _stateStreamController =
      StreamController();

  final _devices = <DiscoveredDevice>[];

  @override
  Stream<BleScannerStateModel> get state => _stateStreamController.stream;

  void startScan(List<Uuid> serviceIds) {
    print('Start ble discovery');
    var error = false;
    _devices.clear();
    _subscription?.cancel();
    _subscription =
        _ble.scanForDevices(withServices: serviceIds).listen((device) {
      final knownDeviceIndex = _devices.indexWhere((d) => d.id == device.id);
      if (knownDeviceIndex >= 0) {
        _devices[knownDeviceIndex] = device;
      } else {
        _devices.add(device);
      }
      _pushState();
    }, onError: (Object e) {
      print('Device scan fails with error: $e');
      error = true;
      _pushState(error);
    }, cancelOnError: true);
    _pushState();
  }

  void _pushState([bool error = false]) {
    _stateStreamController.add(
      BleScannerStateModel(
        discoveredDevices: _devices,
        scanIsInProgress: error == false ? _subscription != null : false,
      ),
    );
  }

  Future<void> stopScan() async {
    print('Stop ble discovery');
    await _subscription?.cancel();
    _subscription = null;
    _pushState();
  }

  Future<void> dispose() async {
    await _stateStreamController.close();
  }

  StreamSubscription? _subscription;
}
