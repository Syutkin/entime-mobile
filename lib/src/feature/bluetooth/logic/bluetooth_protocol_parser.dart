import 'dart:convert';

import '../../../common/utils/extensions.dart';
import '../model/bluetooth_protocol_models.dart';
import '../model/bluetooth_protocol_types.dart';

sealed class BluetoothProtocolMessage {
  const BluetoothProtocolMessage();
}

final class BluetoothProtocolPacketMessage extends BluetoothProtocolMessage {
  const BluetoothProtocolPacketMessage({
    required this.type,
    required this.raw,
    required this.time,
    this.correction,
  });

  final BluetoothProtocolPacketType type;
  final String raw;
  final String time;
  final int? correction;
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
    final normalized = rawMessage.trim();
    if (normalized.isEmpty) {
      return BluetoothProtocolUnknownMessage(raw: rawMessage);
    }

    if (normalized.endsWith('#')) {
      for (final entry in bluetoothProtocolPacketByPrefix.entries) {
        if (normalized.startsWith(entry.key)) {
          final packet = _parsePacket(entry.value, normalized);
          if (packet != null) {
            return packet;
          }
          return BluetoothProtocolUnknownMessage(raw: normalized);
        }
      }
    }

    if (normalized.startsWith('{') && normalized.endsWith('}')) {
      final decoded = _decodeJson(normalized);
      if (decoded != null) {
        final eventName = decoded['event'].asString();
        if (eventName != null) {
          final event = _parseEvent(eventName, decoded);
          if (event != null) {
            return BluetoothProtocolJsonEventMessage(event: event, json: decoded);
          }
        }

        final commandName = decoded['cmd'].asString();
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

BluetoothProtocolPacketMessage? _parsePacket(BluetoothProtocolPacketType type, String raw) {
  final content = raw.substring(1, raw.length - 1);
  if (content.isEmpty) {
    return null;
  }

  switch (type) {
    case BluetoothProtocolPacketType.start:
      return _parseStartPacket(content, raw);
    case BluetoothProtocolPacketType.finish:
    case BluetoothProtocolPacketType.beep:
    case BluetoothProtocolPacketType.voice:
      if (!_isValidPacketTime(content)) {
        return null;
      }
      return BluetoothProtocolPacketMessage(type: type, raw: raw, time: content);
  }
}

BluetoothProtocolPacketMessage? _parseStartPacket(String content, String raw) {
  final parts = content.split(';');
  if (parts.isEmpty || parts.length > 2) {
    return null;
  }

  final time = parts.first;
  if (!_isValidPacketTime(time)) {
    return null;
  }

  int? correction;
  if (parts.length == 2 && parts[1].isNotEmpty) {
    correction = int.tryParse(parts[1]);
    if (correction == null) {
      return null;
    }
  }

  return BluetoothProtocolPacketMessage(
    type: BluetoothProtocolPacketType.start,
    raw: raw,
    time: time,
    correction: correction,
  );
}

bool _isValidPacketTime(String value) {
  final pattern = RegExp(r'^\d{2}:\d{2}:\d{2}(,\d{3})?$');
  return pattern.hasMatch(value);
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
    case BluetoothProtocolCommandType.wifi:
      return BluetoothJsonCommandWifi(
        id: id,
        enable: json['enable'].asBool(),
        ssid: json['ssid'].asString(),
        passwd: json['passwd'].asString(),
      );
    case BluetoothProtocolCommandType.calibrate:
      final offset = json['offset'].asDouble();
      if (offset == null) {
        return null;
      }
      return BluetoothJsonCommandCalibrate(id: id, offset: offset);
    case BluetoothProtocolCommandType.touchCalibrate:
      return BluetoothJsonCommandTouchCalibrate(id: id);
    case BluetoothProtocolCommandType.syncSource:
      final source = json['source'].asString();
      if (source == null) {
        return null;
      }
      return BluetoothJsonCommandSyncSource(id: id, source: source);
    case BluetoothProtocolCommandType.syncNtp:
      return BluetoothJsonCommandSyncNtp(id: id);
    case BluetoothProtocolCommandType.saveConfig:
      final data = json['data'].asMap();
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

  final timestamp = json['timestamp'].asInt();
  switch (eventType) {
    case BluetoothProtocolEventType.gpsLost:
      return BluetoothJsonEventGpsLost(timestamp: timestamp);
    case BluetoothProtocolEventType.gpsAcquired:
      return BluetoothJsonEventGpsAcquired(
        timestamp: timestamp,
        satellites: json['satellites'].asInt(),
      );
    case BluetoothProtocolEventType.rtcError:
      return BluetoothJsonEventRtcError(
        timestamp: timestamp,
        errorCode: json['error_code'].asInt(),
      );
    case BluetoothProtocolEventType.syncSourceChanged:
      return BluetoothJsonEventSyncSourceChanged(
        timestamp: timestamp,
        newSource: json['new_source'].asString(),
        reason: json['reason'].asString(),
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
        time: json['time'].asInt(),
        source: _parseTimeSource(json['source']),
        accuracyUs: json['accuracy_us'].asInt(),
      );
    case BluetoothProtocolCommandType.status:
      return BluetoothJsonResponseStatus(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        device: _parseDeviceInfo(json['device'].asMap()),
        firmware: _parseFirmwareInfo(json['firmware'].asMap()),
        system: _parseSystemInfo(json['system'].asMap()),
        wifi: _parseWifiInfo(json['wifi'].asMap()),
        ble: _parseBleInfo(json['ble'].asMap()),
        rtc: _parseRtcInfo(json['rtc'].asMap()),
        gps: _parseGpsInfo(json['gps'].asMap()),
        sync: _parseSyncInfo(json['sync'].asMap()),
        storage: _parseStorageInfo(json['storage'].asMap()),
        power: _parsePowerInfo(json['power'].asMap()),
      );
    case BluetoothProtocolCommandType.wifi:
      return BluetoothJsonResponseWifi(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        state: json['state'].asString(),
      );
    case BluetoothProtocolCommandType.calibrate:
      return BluetoothJsonResponseCalibrate(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        previousOffset: json['previous_offset'].asDouble(),
        newOffset: json['new_offset'].asDouble(),
        estimatedErrorUs: json['estimated_error_us'].asInt(),
      );
    case BluetoothProtocolCommandType.touchCalibrate:
      return BluetoothJsonResponseTouchCalibrate(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        savedKeys: json['saved_keys'].asInt(),
        calValid: json['cal_valid'].asBool(),
        calibration: _parseIntList(json['calibration']),
      );
    case BluetoothProtocolCommandType.syncSource:
      return BluetoothJsonResponseSyncSource(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        activeSource: _parseSyncSource(json['active_source']),
        reason: json['reason'].asString(),
        currentTimestamp: json['timestamp'].asInt(),
      );
    case BluetoothProtocolCommandType.syncNtp:
      return BluetoothJsonResponseSyncNtp(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        rtcTime: json['rtc_time'].asInt(),
        ntpServers: json['ntp_servers'].asStringList(),
        syncDurationMs: json['sync_duration_ms'].asInt(),
      );
    case BluetoothProtocolCommandType.saveConfig:
      return BluetoothJsonResponseSaveConfig(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        savedKeys: json['saved_keys'].asInt(),
        rebootNeeded: json['reboot_needed'].asBool(),
        storageUsagePercent: json['storage_usage_percent'].asInt(),
      );
    case BluetoothProtocolCommandType.loadConfig:
      return BluetoothJsonResponseLoadConfig(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        data: json['data'].asMap(),
      );
    case BluetoothProtocolCommandType.factoryReset:
      return BluetoothJsonResponseFactoryReset(
        id: base.id,
        status: base.status,
        errorCode: base.errorCode,
        errorMessage: base.errorMessage,
        timestamp: base.timestamp,
        message: json['message'].asString(),
      );
  }
}

BluetoothJsonResponseBase _parseResponseBase(Map<String, Object?> json) {
  return BluetoothJsonResponseBase(
    id: json['id'],
    status: _parseStatus(json['status']),
    errorCode: json['error_code'].asInt(),
    errorMessage: json['error_message'].asString(),
    timestamp: json['timestamp'].asInt(),
  );
}

BluetoothJsonDeviceInfo? _parseDeviceInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonDeviceInfo(
    name: json['name'].asString(),
    number: json['number'].asInt(),
    type: _parseDeviceType(json['type']),
  );
}

BluetoothJsonFirmwareInfo? _parseFirmwareInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonFirmwareInfo(
    version: json['version'].asString(),
    buildDate: json['build_date'].asString(),
  );
}

BluetoothJsonSystemInfo? _parseSystemInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonSystemInfo(
    uptimeS: json['uptime_s'].asInt(),
    freeHeapBytes: json['free_heap_bytes'].asInt(),
    resetReason: _parseResetReason(json['reset_reason']),
  );
}

