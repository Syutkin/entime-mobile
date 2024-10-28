// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModSettingsModelTypeImpl _$$ModSettingsModelTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$ModSettingsModelTypeImpl(
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ModSettingsModelTypeImplToJson(
        _$ModSettingsModelTypeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$ModSettingsModelLedImpl _$$ModSettingsModelLedImplFromJson(
        Map<String, dynamic> json) =>
    _$ModSettingsModelLedImpl(
      read: json['read'] as bool,
      type: json['type'] as String,
      bluetooth: Bluetooth.fromJson(json['bluetooth'] as Map<String, dynamic>),
      wiFi: WiFi.fromJson(json['wiFi'] as Map<String, dynamic>),
      ledPanel: LedPanel.fromJson(json['ledPanel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModSettingsModelLedImplToJson(
        _$ModSettingsModelLedImpl instance) =>
    <String, dynamic>{
      'read': instance.read,
      'type': instance.type,
      'bluetooth': instance.bluetooth,
      'wiFi': instance.wiFi,
      'ledPanel': instance.ledPanel,
    };

_$ModSettingsModelImpl _$$ModSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ModSettingsModelImpl(
      read: json['read'] as bool,
      type: json['type'] as String,
      bluetooth: Bluetooth.fromJson(json['bluetooth'] as Map<String, dynamic>),
      loRa: LoRa.fromJson(json['loRa'] as Map<String, dynamic>),
      wiFi: WiFi.fromJson(json['wiFi'] as Map<String, dynamic>),
      tft: Tft.fromJson(json['tft'] as Map<String, dynamic>),
      buzzer: Buzzer.fromJson(json['buzzer'] as Map<String, dynamic>),
      vcc: Vcc.fromJson(json['vcc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModSettingsModelImplToJson(
        _$ModSettingsModelImpl instance) =>
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

_$BluetoothImpl _$$BluetoothImplFromJson(Map<String, dynamic> json) =>
    _$BluetoothImpl(
      active: json['active'] as bool,
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$BluetoothImplToJson(_$BluetoothImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'name': instance.name,
      'number': instance.number,
    };

_$BuzzerImpl _$$BuzzerImplFromJson(Map<String, dynamic> json) => _$BuzzerImpl(
      active: json['active'] as bool,
      shortFrequency: (json['shortFrequency'] as num).toInt(),
      longFrequency: (json['longFrequency'] as num).toInt(),
    );

Map<String, dynamic> _$$BuzzerImplToJson(_$BuzzerImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'shortFrequency': instance.shortFrequency,
      'longFrequency': instance.longFrequency,
    };

_$LoRaImpl _$$LoRaImplFromJson(Map<String, dynamic> json) => _$LoRaImpl(
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

Map<String, dynamic> _$$LoRaImplToJson(_$LoRaImpl instance) =>
    <String, dynamic>{
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

_$TftImpl _$$TftImplFromJson(Map<String, dynamic> json) => _$TftImpl(
      active: json['active'] as bool,
      timeout: json['timeout'] as bool,
      timeoutDuration: (json['timeoutDuration'] as num).toInt(),
      turnOnAtEvent: json['turnOnAtEvent'] as bool,
    );

Map<String, dynamic> _$$TftImplToJson(_$TftImpl instance) => <String, dynamic>{
      'active': instance.active,
      'timeout': instance.timeout,
      'timeoutDuration': instance.timeoutDuration,
      'turnOnAtEvent': instance.turnOnAtEvent,
    };

_$VccImpl _$$VccImplFromJson(Map<String, dynamic> json) => _$VccImpl(
      r1: (json['r1'] as num).toInt(),
      r2: (json['r2'] as num).toInt(),
      vbat: (json['vbat'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VccImplToJson(_$VccImpl instance) => <String, dynamic>{
      'r1': instance.r1,
      'r2': instance.r2,
      'vbat': instance.vbat,
    };

_$WiFiImpl _$$WiFiImplFromJson(Map<String, dynamic> json) => _$WiFiImpl(
      active: json['active'] as bool,
      ssid: json['ssid'] as String,
      passwd: json['passwd'] as String,
    );

Map<String, dynamic> _$$WiFiImplToJson(_$WiFiImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'ssid': instance.ssid,
      'passwd': instance.passwd,
    };

_$LedPanelImpl _$$LedPanelImplFromJson(Map<String, dynamic> json) =>
    _$LedPanelImpl(
      brightness: (json['brightness'] as num).toInt(),
    );

Map<String, dynamic> _$$LedPanelImplToJson(_$LedPanelImpl instance) =>
    <String, dynamic>{
      'brightness': instance.brightness,
    };
