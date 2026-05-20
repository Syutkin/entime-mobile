enum BluetoothProtocolCommandType {
  ping,
  time,
  status,
  wifi,
  calibrate,
  touchCalibrate,
  syncSource,
  syncNtp,
  saveConfig,
  loadConfig,
  factoryReset,
}

const Map<String, BluetoothProtocolCommandType> bluetoothProtocolCommandByName = {
  'ping': BluetoothProtocolCommandType.ping,
  'time': BluetoothProtocolCommandType.time,
  'status': BluetoothProtocolCommandType.status,
  'wifi': BluetoothProtocolCommandType.wifi,
  'calibrate': BluetoothProtocolCommandType.calibrate,
  'touch_calibrate': BluetoothProtocolCommandType.touchCalibrate,
  'sync_source': BluetoothProtocolCommandType.syncSource,
  'sync_ntp': BluetoothProtocolCommandType.syncNtp,
  'save_config': BluetoothProtocolCommandType.saveConfig,
  'load_config': BluetoothProtocolCommandType.loadConfig,
  'factory_reset': BluetoothProtocolCommandType.factoryReset,
};

const Map<String, BluetoothProtocolCommandType> bluetoothProtocolResponseCommandByName = {
  ...bluetoothProtocolCommandByName,
  'pong': BluetoothProtocolCommandType.ping,
};

enum BluetoothProtocolEventType {
  gpsLost,
  gpsAcquired,
  rtcError,
  syncSourceChanged,
}

const Map<String, BluetoothProtocolEventType> bluetoothProtocolEventByName = {
  'gps_lost': BluetoothProtocolEventType.gpsLost,
  'gps_acquired': BluetoothProtocolEventType.gpsAcquired,
  'rtc_error': BluetoothProtocolEventType.rtcError,
  'sync_source_changed': BluetoothProtocolEventType.syncSourceChanged,
};

enum BluetoothProtocolPacketType {
  start,
  finish,
  beep,
  voice,
}

const Map<String, BluetoothProtocolPacketType> bluetoothProtocolPacketByPrefix = {
  r'$': BluetoothProtocolPacketType.start,
  'F': BluetoothProtocolPacketType.finish,
  'B': BluetoothProtocolPacketType.beep,
  'V': BluetoothProtocolPacketType.voice,
};
