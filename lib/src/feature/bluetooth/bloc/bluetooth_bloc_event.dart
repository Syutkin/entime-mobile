part of 'bluetooth_bloc.dart';

@freezed
class BluetoothEvent with _$BluetoothEvent {
  const factory BluetoothEvent.initialize() = InitializeBluetooth;
  const factory BluetoothEvent.enable() = EnableBluetooth;
  const factory BluetoothEvent.disable() = DisableBluetooth;
  const factory BluetoothEvent.selectDevice({
    BluetoothDeviceWithAvailability? deviceWithAvailability,
  }) = SelectDevice;
  const factory BluetoothEvent.connected() = Connected;
  const factory BluetoothEvent.connect({BluetoothDevice? selectedDevice}) =
      Connect;
  const factory BluetoothEvent.disconnect() = Disconnect;
  const factory BluetoothEvent.disconnected() = Disconnected;
  const factory BluetoothEvent.messageReceived({required String message}) =
      MessageReceived;
  const factory BluetoothEvent.sendMessage({required String message}) =
      SendMessage;
}
