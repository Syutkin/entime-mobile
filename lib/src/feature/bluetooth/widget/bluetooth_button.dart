import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bluetooth_bloc.dart';
import 'select_bonded_device.dart';

class BluetoothButton extends StatelessWidget {
  const BluetoothButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<BluetoothBloc, BluetoothBlocState>(
        builder: (context, state) {
          if (BlocProvider.of<BluetoothBloc>(context).bluetoothDevice != null) {
            return state.maybeWhen(
              connected: (device) => IconButton(
                icon: const Icon(Icons.bluetooth_connected),
                onPressed: () async {
                  BlocProvider.of<BluetoothBloc>(context)
                      .add(const BluetoothEvent.disconnect());
                },
              ),
              connecting: () => IconButton(
                icon: const Icon(Icons.bluetooth_searching),
                onPressed: () async {
                  BlocProvider.of<BluetoothBloc>(context)
                      .add(const BluetoothEvent.disconnect());
                },
              ),
              orElse: () => IconButton(
                icon: const Icon(Icons.bluetooth),
                onPressed: () async {
                  BlocProvider.of<BluetoothBloc>(context).add(
                    BluetoothEvent.connect(
                      selectedDevice: BlocProvider.of<BluetoothBloc>(context)
                          .bluetoothDevice,
                    ),
                  );
                },
              ),
            );
          } else {
            return IconButton(
              icon: const Icon(Icons.settings_bluetooth),
              onPressed: () => selectBluetoothDevice(context),
            );
          }
        },
      );
}
