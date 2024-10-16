part of 'bluetooth_bloc.dart';

@freezed
class BluetoothBlocState with _$BluetoothBlocState {
  const factory BluetoothBlocState.notInitialized() =
      BluetoothNotInitialized;
  const factory BluetoothBlocState.notEnabled() = BluetoothNotEnabled;
  const factory BluetoothBlocState.connecting() = BluetoothConnecting;
  const factory BluetoothBlocState.connected({BluetoothMessage? message}) =
      BluetoothConnected;
  const factory BluetoothBlocState.disconnecting() =
      BluetoothDisconnecting;
  const factory BluetoothBlocState.disconnected({
    BluetoothDevice? bluetoothDevice,
  }) = BluetoothDisconnected;
}
