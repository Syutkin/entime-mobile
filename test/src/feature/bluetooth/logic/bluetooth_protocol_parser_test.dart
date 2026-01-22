import 'package:entime/src/feature/bluetooth/logic/bluetooth_protocol_parser.dart';
import 'package:entime/src/feature/bluetooth/model/bluetooth_protocol_models.dart';
import 'package:entime/src/feature/bluetooth/model/bluetooth_protocol_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BluetoothProtocolParser', () {
    const parser = BluetoothProtocolParser();

    group('packets', () {
      test('parses start packet', () {
        final message = parser.parse(r'$10:10:10,123;-3345#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.start);
        expect(packet.time, '10:10:10,123');
        expect(packet.correction, -3345);
      });

      test('parses start packet without correction', () {
        final message = parser.parse(r'$10:10:10,123#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.start);
        expect(packet.time, '10:10:10,123');
        expect(packet.correction, null);
      });

      test('parses finish packet', () {
        final message = parser.parse('F10:10:10,123#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.finish);
        expect(packet.time, '10:10:10,123');
      });

      test('parses beep packet', () {
        final message = parser.parse('B10:10:56#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.beep);
        expect(packet.time, '10:10:56');
      });

      test('parses voice packet', () {
        final message = parser.parse('V10:10:15#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.voice);
        expect(packet.time, '10:10:15');
      });

      test('returns unknown for start packet with non-numeric correction', () {
        final message = parser.parse(r'$10:10:10,123;abc#');

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });

      test('returns unknown for start packet with extra sections', () {
        final message = parser.parse(r'$10:10:10,123;100;200#');

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });

      test('parses start packet with empty correction as null', () {
        final message = parser.parse(r'$10:10:10,123;#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.start);
        expect(packet.time, '10:10:10,123');
        expect(packet.correction, null);
      });

      test('returns unknown for packet with invalid time', () {
        final message = parser.parse(r'$10:10:10,1234#');

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });

      test('returns unknown for empty packet', () {
        final message = parser.parse(r'$#');

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });

      test('parses time without milliseconds', () {
        final message = parser.parse('F10:10:10#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.finish);
        expect(packet.time, '10:10:10');
      });
    });

    group('commands', () {
      test('parses ping command', () {
        const raw = '{"cmd": "ping", "id": 1}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandPing>());
        expect((command as BluetoothJsonCommandPing).id, 1);
      });

      test('parses time command', () {
        const raw = '{"cmd": "time", "id": 2}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandTime>());
        expect((command as BluetoothJsonCommandTime).id, 2);
      });

      test('parses status command', () {
        const raw = '{"cmd": "status", "id": 3}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandStatus>());
        expect((command as BluetoothJsonCommandStatus).id, 3);
      });

      test('parses gps command', () {
        const raw = '{"cmd": "gps", "enable": true, "id": 4}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandGps>());
        final gps = command as BluetoothJsonCommandGps;
        expect(gps.enable, true);
        expect(gps.id, 4);
      });

      test('parses wifi command', () {
        const raw = '{"cmd": "wifi", "enable": true, "ssid": "MyWiFi", "passwd": "secret", "id": 5}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandWifi>());
        final wifi = command as BluetoothJsonCommandWifi;
        expect(wifi.enable, true);
        expect(wifi.ssid, 'MyWiFi');
        expect(wifi.passwd, 'secret');
        expect(wifi.id, 5);
      });

      test('parses calibrate command', () {
        const raw = '{"cmd": "calibrate", "offset": 0.5, "id": 6}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandCalibrate>());
        final calibrate = command as BluetoothJsonCommandCalibrate;
        expect(calibrate.offset, 0.5);
        expect(calibrate.id, 6);
      });

      test('parses sync_source command', () {
        const raw = '{"cmd": "sync_source", "source": "gps", "id": 7}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandSyncSource>());
        final syncSource = command as BluetoothJsonCommandSyncSource;
        expect(syncSource.source, 'gps');
        expect(syncSource.id, 7);
      });

      test('parses sync_ntp command', () {
        const raw = '{"cmd": "sync_ntp", "id": 8}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandSyncNtp>());
        expect((command as BluetoothJsonCommandSyncNtp).id, 8);
      });

      test('parses save_config command', () {
        const raw = '{"cmd": "save_config", "id": 9, "data": {"device": {"name": "ENTime"}}}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final commandMessage = message as BluetoothProtocolJsonCommandMessage;
        expect(commandMessage.command, isA<BluetoothJsonCommandSaveConfig>());
        final command = commandMessage.command as BluetoothJsonCommandSaveConfig;
        expect(command.id, 9);
        expect(command.data['device'], isA<Map<String, Object?>>());
      });

      test('parses load_config command', () {
        const raw = '{"cmd": "load_config", "id": 10}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandLoadConfig>());
        expect((command as BluetoothJsonCommandLoadConfig).id, 10);
      });

      test('parses factory_reset command', () {
        const raw = '{"cmd": "factory_reset", "id": 11}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonCommandMessage>());
        final command = (message as BluetoothProtocolJsonCommandMessage).command;
        expect(command, isA<BluetoothJsonCommandFactoryReset>());
        expect((command as BluetoothJsonCommandFactoryReset).id, 11);
      });

      test('returns unknown for sync_source command without source', () {
        const raw = '{"cmd": "sync_source", "id": 7}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });

      test('returns unknown for calibrate command without offset', () {
        const raw = '{"cmd": "calibrate", "id": 6}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });

      test('returns unknown for save_config command without data', () {
        const raw = '{"cmd": "save_config", "id": 9}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });

      test('returns unknown for command with unknown cmd', () {
        const raw = '{"cmd": "unknown_cmd", "id": 1}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });
    });

    group('events', () {
      test('parses gps_lost event', () {
        const raw = '{"event": "gps_lost", "timestamp": 1703169600123456}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonEventMessage>());
        final eventMessage = message as BluetoothProtocolJsonEventMessage;
        expect(eventMessage.event, isA<BluetoothJsonEventGpsLost>());
        final event = eventMessage.event as BluetoothJsonEventGpsLost;
        expect(event.timestamp, 1703169600123456);
      });

      test('parses gps_acquired event', () {
        const raw = '{"event": "gps_acquired", "timestamp": 1703169600123456, "satellites": 12}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonEventMessage>());
        final eventMessage = message as BluetoothProtocolJsonEventMessage;
        expect(eventMessage.event, isA<BluetoothJsonEventGpsAcquired>());
        final event = eventMessage.event as BluetoothJsonEventGpsAcquired;
        expect(event.timestamp, 1703169600123456);
        expect(event.satellites, 12);
      });

      test('parses rtc_error event', () {
        const raw = '{"event": "rtc_error", "timestamp": 1703169600123456, "error_code": 201}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonEventMessage>());
        final eventMessage = message as BluetoothProtocolJsonEventMessage;
        expect(eventMessage.event, isA<BluetoothJsonEventRtcError>());
        final event = eventMessage.event as BluetoothJsonEventRtcError;
        expect(event.timestamp, 1703169600123456);
        expect(event.errorCode, 201);
      });

      test('parses sync_source_changed event', () {
        const raw = '{"event": "sync_source_changed", "new_source": "rtc", "reason": "gps_timeout"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonEventMessage>());
        final eventMessage = message as BluetoothProtocolJsonEventMessage;
        expect(eventMessage.event, isA<BluetoothJsonEventSyncSourceChanged>());
        final event = eventMessage.event as BluetoothJsonEventSyncSourceChanged;
        expect(event.newSource, 'rtc');
        expect(event.reason, 'gps_timeout');
      });

      test('returns unknown for event with unknown name', () {
        const raw = '{"event": "unknown_event", "timestamp": 1703169600123456}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });
    });

    group('responses', () {
      BluetoothJsonResponseStatus _parseStatusResponse(String raw) {
        final message = parser.parse(raw);
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        return responseMessage.response as BluetoothJsonResponseStatus;
      }

      test('parses pong response', () {
        const raw = '{"cmd": "pong", "id": 1, "status": "ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        expect(responseMessage.response, isA<BluetoothJsonResponsePong>());
        final response = responseMessage.response as BluetoothJsonResponsePong;
        expect(response.id, 1);
        expect(response.status, BluetoothProtocolStatus.ok);
      });

      test('parses warning status', () {
        const raw = '{"cmd": "pong", "id": 1, "status": "warning"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponsePong;
        expect(response.status, BluetoothProtocolStatus.warning);
      });

      test('parses error status', () {
        const raw = '{"cmd": "pong", "id": 1, "status": "error"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponsePong;
        expect(response.status, BluetoothProtocolStatus.error);
      });

      test('parses time response fields', () {
        const raw = '{"cmd":"time","id":2,"time":1703169600123456,"source":"gps","accuracy_us":50,"status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseTime;
        expect(response.time, 1703169600123456);
        expect(response.source, BluetoothProtocolTimeSource.gps);
        expect(response.accuracyUs, 50);
      });

      test('parses time response with rtc source', () {
        const raw = '{"cmd":"time","id":2,"time":1703169600123456,"source":"rtc","accuracy_us":50,"status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseTime;
        expect(response.source, BluetoothProtocolTimeSource.rtc);
      });

      test('parses status response fields', () {
        const raw = '''
{"cmd":"status","id":3,"status":"ok","device":{"name":"ENTIME","number":1,"type":"start"},"system":{"uptime_s":12,"free_heap_bytes":1024,"reset_reason":"power_on"},"wifi":{"state":"connected","rssi":-62,"ip":"192.168.1.10","ssid":"MyWiFi"},"ble":{"state":"advertising","clients":0},"rtc":{"ready":true,"lost_power":false,"last_sync_ms":600000,"temperature_c":24.5},"gps":{"state":"searching","fix_age_ms":120000,"fix":true,"satellites":12,"pps_signal":true},"sync":{"last_ms":5000,"state":"gps_ok","accuracy_us":50,"source":"gps"},"storage":{"used_pct":42,"ok":true},"power":{"battery_voltage":5.0}}
''';

        final response = _parseStatusResponse(raw);
        expect(response.device?.name, 'ENTIME');
        expect(response.device?.type, BluetoothProtocolDeviceType.start);
        expect(response.wifi?.state, BluetoothProtocolWifiState.connected);
        expect(response.ble?.state, BluetoothProtocolBleState.advertising);
        expect(response.rtc?.ready, true);
        expect(response.gps?.state, BluetoothProtocolGpsState.searching);
        expect(response.sync?.state, BluetoothProtocolSyncState.gpsOk);
        expect(response.storage?.usedPct, 42);
        expect(response.power?.batteryVoltage, 5.0);
      });

      test('parses status response without device info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.device, null);
      });

      test('parses status response with firmware info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","firmware":{"version":"0.1.0","build_date":"2024-01-01"}}';

        final response = _parseStatusResponse(raw);
        expect(response.firmware?.version, '0.1.0');
        expect(response.firmware?.buildDate, '2024-01-01');
      });

      test('parses status response without system info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.system, null);
      });

      test('parses status response with system info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","system":{"uptime_s":12345,"free_heap_bytes":142336,"reset_reason":"power_on"}}';

        final response = _parseStatusResponse(raw);
        expect(response.system?.uptimeS, 12345);
        expect(response.system?.freeHeapBytes, 142336);
        expect(response.system?.resetReason, BluetoothProtocolResetReason.powerOn);
      });

      test('parses status response without wifi info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.wifi, null);
      });

      test('parses status response with wifi info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","wifi":{"state":"connected","rssi":-62,"ip":"192.168.1.10","ssid":"MyWiFi"}}';

        final response = _parseStatusResponse(raw);
        expect(response.wifi?.state, BluetoothProtocolWifiState.connected);
        expect(response.wifi?.rssi, -62);
        expect(response.wifi?.ip, '192.168.1.10');
        expect(response.wifi?.ssid, 'MyWiFi');
      });

      test('parses status response without ble info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.ble, null);
      });

      test('parses status response with ble info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","ble":{"state":"advertising","clients":2}}';

        final response = _parseStatusResponse(raw);
        expect(response.ble?.state, BluetoothProtocolBleState.advertising);
        expect(response.ble?.clients, 2);
      });

      test('parses status response without rtc info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.rtc, null);
      });

      test('parses status response without gps info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.gps, null);
      });

      test('parses status response without sync info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.sync, null);
      });

      test('parses status response without storage info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.storage, null);
      });

      test('parses status response without power info', () {
        const raw = '{"cmd":"status","id":3,"status":"ok"}';

        final response = _parseStatusResponse(raw);
        expect(response.power, null);
      });

      test('parses device type finish', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","device":{"type":"finish"}}';

        final response = _parseStatusResponse(raw);
        expect(response.device?.type, BluetoothProtocolDeviceType.finish);
      });

      test('parses wifi state variants', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","wifi":{"state":"off"}}';
        const rawConnecting = '{"cmd":"status","id":3,"status":"ok","wifi":{"state":"connecting"}}';
        const rawError = '{"cmd":"status","id":3,"status":"ok","wifi":{"state":"error"}}';

        expect(_parseStatusResponse(raw).wifi?.state, BluetoothProtocolWifiState.off);
        expect(_parseStatusResponse(rawConnecting).wifi?.state, BluetoothProtocolWifiState.connecting);
        expect(_parseStatusResponse(rawError).wifi?.state, BluetoothProtocolWifiState.error);
      });

      test('parses ble state variants', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","ble":{"state":"off"}}';
        const rawConnected = '{"cmd":"status","id":3,"status":"ok","ble":{"state":"connected"}}';

        expect(_parseStatusResponse(raw).ble?.state, BluetoothProtocolBleState.off);
        expect(_parseStatusResponse(rawConnected).ble?.state, BluetoothProtocolBleState.connected);
      });

      test('parses gps state variants', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","gps":{"state":"off"}}';
        const rawActive = '{"cmd":"status","id":3,"status":"ok","gps":{"state":"active"}}';

        expect(_parseStatusResponse(raw).gps?.state, BluetoothProtocolGpsState.off);
        expect(_parseStatusResponse(rawActive).gps?.state, BluetoothProtocolGpsState.active);
      });

      test('parses sync state variants', () {
        const rawGpsDegraded = '{"cmd":"status","id":3,"status":"ok","sync":{"state":"gps_degraded"}}';
        const rawRtcOk = '{"cmd":"status","id":3,"status":"ok","sync":{"state":"rtc_ok"}}';
        const rawRtcDegraded = '{"cmd":"status","id":3,"status":"ok","sync":{"state":"rtc_degraded"}}';
        const rawNoSync = '{"cmd":"status","id":3,"status":"ok","sync":{"state":"nosync"}}';

        expect(_parseStatusResponse(rawGpsDegraded).sync?.state, BluetoothProtocolSyncState.gpsDegraded);
        expect(_parseStatusResponse(rawRtcOk).sync?.state, BluetoothProtocolSyncState.rtcOk);
        expect(_parseStatusResponse(rawRtcDegraded).sync?.state, BluetoothProtocolSyncState.rtcDegraded);
        expect(_parseStatusResponse(rawNoSync).sync?.state, BluetoothProtocolSyncState.noSync);
      });

      test('parses reset reason variants', () {
        const raw = '{"cmd":"status","id":3,"status":"ok","system":{"reset_reason":"panic"}}';
        const rawBrownout = '{"cmd":"status","id":3,"status":"ok","system":{"reset_reason":"brownout"}}';
        const rawSdio = '{"cmd":"status","id":3,"status":"ok","system":{"reset_reason":"sdio"}}';
        const rawUnknown = '{"cmd":"status","id":3,"status":"ok","system":{"reset_reason":"unknown"}}';

        expect(_parseStatusResponse(raw).system?.resetReason, BluetoothProtocolResetReason.panic);
        expect(_parseStatusResponse(rawBrownout).system?.resetReason, BluetoothProtocolResetReason.brownout);
        expect(_parseStatusResponse(rawSdio).system?.resetReason, BluetoothProtocolResetReason.sdio);
        expect(_parseStatusResponse(rawUnknown).system?.resetReason, BluetoothProtocolResetReason.unknown);
      });

      test('parses gps response', () {
        const raw = '{"cmd":"gps","id":4,"state":"enabled","status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseGps;
        expect(response.state, 'enabled');
      });

      test('parses wifi response', () {
        const raw = '{"cmd":"wifi","id":5,"state":"enabled","status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseWifi;
        expect(response.state, 'enabled');
      });

      test('parses calibrate response', () {
        const raw = '{"cmd":"calibrate","id":6,"previous_offset":0.2,"new_offset":0.5,"estimated_error_us":10,"status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseCalibrate;
        expect(response.previousOffset, 0.2);
        expect(response.newOffset, 0.5);
        expect(response.estimatedErrorUs, 10);
      });

      test('parses sync_source response', () {
        const raw = '{"cmd":"sync_source","active_source":"rtc","reason":"no_gps_signal","timestamp":1703169600123456,"status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseSyncSource;
        expect(response.activeSource, BluetoothProtocolSyncSource.rtc);
        expect(response.reason, 'no_gps_signal');
        expect(response.currentTimestamp, 1703169600123456);
      });

      test('parses sync_source response with gps', () {
        const raw = '{"cmd":"sync_source","active_source":"gps","status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseSyncSource;
        expect(response.activeSource, BluetoothProtocolSyncSource.gps);
      });

      test('parses sync_source response with none', () {
        const raw = '{"cmd":"sync_source","active_source":"none","status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseSyncSource;
        expect(response.activeSource, BluetoothProtocolSyncSource.none);
      });

      test('parses sync_ntp response', () {
        const raw = '{"cmd":"sync_ntp","id":8,"status":"ok","rtc_time":1703169600,"ntp_servers":["ru.pool.ntp.org","time.google.com"],"sync_duration_ms":2500}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseSyncNtp;
        expect(response.rtcTime, 1703169600);
        expect(response.ntpServers, ['ru.pool.ntp.org', 'time.google.com']);
        expect(response.syncDurationMs, 2500);
      });

      test('parses save_config response', () {
        const raw = '{"cmd":"save_config","id":9,"saved_keys":4,"reboot_needed":true,"storage_usage_percent":15,"status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseSaveConfig;
        expect(response.savedKeys, 4);
        expect(response.rebootNeeded, true);
        expect(response.storageUsagePercent, 15);
      });

      test('parses load_config response', () {
        const raw = '{"cmd":"load_config","id":10,"data":{"device":{"name":"ENTime"}},"status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseLoadConfig;
        expect(response.data?['device'], isA<Map<String, Object?>>());
      });

      test('parses factory_reset response', () {
        const raw = '{"cmd":"factory_reset","id":11,"message":"Device will reset","status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseFactoryReset;
        expect(response.message, 'Device will reset');
      });

      test('returns unknown for response with unknown cmd', () {
        const raw = '{"cmd":"unknown_cmd","status":"ok"}';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolUnknownMessage>());
      });
    });

    test('returns unknown on invalid json', () {
      const raw = '{bad json}';

      final message = parser.parse(raw);

      expect(message, isA<BluetoothProtocolUnknownMessage>());
    });

    test('returns unknown on empty message', () {
      final message = parser.parse('');

      expect(message, isA<BluetoothProtocolUnknownMessage>());
    });
  });
}
