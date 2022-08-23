part of 'bluetooth_bloc.dart';

@immutable
abstract class BluetoothConnectionState extends Equatable {
  const BluetoothConnectionState();

  @override
  List<Object?> get props => [];
}

class BluetoothNotInitializedState extends BluetoothConnectionState {}

class BluetoothNotEnabledState extends BluetoothConnectionState {}

class BluetoothConnectingState extends BluetoothConnectionState {}

class BluetoothConnectedState extends BluetoothConnectionState {}

class BluetoothDisconnectingState extends BluetoothConnectionState {}

class BluetoothDisconnectedState extends BluetoothConnectionState {
  final BluetoothDevice? bluetoothDevice;

  const BluetoothDisconnectedState({this.bluetoothDevice});

  @override
  List<Object?> get props => [bluetoothDevice];
}
