import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../utils/helper.dart';

class BluetoothDeviceListEntry extends ListTile {
  BluetoothDeviceListEntry({
    Key? key,
    required BluetoothDevice device,
    int? rssi,
    GestureTapCallback? onTap,
    GestureLongPressCallback? onLongPress,
    bool enabled = true,
  }) : super(
          key: key,
          onTap: onTap,
          onLongPress: onLongPress,
          enabled: enabled,
          leading: const Icon(Icons.devices),
          // @TODO . !BluetoothClass! class aware icon
          title: Text(device.name ?? 'Unknown device'),
          subtitle: Text(device.address),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (rssi != null)
                Container(
                  margin: const EdgeInsets.all(8),
                  child: DefaultTextStyle(
                    style: dBmTextStyle(rssi),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(rssi.toString()),
                        const Text('dBm'),
                      ],
                    ),
                  ),
                )
              else
                const SizedBox(width: 0, height: 0),
              if (device.isConnected)
                const Icon(Icons.import_export)
              else
                const SizedBox(width: 0, height: 0),
              if (device.isBonded)
                const Icon(Icons.link)
              else
                const SizedBox(width: 0, height: 0),
            ],
          ),
        );
}
