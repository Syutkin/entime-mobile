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
      });

      test('parses finish packet', () {
        final message = parser.parse('F10:10:10,123#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.finish);
      });

      test('parses beep packet', () {
        final message = parser.parse('B10:10:56#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.beep);
      });

      test('parses voice packet', () {
        final message = parser.parse('V10:10:15#');

        expect(message, isA<BluetoothProtocolPacketMessage>());
        final packet = message as BluetoothProtocolPacketMessage;
        expect(packet.type, BluetoothProtocolPacketType.voice);
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
    });

    group('responses', () {
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

      test('parses status response fields', () {
        const raw = '''
{"cmd":"status","id":3,"status":"ok","device":{"name":"ENTIME","number":1,"type":"start"},"system":{"uptime_s":12,"free_heap_bytes":1024,"reset_reason":"power_on"},"wifi":{"state":"connected","rssi":-62,"ip":"192.168.1.10","ssid":"MyWiFi"},"ble":{"state":"advertising","clients":0},"rtc":{"ready":true,"lost_power":false,"last_sync_ms":600000,"temperature_c":24.5},"gps":{"state":"searching","fix_age_ms":120000,"fix":true,"satellites":12,"pps_signal":true},"sync":{"last_ms":5000,"state":"gps_ok","accuracy_us":50,"source":"gps"},"storage":{"used_pct":42,"ok":true},"power":{"battery_voltage":5.0}}
''';

        final message = parser.parse(raw);

        expect(message, isA<BluetoothProtocolJsonResponseMessage>());
        final responseMessage = message as BluetoothProtocolJsonResponseMessage;
        final response = responseMessage.response as BluetoothJsonResponseStatus;
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
