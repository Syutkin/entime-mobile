import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bluetooth.dart';

class BluetoothButton extends StatelessWidget {
  const BluetoothButton({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<BluetoothBloc, BluetoothBlocState>(
    builder: (context, state) {
      final bloc = BlocProvider.of<BluetoothBloc>(context);

      return switch (state) {
        BluetoothBlocStateNotInitialized() => const IconButton(icon: Icon(Icons.bluetooth_disabled), onPressed: null),
        BluetoothBlocStateNotAvailable() => const IconButton(icon: Icon(Icons.bluetooth_disabled), onPressed: null),
        BluetoothBlocStateNotEnabled() => IconButton(
          icon: const Icon(Icons.bluetooth_disabled),
          onPressed: () async {
            bloc.add(const BluetoothEvent.enable());
          },
        ),
        BluetoothBlocStateConnecting() => IconButton(
          icon: const Icon(Icons.bluetooth_searching),
          onPressed: () async {
            bloc.add(const BluetoothEvent.disconnect());
          },
        ),
        BluetoothBlocStateConnected() => IconButton(
          icon: const Icon(Icons.bluetooth_connected),
          onPressed: () async {
            bloc.add(const BluetoothEvent.disconnect());
          },
        ),
        BluetoothBlocStateDisconnecting() => IconButton(icon: const Icon(Icons.bluetooth), onPressed: () {}),
        BluetoothBlocStateDisconnected(bluetoothDevice: final device) =>
          device != null
              ? IconButton(
                icon: const Icon(Icons.bluetooth),
                onPressed: () async {
                  bloc.add(BluetoothEvent.connect(selectedDevice: bloc.bluetoothDevice));
                },
              )
              : IconButton(icon: const Icon(Icons.settings_bluetooth), onPressed: () => selectBluetoothDevice(context)),
      };

      // return state.when(
      //   disconnected: (device) {
      //     if (device != null) {
      //       return IconButton(
      //         icon: const Icon(Icons.bluetooth),
      //         onPressed: () async {
      //           bloc.add(BluetoothEvent.connect(selectedDevice: bloc.bluetoothDevice));
      //         },
      //       );
      //     } else {
      //       return IconButton(
      //         icon: const Icon(Icons.settings_bluetooth),
      //         onPressed: () => selectBluetoothDevice(context),
      //       );
      //     }
      //   },
      // );
    },
  );
}
