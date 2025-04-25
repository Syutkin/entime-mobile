part of 'bluetooth_bloc.dart';

@freezed
sealed class BluetoothBlocState with _$BluetoothBlocState {
  const factory BluetoothBlocState.notInitialized() = BluetoothBlocStateNotInitialized;
  const factory BluetoothBlocState.notAvailable() = BluetoothBlocStateNotAvailable;
  const factory BluetoothBlocState.notEnabled() = BluetoothBlocStateNotEnabled;
  const factory BluetoothBlocState.connecting() = BluetoothBlocStateConnecting;
  const factory BluetoothBlocState.connected({BluetoothMessage? message}) = BluetoothBlocStateConnected;
  const factory BluetoothBlocState.disconnecting() = BluetoothBlocStateDisconnecting;
  const factory BluetoothBlocState.disconnected({BluetoothDevice? bluetoothDevice}) = BluetoothBlocStateDisconnected;
}
