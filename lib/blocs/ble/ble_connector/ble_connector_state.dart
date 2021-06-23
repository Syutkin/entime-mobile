part of 'ble_connector_bloc.dart';

@immutable
class BleConnectorState {
  final ConnectionStateUpdate? bleConnectionState;
  final DiscoveredDevice? bleSelectedDevice;

  const BleConnectorState({
    this.bleConnectionState,
    this.bleSelectedDevice,
  });

  List<Object?> get props => [bleConnectionState, bleSelectedDevice];
}
