import 'dart:convert';

import 'package:entime/src/feature/module_settings/logic/module_settings_entime_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ModuleSettingsEntime', () {
    late ModuleSettingsEntime provider;

    setUp(() {
      provider = ModuleSettingsEntime();
    });

    group('update method', () {
      test('should successfully update settings from valid JSON', () async {
        const jsonString = '''
        {
          "Type": "entime",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
          "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
          "VCC": {"r1": 10000, "r2": 10000}
        }''';

        final result = await provider.update(jsonString);

        expect(result, isTrue);
        expect(provider.type, equals('entime'));

        // Bluetooth
        expect(provider.bluetooth, isTrue);
        expect(provider.bluetoothName, equals('TestBT'));
        expect(provider.bluetoothNumber, equals(1));

        // LoRa
        expect(provider.lora, isTrue);
        expect(provider.frequency, equals(868));
        expect(provider.txPower, equals(14));
        expect(provider.spreadingFactor, equals(7));
        expect(provider.signalBandwidth, equals(125));
        expect(provider.codingRateDenominator, equals(5));
        expect(provider.preambleLength, equals(8));
        expect(provider.syncWord, equals(12));
        expect(provider.crc, isTrue);

        // WiFi
        expect(provider.wifi, isTrue);
        expect(provider.ssid, equals('TestWiFi'));
        expect(provider.password, equals('password'));

        // TFT
        expect(provider.tft, isTrue);
        expect(provider.timeout, isTrue);
        expect(provider.timeoutDuration, equals(30));
        expect(provider.turnOnAtEvent, isTrue);

        // Buzzer
        expect(provider.buzzer, isTrue);
        expect(provider.shortFrequency, equals(1000));
        expect(provider.longFrequency, equals(2000));

        // VCC
        expect(provider.r1, equals(10000));
        expect(provider.r2, equals(10000));
      });

      test('should return false when JSON parsing fails', () async {
        const invalidJson = 'invalid json string';

        final result = await provider.update(invalidJson);

        expect(result, isFalse);
      });

      test('should return false when JSON structure is invalid', () async {
        const invalidStructureJson = '{"Type": "entime"}';

        final result = await provider.update(invalidStructureJson);

        expect(result, isFalse);
      });

      test('should return false when exception occurs during parsing', () async {
        const malformedJson = '{"Type": "entime", "Bluetooth": {"active": "not_a_boolean"}}';

        final result = await provider.update(malformedJson);

        expect(result, isFalse);
      });

      test('should handle empty JSON string', () async {
        const emptyJson = '{}';

        final result = await provider.update(emptyJson);

        expect(result, isFalse);
      });

      test('should handle null values in JSON', () async {
        const jsonWithNulls = '''
        {
          "Type": "entime",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
          "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
          "VCC": {"r1": 10000, "r2": 10000, "vbat": null}
        }''';

        final result = await provider.update(jsonWithNulls);

        expect(result, isTrue);
        expect(provider.type, equals('entime'));
      });
    });

    group('write getter', () {
      test('should return valid JSON string with current settings', () async {
        // First update with some settings
        const jsonString = '''
        {
          "Type": "entime",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
          "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
          "VCC": {"r1": 10000, "r2": 10000}
        }''';

        await provider.update(jsonString);

        final writtenJson = provider.write;
        expect(writtenJson, isNotEmpty);

        // Parse the written JSON to verify it's valid
        final parsed = jsonDecode(writtenJson) as Map<String, dynamic>;
        expect(parsed['Type'], equals('entime'));
        expect(parsed['Read'], isFalse);
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['active'], isTrue);
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['name'], equals('TestBT'));
        expect((parsed['LoRa'] as Map<String, dynamic>)['frequency'], equals(868));
        expect((parsed['WiFi'] as Map<String, dynamic>)['ssid'], equals('TestWiFi'));
        expect((parsed['TFT'] as Map<String, dynamic>)['timeoutDuration'], equals(30));
        expect((parsed['Buzzer'] as Map<String, dynamic>)['shortFrequency'], equals(1000));
        expect((parsed['VCC'] as Map<String, dynamic>)['r1'], equals(10000));
      });

      test('should return JSON with default values when no update was called', () {
        final writtenJson = provider.write;
        expect(writtenJson, isNotEmpty);

        final parsed = jsonDecode(writtenJson) as Map<String, dynamic>;
        expect(parsed['Type'], equals(''));
        expect(parsed['Read'], isFalse);
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['active'], isTrue);
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['name'], equals('BT'));
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['number'], equals(100));
        expect((parsed['LoRa'] as Map<String, dynamic>)['active'], isFalse);
        expect((parsed['WiFi'] as Map<String, dynamic>)['active'], isFalse);
        expect((parsed['TFT'] as Map<String, dynamic>)['active'], isTrue);
        expect((parsed['Buzzer'] as Map<String, dynamic>)['active'], isTrue);
      });

      test('should include all required fields in output JSON', () {
        final writtenJson = provider.write;
        final parsed = jsonDecode(writtenJson) as Map<String, dynamic>;

        // Check that all required fields are present
        expect(parsed.containsKey('Type'), isTrue);
        expect(parsed.containsKey('Read'), isTrue);
        expect(parsed.containsKey('Bluetooth'), isTrue);
        expect(parsed.containsKey('LoRa'), isTrue);
        expect(parsed.containsKey('WiFi'), isTrue);
        expect(parsed.containsKey('TFT'), isTrue);
        expect(parsed.containsKey('Buzzer'), isTrue);
        expect(parsed.containsKey('VCC'), isTrue);

        // Check nested structures
        expect((parsed['Bluetooth'] as Map<String, dynamic>).containsKey('active'), isTrue);
        expect((parsed['Bluetooth'] as Map<String, dynamic>).containsKey('name'), isTrue);
        expect((parsed['Bluetooth'] as Map<String, dynamic>).containsKey('number'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('frequency'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('txPower'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('spreadingFactor'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('signalBandwidth'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('codingRateDenom'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('preambleLength'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('syncWord'), isTrue);
        expect((parsed['LoRa'] as Map<String, dynamic>).containsKey('crc'), isTrue);
        expect((parsed['WiFi'] as Map<String, dynamic>).containsKey('active'), isTrue);
        expect((parsed['WiFi'] as Map<String, dynamic>).containsKey('ssid'), isTrue);
        expect((parsed['WiFi'] as Map<String, dynamic>).containsKey('passwd'), isTrue);
        expect((parsed['TFT'] as Map<String, dynamic>).containsKey('active'), isTrue);
        expect((parsed['TFT'] as Map<String, dynamic>).containsKey('timeout'), isTrue);
        expect((parsed['TFT'] as Map<String, dynamic>).containsKey('timeoutDuration'), isTrue);
        expect((parsed['TFT'] as Map<String, dynamic>).containsKey('turnOnAtEvent'), isTrue);
        expect((parsed['Buzzer'] as Map<String, dynamic>).containsKey('active'), isTrue);
        expect((parsed['Buzzer'] as Map<String, dynamic>).containsKey('shortFrequency'), isTrue);
        expect((parsed['Buzzer'] as Map<String, dynamic>).containsKey('longFrequency'), isTrue);
        expect((parsed['VCC'] as Map<String, dynamic>).containsKey('r1'), isTrue);
        expect((parsed['VCC'] as Map<String, dynamic>).containsKey('r2'), isTrue);
        expect((parsed['VCC'] as Map<String, dynamic>).containsKey('vbat'), isTrue);
      });
    });

    group('edge cases', () {
      test('should handle very large numbers', () async {
        const jsonWithLargeNumbers = '''
        {
          "Type": "entime",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 999999},
          "LoRa": {"active": true, "frequency": 999999999, "txPower": 20, "spreadingFactor": 12, "signalBandwidth": 250000, "codingRateDenom": 8, "preambleLength": 65535, "syncWord": 255, "crc": true},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "TFT": {"active": true, "timeout": true, "timeoutDuration": 600, "turnOnAtEvent": true},
          "Buzzer": {"active": true, "shortFrequency": 5000, "longFrequency": 5000},
          "VCC": {"r1": 999999, "r2": 999999}
        }''';

        final result = await provider.update(jsonWithLargeNumbers);

        expect(result, isTrue);
        expect(provider.bluetoothNumber, equals(999999));
        expect(provider.frequency, equals(999999999));
        expect(provider.txPower, equals(20));
        expect(provider.spreadingFactor, equals(12));
        expect(provider.signalBandwidth, equals(250000));
        expect(provider.codingRateDenominator, equals(8));
        expect(provider.preambleLength, equals(65535));
        expect(provider.syncWord, equals(255));
        expect(provider.timeoutDuration, equals(600));
        expect(provider.shortFrequency, equals(5000));
        expect(provider.longFrequency, equals(5000));
        expect(provider.r1, equals(999999));
        expect(provider.r2, equals(999999));
      });

      test('should handle zero values', () async {
        const jsonWithZeros = '''
        {
          "Type": "entime",
          "Bluetooth": {"active": false, "name": "", "number": 0},
          "LoRa": {"active": false, "frequency": 0, "txPower": 0, "spreadingFactor": 0, "signalBandwidth": 0, "codingRateDenom": 0, "preambleLength": 0, "syncWord": 0, "crc": false},
          "WiFi": {"active": false, "ssid": "", "passwd": ""},
          "TFT": {"active": false, "timeout": false, "timeoutDuration": 0, "turnOnAtEvent": false},
          "Buzzer": {"active": false, "shortFrequency": 0, "longFrequency": 0},
          "VCC": {"r1": 0, "r2": 0}
        }''';

        final result = await provider.update(jsonWithZeros);

        expect(result, isTrue);
        expect(provider.bluetooth, isFalse);
        expect(provider.bluetoothName, equals(''));
        expect(provider.bluetoothNumber, equals(0));
        expect(provider.lora, isFalse);
        expect(provider.frequency, equals(0));
        expect(provider.txPower, equals(0));
        expect(provider.spreadingFactor, equals(0));
        expect(provider.signalBandwidth, equals(0));
        expect(provider.codingRateDenominator, equals(0));
        expect(provider.preambleLength, equals(0));
        expect(provider.syncWord, equals(0));
        expect(provider.crc, isFalse);
        expect(provider.wifi, isFalse);
        expect(provider.ssid, equals(''));
        expect(provider.password, equals(''));
        expect(provider.tft, isFalse);
        expect(provider.timeout, isFalse);
        expect(provider.timeoutDuration, equals(0));
        expect(provider.turnOnAtEvent, isFalse);
        expect(provider.buzzer, isFalse);
        expect(provider.shortFrequency, equals(0));
        expect(provider.longFrequency, equals(0));
        expect(provider.r1, equals(0));
        expect(provider.r2, equals(0));
      });

      test('should handle special characters in strings', () async {
        const jsonWithSpecialChars = '''
        {
          "Type": "entime",
          "Bluetooth": {"active": true, "name": "Test BT (Special) [123]", "number": 1},
          "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
          "WiFi": {"active": true, "ssid": "WiFi-Network_123", "passwd": "P@ssw0rd!@#"},
          "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
          "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
          "VCC": {"r1": 10000, "r2": 10000}
        }''';

        final result = await provider.update(jsonWithSpecialChars);

        expect(result, isTrue);
        expect(provider.bluetoothName, equals('Test BT (Special) [123]'));
        expect(provider.ssid, equals('WiFi-Network_123'));
        expect(provider.password, equals('P@ssw0rd!@#'));
      });
    });
  });
}
