import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/bluetooth_provider.dart';
import '../model/bluetooth_device_with_rssi.dart';

class BluetoothDiscoveryState {
  const BluetoothDiscoveryState({
    required this.devices,
    required this.isDiscovering,
  });

  const BluetoothDiscoveryState.initial()
    : devices = const [],
      isDiscovering = false;

  final List<BluetoothDeviceWithRSSI> devices;
  final bool isDiscovering;

  BluetoothDiscoveryState copyWith({
    List<BluetoothDeviceWithRSSI>? devices,
    bool? isDiscovering,
  }) {
    return BluetoothDiscoveryState(
      devices: devices ?? this.devices,
      isDiscovering: isDiscovering ?? this.isDiscovering,
    );
  }
}

class BluetoothDiscoveryCubit extends Cubit<BluetoothDiscoveryState> {
  BluetoothDiscoveryCubit({required IBluetoothProvider bluetoothProvider})
    : _bluetoothProvider = bluetoothProvider,
      super(const BluetoothDiscoveryState.initial()) {
    _isScanningSubscription = _bluetoothProvider.isScanning.listen(
      (isScanning) => emit(state.copyWith(isDiscovering: isScanning)),
    );
  }

  final IBluetoothProvider _bluetoothProvider;
  StreamSubscription<List<BluetoothDeviceWithRSSI>>? _scanResultsSubscription;
  StreamSubscription<bool>? _isScanningSubscription;

  Future<void> startDiscovery() async {
    emit(state.copyWith(isDiscovering: true, devices: const []));
    await _bluetoothProvider.requestPermissions();
    await _scanResultsSubscription?.cancel();
    _scanResultsSubscription = _bluetoothProvider.scanResultsWithRssi().listen(
      (devices) => emit(state.copyWith(devices: devices)),
    );
    await _bluetoothProvider.startScan();
  }

  Future<void> restartDiscovery() => startDiscovery();

  @override
  Future<void> close() async {
    await _scanResultsSubscription?.cancel();
    await _isScanningSubscription?.cancel();
    await _bluetoothProvider.stopScan();
    return super.close();
  }
}
