import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:entime/blocs/ble/ble_interactor/ble_interactor_bloc.dart';
import 'package:entime/data_providers/ble/ble_device_connector.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:meta/meta.dart';

part 'ble_connector_event.dart';

part 'ble_connector_state.dart';

class BleConnectorBloc extends Bloc<BleConnectorEvent, BleConnectorState> {
  DiscoveredDevice? _device;
  ConnectionStateUpdate? _bleConnectionState;
  final BleDeviceConnector _bleDeviceConnector;
  late StreamSubscription<ConnectionStateUpdate> _bleConnectionSubscription;

  final BleInteractorBloc _bleInteractorBloc;

  BleConnectorBloc(
      {required FlutterReactiveBle ble,
      required BleInteractorBloc bleInteractorBloc})
      : _bleDeviceConnector = BleDeviceConnector(ble: ble),
        _bleInteractorBloc = bleInteractorBloc,
        super(BleConnectorState()) {
    _bleConnectionSubscription = _bleDeviceConnector.state.listen((event) {
      add(BleConnectorStateUpdate(connectionState: event));
      if (event.connectionState == DeviceConnectionState.connected) {
        _bleInteractorBloc
            .add(BleInteractorSubscribe(deviceId: event.deviceId));
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

  @override
  Future<void> close() {
    _bleConnectionSubscription.cancel();
    return super.close();
  }
}
