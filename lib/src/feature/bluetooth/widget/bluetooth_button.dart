import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bluetooth.dart';

class BluetoothButton extends StatelessWidget {
  const BluetoothButton({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<BluetoothBloc, BluetoothBlocState>(
    builder: (context, state) {
      final bloc = BlocProvider.of<BluetoothBloc>(context);
      return state.when(
        notInitialized: () => const IconButton(icon: Icon(Icons.bluetooth_disabled), onPressed: null),
        notAvailable: () => const IconButton(icon: Icon(Icons.bluetooth_disabled), onPressed: null),
        notEnabled:
            () => IconButton(
              icon: const Icon(Icons.bluetooth_disabled),
              onPressed: () async {
                bloc.add(const BluetoothEvent.enable());
              },
            ),
        connecting:
            () => IconButton(
              icon: const Icon(Icons.bluetooth_searching),
              onPressed: () async {
                bloc.add(const BluetoothEvent.disconnect());
              },
            ),
        connected:
            (_) => IconButton(
              icon: const Icon(Icons.bluetooth_connected),
              onPressed: () async {
                bloc.add(const BluetoothEvent.disconnect());
              },
            ),
        disconnecting: () => IconButton(icon: const Icon(Icons.bluetooth), onPressed: () {}),
        disconnected: (device) {
          if (device != null) {
            return IconButton(
              icon: const Icon(Icons.bluetooth),
              onPressed: () async {
                bloc.add(BluetoothEvent.connect(selectedDevice: bloc.bluetoothDevice));
              },
            );
          } else {
            return IconButton(
              icon: const Icon(Icons.settings_bluetooth),
              onPressed: () => selectBluetoothDevice(context),
            );
          }
        },
      );
    },
  );
}
