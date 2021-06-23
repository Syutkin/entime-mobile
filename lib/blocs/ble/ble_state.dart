part of 'ble_bloc.dart';

abstract class BleAbstractState {
  const BleAbstractState();

  List<Object?> get props => [];
}

class BleState extends BleAbstractState {
  final ConnectionStateUpdate? bleConnectionState;
  final DiscoveredDevice? bleSelectedDevice;

  BleState({
    this.bleConnectionState,
    this.bleSelectedDevice,
  });

  @override
  List<Object?> get props => [
        bleConnectionState,
        bleSelectedDevice,
      ];
}
