import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import 'package:entime/utils/helper.dart';

class BluetoothDeviceListEntry extends ListTile {
  BluetoothDeviceListEntry({
    required BluetoothDevice device,
    int? rssi,
    GestureTapCallback? onTap,
    GestureLongPressCallback? onLongPress,
    bool enabled = true,
  }) : super(
          onTap: onTap,
          onLongPress: onLongPress,
          enabled: enabled,
          leading: const Icon(Icons.devices),
          // @TODO . !BluetoothClass! class aware icon
          title: Text(device.name ?? 'Unknown device'),
          subtitle: Text(device.address.toString()),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              rssi != null
                  ? Container(
                      margin: const EdgeInsets.all(8.0),
                      child: DefaultTextStyle(
                        style: dBmTextStyle(rssi),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(rssi.toString()),
                            Text('dBm'),
                          ],
                        ),
                      ),
                    )
                  : Container(width: 0, height: 0),
              device.isConnected
                  ? const Icon(Icons.import_export)
                  : Container(width: 0, height: 0),
              device.isBonded
                  ? const Icon(Icons.link)
                  : Container(width: 0, height: 0),
            ],
          ),
        );
}
