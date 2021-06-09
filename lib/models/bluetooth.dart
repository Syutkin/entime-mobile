import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

enum BluetoothDeviceAvailability {
  no,
  maybe,
  yes,
}

class BluetoothDeviceWithAvailability extends BluetoothDevice {
  BluetoothDevice device;
  BluetoothDeviceAvailability availability;
  int? rssi;

  BluetoothDeviceWithAvailability(this.device, this.availability, [this.rssi]);
}
