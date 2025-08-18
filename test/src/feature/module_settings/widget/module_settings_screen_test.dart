// TODO: Убрать после реализации тестов

import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/widget/splash_widget.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/module_settings/module_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:settings_ui/settings_ui.dart';

class MockModuleSettingsBloc extends MockBloc<ModuleSettingsEvent, ModuleSettingsState> implements ModuleSettingsBloc {}

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState> implements BluetoothBloc {}

void main() {
  late ModuleSettingsBloc moduleSettingsBloc;
  late BluetoothBloc bluetoothBloc;
  late String jsonEntime;
  late String jsonLed;
  late String text;

  Widget testWidget() {
    return BlocProvider.value(
      value: bluetoothBloc,
      child: BlocProvider.value(
        value: moduleSettingsBloc,
        child: MaterialApp(
          localizationsDelegates: const [Localization.delegate],
          supportedLocales: Localization.supportedLocales,
          home: Builder(
            builder: (context) {
              return TextButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute<void>(builder: (context) => const ModuleSettingsInitScreen()));
                },
                child: Text(text),
              );
            },
          ),
        ),
      ),
    );
  }

  setUpAll(() {
    moduleSettingsBloc = MockModuleSettingsBloc();
    bluetoothBloc = MockBluetoothBloc();

    jsonEntime = '''
          {
            "Type": "entime",
            "Bluetooth": {"active": true, "name": "TestBT", "number": 1},
            "LoRa": {"active": true, "frequency": 868, "txPower": 14, "spreadingFactor": 7, "signalBandwidth": 125, "codingRateDenom": 5, "preambleLength": 8, "syncWord": 12, "crc": true},
            "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
            "TFT": {"active": true, "timeout": true, "timeoutDuration": 30, "turnOnAtEvent": true},
            "Buzzer": {"active": true, "shortFrequency": 1000, "longFrequency": 2000},
            "VCC": {"r1": 10000, "r2": 10000}
          }''';

    jsonLed = '''
          {
            "Type": "led",
            "Bluetooth": {"active": true, "name": "TestBTLed", "number": 1},
            "WiFi": {"active": true, "ssid": "TestWiFi", "passwd": "password"},
            "LedPanel": {"active": true, "brightness": 100, "color": "red"}
          }''';
    registerFallbackValue(const ModuleSettingsEvent.unload());
    registerFallbackValue(
      ModSettingsModel.entime(ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>)),
    );
    registerFallbackValue(const BluetoothEvent.enable());

    text = 'Exited from screen';
  });

  group('ModuleSettingsInitScreen tests', () {
    group('Initial states', () {
      patrolWidgetTest('Shows loading splash when state is loading', (PatrolTester $) async {
        when(() => moduleSettingsBloc.state).thenReturn(const ModuleSettingsState.loading());
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        expect($(Splash).containing($(Localization.current.I18nModuleSettings_awaitingSettings)), findsOneWidget);
      });

      patrolWidgetTest('Shows error splash when state is error', (PatrolTester $) async {
        when(() => moduleSettingsBloc.state).thenReturn(const ModuleSettingsState.error());
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        expect($(Splash).containing($(Localization.current.I18nModuleSettings_errorLoadSettings)), findsOneWidget);
      });

      patrolWidgetTest('Shows settings screen when state is loaded', (PatrolTester $) async {
        when(() => moduleSettingsBloc.state).thenReturn(
          ModuleSettingsState.loaded(
            ModSettingsModel.entime(ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>)),
          ),
        );
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        expect($(ModuleSettingsScreen), findsOneWidget);
      });
    });

    group('Navigation and back handling', () {
      setUp(() {
        when(() => moduleSettingsBloc.state).thenReturn(
          ModuleSettingsState.loaded(
            ModSettingsModel.entime(ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>)),
          ),
        );
      });
      patrolWidgetTest('Shows save confirmation dialog when back pressed with changes', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_buzzer)).tap();
        await $(BackButton).tap();
        expect(
          $(AlertDialog).containing($(Localization.current.I18nModuleSettings_saveSettingsToModule)),
          findsOneWidget,
        );
      });

      patrolWidgetTest('Does not show save dialog when back pressed without changes', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(BackButton).tap();
        expect(
          $(AlertDialog).containing($(Localization.current.I18nModuleSettings_saveSettingsToModule)),
          findsNothing,
        );
        expect($(text), findsOneWidget);
      });

      patrolWidgetTest('Sends bluetooth message when save confirmed', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_buzzer)).tap();
        await $(BackButton).tap();
        await $(#okButton).tap();
        verify(
          () => bluetoothBloc.add(
            any(
              that: isA<BluetoothEvent>().having(
                (event) => event.whenOrNull(sendMessage: (message) => message),
                'message',
                isA<String>().having(
                  (message) => message.contains('{"Read":false,'),
                  'message',
                  isTrue,
                ),
              ),
            ),
          ),
        ).called(1);
      });

      patrolWidgetTest('Navigates back when save cancelled', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_buzzer)).tap();
        await $(BackButton).tap();
        await $(#cancelButton).tap();
        expect($(text), findsOneWidget);
        verifyNever(() => bluetoothBloc.add(any()));
      });
    });
  });

  group('ModuleSettingsScreen tests', () {
    group('Entime module type', () {
      setUp(() {
        when(() => moduleSettingsBloc.state).thenReturn(
          ModuleSettingsState.loaded(
            ModSettingsModel.entime(ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>)),
          ),
        );
      });
      group('Module section', () {
        patrolWidgetTest('Displays module name and number correctly', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect($(ModuleSettingsScreen), findsOneWidget);
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_module)),
            findsOneWidget,
          );
          expect($(SettingsList).$(SettingsSection).containing($('TestBT1')), findsOneWidget);
        });
      });

      group('Buzzer section', () {
        patrolWidgetTest('Shows buzzer switch with correct initial value', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_buzzer)),
            findsNWidgets(2),
          );
          final settingsTile =
              $(SettingsTile).containing($(Localization.current.I18nModuleSettings_buzzer)).evaluate().first.widget
                  as SettingsTile;

          expect(settingsTile.initialValue, isTrue);
        });

        patrolWidgetTest('Toggles buzzer switch and triggers update event and asks to update', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          final settingsTile = $(SettingsTile).containing($(Localization.current.I18nModuleSettings_buzzer));

          await settingsTile.tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.buzzer.active,
                  'buzzer.active',
                  isFalse,
                ),
              ),
            ),
          );

          await $(BackButton).tap();
          expect($(Localization.current.I18nModuleSettings_saveSettingsToModule), findsOneWidget);
        });

        patrolWidgetTest('Shows short frequency tile with current value', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_shortFrequency)),
            findsOneWidget,
          );
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_frequencyHz(1000))),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Opens frequency popup when short frequency tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_shortFrequency)).tap();
          expect($(Localization.current.I18nModuleSettings_selectShortFrequency), findsOneWidget);
        });

        patrolWidgetTest('Updates short frequency when popup returns value and asks to update', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_shortFrequency)).tap();
          await $(#okButton).tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.buzzer.shortFrequency,
                  'buzzer.shortFrequency',
                  659, // 659 это дефолтное значение для входящей частоты, не соответствующей никакой ноте
                ),
              ),
            ),
          );

          await $(BackButton).tap();
          expect($(Localization.current.I18nModuleSettings_saveSettingsToModule), findsOneWidget);
        });

        patrolWidgetTest('Shows long frequency tile with current value', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_longFrequency)),
            findsOneWidget,
          );
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_frequencyHz(2000))),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Opens frequency popup when long frequency tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_longFrequency)).tap();
          expect($(Localization.current.I18nModuleSettings_selectLongFrequency), findsOneWidget);
        });

        patrolWidgetTest('Updates long frequency when popup returns value and asks to update', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_longFrequency)).tap();
          await $(#okButton).tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.buzzer.longFrequency,
                  'buzzer.longFrequency',
                  659, // 659 это дефолтное значение для входящей частоты, не соответствующей никакой ноте
                ),
              ),
            ),
          );

          await $(BackButton).tap();
          expect($(Localization.current.I18nModuleSettings_saveSettingsToModule), findsOneWidget);
        });
      });

      group('LoRa section', () {
        patrolWidgetTest('Shows LoRa section', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_lora)),
            findsNWidgets(2),
          );
        });

        patrolWidgetTest('Shows LoRa switch disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows frequency tile disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows TX power tile disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows spreading factor tile disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows signal bandwidth tile disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows coding rate denominator tile disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows preamble length tile disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows sync word tile disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });

        patrolWidgetTest('Shows CRC switch disabled', skip: true, (PatrolTester $) async {
          // TODO: LoRa
        });
      });

      group('Screen section', () {
        patrolWidgetTest('Shows Screen section', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(
              SettingsList,
            ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_screen)).scrollTo(),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Shows TFT switch disabled', skip: true, (PatrolTester $) async {
          // TODO: TFT
        });

        patrolWidgetTest('Shows sleep mode switch disabled', skip: true, (PatrolTester $) async {
          // TODO: TFT
        });

        patrolWidgetTest('Shows sleep mode duration tile disabled', skip: true, (PatrolTester $) async {
          // TODO: TFT
        });

        patrolWidgetTest('Shows turn on at event switch disabled', skip: true, (PatrolTester $) async {
          // TODO: TFT
        });
      });

      group('Bluetooth section', () {
        patrolWidgetTest('Shows Bluetooth section', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_bluetooth)).scrollTo(),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Shows bluetooth switch disabled', skip: true, (PatrolTester $) async {
          // TODO: Bluetooth
        });

        patrolWidgetTest('Shows bluetooth module name tile disabled', skip: true, (PatrolTester $) async {
          // TODO: Bluetooth
        });

        patrolWidgetTest('Shows bluetooth module number tile enabled', skip: true, (PatrolTester $) async {
          // TODO: Bluetooth
        });

        patrolWidgetTest('Opens bluetooth number popup when tile tapped', skip: true, (PatrolTester $) async {
          // TODO: Bluetooth
        });

        patrolWidgetTest('Updates bluetooth number when popup returns value', skip: true, (PatrolTester $) async {
          // TODO: Bluetooth
        });
      });

      group('WiFi section', () {
        patrolWidgetTest('Shows WiFi section', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_wifi)).scrollTo(),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Shows WiFi switch disabled', skip: true, (PatrolTester $) async {
          // TODO: WiFi
        });

        patrolWidgetTest('Shows WiFi network tile with current SSID', (PatrolTester $) async {
          // TODO: WiFi
        });

        patrolWidgetTest('Opens WiFi settings popup when network tile tapped', (PatrolTester $) async {
          // TODO: WiFi
        });

        patrolWidgetTest('Updates SSID when popup returns value', (PatrolTester $) async {
          // TODO: WiFi
        });

        patrolWidgetTest('Shows password tile', (PatrolTester $) async {
          // TODO: WiFi
        });

        patrolWidgetTest('Opens WiFi settings popup when password tile tapped', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Updates password when popup returns value', (PatrolTester $) async {
          // TODO: Реализовать тест
        });
      });

      group('VCC section', () {
        patrolWidgetTest('Shows resistor 1 tile with current value', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Opens VCC popup when resistor 1 tile tapped', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Updates resistor 1 when popup returns value', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Shows resistor 2 tile with current value', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Opens VCC popup when resistor 2 tile tapped', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Updates resistor 2 when popup returns value', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Shows measured voltage tile', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Opens VCC popup when measured voltage tile tapped', (PatrolTester $) async {
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Updates measured voltage when popup returns value', (PatrolTester $) async {
          // TODO: Реализовать тест
        });
      });
    });

    group('LED module type', () {
      setUp(() {
        when(() => moduleSettingsBloc.state).thenReturn(
          ModuleSettingsState.loaded(
            ModSettingsModel.led(ModSettingsLed.fromJson(jsonDecode(jsonLed) as Map<String, dynamic>)),
          ),
        );
      });
      group('Module section', () {
        patrolWidgetTest('Displays module name and number correctly for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect($(ModuleSettingsScreen), findsOneWidget);
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_module)),
            findsOneWidget,
          );
          expect($(SettingsList).$(SettingsSection).containing($('TestBTLed1')), findsOneWidget);
        });
      });

      group('Bluetooth section', () {
        patrolWidgetTest('Shows bluetooth switch disabled for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Shows bluetooth module name tile disabled for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Shows bluetooth module number tile for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Opens bluetooth number popup for LED when tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Shows brightness tile for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Opens brightness popup for LED when tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Updates brightness when popup returns value for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });
      });

      group('WiFi section', () {
        patrolWidgetTest('Shows WiFi switch enabled for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Toggles WiFi switch and triggers update event for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Shows WiFi network tile for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Opens WiFi settings popup for LED when network tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Shows password tile for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });

        patrolWidgetTest('Opens WiFi settings popup for LED when password tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          // TODO: Реализовать тест
        });
      });
    });

    group('Unknown module type', () {
      patrolWidgetTest('Shows unknown module type splash', (PatrolTester $) async {
        // TODO: Реализовать тест
      });
    });

    group('General functionality', () {
      patrolWidgetTest('Calls onChanged callback when any setting is modified', (PatrolTester $) async {
        // TODO: Реализовать тест
      });

      patrolWidgetTest('Adds update event to bloc when setting is changed', (PatrolTester $) async {
        // TODO: Реализовать тест
      });

      patrolWidgetTest('Handles popup cancellation gracefully', (PatrolTester $) async {
        // TODO: Реализовать тест
      });

      patrolWidgetTest('Updates UI immediately after setting change', (PatrolTester $) async {
        // TODO: Реализовать тест
      });
    });
  });
}
