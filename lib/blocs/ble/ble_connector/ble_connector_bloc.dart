import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entime/data_providers/ble/ble_device_connector.dart';
import 'package:entime/data_providers/ble/ble_device_interactor.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:meta/meta.dart';

part 'ble_connector_event.dart';

part 'ble_connector_state.dart';

class BleConnectorBloc extends Bloc<BleConnectorEvent, BleConnectorState> {
  DiscoveredDevice? _device;
  ConnectionStateUpdate? _bleConnectionState;
  final BleDeviceConnector _bleDeviceConnector;
  late StreamSubscription<ConnectionStateUpdate> _bleConnectionSubscription;

  final BleDeviceInteractor _serviceDiscoverer;

  BleConnectorBloc({required FlutterReactiveBle ble})
      : _bleDeviceConnector = BleDeviceConnector(ble: ble),
        _serviceDiscoverer = BleDeviceInteractor(
            bleDiscoverServices: ble.discoverServices,
            readCharacteristic: ble.readCharacteristic,
            writeWithResponse: ble.writeCharacteristicWithResponse,
            writeWithOutResponse: ble.writeCharacteristicWithoutResponse,
            subscribeToCharacteristic: ble.subscribeToCharacteristic),
        super(BleConnectorState()) {
    _bleConnectionSubscription = _bleDeviceConnector.state.listen((event) {
      add(BleConnectorStateUpdate(connectionState: event));
      switch (event.connectionState) {
        case DeviceConnectionState.connecting:
          break;
        case DeviceConnectionState.connected:
          _subscribe(event.deviceId);
          break;
        case DeviceConnectionState.disconnecting:
          break;
        case DeviceConnectionState.disconnected:
          break;
      }
    });
  }

  @override
  Stream<BleConnectorState> mapEventToState(BleConnectorEvent event) async* {
    if (event is BleConnectorConnect) {
      if (_device != null) {
        await _bleDeviceConnector.connect(_device!.id);
      }
    }
    if (event is BleConnectorDisconnect) {
      await _bleDeviceConnector.disconnect(event.deviceId);
    }
    if (event is BleConnectorStateUpdate) {
      _bleConnectionState = event.connectionState;
      yield* _mapBleStateUpdateToState();
    }
    if (event is BleConnectorSelectDevice) {
      _device = event.device;
      yield* _mapBleStateUpdateToState();
    }
  }

  Stream<BleConnectorState> _mapBleStateUpdateToState() async* {
    yield BleConnectorState(
      bleConnectionState: _bleConnectionState,
      bleSelectedDevice: _device,
    );
  }

  void _subscribe(String deviceId) async {
    var batteryCharacteristic = QualifiedCharacteristic(
        deviceId: deviceId,
        serviceId: Uuid.parse('0000180f-0000-1000-8000-00805f9b34fb'),
        characteristicId: Uuid.parse('00002a19-0000-1000-8000-00805f9b34fb'));

    var result = await _serviceDiscoverer.discoverServices(deviceId);
    var counter = 0;
    for (var service in result) {
      print(service);
      if (service.serviceId == batteryCharacteristic.serviceId) {
        var initialBattery =
            await _serviceDiscoverer.readCharacteristic(batteryCharacteristic);
        print('initialBattery: $initialBattery');
        _serviceDiscoverer
            .subScribeToCharacteristic(QualifiedCharacteristic(
          deviceId: deviceId,
          serviceId: service.serviceId,
          characteristicId: Uuid.parse('00002a19-0000-1000-8000-00805f9b34fb'),
        ))
            .listen(
          (data) {
            print('[$counter] Battery event: $data');
            counter++;
          },
          onDone: () => print('Subscribe to Battery service canceled'),
          onError: (e) => print('Battery subscribe service error: $e'),
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
