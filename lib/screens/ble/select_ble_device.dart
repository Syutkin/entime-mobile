import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/ble/ble_device_list_entry.dart';
import 'package:entime/widgets/widgets.dart';

Future<void> selectBleDevice(BuildContext context) async {
  BlocProvider.of<BleBloc>(context).add(BleScannerStartScan());
  DiscoveredDevice? device =
      await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return SelectBleDeviceScreen();
  }));
  BlocProvider.of<BleBloc>(context).add(BleScannerStopScan());
  if (device != null) {
    BlocProvider.of<BleBloc>(context)
        .add(BleConnectorSelectDevice(device: device));
  }
}

class SelectBleDeviceScreen extends StatelessWidget {
  SelectBleDeviceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BleBloc, BleState>(builder: (context, state) {
      if (state.bleStatus == BleStatus.ready) {
        bool scanIsInProgress =
            state.bleScannerState?.scanIsInProgress ?? false;
        return Scaffold(
          appBar: AppBar(
            title: Text('Выберите модуль'),
            actions: [
              ProgressRefreshAction(
                isLoading: scanIsInProgress,
                onPressed: () {
                  if (scanIsInProgress) {
                    BlocProvider.of<BleBloc>(context).add(BleScannerStopScan());
                  } else {
                    BlocProvider.of<BleBloc>(context)
                        .add(BleScannerStartScan());
                  }
                },
              ),
            ],
          ),
          body: Column(
            children: [
              // Text('Доступные модули'),
              Scrollbar(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          state.bleScannerState?.discoveredDevices.length,
                      itemBuilder: (BuildContext context, int index) {
                        var device =
                            state.bleScannerState?.discoveredDevices[index];
                        if (device != null) {
                          return BleDeviceListEntry(
                            device: device,
                            onTap: () {
                              Navigator.of(context).pop(device);
                            },
                            // title: Text(device.name),
                            // subtitle: Text(device.id),
                          );
                        } else {
                          return Container();
                        }
                      })),
            ],
          ),
        );
      } else {
        return Scaffold(
          body: Center(
            child: Text(_determineText(state.bleStatus ?? BleStatus.unknown)),
          ),
        );
      }
    });
  }

  String _determineText(BleStatus status) {
    switch (status) {
      case BleStatus.unsupported:
        return 'This device does not support Bluetooth';
      case BleStatus.unauthorized:
        return 'Authorize the FlutterReactiveBle example app to use Bluetooth and location';
      case BleStatus.poweredOff:
        return 'Bluetooth is powered off on your device turn it on';
      case BleStatus.locationServicesDisabled:
        return 'Enable location services';
      case BleStatus.ready:
        return 'Bluetooth is up and running';
      default:
        return 'Waiting to fetch Bluetooth status $status';
    }
  }
}
