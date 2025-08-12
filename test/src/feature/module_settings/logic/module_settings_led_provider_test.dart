import 'dart:convert';

import 'package:entime/src/feature/module_settings/logic/module_settings_led_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ModuleSettingsLed', () {
    late ModuleSettingsLed provider;

    setUp(() {
      provider = ModuleSettingsLed();
    });

    group('update method', () {
      test('should successfully update settings from valid JSON', () async {
        const jsonString = '''
        {
          "Type": "led",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "LedPanel": {"brightness": 50}
        }''';

        final result = await provider.update(jsonString);

        expect(result, isTrue);
        expect(provider.type, equals('led'));

        // Bluetooth
        expect(provider.bluetooth, isTrue);
        expect(provider.bluetoothName, equals('TestBT'));
        expect(provider.bluetoothNumber, equals(1));

        // WiFi
        expect(provider.wifi, isTrue);
        expect(provider.ssid, equals('TestWiFi'));
        expect(provider.password, equals('password'));

        // LedPanel
        expect(provider.brightness, equals(50));
      });

      test('should return false when JSON parsing fails', () async {
        const invalidJson = 'invalid json string';

        final result = await provider.update(invalidJson);

        expect(result, isFalse);
      });

      test('should return false when JSON structure is invalid', () async {
        const invalidStructureJson = '{"Type": "led"}';

        final result = await provider.update(invalidStructureJson);

        expect(result, isFalse);
      });

      test('should return false when exception occurs during parsing', () async {
        const malformedJson = '{"Type": "led", "Bluetooth": {"active": "not_a_boolean"}}';

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
          "Type": "led",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "LedPanel": {"brightness": 50},
          "Read": null
        }''';

        final result = await provider.update(jsonWithNulls);

        expect(result, isTrue);
        expect(provider.type, equals('led'));
      });

      test('should handle different brightness values', () async {
        const jsonString = '''
        {
          "Type": "led",
          "Bluetooth": {"active": false, "name": "BT", "number": 100},
          "WiFi": {"active": false, "ssid": "none", "passwd": ""},
          "LedPanel": {"brightness": 0}
        }''';

        final result = await provider.update(jsonString);

        expect(result, isTrue);
        expect(provider.brightness, equals(0));
        expect(provider.bluetooth, isFalse);
        expect(provider.wifi, isFalse);
      });

      test('should handle maximum brightness value', () async {
        const jsonString = '''
        {
          "Type": "led",
          "Bluetooth": {"active": true, "name": "MaxBT", "number": 255},
          "WiFi": {"active": true, "ssid": "MaxWiFi", "passwd": "maxpass"},
          "LedPanel": {"brightness": 255}
        }''';

        final result = await provider.update(jsonString);

        expect(result, isTrue);
        expect(provider.brightness, equals(255));
        expect(provider.bluetoothNumber, equals(255));
      });
    });

    group('write getter', () {
      test('should return valid JSON string with current settings', () async {
        // First update with some settings
        const jsonString = '''
        {
          "Type": "led",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "LedPanel": {"brightness": 50}
        }''';

        await provider.update(jsonString);

        final writtenJson = provider.write;
        expect(writtenJson, isNotEmpty);

        // Parse the written JSON to verify it's valid
        final parsed = jsonDecode(writtenJson) as Map<String, dynamic>;
        expect(parsed['Type'], equals('led'));
        expect(parsed['Read'], isFalse);
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['active'], isTrue);
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['name'], equals('TestBT'));
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['number'], equals(1));
        expect((parsed['WiFi'] as Map<String, dynamic>)['active'], isTrue);
        expect((parsed['WiFi'] as Map<String, dynamic>)['ssid'], equals('TestWiFi'));
        expect((parsed['WiFi'] as Map<String, dynamic>)['passwd'], equals('password'));
        expect((parsed['LedPanel'] as Map<String, dynamic>)['brightness'], equals(50));
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
        expect((parsed['WiFi'] as Map<String, dynamic>)['active'], isFalse);
        expect((parsed['WiFi'] as Map<String, dynamic>)['ssid'], equals('none'));
        expect((parsed['WiFi'] as Map<String, dynamic>)['passwd'], equals(''));
        expect((parsed['LedPanel'] as Map<String, dynamic>)['brightness'], equals(15));
      });

      test('should include all required fields in output JSON', () {
        final writtenJson = provider.write;
        final parsed = jsonDecode(writtenJson) as Map<String, dynamic>;

        // Check that all required fields are present
        expect(parsed.containsKey('Type'), isTrue);
        expect(parsed.containsKey('Read'), isTrue);
        expect(parsed.containsKey('Bluetooth'), isTrue);
        expect(parsed.containsKey('WiFi'), isTrue);
        expect(parsed.containsKey('LedPanel'), isTrue);

        // Check nested structures
        expect((parsed['Bluetooth'] as Map<String, dynamic>).containsKey('active'), isTrue);
        expect((parsed['Bluetooth'] as Map<String, dynamic>).containsKey('name'), isTrue);
        expect((parsed['Bluetooth'] as Map<String, dynamic>).containsKey('number'), isTrue);
        expect((parsed['WiFi'] as Map<String, dynamic>).containsKey('active'), isTrue);
        expect((parsed['WiFi'] as Map<String, dynamic>).containsKey('ssid'), isTrue);
        expect((parsed['WiFi'] as Map<String, dynamic>).containsKey('passwd'), isTrue);
        expect((parsed['LedPanel'] as Map<String, dynamic>).containsKey('brightness'), isTrue);
      });

      test('should maintain data integrity after multiple updates', () async {
        // First update
        const firstJson = '''
        {
          "Type": "led",
          "Bluetooth": {"active": true, "name": "FirstBT", "number": 10},
          "WiFi": {"active": true, "ssid": "FirstWiFi", "passwd": "firstpass"},
          "LedPanel": {"brightness": 25}
        }''';

        await provider.update(firstJson);
        expect(provider.type, equals('led'));
        expect(provider.bluetoothName, equals('FirstBT'));
        expect(provider.brightness, equals(25));

        // Second update
        const secondJson = '''
        {
          "Type": "led_v2",
          "Bluetooth": {"active": false, "name": "SecondBT", "number": 20},
          "WiFi": {"active": false, "ssid": "SecondWiFi", "passwd": "secondpass"},
          "LedPanel": {"brightness": 75}
        }''';

        await provider.update(secondJson);
        expect(provider.type, equals('led_v2'));
        expect(provider.bluetoothName, equals('SecondBT'));
        expect(provider.brightness, equals(75));

        // Verify write output reflects latest state
        final writtenJson = provider.write;
        final parsed = jsonDecode(writtenJson) as Map<String, dynamic>;
        expect(parsed['Type'], equals('led_v2'));
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['name'], equals('SecondBT'));
        expect((parsed['LedPanel'] as Map<String, dynamic>)['brightness'], equals(75));
      });

      test('should handle edge case brightness values', () async {
        const jsonString = '''
        {
          "Type": "led",
          "Bluetooth": {"active": true, "name": "EdgeBT", "number": 0},
          "WiFi": {"active": true, "ssid": "EdgeWiFi", "passwd": "edgepass"},
          "LedPanel": {"brightness": 1}
        }''';

        final result = await provider.update(jsonString);

        expect(result, isTrue);
        expect(provider.brightness, equals(1));
        expect(provider.bluetoothNumber, equals(0));

        final writtenJson = provider.write;
        final parsed = jsonDecode(writtenJson) as Map<String, dynamic>;
        expect((parsed['LedPanel'] as Map<String, dynamic>)['brightness'], equals(1));
        expect((parsed['Bluetooth'] as Map<String, dynamic>)['number'], equals(0));
      });
    });

    group('inherited properties', () {
      test('should have correct default values from base class', () {
        expect(provider.type, equals(''));
        expect(provider.bluetooth, isTrue);
        expect(provider.bluetoothName, equals('BT'));
        expect(provider.bluetoothNumber, equals(100));
        expect(provider.wifi, isFalse);
        expect(provider.ssid, equals('none'));
        expect(provider.password, equals(''));
        expect(provider.brightness, equals(15));
      });

      test('should update inherited properties correctly', () async {
        const jsonString = '''
        {
          "Type": "led",
          "Bluetooth": {"active": false, "name": "CustomBT", "number": 42},
          "WiFi": {"active": true, "ssid": "CustomWiFi", "passwd": "custompass"},
          "LedPanel": {"brightness": 100}
        }''';

        await provider.update(jsonString);

        expect(provider.type, equals('led'));
        expect(provider.bluetooth, isFalse);
        expect(provider.bluetoothName, equals('CustomBT'));
        expect(provider.bluetoothNumber, equals(42));
        expect(provider.wifi, isTrue);
        expect(provider.ssid, equals('CustomWiFi'));
        expect(provider.password, equals('custompass'));
        expect(provider.brightness, equals(100));
      });
    });
  });
}
