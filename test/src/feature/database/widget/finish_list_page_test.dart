import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

part 'helpers/database_state.dart';

class MockSettingsBloc extends MockBloc<SettingsEvent, SettingsState>
    implements SettingsBloc {}

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState>
    implements DatabaseBloc {}

void main() {
  late SettingsBloc settingsBloc;
  late DatabaseBloc databaseBloc;
  late AppSettings settings;

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: databaseBloc,
          child: BlocProvider.value(
            value: settingsBloc,
            child: const FinishListPage(),
          ),
        ),
      ),
    );
  }

  group('FinishListPage', () {
    setUp(() {
      databaseBloc = MockDatabaseBloc();
      settingsBloc = MockSettingsBloc();
      settings = const AppSettings.defaults();
    });

    group('Finish list', () {
      patrolWidgetTest('Empty list', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true);
        when(() => databaseBloc.state).thenReturn(
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: [],
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNothing);
      });

      patrolWidgetTest('Show 8 finishes with any states',
          (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true);
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(count));
      });

      patrolWidgetTest('Filter hidden finishes', (PatrolTester $) async {
        const count = 10;
        // filter 4 from 10
        const expected = 6;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter finishes with numbers', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true, showNumbers: false);
        const count = 11;
        // filter 4 from 11
        const expected = 7;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter manual finishes', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true, showManual: false);
        const count = 9;
        // filter 4 from 9
        const expected = 5;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter manual and with numbers finishes',
          (PatrolTester $) async {
        settings = settings.copyWith(
          showHidden: true,
          showManual: false,
          showNumbers: false,
        );
        const count = 11;
        // filter 6 from 11
        const expected = 5;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter hidden and with numbers finishes',
          (PatrolTester $) async {
        settings = settings.copyWith(
          showHidden: false,
          showManual: true,
          showNumbers: false,
        );
        const count = 10;
        // filter 6 from 10
        const expected = 4;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter hidden and manual finishes',
          (PatrolTester $) async {
        settings = settings.copyWith(
          showHidden: false,
          showManual: false,
          showNumbers: true,
        );
        const count = 10;
        // filter 6 from 10
        const expected = 4;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter hidden, manual and with numbers finishes',
          (PatrolTester $) async {
        settings = settings.copyWith(
          showHidden: false,
          showManual: false,
          showNumbers: false,
        );
        const count = 12;
        // filter 7 from 12
        const expected = 5;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });
    });

    group('NumbersOnTrace list', () {
      patrolWidgetTest('Empty list', (PatrolTester $) async {
        when(() => databaseBloc.state).thenReturn(
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: [],
            numbersOnTrace: [],
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(NumberOnTraceTile), findsNothing);
      });

      patrolWidgetTest('3 numbers on trace', (PatrolTester $) async {
        const n = 3;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($(NumberOnTraceTile), findsNWidgets(n));
      });

      patrolWidgetTest('Widget shows number', (PatrolTester $) async {
        const n = 4;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
          ),
        );
        when(() => settingsBloc.state)
            .thenReturn(SettingsState(settings: settings));

        await $.pumpWidgetAndSettle(testWidget());

        expect($('1'), findsOneWidget);
        expect($('2'), findsOneWidget);
        expect($('3'), findsOneWidget);
        expect($('4'), findsOneWidget);
      });
    });
  });
}
