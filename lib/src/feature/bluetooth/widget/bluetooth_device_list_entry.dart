import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../common/localization/localization.dart';
import 'utils/dbm_text_style.dart';

class BluetoothDeviceListEntry extends ListTile {
  BluetoothDeviceListEntry({
    required BluetoothDevice device,
    int? rssi,
    super.onTap,
    super.onLongPress,
    super.enabled,
    super.key,
  }) : super(
          leading: const Icon(Icons.devices),
          // @TODO . !BluetoothClass! class aware icon
          title: Text(
            device.name ?? Localization.current.I18nBluetooth_unknownDevice,
          ),
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
                        Text(Localization.current.I18nBluetooth_dbm),
                      ],
                    ),
                  ),
                )
              else
                const SizedBox.shrink(),
              if (device.isConnected)
                const Icon(Icons.import_export)
              else
                const SizedBox.shrink(),
              if (device.isBonded)
                const Icon(Icons.link)
              else
                const SizedBox.shrink(),
            ],
          ),
        );
}
