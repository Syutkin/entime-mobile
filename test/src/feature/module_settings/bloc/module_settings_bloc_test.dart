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

    tearDown(() {
      bloc.close();
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
          "Type": "entime",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
          "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
          "VCC": {"r1": 10000, "r2": 10000}
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
          expect((bloc.state as ModuleSettingsLoaded).moduleSettings, isA<ModSettingsModelEntime>());
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
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"Type": "invalid"}')),
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
        act: (bloc) => bloc.add(const ModuleSettingsEvent.get('{"Type": "entime", "invalid": "data"}')),
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
    });

    group('Update module settings', () {
      const jsonEntime = '''
          {
            "Type": "entime",
            "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
            "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
            "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
            "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
            "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
            "VCC": {"r1": 10000, "r2": 10000}
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
            ModSettingsModel.entime(ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>)),
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
          "Type": "entime",
          "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
          "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
          "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
          "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
          "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
          "VCC": {"r1": 10000, "r2": 10000}
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
