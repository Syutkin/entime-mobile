import 'bluetooth_protocol_types.dart';

enum BluetoothProtocolStatus {
  ok,
  warning,
  error,
}

enum BluetoothProtocolTimeSource {
  gps,
  rtc,
}

enum BluetoothProtocolDeviceType {
  start,
  finish,
}

enum BluetoothProtocolWifiState {
  off,
  connecting,
  connected,
  error,
}

enum BluetoothProtocolBleState {
  off,
  advertising,
  connected,
}

enum BluetoothProtocolGpsState {
  off,
  searching,
  active,
}

enum BluetoothProtocolSyncState {
  gpsOk,
  gpsDegraded,
  rtcOk,
  rtcDegraded,
  noSync,
}

enum BluetoothProtocolSyncSource {
  gps,
  rtc,
  none,
}

enum BluetoothProtocolResetReason {
  powerOn,
  software,
  panic,
  intWdt,
  taskWdt,
  wdt,
  deepSleep,
  brownout,
  sdio,
  unknown,
}

sealed class BluetoothJsonCommand {
  const BluetoothJsonCommand({this.id});

  final Object? id;
}

final class BluetoothJsonCommandPing extends BluetoothJsonCommand {
  const BluetoothJsonCommandPing({super.id});
}

final class BluetoothJsonCommandTime extends BluetoothJsonCommand {
  const BluetoothJsonCommandTime({super.id});
}

final class BluetoothJsonCommandStatus extends BluetoothJsonCommand {
  const BluetoothJsonCommandStatus({super.id});
}

final class BluetoothJsonCommandWifi extends BluetoothJsonCommand {
  const BluetoothJsonCommandWifi({
    super.id,
    this.enable,
    this.ssid,
    this.passwd,
  });

  final bool? enable;
  final String? ssid;
  final String? passwd;
}

final class BluetoothJsonCommandCalibrate extends BluetoothJsonCommand {
  const BluetoothJsonCommandCalibrate({
    required this.offset,
    super.id,
  });

  final double offset;
}

final class BluetoothJsonCommandTouchCalibrate extends BluetoothJsonCommand {
  const BluetoothJsonCommandTouchCalibrate({super.id});
}

final class BluetoothJsonCommandSyncSource extends BluetoothJsonCommand {
  const BluetoothJsonCommandSyncSource({
    required this.source,
    super.id,
  });

  final String source;
}

final class BluetoothJsonCommandSyncNtp extends BluetoothJsonCommand {
  const BluetoothJsonCommandSyncNtp({super.id});
}

final class BluetoothJsonCommandSaveConfig extends BluetoothJsonCommand {
  const BluetoothJsonCommandSaveConfig({
    required this.data,
    super.id,
  });

  final Map<String, Object?> data;
}

final class BluetoothJsonCommandLoadConfig extends BluetoothJsonCommand {
  const BluetoothJsonCommandLoadConfig({super.id});
}

final class BluetoothJsonCommandFactoryReset extends BluetoothJsonCommand {
  const BluetoothJsonCommandFactoryReset({super.id});
}

sealed class BluetoothJsonEvent {
  const BluetoothJsonEvent({this.timestamp});

  final int? timestamp;
}

final class BluetoothJsonEventGpsLost extends BluetoothJsonEvent {
  const BluetoothJsonEventGpsLost({super.timestamp});
}

final class BluetoothJsonEventGpsAcquired extends BluetoothJsonEvent {
  const BluetoothJsonEventGpsAcquired({
    super.timestamp,
    this.satellites,
  });

  final int? satellites;
}

final class BluetoothJsonEventRtcError extends BluetoothJsonEvent {
  const BluetoothJsonEventRtcError({
    super.timestamp,
    this.errorCode,
  });

  final int? errorCode;
}

final class BluetoothJsonEventSyncSourceChanged extends BluetoothJsonEvent {
  const BluetoothJsonEventSyncSourceChanged({
    super.timestamp,
    this.newSource,
    this.reason,
  });

