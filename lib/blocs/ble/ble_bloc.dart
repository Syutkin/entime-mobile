import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import 'package:entime/data_providers/ble/ble_device_connector.dart';
import 'package:entime/models/models.dart';

part 'ble_event.dart';

part 'ble_state.dart';

class BleBloc extends Bloc<BleEvent, BleState> {

  FlutterReactiveBle ble;
  BleDeviceConnector bleDeviceConnector;

  ConnectionStateUpdate? _bleConnectionState;
  DiscoveredDevice? _device;

  late StreamSubscription<ConnectionStateUpdate> _bleConnectionSubscription;

  BleBloc({
    required this.ble,
    required this.bleDeviceConnector,
  }) : super(BleState()) {

    // _bleDeviceConnector = BleDeviceConnector(ble: _ble);
    _bleConnectionSubscription = bleDeviceConnector.state.listen((event) {
      add(BleConnectorStateUpdate(connectionState: event));
    });
  }

  @override
  Stream<BleState> mapEventToState(
    BleEvent event,
  ) async* {
    if (event is BleConnectorConnect) {
      if (_device != null) {
        await bleDeviceConnector.connect(_device!.id);
      }
    }
    if (event is BleConnectorDisconnect) {
      await bleDeviceConnector.disconnect(event.deviceId);
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

  Stream<BleState> _mapBleStateUpdateToState() async* {
    yield BleState(
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
