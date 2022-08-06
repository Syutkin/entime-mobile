import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bluetooth_bloc.dart';
import 'select_bonded_device.dart';

class BluetoothButton extends StatelessWidget {
  final BuildContext context;

  const BluetoothButton({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BluetoothBloc, BluetoothConnectionState>(
        builder: (context, state) {
      if (BlocProvider.of<BluetoothBloc>(context).bluetoothDevice != null) {
        if (state is BluetoothConnectedState) {
          return IconButton(
            icon: const Icon(Icons.bluetooth_connected),
            onPressed: () async {
              BlocProvider.of<BluetoothBloc>(context).add(Disconnect());
            },
          );
        } else if (state is BluetoothConnectingState) {
          return IconButton(
            icon: const Icon(Icons.bluetooth_searching),
            onPressed: () async {
              BlocProvider.of<BluetoothBloc>(context).add(Disconnect());
            },
          );
        } else {
          return IconButton(
              icon: const Icon(Icons.bluetooth),
              onPressed: () async {
                BlocProvider.of<BluetoothBloc>(context).add(Connect(
                    BlocProvider.of<BluetoothBloc>(context).bluetoothDevice));
              });
        }
      } else {
        return IconButton(
          icon: const Icon(Icons.settings_bluetooth),
          onPressed: () => selectBluetoothDevice(context),
//          onPressed: () async {
//            BlocProvider.of<BluetoothBloc>(context).add(SelectDevice(
//                await Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (context) {
//              return SelectBondedDeviceScreen();
//            }))));
//            BlocProvider.of<BluetoothBloc>(context).add(Disconnect());
//          },
        );
//        return Container(width: 0, height: 0);
      }
    });
  }
}
