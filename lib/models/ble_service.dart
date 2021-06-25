import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BleService {
  const BleService();

  BatteryService get batteryService => BatteryService();

  SerialService get serialService => SerialService();
}

class BatteryService {
  const BatteryService();

  Uuid get serviceId => Uuid.parse('0000180f-0000-1000-8000-00805f9b34fb');

  Uuid get chargeId => Uuid.parse('00002a19-0000-1000-8000-00805f9b34fb');
}

class SerialService {
  const SerialService();

  Uuid get serviceId => Uuid.parse('3d1182b8-ec3a-42c3-b1b4-70b28578fab3');

  Uuid get timeEventId => Uuid.parse('f6af336c-8da1-4030-95bc-5e3ce2119305');

  Uuid get settingsCharacteristicId => Uuid.parse('895bcbd5-4cdf-40fb-9461-0801697b83aa');
}
