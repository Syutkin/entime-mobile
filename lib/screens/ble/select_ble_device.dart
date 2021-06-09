import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/ble/ble_device_list_entry.dart';
import 'package:entime/widgets/widgets.dart';

// Future<void> selectBleDevice(BuildContext context) async {
//   BlocProvider.of<BleBloc>(context).add(SelectBleDevice(
//       await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//         return SelectBleDeviceScreen();
//       }))));
// }

Future<void> selectBleDevice(BuildContext context) async {
  BlocProvider.of<BleBloc>(context).add(BleScannerStartScan());
  DiscoveredDevice? device =
      await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return SelectBleDeviceScreen();
  }));
  BlocProvider.of<BleBloc>(context).add(BleScannerStopScan());
  if (device != null) {
    BlocProvider.of<BleBloc>(context)
        .add(BleConnectorConnect(deviceId: device.id));
  }
}

class SelectBleDeviceScreen extends StatelessWidget {
  SelectBleDeviceScreen({
    Key? key,
  }) : super(key: key);

  // const SelectBleDeviceScreen(
  //     {required this.scannerState,
  //     required this.startScan,
  //     required this.stopScan});
  //
  // final BleScannerState scannerState;
  // final void Function(List<Uuid>) startScan;
  // final VoidCallback stopScan;

  // @override
  // _SelectBleDeviceScreen createState() => _SelectBleDeviceScreen();
// }

// class _SelectBleDeviceScreen extends State<SelectBleDeviceScreen> {
  // List<BluetoothDeviceWithAvailability> devices =
  //     <BluetoothDeviceWithAvailability>[];

  // Availability
  // StreamSubscription<BluetoothDiscoveryResult> _discoveryStreamSubscription;
  // final BleScannerState scannerState;

  // bool _isDiscovering;

  // _SelectBleDeviceScreen();

  // @override
  // void initState() {
  //   super.initState();

  // _isDiscovering = widget.checkAvailability;

  // if (_isDiscovering) {
  //   _startDiscovery();
  // }
  // _startScanning();
  // Setup a list of the bonded devices
  // FlutterBluetoothSerial.instance
  //     .getBondedDevices()
  //     .then((List<BluetoothDevice> bondedDevices) {
  //   setState(() {
  //     devices = bondedDevices
  //         .map(
  //           (device) => BluetoothDeviceWithAvailability(
  //             device,
  //             widget.checkAvailability
  //                 ? BluetoothDeviceAvailability.maybe
  //                 : BluetoothDeviceAvailability.yes,
  //           ),
  //         )
  //         .toList();
  //   });
  // });
  // }

  // void _restartDiscovery() {
  //   // setState(() {
  //   //   _isDiscovering = true;
  //   // });
  //   _startDiscovery();
  // }

  // void _startDiscovery() {
  //   //   _discoveryStreamSubscription =
  //   //       FlutterBluetoothSerial.instance.startDiscovery().listen((r) {
  //   //     setState(() {
  //   //       Iterator i = devices.iterator;
  //   //       while (i.moveNext()) {
  //   //         var _device = i.current;
  //   //         if (_device.device == r.device) {
  //   //           _device.availability = BluetoothDeviceAvailability.yes;
  //   //           _device.rssi = r.rssi;
  //   //         }
  //   //       }
  //   //     });
  //   //   });
  //   //
  //   //   _discoveryStreamSubscription.onDone(() {
  //   //     setState(() {
  //   //       // _isDiscovering = false;
  //   //     });
  //   //   });
  //   // }

  // @override
  // void dispose() {
  //   // Avoid memory leak (`setState` after dispose) and cancel discovery
  //   _discoveryStreamSubscription?.cancel();
  //   super.dispose();
  // }

  // @override
  // void dispose() {
  //   widget.stopScan();
  //   // _uuidController.dispose();
  //   super.dispose();
  // }
  //
  // void _startScanning() {
  //   widget.startScan([Uuid.parse(_uuid)]);
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BleBloc, BleState>(builder: (context, state) {
      bool scanIsInProgress = state.bleScannerState?.scanIsInProgress ?? false;
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
                  BlocProvider.of<BleBloc>(context).add(BleScannerStartScan());
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
                    itemCount: state.bleScannerState?.discoveredDevices.length,
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
    });
  }
}