  final String? newSource;
  final String? reason;
}

sealed class BluetoothJsonResponse {
  const BluetoothJsonResponse({
    required this.command,
    this.id,
    this.status,
    this.errorCode,
    this.errorMessage,
    this.timestamp,
  });

  final BluetoothProtocolCommandType command;
  final Object? id;
  final BluetoothProtocolStatus? status;
  final int? errorCode;
  final String? errorMessage;
  final int? timestamp;
}

final class BluetoothJsonResponsePong extends BluetoothJsonResponse {
  const BluetoothJsonResponsePong({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
  }) : super(command: BluetoothProtocolCommandType.ping);
}

final class BluetoothJsonResponseTime extends BluetoothJsonResponse {
  const BluetoothJsonResponseTime({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.time,
    this.source,
    this.accuracyUs,
  }) : super(command: BluetoothProtocolCommandType.time);

  final int? time;
  final BluetoothProtocolTimeSource? source;
  final int? accuracyUs;
}

final class BluetoothJsonResponseStatus extends BluetoothJsonResponse {
  const BluetoothJsonResponseStatus({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.device,
    this.firmware,
    this.system,
    this.wifi,
    this.ble,
    this.rtc,
    this.gps,
    this.sync,
    this.touch,
    this.storage,
    this.power,
  }) : super(command: BluetoothProtocolCommandType.status);

  final BluetoothJsonDeviceInfo? device;
  final BluetoothJsonFirmwareInfo? firmware;
  final BluetoothJsonSystemInfo? system;
  final BluetoothJsonWifiInfo? wifi;
  final BluetoothJsonBleInfo? ble;
  final BluetoothJsonRtcInfo? rtc;
  final BluetoothJsonGpsInfo? gps;
  final BluetoothJsonSyncInfo? sync;
  final BluetoothJsonTouchInfo? touch;
  final BluetoothJsonStorageInfo? storage;
  final BluetoothJsonPowerInfo? power;
}

final class BluetoothJsonResponseWifi extends BluetoothJsonResponse {
  const BluetoothJsonResponseWifi({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.state,
  }) : super(command: BluetoothProtocolCommandType.wifi);

  final String? state;
}

final class BluetoothJsonResponseCalibrate extends BluetoothJsonResponse {
  const BluetoothJsonResponseCalibrate({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.previousOffset,
    this.newOffset,
    this.estimatedErrorUs,
  }) : super(command: BluetoothProtocolCommandType.calibrate);

  final double? previousOffset;
  final double? newOffset;
  final int? estimatedErrorUs;
}

final class BluetoothJsonResponseTouchCalibrate extends BluetoothJsonResponse {
  const BluetoothJsonResponseTouchCalibrate({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.savedKeys,
    this.calValid,
    this.calibration,
  }) : super(command: BluetoothProtocolCommandType.touchCalibrate);

  final int? savedKeys;
  final bool? calValid;
  final List<int>? calibration;
}

final class BluetoothJsonResponseSyncSource extends BluetoothJsonResponse {
  const BluetoothJsonResponseSyncSource({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.activeSource,
    this.reason,
    this.currentTimestamp,
  }) : super(command: BluetoothProtocolCommandType.syncSource);

  final BluetoothProtocolSyncSource? activeSource;
  final String? reason;
  final int? currentTimestamp;
}

final class BluetoothJsonResponseSyncNtp extends BluetoothJsonResponse {
  const BluetoothJsonResponseSyncNtp({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.rtcTime,
    this.ntpServers,
    this.syncDurationMs,
  }) : super(command: BluetoothProtocolCommandType.syncNtp);

  final int? rtcTime;
  final List<String>? ntpServers;
  final int? syncDurationMs;
}

final class BluetoothJsonResponseSaveConfig extends BluetoothJsonResponse {
  const BluetoothJsonResponseSaveConfig({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.savedKeys,
    this.rebootNeeded,
    this.storageUsagePercent,
  }) : super(command: BluetoothProtocolCommandType.saveConfig);

