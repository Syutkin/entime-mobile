part of 'ble_interactor_bloc.dart';

@immutable
class BleInteractorState {
  final int? batteryCharge;
  final String? moduleSettings;
  // final EventService eventService;

  const BleInteractorState({
    this.batteryCharge,
    this.moduleSettings,
    // this.eventService,
  });

  List<Object?> get props => [batteryCharge, moduleSettings];
}

