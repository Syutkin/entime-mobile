import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/ble/select_ble_device.dart';

class BleButton extends StatelessWidget {
  final BuildContext context;

  BleButton({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BleConnectorBloc, BleConnectorState>(builder: (context, state) {
      if (state.bleConnectionState != null) {
        var deviceId = state
            .bleConnectionState!
            .deviceId;
        if (state.bleConnectionState?.connectionState ==
            DeviceConnectionState.connected) {
          return IconButton(
            icon: const Icon(Icons.bluetooth_connected),
            onPressed: () async {
              BlocProvider.of<BleConnectorBloc>(context)
                  .add(BleConnectorDisconnect(deviceId: deviceId));
            },
          );
        } else if (state.bleConnectionState?.connectionState ==
            DeviceConnectionState.connecting) {
          return IconButton(
            icon: const Icon(Icons.bluetooth_searching),
            onPressed: () async {
              BlocProvider.of<BleConnectorBloc>(context)
                  .add(BleConnectorDisconnect(deviceId: deviceId));
            },
          );
        } else if (state.bleConnectionState?.connectionState ==
            DeviceConnectionState.disconnecting) {
          return IconButton(
            icon: const Icon(Icons.bluetooth),
            onPressed: () async {
              // BlocProvider.of<BleBloc>(context).add(Disconnect());
            },
          );
        } else {
          return IconButton(
              icon: const Icon(Icons.bluetooth),
              onPressed: () async {
                BlocProvider.of<BleConnectorBloc>(context).add(BleConnectorConnect());
              });
        }
      } else {
        if (state.bleSelectedDevice != null) {
          return IconButton(
            icon: const Icon(Icons.settings_bluetooth),
            onPressed: () async =>
                BlocProvider.of<BleConnectorBloc>(context).add(BleConnectorConnect()),
          );
        } else {
          return IconButton(
            icon: const Icon(Icons.settings_bluetooth),
            onPressed: () => selectBleDevice(context),
          );
        }
      }
    });
  }
}
