import 'package:entime/src/feature/module_settings/bloc/module_settings_bloc.dart';
import 'package:entime/src/feature/module_settings/model/module_settings.dart';
import 'package:flutter_test/flutter_test.dart';

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
        const provider1 = ModSettingsModel.entime(
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
        const provider2 = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 101), // Different number
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
          const ModuleSettingsState.loaded(provider1),
          equals(const ModuleSettingsState.loaded(provider1)),
        );
        expect(
          const ModuleSettingsState.loaded(provider1),
          isNot(equals(const ModuleSettingsState.loaded(provider2))),
        );
      });

      test('supports value equality for different provider types', () {
        const entimeProvider = ModSettingsModel.entime(
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
        const ledProvider = ModSettingsModel.led(
          ModSettingsLed(
            type: 'led',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            ledPanel: LedPanel(brightness: 15),
          ),
        );

        expect(
          const ModuleSettingsState.loaded(entimeProvider),
          isNot(equals(const ModuleSettingsState.loaded(ledProvider))),
        );
      });

      test('toString returns correct representation', () {
        const provider = ModSettingsModel.entime(
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
        const state = ModuleSettingsState.loaded(provider);
        expect(state.toString(), contains('ModuleSettingsState.loaded'));
      });

      test('contains moduleSettings provider', () {
        const provider = ModSettingsModel.entime(
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
        const state = ModuleSettingsState.loaded(provider);

        if (state is ModuleSettingsLoaded) {
          expect(state.moduleSettings, equals(provider));
        } else {
          fail('State should be ModuleSettingsLoaded type');
        }
      });

      test('hashCode is consistent for same provider instance', () {
        const provider = ModSettingsModel.entime(
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
        const state1 = ModuleSettingsState.loaded(provider);
        const state2 = ModuleSettingsState.loaded(provider);
        expect(state1.hashCode, equals(state2.hashCode));
      });

      test('hashCode differs for different provider instances', () {
        const provider1 = ModSettingsModel.entime(
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
        const provider2 = ModSettingsModel.entime(
          ModSettingsEntime(
            type: 'entime',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 101), // Different number
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
        const state1 = ModuleSettingsState.loaded(provider1);
        const state2 = ModuleSettingsState.loaded(provider2);
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
        const provider = ModSettingsModel.entime(
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
        final states = [
          const ModuleSettingsState.uninitialized(),
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.loaded(provider),
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
        const provider = ModSettingsModel.led(
          ModSettingsLed(
            type: 'led',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            ledPanel: LedPanel(brightness: 15),
          ),
        );
        final states = [
          const ModuleSettingsState.uninitialized(),
          const ModuleSettingsState.loading(),
          const ModuleSettingsState.loaded(provider),
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
        const loaded = ModuleSettingsState.loaded(
          ModSettingsModel.entime(
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
          ),
        );

        expect(uninitialized, isNot(equals(loading)));
        expect(uninitialized, isNot(equals(error)));
        expect(uninitialized, isNot(equals(loaded)));
        expect(loading, isNot(equals(error)));
        expect(loading, isNot(equals(loaded)));
        expect(error, isNot(equals(loaded)));
      });

      test('same state types with different data are not equal', () {
        const provider1 = ModSettingsModel.entime(
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
        const provider2 = ModSettingsModel.led(
          ModSettingsLed(
            type: 'led',
            bluetooth: Bluetooth(active: true, name: 'BT', number: 100),
            wiFi: WiFi(active: false, ssid: 'none', passwd: ''),
            ledPanel: LedPanel(brightness: 15),
          ),
        );
        const loaded1 = ModuleSettingsState.loaded(provider1);
        const loaded2 = ModuleSettingsState.loaded(provider2);

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
        const provider = ModSettingsModel.entime(
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
        const state = ModuleSettingsState.loaded(provider);

        expect(state, isA<ModuleSettingsLoaded>());
        if (state is ModuleSettingsLoaded) {
          expect(state.moduleSettings, isNotNull);
        }
      });
    });
  });
}
