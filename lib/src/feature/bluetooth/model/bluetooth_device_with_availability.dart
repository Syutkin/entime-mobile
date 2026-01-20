import 'package:flutter_blue_plus/flutter_blue_plus.dart';

enum BluetoothDeviceAvailability { no, maybe, yes }

class BluetoothDeviceWithAvailability {
  BluetoothDeviceWithAvailability(this.device, this.availability, [this.rssi]);

  final BluetoothDevice device;
  BluetoothDeviceAvailability availability;
  int? rssi;
}
