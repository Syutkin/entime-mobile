import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothDeviceWithRSSI {
  BluetoothDeviceWithRSSI(this.device, [this.rssi]);

  final BluetoothDevice device;
  int? rssi;
}
