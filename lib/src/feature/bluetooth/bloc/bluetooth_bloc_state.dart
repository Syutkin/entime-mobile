part of 'bluetooth_bloc.dart';

@freezed
class BluetoothBlocState with _$BluetoothBlocState {
  const factory BluetoothBlocState.notInitialized() = _BluetoothNotInitialized;
  const factory BluetoothBlocState.notAvailable() = _BluetoothNotAvailable;
  const factory BluetoothBlocState.notEnabled() = _BluetoothNotEnabled;
  const factory BluetoothBlocState.connecting() = _BluetoothConnecting;
  const factory BluetoothBlocState.connected({BluetoothMessage? message}) =
      _BluetoothConnected;
  const factory BluetoothBlocState.disconnecting() = _BluetoothDisconnecting;
  const factory BluetoothBlocState.disconnected({
    BluetoothDevice? bluetoothDevice,
  }) = _BluetoothDisconnected;
}
