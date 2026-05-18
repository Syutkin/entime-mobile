import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
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
                onPressed: () async {
                  await Navigator.of(
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
    jsonEntime = '''
          {
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

  setUp(() {
    moduleSettingsBloc = MockModuleSettingsBloc();
    bluetoothBloc = MockBluetoothBloc();
  });

  group('Timezone offset helpers', () {
    test('Parses whole hours and hours:minutes to minutes', () {
      expect('-8'.toUtcOffsetMinutes(), -480);
      expect('5'.toUtcOffsetMinutes(), 300);
      expect('+3'.toUtcOffsetMinutes(), 180);
      expect('5:45'.toUtcOffsetMinutes(), 345);
      expect('-3:30'.toUtcOffsetMinutes(), -210);
      expect('-0:30'.toUtcOffsetMinutes(), -30);
    });

    test('Rejects invalid hours:minutes format', () {
      expect('5:70'.toUtcOffsetMinutes(), isNull);
      expect('5:'.toUtcOffsetMinutes(), isNull);
      expect('abc'.toUtcOffsetMinutes(), isNull);
    });

    test('Formats minute offsets for editing', () {
      expect((-480).formatUtcOffset(), '-8');
      expect(180.formatUtcOffset(), '3');
      expect(345.formatUtcOffset(), '5:45');
      expect((-210).formatUtcOffset(), '-3:30');
      expect((-30).formatUtcOffset(), '-0:30');
    });
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

      void stubMutableModuleSettings(ModSettingsModel moduleSettings) {
        var state = ModuleSettingsState.loaded(moduleSettings);
        when(() => moduleSettingsBloc.state).thenAnswer((_) => state);
        when(() => moduleSettingsBloc.add(any())).thenAnswer((invocation) {
          final event = invocation.positionalArguments.single as ModuleSettingsEvent;
          if (event is ModuleSettingsEventUpdate) {
            state = ModuleSettingsState.loaded(event.moduleSettings);
          }
        });
      }

      patrolWidgetTest('Shows save confirmation dialog when back pressed with changes', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_syncAuto)).tap();
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
        stubMutableModuleSettings(
          ModSettingsModel.entime(ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>)),
        );

        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_syncAuto)).tap();
        await $(BackButton).tap();
        await $(#okButton).tap();

        final capturedEvent = verify(() => bluetoothBloc.add(captureAny())).captured.single as BluetoothEvent;
        final message = capturedEvent.whenOrNull(sendMessage: (message) => message);
        expect(message, isNotNull);

        final payload = jsonDecode(message!) as Map<String, dynamic>;
        expect(payload['cmd'], 'save_config');
        expect(payload['id'], moduleSettingsSaveConfigRequestId);
        expect(payload['data'], isA<Map<String, dynamic>>());

        final data = payload['data'] as Map<String, dynamic>;
        expect(data, {
          'sync': {'auto': false},
        });
        expect(data.containsKey('device'), isFalse);
        expect(data.containsKey('wifi'), isFalse);
        expect(data.containsKey('gps'), isFalse);
        expect(data.containsKey('touch'), isFalse);
      });

      patrolWidgetTest('Sends empty WiFi password when WiFi popup confirmed with empty password', (
        PatrolTester $,
      ) async {
        final moduleSettings = ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>);
        stubMutableModuleSettings(
          ModSettingsModel.entime(moduleSettings),
        );

        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo().tap();
        await $(TextField).at(0).enterText('NewWiFi');
        await $(#okButton).tap();
        await $(BackButton).tap();
        await $(#okButton).tap();

        final capturedEvent = verify(() => bluetoothBloc.add(captureAny())).captured.single as BluetoothEvent;
        final message = capturedEvent.whenOrNull(sendMessage: (message) => message);
        expect(message, isNotNull);

        final payload = jsonDecode(message!) as Map<String, dynamic>;
        expect(payload['cmd'], 'save_config');
        expect(payload['id'], moduleSettingsSaveConfigRequestId);
        expect(payload['data'], isA<Map<String, dynamic>>());

        final data = payload['data'] as Map<String, dynamic>;
        expect(data, {
          'wifi': {'ssid': 'NewWiFi', 'passwd': ''},
        });
      });

      patrolWidgetTest('Sends bluetooth message when save confirmed for LED', (PatrolTester $) async {
        when(() => moduleSettingsBloc.state).thenReturn(
          ModuleSettingsState.loaded(
            ModSettingsModel.led(ModSettingsLed.fromJson(jsonDecode(jsonLed) as Map<String, dynamic>)),
          ),
        );

        await $.pumpWidgetAndSettle(testWidget());
        await $(text).tap();
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifi)).tap();
        await $(BackButton).tap();
        await $(#okButton).tap();
        verify(
          () => bluetoothBloc.add(
            any(
              that: isA<BluetoothEvent>().having(
                (event) => event.whenOrNull(sendMessage: (message) => message),
                'message',
                isA<String>().having(
                  (message) => message.contains('"Read":false'),
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
        await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_syncAuto)).tap();
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
        patrolWidgetTest('Displays device section with name and number', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect($(ModuleSettingsScreen), findsOneWidget);
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_device)),
            findsOneWidget,
          );
          expect($(SettingsList).$(SettingsSection).containing($('ENTime-Test')), findsOneWidget);
          expect($(SettingsList).$(SettingsSection).containing($('1')), findsWidgets);
        });
      });

      group('Device section', () {
        patrolWidgetTest('Opens module name popup when name tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_deviceName)).tap();
          expect($(Localization.current.I18nModuleSettings_deviceName), findsWidgets);
        });

        patrolWidgetTest('Opens device number popup when number tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_deviceNumber)).tap();
          expect($(Localization.current.I18nModuleSettings_deviceNumber), findsWidgets);
        });

        patrolWidgetTest('Updates device number when popup returns value', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_deviceNumber)).tap();
          await $(TextField).enterText('5');
          await $(#okButton).tap();
          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.device.number,
                  'device.number',
                  5,
                ),
              ),
            ),
          ).called(1);
        });

        patrolWidgetTest('Updates timezone offset in minutes from hours:minutes input', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_deviceTimezone)).tap();
          await $(TextField).enterText('5:30');
          await $(#okButton).tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.device.timezoneOffsetMin,
                  'device.timezoneOffsetMin',
                  330,
                ),
              ),
            ),
          ).called(1);
        });

        patrolWidgetTest('Updates timezone offset in minutes from whole hours input', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_deviceTimezone)).tap();
          await $(TextField).enterText('5');
          await $(#okButton).tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.device.timezoneOffsetMin,
                  'device.timezoneOffsetMin',
                  300,
                ),
              ),
            ),
          ).called(1);
        });

        patrolWidgetTest('Rejects timezone offset outside firmware range', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_deviceTimezone)).tap();
          await $(TextField).enterText('14:30');
          await $(#okButton).tap();

          expect($(Localization.current.I18nModuleSettings_timezoneRange), findsOneWidget);
          verifyNever(() => moduleSettingsBloc.add(any()));
        });
      });

      group('Sync section', () {
        patrolWidgetTest('Shows sync section and NTP tiles', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            $(SettingsList).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_sync)),
            findsOneWidget,
          );
          expect($(Localization.current.I18nModuleSettings_ntp1), findsWidgets);
          expect($(Localization.current.I18nModuleSettings_ntp2), findsWidgets);
          expect($(Localization.current.I18nModuleSettings_ntp3), findsWidgets);
        });

        patrolWidgetTest('Opens NTP popup when NTP1 tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_ntp1)).tap();
          expect($(Localization.current.I18nModuleSettings_ntp1), findsWidgets);
        });
      });

      group('GPS section', () {
        patrolWidgetTest('Shows GPS enabled switch', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_gpsEnabled)).scrollTo(),
            findsOneWidget,
          );

          final gpsSwitchTile = find.widgetWithText(SettingsTile, Localization.current.I18nModuleSettings_gpsEnabled);
          final gpsSwitchFinder = find.descendant(of: gpsSwitchTile, matching: find.byType(Switch));
          final gpsSwitch = $.tester.widget<Switch>(gpsSwitchFinder);
          expect(gpsSwitch.value, isTrue);
        });

        patrolWidgetTest('Updates GPS enabled when switch toggled', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_gpsEnabled)).scrollTo().tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.gps.enabled,
                  'gps.enabled',
                  false,
                ),
              ),
            ),
          ).called(1);
        });
      });

      group('Touch section', () {
        patrolWidgetTest('Shows touch settings values', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(
              SettingsList,
            ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_touch)).scrollTo(),
            findsOneWidget,
          );

          final touchEnabledTile = find.widgetWithText(
            SettingsTile,
            Localization.current.I18nModuleSettings_touchEnabled,
          );
          final touchSwitchFinder = find.descendant(of: touchEnabledTile, matching: find.byType(Switch));
          final touchSwitch = $.tester.widget<Switch>(touchSwitchFinder);
          expect(touchSwitch.value, isTrue);

          final calValidTile = find.widgetWithText(SettingsTile, Localization.current.I18nModuleSettings_touchCalValid);
          expect(
            find.descendant(of: calValidTile, matching: find.text(Localization.current.I18nCore_no)),
            findsOneWidget,
          );

          final calibrationTile = find.widgetWithText(
            SettingsTile,
            Localization.current.I18nModuleSettings_touchCalibration,
          );
          expect(find.descendant(of: calibrationTile, matching: find.text('0, 0, 0, 0, 0')), findsOneWidget);
        });

        patrolWidgetTest('Updates touch enabled when switch toggled', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_touchEnabled)).scrollTo().tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelEntime).entime.touch.enabled,
                  'touch.enabled',
                  false,
                ),
              ),
            ),
          ).called(1);
        });
      });

      group('WiFi section', () {
        patrolWidgetTest('Shows WiFi section', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(
              SettingsList,
            ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_wifi)).scrollTo(),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Shows WiFi switch disabled', (PatrolTester $) async {
          when(() => moduleSettingsBloc.state).thenReturn(
            ModuleSettingsState.loaded(
              ModSettingsModel.entime(
                ModSettingsEntime.fromJson(jsonDecode(jsonEntime) as Map<String, dynamic>).copyWith.wifi(
                  active: false,
                ),
              ),
            ),
          );
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(
            SettingsList,
          ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_wifi)).scrollTo();

          final wifiSwitchTile = find.widgetWithText(SettingsTile, Localization.current.I18nModuleSettings_wifi);
          expect(wifiSwitchTile, findsOneWidget);

          final wifiSwitchFinder = find.descendant(of: wifiSwitchTile, matching: find.byType(Switch));
          final wifiSwitch = $.tester.widget<Switch>(wifiSwitchFinder);
          expect(wifiSwitch.value, isFalse);
        });

        patrolWidgetTest('Shows WiFi network tile with current SSID', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(
              SettingsList,
            ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo(),
            findsOneWidget,
          );
          expect(
            await $(SettingsList).$(SettingsSection).containing($('TestWiFi')).scrollTo(),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Opens WiFi settings popup when network tile tapped', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo().tap();
          expect($(Localization.current.I18nModuleSettings_enterWifiCredentials), findsOneWidget);
        });

        patrolWidgetTest('Updates SSID and password when popup returns value and asks to update', (
          PatrolTester $,
        ) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo().tap();
          await $(#okButton).tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>()
                    .having(
                      (event) => (event.moduleSettings as ModSettingsModelEntime).entime.wifi.ssid,
                      'wifi.ssid',
                      'TestWiFi',
                    )
                    .having(
                      (event) => (event.moduleSettings as ModSettingsModelEntime).entime.wifi.passwd,
                      'wifi.passwd',
                      '', //  Пароль при заходе всегда пустой
                    ),
              ),
            ),
          ).called(1);

          await $(BackButton).tap();
          expect($(Localization.current.I18nModuleSettings_saveSettingsToModule), findsOneWidget);
        });

        patrolWidgetTest('Do nothing when SSID tile tapped and popup is cancelled', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo().tap();
          await $(#cancelButton).tap();
          verifyNever(() => moduleSettingsBloc.add(any()));
          await $(BackButton).tap();
          expect($(text), findsOneWidget);
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
      group('Module LED section', () {
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

      group('Bluetooth LED section', () {
        patrolWidgetTest('Shows Bluetooth section for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(
              SettingsList,
            ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_bluetooth)).scrollTo(),
            findsOneWidget,
          );
        });
        patrolWidgetTest('Shows bluetooth switch disabled for LED', skip: true, (PatrolTester $) async {
          // TODO: Bluetooth
        });

        patrolWidgetTest('Shows bluetooth module name tile disabled for LED', skip: true, (PatrolTester $) async {
          // TODO: Bluetooth
        });

        patrolWidgetTest('Shows bluetooth module number with correct initial value for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(SettingsList)
                .$(SettingsSection)
                .containing($(Localization.current.I18nModuleSettings_bluetoothModuleNumber))
                .scrollTo(),
            findsOneWidget,
          );
          expect(
            await $(SettingsList).$(SettingsSection).containing($('1')).scrollTo(),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Opens bluetooth number popup when tile tapped for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(
            SettingsTile,
          ).containing($(Localization.current.I18nModuleSettings_bluetoothModuleNumber)).scrollTo().tap();
          expect($(Localization.current.I18nModuleSettings_enterBluetoothModuleNumber), findsOneWidget);
        });

        patrolWidgetTest('Updates bluetooth number when popup returns value for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(
            SettingsTile,
          ).containing($(Localization.current.I18nModuleSettings_bluetoothModuleNumber)).scrollTo().tap();
          await $(TextField).enterText('234');
          await $(#okButton).tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelLed).led.bluetooth.number,
                  'bluetooth.number',
                  234,
                ),
              ),
            ),
          ).called(1);

          await $(BackButton).tap();
          expect($(Localization.current.I18nModuleSettings_saveSettingsToModule), findsOneWidget);
        });

        patrolWidgetTest('Do nothing when bluetooth number tile tapped and popup is cancelled for LED', (
          PatrolTester $,
        ) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(
            SettingsTile,
          ).containing($(Localization.current.I18nModuleSettings_bluetoothModuleNumber)).scrollTo().tap();
          await $(#cancelButton).tap();
          verifyNever(() => moduleSettingsBloc.add(any()));
          await $(BackButton).tap();
          expect($(text), findsOneWidget);
        });

        patrolWidgetTest('Shows brightness tile for LED', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect(
            await $(
              SettingsList,
            ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_brightness)).scrollTo(),
            findsOneWidget,
          );
        });

        patrolWidgetTest('Opens brightness popup for LED when tile tapped and asks to update', (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_brightness)).scrollTo().tap();
          expect($(Localization.current.I18nModuleSettings_brightness), findsOneWidget);
          expect(
            $(Localization.current.I18nModuleSettings_brightnessInt(15)),
            findsOneWidget,
          ); // Brightness clamps to 15
          await $(#okButton).tap();

          verify(
            () => moduleSettingsBloc.add(
              any(
                that: isA<ModuleSettingsEventUpdate>().having(
                  (event) => (event.moduleSettings as ModSettingsModelLed).led.ledPanel.brightness,
                  'brightness',
                  15,
                ),
              ),
            ),
          ).called(1);

          await $(BackButton).tap();
          expect($(Localization.current.I18nModuleSettings_saveSettingsToModule), findsOneWidget);
        });

        patrolWidgetTest('Do nothing when brightness tile tapped and popup is cancelled for LED', (
          PatrolTester $,
        ) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_brightness)).scrollTo().tap();
          await $(#cancelButton).tap();
          verifyNever(() => moduleSettingsBloc.add(any()));
          await $(BackButton).tap();
        });

        group('WiFi LED section', () {
          patrolWidgetTest('Shows WiFi LED section', (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            await $(text).tap();
            expect(
              await $(
                SettingsList,
              ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_wifi)).scrollTo(),
              findsOneWidget,
            );
          });

          patrolWidgetTest('Shows WiFi switch disabled for LED', skip: true, (PatrolTester $) async {
            // TODO: WiFi
          });

          patrolWidgetTest('Shows WiFi network tile with current SSID for LED', (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            await $(text).tap();
            expect(
              await $(
                SettingsList,
              ).$(SettingsSection).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo(),
              findsOneWidget,
            );
            expect(
              await $(SettingsList).$(SettingsSection).containing($('TestWiFi')).scrollTo(),
              findsOneWidget,
            );
          });

          patrolWidgetTest('Opens WiFi settings popup when network tile tapped for LED', (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            await $(text).tap();
            await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo().tap();
            expect($(Localization.current.I18nModuleSettings_enterWifiCredentials), findsOneWidget);
          });

          patrolWidgetTest('Updates SSID and password when popup returns value and asks to update for LED', (
            PatrolTester $,
          ) async {
            await $.pumpWidgetAndSettle(testWidget());
            await $(text).tap();
            await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo().tap();
            await $(#okButton).tap();

            verify(
              () => moduleSettingsBloc.add(
                any(
                  that: isA<ModuleSettingsEventUpdate>()
                      .having(
                        (event) => (event.moduleSettings as ModSettingsModelLed).led.wiFi.ssid,
                        'wifi.ssid',
                        'TestWiFi',
                      )
                      .having(
                        (event) => (event.moduleSettings as ModSettingsModelLed).led.wiFi.passwd,
                        'wifi.passwd',
                        '', //  Пароль при заходе всегда пустой
                      ),
                ),
              ),
            ).called(1);

            await $(BackButton).tap();
            expect($(Localization.current.I18nModuleSettings_saveSettingsToModule), findsOneWidget);
          });

          patrolWidgetTest('Do nothing when SSID tile tapped and popup is cancelled for LED', (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            await $(text).tap();
            await $(SettingsTile).containing($(Localization.current.I18nModuleSettings_wifiNetwork)).scrollTo().tap();
            await $(#cancelButton).tap();
            verifyNever(() => moduleSettingsBloc.add(any()));
            await $(BackButton).tap();
            expect($(text), findsOneWidget);
          });
        });
      });

      group('Unknown module type', () {
        patrolWidgetTest('Shows unknown module type splash', (PatrolTester $) async {
          when(() => moduleSettingsBloc.state).thenReturn(const ModuleSettingsState.error());
          await $.pumpWidgetAndSettle(testWidget());
          await $(text).tap();
          expect($(Splash).containing($(Localization.current.I18nModuleSettings_errorLoadSettings)), findsOneWidget);
        });
      });
    });
  });
}