  final int? savedKeys;
  final bool? rebootNeeded;
  final int? storageUsagePercent;
}

final class BluetoothJsonResponseLoadConfig extends BluetoothJsonResponse {
  const BluetoothJsonResponseLoadConfig({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.data,
  }) : super(command: BluetoothProtocolCommandType.loadConfig);

  final Map<String, Object?>? data;
}

final class BluetoothJsonResponseFactoryReset extends BluetoothJsonResponse {
  const BluetoothJsonResponseFactoryReset({
    super.id,
    super.status,
    super.errorCode,
    super.errorMessage,
    super.timestamp,
    this.message,
  }) : super(command: BluetoothProtocolCommandType.factoryReset);

  final String? message;
}

final class BluetoothJsonDeviceInfo {
  const BluetoothJsonDeviceInfo({
    this.name,
    this.number,
    this.type,
  });

  final String? name;
  final int? number;
  final BluetoothProtocolDeviceType? type;
}

final class BluetoothJsonFirmwareInfo {
  const BluetoothJsonFirmwareInfo({
    this.version,
    this.buildDate,
  });

  final String? version;
  final String? buildDate;
}

final class BluetoothJsonSystemInfo {
  const BluetoothJsonSystemInfo({
    this.uptimeS,
    this.freeHeapBytes,
    this.resetReason,
  });

  final int? uptimeS;
  final int? freeHeapBytes;
  final BluetoothProtocolResetReason? resetReason;
}

final class BluetoothJsonWifiInfo {
  const BluetoothJsonWifiInfo({
    this.state,
    this.rssi,
    this.ip,
    this.ssid,
  });

  final BluetoothProtocolWifiState? state;
  final int? rssi;
  final String? ip;
  final String? ssid;
}

final class BluetoothJsonBleInfo {
  const BluetoothJsonBleInfo({
    this.state,
    this.clients,
  });

  final BluetoothProtocolBleState? state;
  final int? clients;
}

final class BluetoothJsonRtcInfo {
  const BluetoothJsonRtcInfo({
    this.ready,
    this.lostPower,
    this.timeValid,
    this.lastSyncMs,
    this.temperatureC,
  });

  final bool? ready;
  final bool? lostPower;
  final bool? timeValid;
  final int? lastSyncMs;
  final double? temperatureC;
}

final class BluetoothJsonGpsInfo {
  const BluetoothJsonGpsInfo({
    this.state,
    this.fixAgeMs,
    this.nmeaAgeMs,
    this.gsvAgeMs,
    this.utcAgeMs,
    this.ppsAgeMs,
    this.fix,
    this.satellitesUsed,
    this.satellitesView,
    this.ppsSignal,
    this.enabled,
  });

  final BluetoothProtocolGpsState? state;
  final int? fixAgeMs;
  final int? nmeaAgeMs;
  final int? gsvAgeMs;
  final int? utcAgeMs;
  final int? ppsAgeMs;
  final bool? fix;
  final int? satellitesUsed;
  final int? satellitesView;
  final bool? ppsSignal;
  final bool? enabled;
}

final class BluetoothJsonSyncInfo {
  const BluetoothJsonSyncInfo({
    this.lastMs,
    this.state,
    this.accuracyUs,
    this.source,
  });

  final int? lastMs;
  final BluetoothProtocolSyncState? state;
  final int? accuracyUs;
  final BluetoothProtocolTimeSource? source;
}

final class BluetoothJsonTouchInfo {
  const BluetoothJsonTouchInfo({
    this.ready,
    this.enabled,
    this.calibrated,
  });

  final bool? ready;
  final bool? enabled;
  final bool? calibrated;
}

final class BluetoothJsonStorageInfo {
  const BluetoothJsonStorageInfo({
    this.usedPct,
    this.ok,
  });

  final int? usedPct;
  final bool? ok;
}

final class BluetoothJsonPowerInfo {
  const BluetoothJsonPowerInfo({
    this.batteryVoltage,
  });

  final double? batteryVoltage;
}
