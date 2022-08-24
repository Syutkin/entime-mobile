// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModSettingsModelType _$$_ModSettingsModelTypeFromJson(
        Map<String, dynamic> json) =>
    _$_ModSettingsModelType(
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_ModSettingsModelTypeToJson(
        _$_ModSettingsModelType instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$_ModSettingsModelLed _$$_ModSettingsModelLedFromJson(
        Map<String, dynamic> json) =>
    _$_ModSettingsModelLed(
      read: json['read'] as bool,
      type: json['type'] as String,
      bluetooth: Bluetooth.fromJson(json['bluetooth'] as Map<String, dynamic>),
      wiFi: WiFi.fromJson(json['wiFi'] as Map<String, dynamic>),
      ledPanel: LedPanel.fromJson(json['ledPanel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModSettingsModelLedToJson(
        _$_ModSettingsModelLed instance) =>
    <String, dynamic>{
      'read': instance.read,
      'type': instance.type,
      'bluetooth': instance.bluetooth,
      'wiFi': instance.wiFi,
      'ledPanel': instance.ledPanel,
    };

_$_ModSettingsModel _$$_ModSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_ModSettingsModel(
      read: json['read'] as bool,
      type: json['type'] as String,
      bluetooth: Bluetooth.fromJson(json['bluetooth'] as Map<String, dynamic>),
      loRa: LoRa.fromJson(json['loRa'] as Map<String, dynamic>),
      wiFi: WiFi.fromJson(json['wiFi'] as Map<String, dynamic>),
      tft: Tft.fromJson(json['tft'] as Map<String, dynamic>),
      buzzer: Buzzer.fromJson(json['buzzer'] as Map<String, dynamic>),
      vcc: Vcc.fromJson(json['vcc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModSettingsModelToJson(_$_ModSettingsModel instance) =>
    <String, dynamic>{
      'read': instance.read,
      'type': instance.type,
      'bluetooth': instance.bluetooth,
      'loRa': instance.loRa,
      'wiFi': instance.wiFi,
      'tft': instance.tft,
      'buzzer': instance.buzzer,
      'vcc': instance.vcc,
    };

_$_Bluetooth _$$_BluetoothFromJson(Map<String, dynamic> json) => _$_Bluetooth(
      active: json['active'] as bool,
      name: json['name'] as String,
      number: json['number'] as int,
    );

Map<String, dynamic> _$$_BluetoothToJson(_$_Bluetooth instance) =>
    <String, dynamic>{
      'active': instance.active,
      'name': instance.name,
      'number': instance.number,
    };

_$_Buzzer _$$_BuzzerFromJson(Map<String, dynamic> json) => _$_Buzzer(
      active: json['active'] as bool,
      shortFrequency: json['shortFrequency'] as int,
      longFrequency: json['longFrequency'] as int,
    );

Map<String, dynamic> _$$_BuzzerToJson(_$_Buzzer instance) => <String, dynamic>{
      'active': instance.active,
      'shortFrequency': instance.shortFrequency,
      'longFrequency': instance.longFrequency,
    };

_$_LoRa _$$_LoRaFromJson(Map<String, dynamic> json) => _$_LoRa(
      active: json['active'] as bool,
      frequency: json['frequency'] as int,
      txPower: json['txPower'] as int,
      spreadingFactor: json['spreadingFactor'] as int,
      signalBandwidth: json['signalBandwidth'] as int,
      codingRateDenom: json['codingRateDenom'] as int,
      preambleLength: json['preambleLength'] as int,
      syncWord: json['syncWord'] as int,
      crc: json['crc'] as bool,
    );

Map<String, dynamic> _$$_LoRaToJson(_$_LoRa instance) => <String, dynamic>{
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

_$_Tft _$$_TftFromJson(Map<String, dynamic> json) => _$_Tft(
      active: json['active'] as bool,
      timeout: json['timeout'] as bool,
      timeoutDuration: json['timeoutDuration'] as int,
      turnOnAtEvent: json['turnOnAtEvent'] as bool,
    );

Map<String, dynamic> _$$_TftToJson(_$_Tft instance) => <String, dynamic>{
      'active': instance.active,
      'timeout': instance.timeout,
      'timeoutDuration': instance.timeoutDuration,
      'turnOnAtEvent': instance.turnOnAtEvent,
    };

_$_Vcc _$$_VccFromJson(Map<String, dynamic> json) => _$_Vcc(
      r1: json['r1'] as int,
      r2: json['r2'] as int,
      vbat: json['vbat'] as int?,
    );

Map<String, dynamic> _$$_VccToJson(_$_Vcc instance) => <String, dynamic>{
      'r1': instance.r1,
      'r2': instance.r2,
      'vbat': instance.vbat,
    };

_$_WiFi _$$_WiFiFromJson(Map<String, dynamic> json) => _$_WiFi(
      active: json['active'] as bool,
      ssid: json['ssid'] as String,
      passwd: json['passwd'] as String,
    );

Map<String, dynamic> _$$_WiFiToJson(_$_WiFi instance) => <String, dynamic>{
      'active': instance.active,
      'ssid': instance.ssid,
      'passwd': instance.passwd,
    };

_$_LedPanel _$$_LedPanelFromJson(Map<String, dynamic> json) => _$_LedPanel(
      brightness: json['brightness'] as int,
    );

Map<String, dynamic> _$$_LedPanelToJson(_$_LedPanel instance) =>
    <String, dynamic>{
      'brightness': instance.brightness,
    };
