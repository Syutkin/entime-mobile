part of 'bluetooth_bloc.dart';

@freezed
class BluetoothEvent with _$BluetoothEvent {
  const factory BluetoothEvent.initialize() = _InitializeBluetooth;
  const factory BluetoothEvent.enable() = _EnableBluetooth;
  const factory BluetoothEvent.disable() = _DisableBluetooth;
  const factory BluetoothEvent.selectDevice({
    BluetoothDeviceWithAvailability? deviceWithAvailability,
  }) = _SelectDevice;
  const factory BluetoothEvent.connected() = _Connected;
  const factory BluetoothEvent.connect({BluetoothDevice? selectedDevice}) =
      _Connect;
  const factory BluetoothEvent.disconnect() = _Disconnect;
  const factory BluetoothEvent.disconnected() = _Disconnected;
  const factory BluetoothEvent.messageReceived({required String message}) =
      _MessageReceived;
  const factory BluetoothEvent.sendMessage({required String message}) =
      _SendMessage;
}
