part of 'ble_bloc.dart';

abstract class BleEvent {
  const BleEvent();

  List<Object?> get props => [];
}

class BleScannerStartScan extends BleEvent {}

class BleScannerStopScan extends BleEvent {}

class BleScannerStateUpdate extends BleEvent {
  final BleScannerStateModel? bleScannerState;

  BleScannerStateUpdate({
    this.bleScannerState,
  });

  @override
  List<Object?> get props => [bleScannerState];

  @override
  String toString() =>
      'BleScannerState { Discovered devices: ${bleScannerState?.discoveredDevices}, Scan is in progress: ${bleScannerState?.scanIsInProgress} }';
}

class BleConnectorSelectDevice extends BleEvent {
  final DiscoveredDevice device;

  BleConnectorSelectDevice({
    required this.device,
  });

  @override
  List<Object?> get props => [device];
}

class BleConnectorConnect extends BleEvent {
  // final DiscoveredDevice device;
  //
  // BleConnectorConnect({
  //   required this.device,
  // });
  //
  // @override
  // List<Object?> get props => [device];
}

class BleConnectorDisconnect extends BleEvent {
  final String deviceId;

  BleConnectorDisconnect({
    required this.deviceId,
  });

  @override
  List<Object?> get props => [deviceId];
}

class BleConnectorStateUpdate extends BleEvent {
  final ConnectionStateUpdate? connectionState;

  BleConnectorStateUpdate({
    this.connectionState,
  });

  @override
  List<Object?> get props => [connectionState];

  @override
  String toString() =>
      'BleConnectorStateUpdate { Connection state: ${connectionState?.connectionState}, Device Id: ${connectionState?.deviceId}, Failure: ${connectionState?.failure} }';
}
