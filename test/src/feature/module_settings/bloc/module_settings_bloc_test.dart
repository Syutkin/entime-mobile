import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/module_settings/module_settings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ModuleSettingsBloc', () {
    late ModuleSettingsBloc bloc;

    setUp(() {
      bloc = ModuleSettingsBloc();
    });

    tearDown(() async {
      await bloc.close();
    });

    test('initial state is ModuleSettingsUninitialized', () {
      expect(bloc.state, const ModuleSettingsState.uninitialized());
    });

    group('Get module settings', () {
      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then loaded state when get event is successful for entime type',
        build: () => bloc,
        act: (bloc) => bloc.add(
          const ModuleSettingsEvent.get('''
        {
          "cmd": "load_config",
          "data": {
            "device": {"name": "ENTime-Test", "number": 1, "type": 1, "timezone_offset_min": 180},
            "sync": {
              "auto": true,
              "source": 0,
              "ntp1": "ru.pool.ntp.org",
              "ntp2": "time.google.com",
              "ntp3": "time.cloudflare.com"
            },
            "wifi": {"active": true, "ssid": "TestWiFi", "passwd": ""},
            "gps": {"enabled": true},
            "touch": {"enabled": true, "cal_valid": false, "calibration": [0, 0, 0, 0, 0]}
          }
        }'''),
        ),
        expect: () => [
          const ModuleSettingsState.loading(),
          isA<ModuleSettingsState>().having(
            (state) => state is ModuleSettingsLoaded,
            'state type',
            true,
          ),
        ],
        verify: (bloc) {
          final moduleSettings = (bloc.state as ModuleSettingsLoaded).moduleSettings;
          expect(moduleSettings, isA<ModSettingsModelEntime>());

          final entime = (moduleSettings as ModSettingsModelEntime).entime;
          expect(entime.device.timezoneOffsetMin, 180);
          expect(entime.gps.enabled, true);
          expect(entime.touch.enabled, true);
          expect(entime.touch.calValid, false);
          expect(entime.touch.calibration, [0, 0, 0, 0, 0]);
          expect(entime.wifi.passwd, isNull);

          final json = entime.toJson();
          expect(json['device'], isA<Map<String, dynamic>>());
          final deviceJson = json['device'] as Map<String, dynamic>;
          expect(deviceJson['timezone_offset_min'], 180);
          expect(deviceJson.containsKey('timezone'), isFalse);
          expect(json['gps'], {'enabled': true});
          expect(json['touch'], {
            'enabled': true,
            'cal_valid': false,
            'calibration': [0, 0, 0, 0, 0],
          });
          expect(json['wifi'], isA<Map<String, dynamic>>());
          expect((json['wifi'] as Map<String, dynamic>).containsKey('passwd'), isFalse);
        },
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then loaded state when get event is successful for led type',
        build: () => bloc,
        act: (bloc) => bloc.add(
          const ModuleSettingsEvent.get('''
        {
          "Type": "led",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "LedPanel": {"active": true, "brightness": 100, "color": "red"}
        }'''),
        ),
        expect: () => [
          const ModuleSettingsState.loading(),
          isA<ModuleSettingsState>().having(
            (state) => state is ModuleSettingsLoaded,
            'state type',
            true,
          ),
        ],
        verify: (bloc) {
          expect((bloc.state as ModuleSettingsLoaded).moduleSettings, isA<ModSettingsModelLed>());
        },
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then error state when get event fails to load settings',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"Json": "Json"}')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then error state when get event encounters unknown module type',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"Type": "unknown_type"}')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then error state when get event throws exception during update',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('invalid json')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      // Новые тесты для проверки isUpdated
      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then error state when entime module update fails after type detection',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"cmd": "load_config", "data": {"invalid": "data"}}')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then error state when led module update fails after type detection',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"Type": "led", "invalid": "data"}')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits uninitialized on unload event',
        build: () => bloc,
        seed: () => const ModuleSettingsState.loading(),
        act: (bloc) => bloc.add(const ModuleSettingsEvent.unload()),
        expect: () => [
          const ModuleSettingsState.uninitialized(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits error on loadFailed event',
        build: () => bloc,
        seed: () => const ModuleSettingsState.loading(),
        act: (bloc) => bloc.add(const ModuleSettingsEvent.loadFailed()),
        expect: () => [
          const ModuleSettingsState.error(),
        ],
      );
    });

    group('Update module settings', () {
      const jsonEntime = '''
          {
            "cmd": "load_config",
            "data": {
              "device": {"name": "ENTime-Test", "number": 1, "type": 1, "timezone_offset_min": 180},
              "sync": {
                "auto": true,
                "source": 0,
                "ntp1": "ru.pool.ntp.org",
                "ntp2": "time.google.com",
                "ntp3": "time.cloudflare.com"
              },
              "wifi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
              "gps": {"enabled": true},
              "touch": {"enabled": true, "cal_valid": false, "calibration": [0, 0, 0, 0, 0]}
            }
          }''';

      const jsonLed = '''
          {
            "Type": "led",
            "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
            "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
            "LedPanel": {"active": true, "brightness": 100, "color": "red"}
          }''';

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then loaded state when update event is triggered',
        build: () => bloc,
        act: (bloc) async {
          // Сначала загружаем настройки, чтобы moduleSettings был инициализирован
          bloc.add(
            const ModuleSettingsEvent.get(jsonEntime),
          );

          // Ждем завершения обработки первого события
          await Future<void>.delayed(const Duration(milliseconds: 100));

          // Затем обновляем
          bloc.add(ModuleSettingsEvent.update((bloc.state as ModuleSettingsLoaded).moduleSettings));
        },
        expect: () => [
          const ModuleSettingsState.loading(),
          ModuleSettingsState.loaded(
            ModSettingsModel.entime(
              ModSettingsEntime.fromJson(
                (jsonDecode(jsonEntime) as Map<String, dynamic>)['data'] as Map<String, dynamic>,
              ),
            ),
          ),
        ],
        verify: (bloc) {
          expect((bloc.state as ModuleSettingsLoaded).moduleSettings, isA<ModSettingsModelEntime>());
        },
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'emits loading then loaded state when update event is triggered for led module',
        build: () => bloc,
        act: (bloc) async {
          // Сначала загружаем настройки для led модуля
          bloc.add(
            const ModuleSettingsEvent.get(jsonLed),
          );

          // Ждем завершения обработки первого события
          await Future<void>.delayed(const Duration(milliseconds: 100));

          // Затем обновляем
          bloc.add(ModuleSettingsEvent.update((bloc.state as ModuleSettingsLoaded).moduleSettings));
        },
        expect: () => [
          const ModuleSettingsState.loading(),
          ModuleSettingsState.loaded(
            ModSettingsModel.led(ModSettingsLed.fromJson(jsonDecode(jsonLed) as Map<String, dynamic>)),
          ),
        ],
        verify: (bloc) {
          expect((bloc.state as ModuleSettingsLoaded).moduleSettings, isA<ModSettingsModelLed>());
        },
      );
    });

    group('Edge cases', () {
      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'handles empty JSON string gracefully',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'handles malformed JSON string gracefully',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('invalid json')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'handles JSON with missing Type field gracefully',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"other": "field"}')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );

      blocTest<ModuleSettingsBloc, ModuleSettingsState>(
        'handles JSON with null Type field gracefully',
        build: () => bloc,
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"Type": null}')),
        expect: () => [
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ],
      );
    });

    group('Module type detection and provider instantiation', () {
      test('correctly instantiates ModuleSettingsEntime for entime type', () async {
        bloc.add(
          const ModuleSettingsEvent.get('''
        {
          "cmd": "load_config",
          "data": {
            "device": {"name": "ENTime-Test", "number": 1, "type": 1, "timezone_offset_min": 180},
            "sync": {
              "auto": true,
              "source": 0,
              "ntp1": "ru.pool.ntp.org",
              "ntp2": "time.google.com",
              "ntp3": "time.cloudflare.com"
            },
            "wifi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
            "gps": {"enabled": true},
            "touch": {"enabled": true, "cal_valid": false, "calibration": [0, 0, 0, 0, 0]}
          }
        }'''),
        );

        // Ждем завершения обработки события
        await Future<void>.delayed(const Duration(milliseconds: 100));

        expect(bloc.state, isA<ModuleSettingsLoaded>());
        expect((bloc.state as ModuleSettingsLoaded).moduleSettings, isA<ModSettingsModelEntime>());
      });

      test('correctly instantiates ModuleSettingsLed for led type', () async {
        bloc.add(
          const ModuleSettingsEvent.get('''
        {
          "Type": "led",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "LedPanel": {"active": true, "brightness": 100, "color": "red"}
        }'''),
        );

        // Ждем завершения обработки события
        await Future<void>.delayed(const Duration(milliseconds: 100));

        expect(bloc.state, isA<ModuleSettingsLoaded>());
        expect((bloc.state as ModuleSettingsLoaded).moduleSettings, isA<ModSettingsModelLed>());
      });

      test('handles unknown module type correctly', () async {
        bloc.add(const ModuleSettingsEvent.get('{"Type": "unknown"}'));

        // Ждем завершения обработки события
        await Future<void>.delayed(const Duration(milliseconds: 100));

        expect(bloc.state, isA<ModuleSettingsError>());
      });
    });
  });
}
