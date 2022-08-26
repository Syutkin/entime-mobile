part of 'bluetooth_bloc.dart';

@freezed
class BluetoothBlocState with _$BluetoothBlocState {
  const factory BluetoothBlocState.notInitialized() =
      BluetoothNotInitializedState;
  const factory BluetoothBlocState.notEnabled() = BluetoothNotEnabledState;
  const factory BluetoothBlocState.connecting() = BluetoothConnectingState;
  const factory BluetoothBlocState.connected() = BluetoothConnectedState;
  const factory BluetoothBlocState.disconnecting() =
      BluetoothDisconnectingState;
  const factory BluetoothBlocState.disconnected({
    BluetoothDevice? bluetoothDevice,
  }) = BluetoothDisconnectedState;
}
