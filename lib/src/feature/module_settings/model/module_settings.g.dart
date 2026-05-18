// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModSettingsType _$ModSettingsTypeFromJson(Map<String, dynamic> json) =>
    _ModSettingsType(type: json['Type'] as String);

Map<String, dynamic> _$ModSettingsTypeToJson(_ModSettingsType instance) =>
    <String, dynamic>{'Type': instance.type};

_ModSettingsEntime _$ModSettingsEntimeFromJson(Map<String, dynamic> json) =>
    _ModSettingsEntime(
      device: DeviceSettings.fromJson(json['device'] as Map<String, dynamic>),
      sync: SyncSettings.fromJson(json['sync'] as Map<String, dynamic>),
      wifi: WiFi.fromJson(json['wifi'] as Map<String, dynamic>),
      gps: GpsSettings.fromJson(json['gps'] as Map<String, dynamic>),
      touch: TouchSettings.fromJson(json['touch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModSettingsEntimeToJson(_ModSettingsEntime instance) =>
    <String, dynamic>{
      'device': instance.device.toJson(),
      'sync': instance.sync.toJson(),
      'wifi': instance.wifi.toJson(),
      'gps': instance.gps.toJson(),
      'touch': instance.touch.toJson(),
    };

_DeviceSettings _$DeviceSettingsFromJson(Map<String, dynamic> json) =>
    _DeviceSettings(
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      type: (json['type'] as num).toInt(),
      timezoneOffsetMin: (json['timezone_offset_min'] as num).toInt(),
    );

Map<String, dynamic> _$DeviceSettingsToJson(_DeviceSettings instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'type': instance.type,
      'timezone_offset_min': instance.timezoneOffsetMin,
    };

_SyncSettings _$SyncSettingsFromJson(Map<String, dynamic> json) =>
    _SyncSettings(
      auto: json['auto'] as bool,
      source: (json['source'] as num).toInt(),
      ntp1: json['ntp1'] as String,
      ntp2: json['ntp2'] as String,
      ntp3: json['ntp3'] as String,
    );

Map<String, dynamic> _$SyncSettingsToJson(_SyncSettings instance) =>
    <String, dynamic>{
      'auto': instance.auto,
      'source': instance.source,
      'ntp1': instance.ntp1,
      'ntp2': instance.ntp2,
      'ntp3': instance.ntp3,
    };

_ModSettingsLed _$ModSettingsLedFromJson(Map<String, dynamic> json) =>
    _ModSettingsLed(
      read: json['Read'] as bool?,
      type: json['Type'] as String,
      bluetooth: Bluetooth.fromJson(json['Bluetooth'] as Map<String, dynamic>),
      wiFi: WiFi.fromJson(json['WiFi'] as Map<String, dynamic>),
      ledPanel: LedPanel.fromJson(json['LedPanel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModSettingsLedToJson(_ModSettingsLed instance) =>
    <String, dynamic>{
      'Read': instance.read,
      'Type': instance.type,
      'Bluetooth': instance.bluetooth.toJson(),
      'WiFi': instance.wiFi.toJson(),
      'LedPanel': instance.ledPanel.toJson(),
    };

_Bluetooth _$BluetoothFromJson(Map<String, dynamic> json) => _Bluetooth(
  active: json['active'] as bool,
  name: json['name'] as String,
  number: (json['number'] as num).toInt(),
);

Map<String, dynamic> _$BluetoothToJson(_Bluetooth instance) =>
    <String, dynamic>{
      'active': instance.active,
      'name': instance.name,
      'number': instance.number,
    };

_WiFi _$WiFiFromJson(Map<String, dynamic> json) => _WiFi(
  active: json['active'] as bool,
  ssid: json['ssid'] as String,
  passwd: json['passwd'] as String,
);

Map<String, dynamic> _$WiFiToJson(_WiFi instance) => <String, dynamic>{
  'active': instance.active,
  'ssid': instance.ssid,
  'passwd': instance.passwd,
};

_GpsSettings _$GpsSettingsFromJson(Map<String, dynamic> json) =>
    _GpsSettings(enabled: json['enabled'] as bool);

Map<String, dynamic> _$GpsSettingsToJson(_GpsSettings instance) =>
    <String, dynamic>{'enabled': instance.enabled};

_TouchSettings _$TouchSettingsFromJson(Map<String, dynamic> json) =>
    _TouchSettings(
      enabled: json['enabled'] as bool,
      calValid: json['cal_valid'] as bool,
      calibration: (json['calibration'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$TouchSettingsToJson(_TouchSettings instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'cal_valid': instance.calValid,
      'calibration': instance.calibration,
    };

_LedPanel _$LedPanelFromJson(Map<String, dynamic> json) =>
    _LedPanel(brightness: (json['brightness'] as num).toInt());

Map<String, dynamic> _$LedPanelToJson(_LedPanel instance) => <String, dynamic>{
  'brightness': instance.brightness,
};