BluetoothJsonWifiInfo? _parseWifiInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonWifiInfo(
    state: _parseWifiState(json['state']),
    rssi: json['rssi'].asInt(),
    ip: json['ip'].asString(),
    ssid: json['ssid'].asString(),
  );
}

BluetoothJsonBleInfo? _parseBleInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonBleInfo(
    state: _parseBleState(json['state']),
    clients: json['clients'].asInt(),
  );
}

BluetoothJsonRtcInfo? _parseRtcInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonRtcInfo(
    ready: json['ready'].asBool(),
    lostPower: json['lost_power'].asBool(),
    lastSyncMs: json['last_sync_ms'].asInt(),
    temperatureC: json['temperature_c'].asDouble(),
  );
}

BluetoothJsonGpsInfo? _parseGpsInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonGpsInfo(
    state: _parseGpsState(json['state']),
    fixAgeMs: json['fix_age_ms'].asInt(),
    fix: json['fix'].asBool(),
    satellites: json['satellites'].asInt(),
    ppsSignal: json['pps_signal'].asBool(),
  );
}

BluetoothJsonSyncInfo? _parseSyncInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonSyncInfo(
    lastMs: json['last_ms'].asInt(),
    state: _parseSyncState(json['state']),
    accuracyUs: json['accuracy_us'].asInt(),
    source: _parseTimeSource(json['source']),
  );
}

