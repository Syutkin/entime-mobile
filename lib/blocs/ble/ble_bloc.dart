import 'dart:async';

import 'package:bloc/bloc.dart';

// import 'package:entime/blocs/blocs.dart';
import 'package:entime/data_providers/ble/ble_device_connector.dart';
import 'package:entime/data_providers/ble/ble_status_monitor.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:entime/data_providers/ble/ble_scanner.dart';
import 'package:entime/models/models.dart';

part 'ble_event.dart';

part 'ble_state.dart';

class BleBloc extends Bloc<BleEvent, BleState> {
  // uuid for entime start/finish module
  final String _uuid = '3d1182b8-ec3a-42c3-b1b4-70b28578fab3';

  late FlutterReactiveBle _ble;
  late BleStatusMonitor _bleStatusMonitor;
  BleStatus? _bleStatus;
  late BleScanner _bleScanner;
  late BleDeviceConnector _bleDeviceConnector;

  BleScannerStateModel? _bleScannerState;
  ConnectionStateUpdate? _bleConnectionState;
  DiscoveredDevice? _device;

  late StreamSubscription<BleScannerStateModel> _bleScannerSubscription;
  late StreamSubscription<ConnectionStateUpdate> _bleConnectionSubscription;
  late StreamSubscription<BleStatus?> _bleStatusMonitorSubscription;

  BleBloc() : super(BleState(
            // bleScannerState: BleScannerStateModel(
            //     discoveredDevices: [], scanIsInProgress: false),
            )) {
    _ble = FlutterReactiveBle();

    _bleStatusMonitor = BleStatusMonitor(_ble);
    _bleStatusMonitorSubscription = _bleStatusMonitor.state.listen((event) {
      add(BleMonitorStatus(bleStatus: event));
    });

    _bleScanner = BleScanner(ble: _ble);
    _bleScannerSubscription = _bleScanner.state.listen((event) {
      add(BleScannerStateUpdate(bleScannerState: event));
    });

    _bleDeviceConnector = BleDeviceConnector(ble: _ble);
    _bleConnectionSubscription = _bleDeviceConnector.state.listen((event) {
      add(BleConnectorStateUpdate(connectionState: event));
    });
  }

  @override
  Stream<BleState> mapEventToState(
    BleEvent event,
  ) async* {
    if (event is BleMonitorStatus) {
      _bleStatus = event.bleStatus;
      yield* _mapBleStateUpdateToState();
    }
    if (event is BleScannerStartScan) {
      if (await Permission.location.request().isGranted) {
          _bleScanner.startScan([Uuid.parse(_uuid)]);
      }
    }
    if (event is BleScannerStopScan) {
      await _bleScanner.stopScan();
    }
    if (event is BleScannerStateUpdate) {
      _bleScannerState = event.bleScannerState;
      yield* _mapBleStateUpdateToState();
    }
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

  Stream<BleState> _mapBleStateUpdateToState() async* {
    yield BleState(
      bleStatus: _bleStatus,
      bleScannerState: _bleScannerState,
      bleConnectionState: _bleConnectionState,
      bleSelectedDevice: _device,
    );
  }

  @override
  Future<void> close() {
    _bleScannerSubscription.cancel();
    _bleConnectionSubscription.cancel();
    _bleStatusMonitorSubscription.cancel();
    return super.close();
  }
}
