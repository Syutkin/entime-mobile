import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../logic/bluetooth_provider.dart';

class BluetoothDiscoveryState {
  const BluetoothDiscoveryState({
    required this.devices,
    required this.isDiscovering,
  });

  const BluetoothDiscoveryState.initial() : devices = const [], isDiscovering = false;

  final List<ScanResult> devices;
  final bool isDiscovering;

  BluetoothDiscoveryState copyWith({
    List<ScanResult>? devices,
    bool? isDiscovering,
  }) {
    return BluetoothDiscoveryState(
      devices: devices ?? this.devices,
      isDiscovering: isDiscovering ?? this.isDiscovering,
    );
  }
}

class BluetoothDiscoveryCubit extends Cubit<BluetoothDiscoveryState> {
  BluetoothDiscoveryCubit({required this._bluetoothProvider}) : super(const BluetoothDiscoveryState.initial()) {
    _isScanningSubscription = _bluetoothProvider.isScanning.listen(
      (isScanning) => emit(state.copyWith(isDiscovering: isScanning)),
    );
  }

  final IBluetoothProvider _bluetoothProvider;
  StreamSubscription<List<ScanResult>>? _scanResultsSubscription;
  StreamSubscription<bool>? _isScanningSubscription;

  Future<void> startDiscovery() async {
    if (state.isDiscovering) {
      return Future.value();
    }
    emit(state.copyWith(devices: const []));
    await _bluetoothProvider.requestPermissions();
    unawaited(_scanResultsSubscription?.cancel());
    _scanResultsSubscription = _bluetoothProvider.scanResultsAggregated().listen(
      (devices) => emit(state.copyWith(devices: devices)),
    );
    await _bluetoothProvider.startScan();
  }

  @override
  Future<void> close() async {
    await _scanResultsSubscription?.cancel();
    await _isScanningSubscription?.cancel();
    await _bluetoothProvider.stopScan();
    return super.close();
  }
}
