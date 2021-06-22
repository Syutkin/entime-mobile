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
    return BlocBuilder<BleBloc, BleState>(builder: (context, state) {
      if (BlocProvider.of<BleBloc>(context).state.bleConnectionState != null) {
        var deviceId = BlocProvider.of<BleBloc>(context)
            .state
            .bleConnectionState!
            .deviceId;
        if (state.bleConnectionState?.connectionState ==
            DeviceConnectionState.connected) {
          return IconButton(
            icon: const Icon(Icons.bluetooth_connected),
            onPressed: () async {
              BlocProvider.of<BleBloc>(context)
                  .add(BleConnectorDisconnect(deviceId: deviceId));
            },
          );
        } else if (state.bleConnectionState?.connectionState ==
            DeviceConnectionState.connecting) {
          return IconButton(
            icon: const Icon(Icons.bluetooth_searching),
            onPressed: () async {
              BlocProvider.of<BleBloc>(context)
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
                BlocProvider.of<BleBloc>(context).add(BleConnectorConnect());
              });
        }
      } else {
        if (BlocProvider.of<BleBloc>(context).state.bleSelectedDevice != null) {
          return IconButton(
            icon: const Icon(Icons.settings_bluetooth),
            onPressed: () async =>
                BlocProvider.of<BleBloc>(context).add(BleConnectorConnect()),
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
