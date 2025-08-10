import 'package:entime/src/feature/module_settings/logic/module_settings_entime_provider.dart';
import 'package:entime/src/feature/module_settings/logic/module_settings_led_provider.dart';
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
        final provider1 = ModuleSettingsEntime();
        final provider2 = ModuleSettingsEntime();
        expect(
          ModuleSettingsEvent.update(provider1),
          equals(ModuleSettingsEvent.update(provider1)),
        );
        expect(
          ModuleSettingsEvent.update(provider1),
          isNot(equals(ModuleSettingsEvent.update(provider2))),
        );
      });

      test('supports value equality for different provider types', () {
        final entimeProvider = ModuleSettingsEntime();
        final ledProvider = ModuleSettingsLed();
        expect(
          ModuleSettingsEvent.update(entimeProvider),
          isNot(equals(ModuleSettingsEvent.update(ledProvider))),
        );
      });

      test('toString returns correct representation', () {
        final provider = ModuleSettingsEntime();
        final event = ModuleSettingsEvent.update(provider);
        expect(event.toString(), contains('ModuleSettingsEvent.update'));
      });

      test('toString returns correct representation for different provider types', () {
        final ledProvider = ModuleSettingsLed();
        final event = ModuleSettingsEvent.update(ledProvider);
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
        final provider = ModuleSettingsEntime();
        final event1 = ModuleSettingsEvent.update(provider);
        final event2 = ModuleSettingsEvent.update(provider);
        expect(event1, equals(event2));
        expect(event1.hashCode, equals(event2.hashCode));
      });

      test('update events with different provider instances are not equal', () {
        final provider1 = ModuleSettingsEntime();
        final provider2 = ModuleSettingsEntime();
        final event1 = ModuleSettingsEvent.update(provider1);
        final event2 = ModuleSettingsEvent.update(provider2);
        expect(event1, isNot(equals(event2)));
        expect(event1.hashCode, isNot(equals(event2.hashCode)));
      });

      test('get and update events are not equal', () {
        final provider = ModuleSettingsEntime();
        const getEvent = ModuleSettingsEvent.get('{"Type": "entime"}');
        final updateEvent = ModuleSettingsEvent.update(provider);
        expect(getEvent, isNot(equals(updateEvent)));
        expect(getEvent.hashCode, isNot(equals(updateEvent.hashCode)));
      });
    });
  });
}
