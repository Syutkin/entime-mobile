import 'package:flutter_blue_plus/flutter_blue_plus.dart';

abstract final class BluetoothUuids {
  static final Guid nusService = Guid('6E400001-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid nusTx = Guid('6E400002-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid nusRx = Guid('6E400003-B5A3-F393-E0A9-E50E24DCCA9E');
  static final Guid batteryService = Guid('0000180F-0000-1000-8000-00805F9B34FB');
  static final Guid batteryLevel = Guid('00002A19-0000-1000-8000-00805F9B34FB');
}
