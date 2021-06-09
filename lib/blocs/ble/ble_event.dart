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
      'BleScannerStateUpdate { Discovered devices: ${bleScannerState?.discoveredDevices}, Scan is in progress: ${bleScannerState?.scanIsInProgress} }';
}

class BleConnectorConnect extends BleEvent {
  final String deviceId;

  BleConnectorConnect({
    required this.deviceId,
  });

  @override
  List<Object?> get props => [deviceId];
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
