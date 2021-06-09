part of 'ble_bloc.dart';

abstract class BleAbstractState {
  const BleAbstractState();

  List<Object?> get props => [];
}

class BleState extends BleAbstractState {
  final BleScannerStateModel? bleScannerState;
  final ConnectionStateUpdate? bleConnectionState;

  BleState({
    this.bleScannerState,
    this.bleConnectionState,
  });

  @override
  List<Object?> get props => [bleScannerState, bleConnectionState];
}
