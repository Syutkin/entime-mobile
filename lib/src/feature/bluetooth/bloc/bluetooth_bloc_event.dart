part of 'bluetooth_bloc.dart';

@freezed
sealed class BluetoothEvent with _$BluetoothEvent {
  const factory BluetoothEvent.initialize() = _Initialize;

  const factory BluetoothEvent.enable() = _Enable;

  const factory BluetoothEvent.selectDevice({BluetoothDeviceWithAvailability? deviceWithAvailability}) = _SelectDevice;

  const factory BluetoothEvent.connected() = _Connected;

  const factory BluetoothEvent.connect({BluetoothDevice? selectedDevice}) = _Connect;

  const factory BluetoothEvent.disconnect() = _Disconnect;

  const factory BluetoothEvent.disconnected() = _Disconnected;

  const factory BluetoothEvent.messageReceived({required String message, required int stageId}) = _MessageReceived;

  const factory BluetoothEvent.sendMessage({required String message}) = _SendMessage;
}
