import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/localization/localization.dart';
import '../bloc/bluetooth_bloc.dart';
import '../model/bluetooth_device_with_rssi.dart';
import 'bluetooth_device_list_entry.dart';

Future<void> selectBluetoothDevice(BuildContext context) async {
  BlocProvider.of<BluetoothBloc>(context).add(
    BluetoothEvent.selectDevice(
      deviceWithRssi: await Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => const SelectDeviceScreen())),
    ),
  );
}

class SelectDeviceScreen extends StatefulWidget {
  const SelectDeviceScreen({this.checkAvailability = true, super.key});

  /// If true, on page start there is performed BLE scan.
  final bool checkAvailability;

  @override
  State<SelectDeviceScreen> createState() => _SelectDeviceScreen();
}

class _SelectDeviceScreen extends State<SelectDeviceScreen> {
  List<BluetoothDeviceWithRSSI> devices = <BluetoothDeviceWithRSSI>[];

  // Availability
  StreamSubscription<List<ScanResult>>? _scanResultsSubscription;
  StreamSubscription<bool>? _isScanningSubscription;
  bool _isDiscovering = false;

  // _SelectDeviceScreen();

  @override
  void initState() {
    super.initState();

    _isDiscovering = true;

    _isScanningSubscription = FlutterBluePlus.isScanning.listen((isScanning) {
      if (mounted) {
        setState(() {
          _isDiscovering = isScanning;
        });
      }
    });

    unawaited(_startDiscovery());
  }

  void _restartDiscovery() {
    setState(() {
      _isDiscovering = true;
    });
    unawaited(_startDiscovery());
  }

  Future<void> _startDiscovery() async {
    await [
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
      Permission.locationWhenInUse,
    ].request();

    _scanResultsSubscription?.cancel();
    devices = <BluetoothDeviceWithRSSI>[];

    _scanResultsSubscription = FlutterBluePlus.scanResults.listen((results) {
      setState(() {
        for (final result in results) {
          final existingIndex = devices.indexWhere((d) => d.device.remoteId == result.device.remoteId);
          if (existingIndex == -1) {
            devices.add(BluetoothDeviceWithRSSI(result.device, result.rssi));
          } else {
            devices[existingIndex].rssi = result.rssi;
          }
        }
      });
    });

    await FlutterBluePlus.startScan(timeout: const Duration(seconds: 4));
  }

  @override
  void dispose() {
    // Avoid memory leak (`setState` after dispose) and cancel discovery
    unawaited(_scanResultsSubscription?.cancel());
    unawaited(_isScanningSubscription?.cancel());
    unawaited(FlutterBluePlus.stopScan());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final list = devices
        .map(
          (device) => BluetoothDeviceListEntry(
            device: device.device,
            rssi: device.rssi,
            onTap: () {
              Navigator.of(context).pop(device);
            },
          ),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.current.I18nBluetooth_selectDevice),
        actions: <Widget>[
          if (_isDiscovering)
            FittedBox(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
              ),
            )
          else
            IconButton(icon: const Icon(Icons.replay), onPressed: _restartDiscovery),
        ],
      ),
      body: ListView(children: list),
    );
  }
}
