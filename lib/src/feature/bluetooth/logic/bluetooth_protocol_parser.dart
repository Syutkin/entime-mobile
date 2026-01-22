import 'dart:convert';

import '../model/bluetooth_protocol_models.dart';
import '../model/bluetooth_protocol_types.dart';

sealed class BluetoothProtocolMessage {
  const BluetoothProtocolMessage();
}

final class BluetoothProtocolPacketMessage extends BluetoothProtocolMessage {
  const BluetoothProtocolPacketMessage({
    required this.type,
    required this.raw,
  });

  final BluetoothProtocolPacketType type;
  final String raw;
}

final class BluetoothProtocolJsonCommandMessage extends BluetoothProtocolMessage {
  const BluetoothProtocolJsonCommandMessage({
    required this.command,
    required this.json,
  });

  final BluetoothJsonCommand command;
  final Map<String, Object?> json;
}

final class BluetoothProtocolJsonEventMessage extends BluetoothProtocolMessage {
  const BluetoothProtocolJsonEventMessage({
    required this.event,
    required this.json,
  });

  final BluetoothJsonEvent event;
  final Map<String, Object?> json;
}

final class BluetoothProtocolJsonResponseMessage extends BluetoothProtocolMessage {
  const BluetoothProtocolJsonResponseMessage({
    required this.response,
    required this.json,
  });

  final BluetoothJsonResponse response;
  final Map<String, Object?> json;
}

final class BluetoothProtocolUnknownMessage extends BluetoothProtocolMessage {
  const BluetoothProtocolUnknownMessage({
    required this.raw,
  });

  final String raw;
}

class BluetoothProtocolParser {
  const BluetoothProtocolParser();

  BluetoothProtocolMessage parse(String rawMessage) {
    if (rawMessage.isEmpty) {
      return BluetoothProtocolUnknownMessage(raw: rawMessage);
    }

    if (rawMessage.endsWith('#')) {
      for (final entry in bluetoothProtocolPacketByPrefix.entries) {
        if (rawMessage.startsWith(entry.key)) {
          return BluetoothProtocolPacketMessage(type: entry.value, raw: rawMessage);
        }
      }
    }

    if (rawMessage.startsWith('{') && rawMessage.endsWith('}')) {
      final decoded = _decodeJson(rawMessage);
      if (decoded != null) {
        final eventName = _asString(decoded['event']);
        if (eventName != null) {
          final event = _parseEvent(eventName, decoded);
          if (event != null) {
            return BluetoothProtocolJsonEventMessage(event: event, json: decoded);
          }
        }

        final commandName = _asString(decoded['cmd']);
        if (commandName != null) {
          if (_looksLikeResponse(decoded)) {
            final response = _parseResponse(commandName, decoded);
            if (response != null) {
              return BluetoothProtocolJsonResponseMessage(response: response, json: decoded);
            }
          }

          final command = _parseCommand(commandName, decoded);
          if (command != null) {
            return BluetoothProtocolJsonCommandMessage(command: command, json: decoded);
          }
        }
      }
    }

    return BluetoothProtocolUnknownMessage(raw: rawMessage);
  }
}

class BluetoothJsonResponseBase {
  const BluetoothJsonResponseBase({
    this.id,
    this.status,
    this.errorCode,
    this.errorMessage,
    this.timestamp,
  });

  final Object? id;
  final BluetoothProtocolStatus? status;
  final int? errorCode;
  final String? errorMessage;
  final int? timestamp;
}

Map<String, Object?>? _decodeJson(String rawMessage) {
  try {
    final decoded = jsonDecode(rawMessage);
    if (decoded is Map<String, dynamic>) {
      return decoded.map((key, value) => MapEntry(key, value as Object?));
    }
  } on FormatException {
    return null;
  }
  return null;
}

bool _looksLikeResponse(Map<String, Object?> json) {
  return json.containsKey('status') ||
      json.containsKey('error_code') ||
      json.containsKey('error_message') ||
      json.containsKey('timestamp');
}

