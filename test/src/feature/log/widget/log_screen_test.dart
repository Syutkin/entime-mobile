import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/log/log.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

// class MockWakelockPlus extends Mock implements WakelockPlus {}

class MockLogBloc extends MockBloc<LogEvent, LogState> implements LogBloc {}

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

void main() {
  late LogBloc logBloc;
  late SettingsCubit settingsCubit;
  late AppSettings settings;
  late SharedPrefsSettingsProvider sharedPrefsSettingsProvider;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: logBloc,
          child: BlocProvider.value(
            value: settingsCubit,
            child: LogScreen(),
          ),
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(const AppSettings.defaults());
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );
  });

  setUp(() async {
    logBloc = MockLogBloc();
    settingsCubit = MockSettingsCubit();

    settings = const AppSettings.defaults();
    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
    sharedPrefsSettingsProvider = await SharedPrefsSettingsProvider.load();
    await sharedPrefsSettingsProvider.update(settings);

    when(() => settingsCubit.state).thenReturn(settings);
    when(() => logBloc.state).thenReturn(const LogState(log: []));
  });

  group('LogScreen widget tests', () {
    patrolWidgetTest('Check log screen title', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(AppBar).$(Localization.current.I18nLog_bluetoothInformation), findsOneWidget);
    });

    patrolWidgetTest('Check empty log list', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(ListView), findsOneWidget);
      expect($(ListTile), findsNothing);
    });

    patrolWidgetTest('Check log list with items', (PatrolTester $) async {
      final testLogs = [
        Log(
          id: 1,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.bluetooth,
          direction: LogSourceDirection.input,
          rawData: 'Test message 1',
        ),
        Log(
          id: 2,
          level: LogLevel.error,
          timestamp: DateTime.now(),
          source: LogSource.app,
          direction: LogSourceDirection.output,
          rawData: 'Test message 2',
        ),
      ];

      when(() => logBloc.state).thenReturn(LogState(log: testLogs));

      await $.pumpWidgetAndSettle(testWidget());

      expect($(ListView), findsOneWidget);
      expect($(ListTile), findsNWidgets(2));
      expect($(Text).containing('Test message 1'), findsOneWidget);
      expect($(Text).containing('Test message 2'), findsOneWidget);
    });

    patrolWidgetTest('Check log level icons', (PatrolTester $) async {
      final testLogs = [
        Log(
          id: 1,
          level: LogLevel.error,
          timestamp: DateTime.now(),
          source: LogSource.bluetooth,
          direction: LogSourceDirection.input,
          rawData: 'Error message',
        ),
        Log(
          id: 2,
          level: LogLevel.warning,
          timestamp: DateTime.now(),
          source: LogSource.app,
          direction: LogSourceDirection.output,
          rawData: 'Warning message',
        ),
        Log(
          id: 3,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.other,
          direction: LogSourceDirection.undefined,
          rawData: 'Info message',
        ),
        Log(
          id: 4,
          level: LogLevel.debug,
          timestamp: DateTime.now(),
          source: LogSource.unknown,
          direction: LogSourceDirection.input,
          rawData: 'Debug message',
        ),
        Log(
          id: 5,
          level: LogLevel.verbose,
          timestamp: DateTime.now(),
          source: LogSource.bluetooth,
          direction: LogSourceDirection.output,
          rawData: 'Verbose message',
        ),
      ];

      when(() => logBloc.state).thenReturn(LogState(log: testLogs));

      await $.pumpWidgetAndSettle(testWidget());

      // Проверяем что иконки отображаются для каждого уровня логирования
      expect($(Icon), findsAtLeastNWidgets(10)); // 5 уровней логирования * 2 иконки на запись (уровень + источник)
    });

    patrolWidgetTest('Check log source icons', (PatrolTester $) async {
      final testLogs = [
        Log(
          id: 1,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.bluetooth,
          direction: LogSourceDirection.input,
          rawData: 'Bluetooth input',
        ),
        Log(
          id: 2,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.bluetooth,
          direction: LogSourceDirection.output,
          rawData: 'Bluetooth output',
        ),
        Log(
          id: 3,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.bluetooth,
          direction: LogSourceDirection.undefined,
          rawData: 'Bluetooth undefined',
        ),
        Log(
          id: 4,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.other,
          direction: LogSourceDirection.input,
          rawData: 'Other source',
        ),
        Log(
          id: 5,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.unknown,
          direction: LogSourceDirection.input,
          rawData: 'Unknown source',
        ),
        Log(
          id: 6,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.app,
          direction: LogSourceDirection.input,
          rawData: 'App source',
        ),
      ];

      when(() => logBloc.state).thenReturn(LogState(log: testLogs));

      await $.pumpWidgetAndSettle(testWidget());

      // Проверяем что иконки источников отображаются
      expect($(Icon), findsAtLeastNWidgets(12)); // 6 источников * 2 иконки на запись
    });

    patrolWidgetTest('Check scrollbar presence', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(Scrollbar), findsOneWidget);
    });

    patrolWidgetTest('Check debug buttons is existed in debug mode', (PatrolTester $) async {
      // Создаем виджет с debug режимом
      final debugWidget = MaterialApp(
        localizationsDelegates: const [Localization.delegate],
        supportedLocales: Localization.supportedLocales,
        home: Material(
          child: BlocProvider.value(
            value: logBloc,
            child: BlocProvider.value(
              value: settingsCubit,
              child: LogScreen(),
            ),
          ),
        ),
      );

      await $.pumpWidgetAndSettle(debugWidget);

      expect($(TextButton), findsOneWidget);
    });

    patrolWidgetTest('Check log item structure', (PatrolTester $) async {
      final testLog = Log(
        id: 1,
        level: LogLevel.information,
        timestamp: DateTime.now(),
        source: LogSource.bluetooth,
        direction: LogSourceDirection.input,
        rawData: 'Test log message',
      );

      when(() => logBloc.state).thenReturn(LogState(log: [testLog]));

      await $.pumpWidgetAndSettle(testWidget());

      // Проверяем структуру элемента лога
      expect($(ListTile), findsOneWidget);
      expect($(Text).containing('Test log message'), findsOneWidget);
    });

    patrolWidgetTest('Check multiple log items scrolling', (PatrolTester $) async {
      final testLogs = List.generate(
        20,
        (index) => Log(
          id: index,
          level: LogLevel.information,
          timestamp: DateTime.now(),
          source: LogSource.bluetooth,
          direction: LogSourceDirection.input,
          rawData: 'Test message $index',
        ),
      );

      when(() => logBloc.state).thenReturn(LogState(log: testLogs));

      await $.pumpWidgetAndSettle(testWidget());

      expect($('Test message 0'), findsOneWidget);
      expect(await $('Test message 19').scrollTo(), findsOneWidget);
    });

    patrolWidgetTest('Check log with null rawData', (PatrolTester $) async {
      final testLog = Log(
        id: 1,
        level: LogLevel.information,
        timestamp: DateTime.now(),
        source: LogSource.bluetooth,
        direction: LogSourceDirection.input,
      );

      when(() => logBloc.state).thenReturn(LogState(log: [testLog]));

      await $.pumpWidgetAndSettle(testWidget());

      // Проверяем что элемент отображается даже с null rawData
      expect($(ListTile), findsOneWidget);
      expect($(Text).containing(''), findsOneWidget);
    });
  });

  group('LogSourceIcon widget tests', () {
    Widget testLogSourceIconWidget({
      required LogSource source,
      LogSourceDirection? direction,
    }) {
      return MaterialApp(
        localizationsDelegates: const [Localization.delegate],
        supportedLocales: Localization.supportedLocales,
        home: Material(
          child: LogSourceIcon(
            source: source,
            direction: direction,
          ),
        ),
      );
    }

    patrolWidgetTest('Check bluetooth source with input direction', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogSourceIconWidget(
          source: LogSource.bluetooth,
          direction: LogSourceDirection.input,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, MdiIcons.bluetoothTransfer);
    });

    patrolWidgetTest('Check bluetooth source with output direction', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogSourceIconWidget(
          source: LogSource.bluetooth,
          direction: LogSourceDirection.output,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, MdiIcons.bluetoothTransfer);
    });

    patrolWidgetTest('Check bluetooth source with undefined direction', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogSourceIconWidget(
          source: LogSource.bluetooth,
          direction: LogSourceDirection.undefined,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, MdiIcons.bluetooth);
    });

    patrolWidgetTest('Check bluetooth source with null direction', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogSourceIconWidget(
          source: LogSource.bluetooth,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, MdiIcons.bluetooth);
    });

    patrolWidgetTest('Check other source', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogSourceIconWidget(
          source: LogSource.other,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, MdiIcons.cloudPrintOutline);
    });

    patrolWidgetTest('Check unknown source', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogSourceIconWidget(
          source: LogSource.unknown,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.help_outline);
    });

    patrolWidgetTest('Check app source', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogSourceIconWidget(
          source: LogSource.app,
          direction: LogSourceDirection.input,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.settings_applications);
    });
  });

  group('LogLevelIcon widget tests', () {
    Widget testLogLevelIconWidget({
      required LogLevel level,
    }) {
      return MaterialApp(
        localizationsDelegates: const [Localization.delegate],
        supportedLocales: Localization.supportedLocales,
        home: Material(
          child: LogLevelIcon(
            level: level,
          ),
        ),
      );
    }

    patrolWidgetTest('Check error level icon', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogLevelIconWidget(
          level: LogLevel.error,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, MdiIcons.alertOctagon);
    });

    patrolWidgetTest('Check warning level icon', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogLevelIconWidget(
          level: LogLevel.warning,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.warning);
    });

    patrolWidgetTest('Check information level icon', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogLevelIconWidget(
          level: LogLevel.information,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.info_outline);
    });

    patrolWidgetTest('Check debug level icon', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogLevelIconWidget(
          level: LogLevel.debug,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, MdiIcons.debugStepInto);
    });

    patrolWidgetTest('Check verbose level icon', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        testLogLevelIconWidget(
          level: LogLevel.verbose,
        ),
      );

      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.circle_notifications);
    });
  });
}
