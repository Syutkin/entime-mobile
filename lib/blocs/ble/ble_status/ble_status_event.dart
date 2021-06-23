part of 'ble_status_bloc.dart';

@immutable
abstract class BleStatusEvent {
  const BleStatusEvent();

  List<Object> get props => [];
}

class BleMonitorStatusUpdate extends BleStatusEvent {
  final BleStatus bleStatus;

  BleMonitorStatusUpdate({
    required this.bleStatus,
  });

  @override
  List<Object> get props => [bleStatus];

  @override
  String toString() => 'BleMonitorStatus { $bleStatus }';
}