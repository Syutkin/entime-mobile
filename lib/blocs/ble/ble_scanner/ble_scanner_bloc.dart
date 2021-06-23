import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:entime/data_providers/ble/ble_scanner.dart';
import 'package:entime/models/ble_scanner.dart';

part 'ble_scanner_event.dart';

part 'ble_scanner_state.dart';

class BleScannerBloc extends Bloc<BleScannerEvent, BleScannerState> {
  // uuid for entime start/finish module
  final String _uuid = '3d1182b8-ec3a-42c3-b1b4-70b28578fab3';
  final BleScanner _bleScanner;
  late StreamSubscription<BleScannerStateModel> _bleScannerSubscription;

  BleScannerBloc({required FlutterReactiveBle ble})
      : _bleScanner = BleScanner(ble: ble),
        super(BleScannerState(
          discoveredDevices: [],
          scanIsInProgress: false,
        )) {
    _bleScannerSubscription = _bleScanner.state.listen((event) {
      add(BleScannerStatusUpdate(
          discoveredDevices: event.discoveredDevices,
          scanIsInProgress: event.scanIsInProgress));
    });
  }

  @override
  Stream<BleScannerState> mapEventToState(BleScannerEvent event) async* {
    if (event is BleScannerStatusUpdate) {
      yield BleScannerState(
          discoveredDevices: event.discoveredDevices,
          scanIsInProgress: event.scanIsInProgress);
    }
    if (event is BleScannerStart) {
      if (await Permission.location.request().isGranted) {
        _bleScanner.startScan([Uuid.parse(_uuid)]);
      }
    }
    if (event is BleScannerStop) {
      await _bleScanner.stopScan();
    }
  }

  @override
  Future<void> close() {
    _bleScannerSubscription.cancel();
    return super.close();
  }
}
