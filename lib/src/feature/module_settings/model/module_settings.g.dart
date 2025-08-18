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
      read: json['Read'] as bool?,
      type: json['Type'] as String,
      bluetooth: Bluetooth.fromJson(json['Bluetooth'] as Map<String, dynamic>),
      loRa: LoRa.fromJson(json['LoRa'] as Map<String, dynamic>),
      wiFi: WiFi.fromJson(json['WiFi'] as Map<String, dynamic>),
      tft: Tft.fromJson(json['TFT'] as Map<String, dynamic>),
      buzzer: Buzzer.fromJson(json['Buzzer'] as Map<String, dynamic>),
      vcc: Vcc.fromJson(json['VCC'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModSettingsEntimeToJson(_ModSettingsEntime instance) =>
    <String, dynamic>{
      'Read': instance.read,
      'Type': instance.type,
      'Bluetooth': instance.bluetooth.toJson(),
      'LoRa': instance.loRa.toJson(),
      'WiFi': instance.wiFi.toJson(),
      'TFT': instance.tft.toJson(),
      'Buzzer': instance.buzzer.toJson(),
      'VCC': instance.vcc.toJson(),
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

_Buzzer _$BuzzerFromJson(Map<String, dynamic> json) => _Buzzer(
  active: json['active'] as bool,
  shortFrequency: (json['shortFrequency'] as num).toInt(),
  longFrequency: (json['longFrequency'] as num).toInt(),
);

Map<String, dynamic> _$BuzzerToJson(_Buzzer instance) => <String, dynamic>{
  'active': instance.active,
  'shortFrequency': instance.shortFrequency,
  'longFrequency': instance.longFrequency,
};

_LoRa _$LoRaFromJson(Map<String, dynamic> json) => _LoRa(
  active: json['active'] as bool,
  frequency: (json['frequency'] as num).toInt(),
  txPower: (json['txPower'] as num).toInt(),
  spreadingFactor: (json['spreadingFactor'] as num).toInt(),
  signalBandwidth: (json['signalBandwidth'] as num).toInt(),
  codingRateDenom: (json['codingRateDenom'] as num).toInt(),
  preambleLength: (json['preambleLength'] as num).toInt(),
  syncWord: (json['syncWord'] as num).toInt(),
  crc: json['crc'] as bool,
);

Map<String, dynamic> _$LoRaToJson(_LoRa instance) => <String, dynamic>{
  'active': instance.active,
  'frequency': instance.frequency,
  'txPower': instance.txPower,
  'spreadingFactor': instance.spreadingFactor,
  'signalBandwidth': instance.signalBandwidth,
  'codingRateDenom': instance.codingRateDenom,
  'preambleLength': instance.preambleLength,
  'syncWord': instance.syncWord,
  'crc': instance.crc,
};

_Tft _$TftFromJson(Map<String, dynamic> json) => _Tft(
  active: json['active'] as bool,
  timeout: json['timeout'] as bool,
  timeoutDuration: (json['timeoutDuration'] as num).toInt(),
  turnOnAtEvent: json['turnOnAtEvent'] as bool,
);

Map<String, dynamic> _$TftToJson(_Tft instance) => <String, dynamic>{
  'active': instance.active,
  'timeout': instance.timeout,
  'timeoutDuration': instance.timeoutDuration,
  'turnOnAtEvent': instance.turnOnAtEvent,
};

_Vcc _$VccFromJson(Map<String, dynamic> json) => _Vcc(
  r1: (json['r1'] as num).toInt(),
  r2: (json['r2'] as num).toInt(),
  vbat: (json['vbat'] as num?)?.toInt(),
);

Map<String, dynamic> _$VccToJson(_Vcc instance) => <String, dynamic>{
  'r1': instance.r1,
  'r2': instance.r2,
  'vbat': instance.vbat,
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

_LedPanel _$LedPanelFromJson(Map<String, dynamic> json) =>
    _LedPanel(brightness: (json['brightness'] as num).toInt());

Map<String, dynamic> _$LedPanelToJson(_LedPanel instance) => <String, dynamic>{
  'brightness': instance.brightness,
};