BluetoothJsonCommand? _parseCommand(String commandName, Map<String, Object?> json) {
  final commandType = bluetoothProtocolCommandByName[commandName];
  if (commandType == null) {
    return null;
  }

  final id = json['id'];
  switch (commandType) {
    case BluetoothProtocolCommandType.ping:
      return BluetoothJsonCommandPing(id: id);
    case BluetoothProtocolCommandType.time:
      return BluetoothJsonCommandTime(id: id);
    case BluetoothProtocolCommandType.status:
      return BluetoothJsonCommandStatus(id: id);
    case BluetoothProtocolCommandType.gps:
      return BluetoothJsonCommandGps(
        id: id,
        enable: _asBool(json['enable']),
        disable: _asBool(json['disable']),
      );
    case BluetoothProtocolCommandType.wifi:
      return BluetoothJsonCommandWifi(
        id: id,
        enable: _asBool(json['enable']),
        ssid: _asString(json['ssid']),
        passwd: _asString(json['passwd']),
      );
    case BluetoothProtocolCommandType.calibrate:
      final offset = _asDouble(json['offset']);
      if (offset == null) {
        return null;
      }
      return BluetoothJsonCommandCalibrate(id: id, offset: offset);
    case BluetoothProtocolCommandType.syncSource:
      final source = _asString(json['source']);
      if (source == null) {
        return null;
      }
      return BluetoothJsonCommandSyncSource(id: id, source: source);
    case BluetoothProtocolCommandType.syncNtp:
      return BluetoothJsonCommandSyncNtp(id: id);
    case BluetoothProtocolCommandType.saveConfig:
      final data = _asMap(json['data']);
      if (data == null) {
        return null;
      }
      return BluetoothJsonCommandSaveConfig(id: id, data: data);
    case BluetoothProtocolCommandType.loadConfig:
      return BluetoothJsonCommandLoadConfig(id: id);
    case BluetoothProtocolCommandType.factoryReset:
      return BluetoothJsonCommandFactoryReset(id: id);
  }
}

BluetoothJsonEvent? _parseEvent(String eventName, Map<String, Object?> json) {
  final eventType = bluetoothProtocolEventByName[eventName];
  if (eventType == null) {
    return null;
  }

  final timestamp = _asInt(json['timestamp']);
  switch (eventType) {
    case BluetoothProtocolEventType.gpsLost:
      return BluetoothJsonEventGpsLost(timestamp: timestamp);
    case BluetoothProtocolEventType.gpsAcquired:
      return BluetoothJsonEventGpsAcquired(
        timestamp: timestamp,
        satellites: _asInt(json['satellites']),
      );
    case BluetoothProtocolEventType.rtcError:
      return BluetoothJsonEventRtcError(
        timestamp: timestamp,
        errorCode: _asInt(json['error_code']),
      );
    case BluetoothProtocolEventType.syncSourceChanged:
      return BluetoothJsonEventSyncSourceChanged(
        timestamp: timestamp,
        newSource: _asString(json['new_source']),
        reason: _asString(json['reason']),
      );
  }
}

BluetoothJsonResponse? _parseResponse(String commandName, Map<String, Object?> json) {
  final commandType = bluetoothProtocolResponseCommandByName[commandName];
  if (commandType == null) {
    return null;
  }

  final base = _parseResponseBase(json);
  switch (commandType) {
    case BluetoothProtocolCommandType.ping:
      return BluetoothJsonResponsePong(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
      );
    case BluetoothProtocolCommandType.time:
      return BluetoothJsonResponseTime(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        time: _asInt(json['time']),
        source: _parseTimeSource(json['source']),
        accuracyUs: _asInt(json['accuracy_us']),
      );
    case BluetoothProtocolCommandType.status:
      return BluetoothJsonResponseStatus(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        device: _parseDeviceInfo(_asMap(json['device'])),
        firmware: _parseFirmwareInfo(_asMap(json['firmware'])),
        system: _parseSystemInfo(_asMap(json['system'])),
        wifi: _parseWifiInfo(_asMap(json['wifi'])),
        ble: _parseBleInfo(_asMap(json['ble'])),
        rtc: _parseRtcInfo(_asMap(json['rtc'])),
        gps: _parseGpsInfo(_asMap(json['gps'])),
        sync: _parseSyncInfo(_asMap(json['sync'])),
        storage: _parseStorageInfo(_asMap(json['storage'])),
        power: _parsePowerInfo(_asMap(json['power'])),
      );
    case BluetoothProtocolCommandType.gps:
      return BluetoothJsonResponseGps(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        state: _asString(json['state']),
      );
    case BluetoothProtocolCommandType.wifi:
      return BluetoothJsonResponseWifi(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        state: _asString(json['state']),
      );
    case BluetoothProtocolCommandType.calibrate:
      return BluetoothJsonResponseCalibrate(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        previousOffset: _asDouble(json['previous_offset']),
        newOffset: _asDouble(json['new_offset']),
        estimatedErrorUs: _asInt(json['estimated_error_us']),
      );
    case BluetoothProtocolCommandType.syncSource:
      return BluetoothJsonResponseSyncSource(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        activeSource: _parseSyncSource(json['active_source']),
        reason: _asString(json['reason']),
        currentTimestamp: _asInt(json['timestamp']),
      );
    case BluetoothProtocolCommandType.syncNtp:
      return BluetoothJsonResponseSyncNtp(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        rtcTime: _asInt(json['rtc_time']),
        ntpServers: _asStringList(json['ntp_servers']),
        syncDurationMs: _asInt(json['sync_duration_ms']),
      );
    case BluetoothProtocolCommandType.saveConfig:
      return BluetoothJsonResponseSaveConfig(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        savedKeys: _asInt(json['saved_keys']),
        rebootNeeded: _asBool(json['reboot_needed']),
        storageUsagePercent: _asInt(json['storage_usage_percent']),
      );
    case BluetoothProtocolCommandType.loadConfig:
      return BluetoothJsonResponseLoadConfig(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        data: _asMap(json['data']),
      );
    case BluetoothProtocolCommandType.factoryReset:
      return BluetoothJsonResponseFactoryReset(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        message: _asString(json['message']),
      );
  }
}

