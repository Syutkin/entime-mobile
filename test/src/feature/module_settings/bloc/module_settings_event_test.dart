import 'package:entime/src/feature/module_settings/module_settings.dart';
import 'package:flutter_test/flutter_test.dart';

const _deviceBase = DeviceSettings(name: 'BT', number: 100, type: 1, timezoneOffsetMin: 0);
const _deviceAlt = DeviceSettings(name: 'BT', number: 101, type: 1, timezoneOffsetMin: 0);
const _syncBase = SyncSettings(auto: false, source: 0, ntp1: 'ntp', ntp2: '', ntp3: '');
const _wifiBase = WiFi(active: false, ssid: 'none', passwd: '');
const _gpsBase = GpsSettings(enabled: true);
const _touchBase = TouchSettings(enabled: true, calValid: false, calibration: [0, 0, 0, 0, 0]);

const _entimeModel = ModSettingsModel.entime(
  ModSettingsEntime(
    device: _deviceBase,
    sync: _syncBase,
    wifi: _wifiBase,
    gps: _gpsBase,
    touch: _touchBase,
  ),
);

const _entimeModelAlt = ModSettingsModel.entime(
  ModSettingsEntime(
    device: _deviceAlt,
    sync: _syncBase,
    wifi: _wifiBase,
    gps: _gpsBase,
    touch: _touchBase,
  ),
);

const _ledModel = ModSettingsModel.led(
  ModSettingsLed(
    type: 'led',
    bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
    wiFi: _wifiBase,
    ledPanel: LedPanel(brightness: 15),
  ),
);

void main() {
  group('ModuleSettingsEvent', () {
    group('get', () {
      test('supports value equality', () {
        expect(
          const ModuleSettingsEvent.get('{"Type": "entime"}'),
          equals(const ModuleSettingsEvent.get('{"Type": "entime"}')),
        );
      });

      test('supports value equality for different JSON strings', () {
        expect(
          const ModuleSettingsEvent.get('{"Type": "entime"}'),
          isNot(equals(const ModuleSettingsEvent.get('{"Type": "led"}'))),
        );
      });

      test('supports value equality for empty strings', () {
        expect(
          const ModuleSettingsEvent.get(''),
          equals(const ModuleSettingsEvent.get('')),
        );
      });

      test('toString returns correct representation', () {
        const event = ModuleSettingsEvent.get('{"Type": "entime"}');
        expect(event.toString(), contains('ModuleSettingsEvent.get'));
        expect(event.toString(), contains('{"Type": "entime"}'));
      });

      test('toString returns correct representation for empty string', () {
        const event = ModuleSettingsEvent.get('');
        expect(event.toString(), contains('ModuleSettingsEvent.get'));
        expect(event.toString(), contains(''));
      });

      test('toString returns correct representation for complex JSON', () {
        const complexJson = '{"Type": "entime", "bluetooth": {"enabled": true}}';
        const event = ModuleSettingsEvent.get(complexJson);
        expect(event.toString(), contains('ModuleSettingsEvent.get'));
        expect(event.toString(), contains(complexJson));
      });
    });

    group('update', () {
      test('supports value equality', () {
        expect(
          const ModuleSettingsEvent.update(_entimeModel),
          equals(const ModuleSettingsEvent.update(_entimeModel)),
        );
        expect(
          const ModuleSettingsEvent.update(_entimeModel),
          equals(const ModuleSettingsEvent.update(_entimeModel)),
        );
      });

      test('supports value equality for different provider types', () {
        expect(
          const ModuleSettingsEvent.update(_entimeModel),
          isNot(equals(const ModuleSettingsEvent.update(_ledModel))),
        );
      });

      test('toString returns correct representation', () {
        const event = ModuleSettingsEvent.update(_entimeModel);
        expect(event.toString(), contains('ModuleSettingsEvent.update'));
      });

      test('toString returns correct representation for different provider types', () {
        const event = ModuleSettingsEvent.update(_ledModel);
        expect(event.toString(), contains('ModuleSettingsEvent.update'));
      });
    });

    group('event comparison', () {
      test('get events with same JSON are equal', () {
        const event1 = ModuleSettingsEvent.get('{"Type": "entime"}');
        const event2 = ModuleSettingsEvent.get('{"Type": "entime"}');
        expect(event1, equals(event2));
        expect(event1.hashCode, equals(event2.hashCode));
      });

      test('get events with different JSON are not equal', () {
        const event1 = ModuleSettingsEvent.get('{"Type": "entime"}');
        const event2 = ModuleSettingsEvent.get('{"Type": "led"}');
        expect(event1, isNot(equals(event2)));
        expect(event1.hashCode, isNot(equals(event2.hashCode)));
      });

      test('update events with same provider instance are equal', () {
        const event1 = ModuleSettingsEvent.update(_entimeModel);
        const event2 = ModuleSettingsEvent.update(_entimeModel);
        expect(event1, equals(event2));
        expect(event1.hashCode, equals(event2.hashCode));
      });

      test('update events with different provider instances are not equal', () {
        const event1 = ModuleSettingsEvent.update(_entimeModel);
        const event2 = ModuleSettingsEvent.update(_entimeModelAlt);
        expect(event1, isNot(equals(event2)));
        expect(event1.hashCode, isNot(equals(event2.hashCode)));
      });

      test('get and update events are not equal', () {
        const getEvent = ModuleSettingsEvent.get('{"Type": "entime"}');
        const updateEvent = ModuleSettingsEvent.update(_entimeModel);
        expect(getEvent, isNot(equals(updateEvent)));
        expect(getEvent.hashCode, isNot(equals(updateEvent.hashCode)));
      });
    });
  });
}
