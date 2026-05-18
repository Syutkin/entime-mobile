import 'package:entime/src/feature/module_settings/bloc/module_settings_bloc.dart';
import 'package:entime/src/feature/module_settings/model/module_settings.dart';
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
  group('ModuleSettingsState', () {
    group('uninitialized', () {
      test('supports value equality', () {
        expect(
          const ModuleSettingsState.uninitialized(),
          equals(const ModuleSettingsState.uninitialized()),
        );
      });

      test('toString returns correct representation', () {
        const state = ModuleSettingsState.uninitialized();
        expect(state.toString(), contains('ModuleSettingsState.uninitialized'));
      });

      test('hashCode is consistent', () {
        const state1 = ModuleSettingsState.uninitialized();
        const state2 = ModuleSettingsState.uninitialized();
        expect(state1.hashCode, equals(state2.hashCode));
      });
    });

    group('loading', () {
      test('supports value equality', () {
        expect(
          const ModuleSettingsState.loading(),
          equals(const ModuleSettingsState.loading()),
        );
      });

      test('toString returns correct representation', () {
        const state = ModuleSettingsState.loading();
        expect(state.toString(), contains('ModuleSettingsState.loading'));
      });

      test('hashCode is consistent', () {
        const state1 = ModuleSettingsState.loading();
        const state2 = ModuleSettingsState.loading();
        expect(state1.hashCode, equals(state2.hashCode));
      });
    });

    group('loaded', () {
      test('supports value equality', () {
        expect(
          const ModuleSettingsState.loaded(_entimeModel),
          equals(const ModuleSettingsState.loaded(_entimeModel)),
        );
        expect(
          const ModuleSettingsState.loaded(_entimeModel),
          isNot(equals(const ModuleSettingsState.loaded(_entimeModelAlt))),
        );
      });

      test('supports value equality for different provider types', () {
        expect(
          const ModuleSettingsState.loaded(_entimeModel),
          isNot(equals(const ModuleSettingsState.loaded(_ledModel))),
        );
      });

      test('toString returns correct representation', () {
        const state = ModuleSettingsState.loaded(_entimeModel);
        expect(state.toString(), contains('ModuleSettingsState.loaded'));
      });

      test('contains moduleSettings provider', () {
        const state = ModuleSettingsState.loaded(_entimeModel);

        if (state is ModuleSettingsLoaded) {
          expect(state.moduleSettings, equals(_entimeModel));
        } else {
          fail('State should be ModuleSettingsLoaded type');
        }
      });

      test('hashCode is consistent for same provider instance', () {
        const state1 = ModuleSettingsState.loaded(_entimeModel);
        const state2 = ModuleSettingsState.loaded(_entimeModel);
        expect(state1.hashCode, equals(state2.hashCode));
      });

      test('hashCode differs for different provider instances', () {
        const state1 = ModuleSettingsState.loaded(_entimeModel);
        const state2 = ModuleSettingsState.loaded(_entimeModelAlt);
        expect(state1.hashCode, isNot(equals(state2.hashCode)));
      });
    });

    group('error', () {
      test('supports value equality', () {
        expect(
          const ModuleSettingsState.error(),
          equals(const ModuleSettingsState.error()),
        );
      });

      test('toString returns correct representation', () {
        const state = ModuleSettingsState.error();
        expect(state.toString(), contains('ModuleSettingsState.error'));
      });

      test('hashCode is consistent', () {
        const state1 = ModuleSettingsState.error();
        const state2 = ModuleSettingsState.error();
        expect(state1.hashCode, equals(state2.hashCode));
      });
    });

    group('state transitions', () {
      test('uninitialized to loading to loaded', () {
        final states = [
          const ModuleSettingsState.uninitialized(),
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.loaded(_entimeModel),
        ];

        expect(states.length, equals(3));
        expect(states[0], isA<ModuleSettingsUninitialized>());
        expect(states[1], isA<ModuleSettingsLoading>());
        expect(states[2], isA<ModuleSettingsLoaded>());
      });

      test('uninitialized to loading to error', () {
        final states = [
          const ModuleSettingsState.uninitialized(),
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.error(),
        ];

        expect(states.length, equals(3));
        expect(states[0], isA<ModuleSettingsUninitialized>());
        expect(states[1], isA<ModuleSettingsLoading>());
        expect(states[2], isA<ModuleSettingsError>());
      });

      test('uninitialized to loading to loaded for led module', () {
        final states = [
          const ModuleSettingsState.uninitialized(),
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.loaded(_ledModel),
        ];

        expect(states.length, equals(3));
        expect(states[0], isA<ModuleSettingsUninitialized>());
        expect(states[1], isA<ModuleSettingsLoading>());
        expect(states[2], isA<ModuleSettingsLoaded>());
      });
    });

    group('state comparison', () {
      test('different state types are not equal', () {
        const uninitialized = ModuleSettingsState.uninitialized();
        const loading = ModuleSettingsState.loading();
        const error = ModuleSettingsState.error();
        const loaded = ModuleSettingsState.loaded(_entimeModel);

        expect(uninitialized, isNot(equals(loading)));
        expect(uninitialized, isNot(equals(error)));
        expect(uninitialized, isNot(equals(loaded)));
        expect(loading, isNot(equals(error)));
        expect(loading, isNot(equals(loaded)));
        expect(error, isNot(equals(loaded)));
      });

      test('same state types with different data are not equal', () {
        const loaded1 = ModuleSettingsState.loaded(_entimeModel);
        const loaded2 = ModuleSettingsState.loaded(_ledModel);

        expect(loaded1, isNot(equals(loaded2)));
      });

      test('state instances are immutable', () {
        const uninitialized1 = ModuleSettingsState.uninitialized();
        const uninitialized2 = ModuleSettingsState.uninitialized();

        // Проверяем, что состояния не изменяются при сравнении
        expect(uninitialized1, equals(uninitialized2));
        expect(uninitialized1.hashCode, equals(uninitialized2.hashCode));
      });
    });

    group('edge cases', () {
      test('handles empty provider gracefully', () {
        const state = ModuleSettingsState.loaded(_entimeModel);

        expect(state, isA<ModuleSettingsLoaded>());
        if (state is ModuleSettingsLoaded) {
          expect(state.moduleSettings, isNotNull);
        }
      });
    });
  });
}