BluetoothJsonResponseBase _parseResponseBase(Map<String, Object?> json) {
  return BluetoothJsonResponseBase(
    id: json['id'],
    status: _parseStatus(json['status']),
    errorCode: _asInt(json['error_code']),
    errorMessage: _asString(json['error_message']),
    timestamp: _asInt(json['timestamp']),
  );
}

BluetoothJsonDeviceInfo? _parseDeviceInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonDeviceInfo(
    name: _asString(json['name']),
    number: _asInt(json['number']),
    type: _parseDeviceType(json['type']),
  );
}

BluetoothJsonFirmwareInfo? _parseFirmwareInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonFirmwareInfo(
    version: _asString(json['version']),
    buildDate: _asString(json['build_date']),
  );
}

BluetoothJsonSystemInfo? _parseSystemInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonSystemInfo(
    uptimeS: _asInt(json['uptime_s']),
    freeHeapBytes: _asInt(json['free_heap_bytes']),
    resetReason: _parseResetReason(json['reset_reason']),
  );
}

BluetoothJsonWifiInfo? _parseWifiInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonWifiInfo(
    state: _parseWifiState(json['state']),
    rssi: _asInt(json['rssi']),
    ip: _asString(json['ip']),
    ssid: _asString(json['ssid']),
  );
}

BluetoothJsonBleInfo? _parseBleInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonBleInfo(
    state: _parseBleState(json['state']),
    clients: _asInt(json['clients']),
  );
}

BluetoothJsonRtcInfo? _parseRtcInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonRtcInfo(
    ready: _asBool(json['ready']),
    lostPower: _asBool(json['lost_power']),
    lastSyncMs: _asInt(json['last_sync_ms']),
    temperatureC: _asDouble(json['temperature_c']),
  );
}

BluetoothJsonGpsInfo? _parseGpsInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonGpsInfo(
    state: _parseGpsState(json['state']),
    fixAgeMs: _asInt(json['fix_age_ms']),
    fix: _asBool(json['fix']),
    satellites: _asInt(json['satellites']),
    ppsSignal: _asBool(json['pps_signal']),
  );
}

BluetoothJsonSyncInfo? _parseSyncInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonSyncInfo(
    lastMs: _asInt(json['last_ms']),
    state: _parseSyncState(json['state']),
    accuracyUs: _asInt(json['accuracy_us']),
    source: _parseTimeSource(json['source']),
  );
}

BluetoothJsonStorageInfo? _parseStorageInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonStorageInfo(
    usedPct: _asInt(json['used_pct']),
    ok: _asBool(json['ok']),
  );
}

BluetoothJsonPowerInfo? _parsePowerInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonPowerInfo(
    batteryVoltage: _asDouble(json['battery_voltage']),
  );
}

BluetoothProtocolStatus? _parseStatus(Object? value) {
  final status = _asString(value);
  switch (status) {
    case 'ok':
      return BluetoothProtocolStatus.ok;
    case 'warning':
      return BluetoothProtocolStatus.warning;
    case 'error':
      return BluetoothProtocolStatus.error;
  }
  return null;
}

