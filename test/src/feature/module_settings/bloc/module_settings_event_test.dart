import 'package:entime/src/feature/module_settings/module_settings.dart';
import 'package:flutter_test/flutter_test.dart';

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
        const entimeModel1 = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        const entimeModel2 = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        expect(
          const ModuleSettingsEvent.update(entimeModel1),
          equals(const ModuleSettingsEvent.update(entimeModel1)),
        );
        expect(
          const ModuleSettingsEvent.update(entimeModel1),
          equals(const ModuleSettingsEvent.update(entimeModel2)),
        );
      });

      test('supports value equality for different provider types', () {
        const entimeModel = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        const ledModel = ModSettingsModel.led(
          ModSettingsLed(
            type: 'led',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            ledPanel: LedPanel(brightness: 15),
          ),
        );
        expect(
          const ModuleSettingsEvent.update(entimeModel),
          isNot(equals(const ModuleSettingsEvent.update(ledModel))),
        );
      });

      test('toString returns correct representation', () {
        const entimeModel = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        const event = ModuleSettingsEvent.update(entimeModel);
        expect(event.toString(), contains('ModuleSettingsEvent.update'));
      });

      test('toString returns correct representation for different provider types', () {
        const ledModel = ModSettingsModel.led(
          ModSettingsLed(
            type: 'led',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            ledPanel: LedPanel(brightness: 15),
          ),
        );
        const event = ModuleSettingsEvent.update(ledModel);
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
        const entimeModel = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        const event1 = ModuleSettingsEvent.update(entimeModel);
        const event2 = ModuleSettingsEvent.update(entimeModel);
        expect(event1, equals(event2));
        expect(event1.hashCode, equals(event2.hashCode));
      });

      test('update events with different provider instances are not equal', () {
        const entimeModel1 = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        const entimeModel2 = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 101),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        const event1 = ModuleSettingsEvent.update(entimeModel1);
        const event2 = ModuleSettingsEvent.update(entimeModel2);
        expect(event1, isNot(equals(event2)));
        expect(event1.hashCode, isNot(equals(event2.hashCode)));
      });

      test('get and update events are not equal', () {
        const entimeModel = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            loRa: LoRa(
              active: false,
              frequency: 9557,
              txPower: 0,
              spreadingFactor: 0,
              signalBandwidth: 0,
              codingRateDenom: 0,
              preambleLength: 0,
              syncWord: 0,
              crc: false,
            ),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            tft: Tft(active: true, timeout: false, timeoutDuration: 0, turnOnAtEvent: false),
            buzzer: Buzzer(active: true, shortFrequency: 0, longFrequency: 0),
            vcc: Vcc(r1: 0, r2: 0),
          ),
        );
        const getEvent = ModuleSettingsEvent.get('{"Type": "entime"}');
        const updateEvent = ModuleSettingsEvent.update(entimeModel);
        expect(getEvent, isNot(equals(updateEvent)));
        expect(getEvent.hashCode, isNot(equals(updateEvent.hashCode)));
      });
    });
  });
}
