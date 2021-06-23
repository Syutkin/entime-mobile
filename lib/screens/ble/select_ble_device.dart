import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/ble/ble_device_list_entry.dart';
import 'package:entime/widgets/widgets.dart';

Future<void> selectBleDevice(BuildContext context) async {
  BlocProvider.of<BleScannerBloc>(context).add(BleScannerStart());
  DiscoveredDevice? device =
      await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return SelectBleDeviceScreen();
  }));
  BlocProvider.of<BleScannerBloc>(context).add(BleScannerStop());
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
    return BlocBuilder<BleStatusBloc, BleStatus>(
        builder: (context, bleStatusState) {
      if (bleStatusState == BleStatus.ready) {
        return BlocBuilder<BleScannerBloc, BleScannerState>(
            builder: (context, bleScannerState) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Выберите модуль'),
              actions: [
                ProgressRefreshAction(
                  isLoading: bleScannerState.scanIsInProgress,
                  onPressed: () {
                    if (bleScannerState.scanIsInProgress) {
                      BlocProvider.of<BleScannerBloc>(context)
                          .add(BleScannerStop());
                    } else {
                      BlocProvider.of<BleScannerBloc>(context)
                          .add(BleScannerStart());
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
                        itemCount: bleScannerState.discoveredDevices.length,
                        itemBuilder: (BuildContext context, int index) {
                          var device = bleScannerState.discoveredDevices[index];
                          // if (device != null) {
                          return BleDeviceListEntry(
                            device: device,
                            onTap: () {
                              Navigator.of(context).pop(device);
                            },
                            // title: Text(device.name),
                            // subtitle: Text(device.id),
                          );
                          // } else {
                          //   return Container();
                          // }
                        })),
              ],
            ),
          );
        });
      } else {
        return Scaffold(
          body: Center(
            child: Text(_determineText(bleStatusState)),
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
