import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late DatabaseBloc databaseBloc;

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(child: BlocProvider.value(value: databaseBloc, child: const RacesListPage())),
    );
  }

  setUp(() async {
    databaseBloc = MockDatabaseBloc();
  });

  group('RacesListPage tests', () {
    setUp(() {
      when(() => databaseBloc.state).thenReturn(
        const DatabaseState(
          races: [],
          stages: [],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );
    });

    patrolWidgetTest('Initial page, no races', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(Localization.current.I18nDatabase_races), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(RaceItemTile), findsNothing);
    });

    patrolWidgetTest('Tap FAB, then add race popup appears', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(FloatingActionButton).tap();
      expect($(Localization.current.I18nDatabase_editRace), findsOneWidget);
    });

    patrolWidgetTest('Existing races list', (PatrolTester $) async {
      const race = Race(id: 1, name: 'name', isDeleted: false);
      when(() => databaseBloc.state).thenReturn(
        const DatabaseState(
          races: [race, race, race, race, race],
          stages: [],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );
      await $.pumpWidgetAndSettle(testWidget());
      expect($(RaceItemTile), findsNWidgets(5));
    });
  });
}
