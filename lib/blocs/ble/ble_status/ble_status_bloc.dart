import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:meta/meta.dart';

import 'package:entime/data_providers/ble/ble_status_monitor.dart';

part 'ble_status_event.dart';

class BleStatusBloc extends Bloc<BleStatusEvent, BleStatus> {
  final BleStatusMonitor _bleStatusMonitor;
  late StreamSubscription<BleStatus?> _bleStatusMonitorSubscription;

  BleStatusBloc({required FlutterReactiveBle ble})
      : _bleStatusMonitor = BleStatusMonitor(ble),

        super(BleStatus.unknown) {
    _bleStatusMonitorSubscription = _bleStatusMonitor.state.listen((event) {
      add(BleMonitorStatusUpdate(bleStatus: event ?? BleStatus.unknown));
    });
  }

  @override
  Stream<BleStatus> mapEventToState(BleStatusEvent event) async* {
    if (event is BleMonitorStatusUpdate) {
      yield event.bleStatus;
    }
  }

  @override
  Future<void> close() {
    _bleStatusMonitorSubscription.cancel();
    return super.close();
  }
}
