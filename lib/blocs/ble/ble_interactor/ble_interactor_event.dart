part of 'ble_interactor_bloc.dart';

@immutable
abstract class BleInteractorEvent extends Equatable {
  const BleInteractorEvent();

  @override
  List<Object> get props => [];
}

class BleInteractorSubscribe extends BleInteractorEvent {
  final String deviceId;

  BleInteractorSubscribe({
    required this.deviceId,
  });

  @override
  List<Object> get props => [deviceId];
}

class BleInteractorBatteryChargeEvent extends BleInteractorEvent {
  final int batteryCharge;

  BleInteractorBatteryChargeEvent({
    required this.batteryCharge,
  });

  @override
  List<Object> get props => [batteryCharge];

  @override
  String toString() => 'Battery charge { $batteryCharge% }';
}

class BleInteractorTimeEvent extends BleInteractorEvent {
  final String message;

  BleInteractorTimeEvent({
    required this.message,
  });

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'Time message { $message }';
}

class BleInteractorReadSettings extends BleInteractorEvent {
  final String deviceId;

  BleInteractorReadSettings({
    required this.deviceId,
  });

  @override
  List<Object> get props => [deviceId];

  @override
  String toString() => 'Read settings from { $deviceId }';
}

class BleInteractorWriteSettings extends BleInteractorEvent {
  final String deviceId;
  final String settings;

  BleInteractorWriteSettings({
    required this.deviceId,
    required this.settings,
  });

  @override
  List<Object> get props => [settings];

  @override
  String toString() => 'Write settings { $settings }';
}
