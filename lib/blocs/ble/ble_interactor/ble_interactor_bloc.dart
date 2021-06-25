import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:entime/blocs/blocs.dart';
import 'package:entime/data_providers/ble/ble_device_interactor.dart';
import 'package:entime/models/ble_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:meta/meta.dart';

part 'ble_interactor_event.dart';

part 'ble_interactor_state.dart';

class BleInteractorBloc extends Bloc<BleInteractorEvent, BleInteractorState> {
  final _bleService = BleService();
  final BleDeviceInteractor _serviceDiscoverer;

  late StreamSubscription<BleConnectorState> _bleConnectionSubscription;

  final ModuleSettingsBloc _moduleSettingsBloc;

  int? _batteryCharge;
  String? _moduleSettings;

  BleInteractorBloc({
    required FlutterReactiveBle ble,
    required ModuleSettingsBloc moduleSettingsBloc,
  })   : _moduleSettingsBloc = moduleSettingsBloc,
        _serviceDiscoverer = BleDeviceInteractor(
            bleDiscoverServices: ble.discoverServices,
            readCharacteristic: ble.readCharacteristic,
            writeWithResponse: ble.writeCharacteristicWithResponse,
            writeWithOutResponse: ble.writeCharacteristicWithoutResponse,
            subscribeToCharacteristic: ble.subscribeToCharacteristic),
        super(BleInteractorState(batteryCharge: null));

  @override
  Stream<BleInteractorState> mapEventToState(
    BleInteractorEvent event,
  ) async* {
    if (event is BleInteractorSubscribe) {
      _subscribe(event.deviceId);
    }
    if (event is BleInteractorBatteryChargeEvent) {
      _batteryCharge = event.batteryCharge;
      yield* _mapBleInteractorUpdateToState();
    }
    if (event is BleInteractorTimeEvent) {
      //ToDo: parse message and apply results
    }
    if (event is BleInteractorReadSettings) {
      var settingsCharacteristic = QualifiedCharacteristic(
          deviceId: event.deviceId,
          serviceId: _bleService.serialService.serviceId,
          characteristicId: _bleService.serialService.settingsCharacteristicId);

      _moduleSettings = String.fromCharCodes(
          await _serviceDiscoverer.readCharacteristic(settingsCharacteristic));
      print(_moduleSettings);
      if (_moduleSettings != null) {
        _moduleSettingsBloc.add(GetModuleSettings(_moduleSettings!));
      }
      yield* _mapBleInteractorUpdateToState();
    }
    if (event is BleInteractorWriteSettings) {
      var settingsCharacteristic = QualifiedCharacteristic(
          deviceId: event.deviceId,
          serviceId: _bleService.serialService.serviceId,
          characteristicId: _bleService.serialService.settingsCharacteristicId);

      await _serviceDiscoverer.writeCharacteristicWithoutResponse(
          settingsCharacteristic, AsciiEncoder().convert(event.settings));
    }
  }

  Stream<BleInteractorState> _mapBleInteractorUpdateToState() async* {
    yield BleInteractorState(
      batteryCharge: _batteryCharge,
      moduleSettings: _moduleSettings,
    );
  }

  void _subscribe(String deviceId) async {
    var batteryCharacteristic = QualifiedCharacteristic(
        deviceId: deviceId,
        serviceId: _bleService.batteryService.serviceId,
        characteristicId: _bleService.batteryService.chargeId);
    var timeEventCharacteristic = QualifiedCharacteristic(
        deviceId: deviceId,
        serviceId: _bleService.serialService.serviceId,
        characteristicId: _bleService.serialService.timeEventId);

    var result = await _serviceDiscoverer.discoverServices(deviceId);
    for (var service in result) {
      print(service);
      if (service.serviceId == batteryCharacteristic.serviceId) {
        var initialBattery =
            await _serviceDiscoverer.readCharacteristic(batteryCharacteristic);
        add(BleInteractorBatteryChargeEvent(
            batteryCharge: initialBattery.first));
        _serviceDiscoverer
            .subScribeToCharacteristic(QualifiedCharacteristic(
          deviceId: deviceId,
          serviceId: service.serviceId,
          characteristicId: batteryCharacteristic.characteristicId,
        ))
            .listen(
          (data) {
            int charge = data.first;
            add(BleInteractorBatteryChargeEvent(batteryCharge: charge));
          },
          onDone: () => print('Subscribe to Battery service canceled'),
          onError: (e) => print('Battery subscribe service error: $e'),
        );
      }
      if (service.serviceId == timeEventCharacteristic.serviceId) {
        _serviceDiscoverer
            .subScribeToCharacteristic(QualifiedCharacteristic(
          deviceId: deviceId,
          serviceId: service.serviceId,
          characteristicId: timeEventCharacteristic.characteristicId,
        ))
            .listen(
          (data) {
            String message = String.fromCharCodes(data);
            add(BleInteractorTimeEvent(
              message: message,
            ));
          },
          onDone: () => print('Subscribe to TimeEvent service canceled'),
          onError: (e) => print('TimeEvent subscribe service error: $e'),
        );
      }
    }
  }

  @override
  Future<void> close() {
    _bleConnectionSubscription.cancel();
    return super.close();
  }
}
