part of 'bluetooth_bloc.dart';

@immutable
abstract class BluetoothEvent extends Equatable {
  const BluetoothEvent();

  @override
  List<Object?> get props => [];
}

class InitializeBluetooth extends BluetoothEvent {}

class EnableBluetooth extends BluetoothEvent {}

class DisableBluetooth extends BluetoothEvent {}

class SelectDevice extends BluetoothEvent {
  final BluetoothDeviceWithAvailability? deviceWithAvailability;

  const SelectDevice(this.deviceWithAvailability);

  @override
  List<Object?> get props => [deviceWithAvailability];
}

class Connected extends BluetoothEvent {}

class Connect extends BluetoothEvent {
  final BluetoothDevice? selectedDevice;

  const Connect(this.selectedDevice);

  @override
  List<Object?> get props => [selectedDevice];
}

class Disconnect extends BluetoothEvent {}

class Disconnected extends BluetoothEvent {}

class MessageReceived extends BluetoothEvent {
  final String message;

  const MessageReceived(this.message);

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'MessageReceived { message: $message }';
}

class SendMessage extends BluetoothEvent {
  final String message;

  const SendMessage(this.message);

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'SendMessage { message: $message }';
}