BluetoothJsonStorageInfo? _parseStorageInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonStorageInfo(
    usedPct: json['used_pct'].asInt(),
    ok: json['ok'].asBool(),
  );
}

BluetoothJsonPowerInfo? _parsePowerInfo(Map<String, Object?>? json) {
  if (json == null) {
    return null;
  }

  return BluetoothJsonPowerInfo(
    batteryVoltage: json['battery_voltage'].asDouble(),
  );
}

BluetoothProtocolStatus? _parseStatus(Object? value) {
  final status = value.asString();
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

List<int>? _parseIntList(Object? value) {
  final self = value;
  if (self is! List) {
    return null;
  }

  final result = <int>[];
  for (final item in self) {
    final value = item as Object?;
    final parsed = value.asInt();
    if (parsed == null) {
      return null;
    }
    result.add(parsed);
  }
  return result;
}

BluetoothProtocolTimeSource? _parseTimeSource(Object? value) {
  final source = value.asString();
  switch (source) {
    case 'gps':
      return BluetoothProtocolTimeSource.gps;
    case 'rtc':
      return BluetoothProtocolTimeSource.rtc;
  }
  return null;
}

BluetoothProtocolDeviceType? _parseDeviceType(Object? value) {
  final type = value.asString();
  switch (type) {
    case 'start':
      return BluetoothProtocolDeviceType.start;
    case 'finish':
      return BluetoothProtocolDeviceType.finish;
  }
  return null;
}

BluetoothProtocolWifiState? _parseWifiState(Object? value) {
  final state = value.asString();
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
  final state = value.asString();
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
  final state = value.asString();
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
  final state = value.asString();
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
  final source = value.asString();
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
  final reason = value.asString();
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
