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
  const SelectDeviceScreen({super.key});

  @override
  State<SelectDeviceScreen> createState() => _SelectDeviceScreen();
}

class _SelectDeviceScreen extends State<SelectDeviceScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(context.read<BluetoothDiscoveryCubit>().startDiscovery());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BluetoothDiscoveryCubit, BluetoothDiscoveryState>(
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
                SizedBox.square(
                  dimension: kMinInteractiveDimension,
                  child: Center(
                    child: SizedBox.square(
                      dimension: IconTheme.of(context).size ?? 24,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                  ),
                )
              else
                IconButton(
                  icon: const Icon(Icons.replay),
                  onPressed: () => context.read<BluetoothDiscoveryCubit>().startDiscovery(),
                ),
            ],
          ),
          body: ListView(children: list),
        );
      },
    );
  }
}
