import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import 'package:entime/utils/helper.dart';

class BleDeviceListEntry extends ListTile {
  BleDeviceListEntry({
    required DiscoveredDevice device,
    GestureTapCallback? onTap,
    GestureLongPressCallback? onLongPress,
    bool enabled = true,
  }) : super(
          onTap: onTap,
          onLongPress: onLongPress,
          enabled: enabled,
          leading: const Icon(Icons.timer),
          title: Text(device.name),
          subtitle: Text(device.id),
          trailing: DefaultTextStyle(
            style: dBmTextStyle(device.rssi),
            child: Text('${device.rssi} dBm'),
          ),
        );
}
