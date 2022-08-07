import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../common/localization/localization.dart';
import '../bloc/bluetooth_bloc.dart';
import '../model/bluetooth.dart';
import 'bluetooth_device_list_entry.dart';

Future<void> selectBluetoothDevice(BuildContext context) async {
  BlocProvider.of<BluetoothBloc>(context).add(SelectDevice(
      await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return const SelectBondedDeviceScreen();
  }))));
}

class SelectBondedDeviceScreen extends StatefulWidget {
  /// If true, on page start there is performed discovery upon the bonded devices.
  /// Then, if they are not available, they would be disabled from the selection.
  final bool checkAvailability;

  const SelectBondedDeviceScreen({this.checkAvailability = true, Key? key})
      : super(key: key);

  @override
  State<SelectBondedDeviceScreen> createState() => _SelectBondedDeviceScreen();
}

class _SelectBondedDeviceScreen extends State<SelectBondedDeviceScreen> {
  List<BluetoothDeviceWithAvailability> devices =
      <BluetoothDeviceWithAvailability>[];

  // Availability
  StreamSubscription<BluetoothDiscoveryResult>? _discoveryStreamSubscription;
  bool _isDiscovering = false;

  // _SelectBondedDeviceScreen();

  @override
  void initState() {
    super.initState();

    _isDiscovering = widget.checkAvailability;

    if (_isDiscovering) {
      _startDiscovery();
    }

    // Setup a list of the bonded devices
    FlutterBluetoothSerial.instance
        .getBondedDevices()
        .then((bondedDevices) {
      setState(() {
        devices = bondedDevices
            .map(
              (device) => BluetoothDeviceWithAvailability(
                device,
                widget.checkAvailability
                    ? BluetoothDeviceAvailability.maybe
                    : BluetoothDeviceAvailability.yes,
              ),
            )
            .toList();
      });
    });
  }

  void _restartDiscovery() {
    setState(() {
      _isDiscovering = true;
    });
    _startDiscovery();
  }

  void _startDiscovery() {
    _discoveryStreamSubscription =
        FlutterBluetoothSerial.instance.startDiscovery().listen((r) {
      setState(() {
        final Iterator<BluetoothDeviceWithAvailability> i = devices.iterator;
        while (i.moveNext()) {
          final device = i.current;
          if (device.device == r.device) {
            device.availability = BluetoothDeviceAvailability.yes;
            device.rssi = r.rssi;
          }
        }
      });
    });

    _discoveryStreamSubscription?.onDone(() {
      setState(() {
        _isDiscovering = false;
      });
    });
  }

  @override
  void dispose() {
    // Avoid memory leak (`setState` after dispose) and cancel discovery
    _discoveryStreamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<BluetoothDeviceListEntry> list = devices
        .map((device) => BluetoothDeviceListEntry(
              device: device.device,
              rssi: device.rssi,
//      enabled: _device.availability == BluetoothDeviceAvailability.yes,
              onTap: () {
                Navigator.of(context).pop(device);
              },
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.current.I18nBluetooth_selectDevice),
        actions: <Widget>[
          _isDiscovering
              ? FittedBox(
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                )
              : IconButton(
                  icon: const Icon(Icons.replay),
                  onPressed: _restartDiscovery,
                )
        ],
      ),
      body: ListView(children: list),
    );
  }
}
