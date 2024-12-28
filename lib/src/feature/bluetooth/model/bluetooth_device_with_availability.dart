import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

enum BluetoothDeviceAvailability { no, maybe, yes }

class BluetoothDeviceWithAvailability extends BluetoothDevice {
  BluetoothDeviceWithAvailability(this.device, this.availability, [this.rssi])
    : super(
        address: device.address,
        name: device.name,
        bondState: device.bondState,
        isConnected: device.isConnected,
        type: device.type,
      );

  BluetoothDevice device;
  BluetoothDeviceAvailability availability;
  int? rssi;
}
