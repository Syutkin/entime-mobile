import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../bluetooth.dart';

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
  late final BluetoothDiscoveryCubit _discoveryCubit;

  @override
  void initState() {
    super.initState();
    _discoveryCubit = BluetoothDiscoveryCubit(
      bluetoothProvider: context.read<BluetoothBloc>().bluetoothProvider,
    );
    if (widget.checkAvailability) {
      unawaited(_discoveryCubit.startDiscovery());
    }
  }

  @override
  void dispose() {
    unawaited(_discoveryCubit.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _discoveryCubit,
      child: BlocBuilder<BluetoothDiscoveryCubit, BluetoothDiscoveryState>(
        builder: (context, state) {
          final list = state.devices
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
                if (state.isDiscovering)
                  FittedBox(
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      child: const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                    ),
                  )
                else
                  IconButton(
                    icon: const Icon(Icons.replay),
                    onPressed: () => _discoveryCubit.restartDiscovery(),
                  ),
              ],
            ),
            body: ListView(children: list),
          );
        },
      ),
    );
  }
}