BluetoothProtocolTimeSource? _parseTimeSource(Object? value) {
  final source = _asString(value);
  switch (source) {
    case 'gps':
      return BluetoothProtocolTimeSource.gps;
    case 'rtc':
      return BluetoothProtocolTimeSource.rtc;
  }
  return null;
}

BluetoothProtocolDeviceType? _parseDeviceType(Object? value) {
  final type = _asString(value);
  switch (type) {
    case 'start':
      return BluetoothProtocolDeviceType.start;
    case 'finish':
      return BluetoothProtocolDeviceType.finish;
  }
  return null;
}

BluetoothProtocolWifiState? _parseWifiState(Object? value) {
  final state = _asString(value);
  switch (state) {
    case 'off':
      return BluetoothProtocolWifiState.off;
    case 'connecting':
      return BluetoothProtocolWifiState.connecting;
    case 'connected':
      return BluetoothProtocolWifiState.connected;
    case 'error':
      return BluetoothProtocolWifiState.error;
  }
  return null;
}

BluetoothProtocolBleState? _parseBleState(Object? value) {
  final state = _asString(value);
  switch (state) {
    case 'off':
      return BluetoothProtocolBleState.off;
    case 'advertising':
      return BluetoothProtocolBleState.advertising;
    case 'connected':
      return BluetoothProtocolBleState.connected;
  }
  return null;
}

BluetoothProtocolGpsState? _parseGpsState(Object? value) {
  final state = _asString(value);
  switch (state) {
    case 'off':
      return BluetoothProtocolGpsState.off;
    case 'searching':
      return BluetoothProtocolGpsState.searching;
    case 'active':
      return BluetoothProtocolGpsState.active;
  }
  return null;
}

BluetoothProtocolSyncState? _parseSyncState(Object? value) {
  final state = _asString(value);
  switch (state) {
    case 'gps_ok':
      return BluetoothProtocolSyncState.gpsOk;
    case 'gps_degraded':
      return BluetoothProtocolSyncState.gpsDegraded;
    case 'rtc_ok':
      return BluetoothProtocolSyncState.rtcOk;
    case 'rtc_degraded':
      return BluetoothProtocolSyncState.rtcDegraded;
    case 'nosync':
      return BluetoothProtocolSyncState.noSync;
  }
  return null;
}

BluetoothProtocolSyncSource? _parseSyncSource(Object? value) {
  final source = _asString(value);
  switch (source) {
    case 'gps':
      return BluetoothProtocolSyncSource.gps;
    case 'rtc':
      return BluetoothProtocolSyncSource.rtc;
    case 'none':
      return BluetoothProtocolSyncSource.none;
  }
  return null;
}

BluetoothProtocolResetReason? _parseResetReason(Object? value) {
  final reason = _asString(value);
  switch (reason) {
    case 'power_on':
      return BluetoothProtocolResetReason.powerOn;
    case 'software':
      return BluetoothProtocolResetReason.software;
    case 'panic':
      return BluetoothProtocolResetReason.panic;
    case 'int_wdt':
      return BluetoothProtocolResetReason.intWdt;
    case 'task_wdt':
      return BluetoothProtocolResetReason.taskWdt;
    case 'wdt':
      return BluetoothProtocolResetReason.wdt;
    case 'deep_sleep':
      return BluetoothProtocolResetReason.deepSleep;
    case 'brownout':
      return BluetoothProtocolResetReason.brownout;
    case 'sdio':
      return BluetoothProtocolResetReason.sdio;
    case 'unknown':
      return BluetoothProtocolResetReason.unknown;
  }
  return null;
}

String? _asString(Object? value) {
  return value is String ? value : null;
}

int? _asInt(Object? value) {
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  if (value is String) {
    return int.tryParse(value);
  }
  return null;
}

double? _asDouble(Object? value) {
  if (value is double) {
    return value;
  }
  if (value is num) {
    return value.toDouble();
  }
  if (value is String) {
    return double.tryParse(value);
  }
  return null;
}

bool? _asBool(Object? value) {
  if (value is bool) {
    return value;
  }
  if (value is String) {
    if (value.toLowerCase() == 'true') {
      return true;
    }
    if (value.toLowerCase() == 'false') {
      return false;
    }
  }
  return null;
}

Map<String, Object?>? _asMap(Object? value) {
  if (value is Map<String, Object?>) {
    return value;
  }
  if (value is Map<String, dynamic>) {
    return value.map((key, v) => MapEntry(key, v as Object?));
  }
  return null;
}

List<String>? _asStringList(Object? value) {
  if (value is List) {
    return value.whereType<String>().toList();
  }
  return null;
}
