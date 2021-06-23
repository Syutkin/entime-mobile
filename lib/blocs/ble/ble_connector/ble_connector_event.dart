part of 'ble_connector_bloc.dart';

@immutable
abstract class BleConnectorEvent extends Equatable {
  const BleConnectorEvent();

  @override
  List<Object> get props => [];
}

class BleConnectorSelectDevice extends BleConnectorEvent {
  final DiscoveredDevice device;

  BleConnectorSelectDevice({
    required this.device,
  });

  @override
  List<Object> get props => [device];

  @override
  String toString() =>
      'DiscoveredDevice { Name: ${device.name}, Id: ${device.id} }';
}

class BleConnectorConnect extends BleConnectorEvent {}

class BleConnectorDisconnect extends BleConnectorEvent {
  final String deviceId;

  BleConnectorDisconnect({
    required this.deviceId,
  });

  @override
  List<Object> get props => [deviceId];
}

class BleConnectorStateUpdate extends BleConnectorEvent {
  final ConnectionStateUpdate connectionState;

  BleConnectorStateUpdate({
    required this.connectionState,
  });

  @override
  List<Object> get props => [connectionState];

  @override
  String toString() =>
      'BleConnectorStateUpdate { Connection state: ${connectionState.connectionState}, Device Id: ${connectionState.deviceId}, Failure: ${connectionState.failure} }';
}
