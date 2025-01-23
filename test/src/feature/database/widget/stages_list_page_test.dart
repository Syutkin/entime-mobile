import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState>
    implements DatabaseBloc {}

class MockTrailsBloc extends MockBloc<TrailsEvent, TrailsState>
    implements TrailsBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late DatabaseBloc databaseBloc;
  late TrailsBloc trailsBloc;
  late Race race;
  late Stage stage;

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: databaseBloc,
          child: BlocProvider.value(
            value: trailsBloc,
            child: StagesListPage(race: race),
          ),
        ),
      ),
    );
  }

  setUp(() async {
    race = const Race(id: 1, name: 'Race name', isDeleted: false);
    stage = const Stage(
      id: 1,
      raceId: 1,
      name: 'Stage name',
      isActive: true,
      isDeleted: false,
    );

    databaseBloc = MockDatabaseBloc();
    trailsBloc = MockTrailsBloc();

    when(() => trailsBloc.state).thenReturn(const TrailsState.initial());
    when(() => databaseBloc.state).thenReturn(
      DatabaseState(
        races: [],
        stages: [],
        categories: [],
        riders: [],
        participants: [],
        finishes: [],
        numbersOnTrace: [],
        race: race,
      ),
    );
  });

  group(
    'StagesListPage tests',
    () {
      patrolWidgetTest('Initial page, no stages', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect($(AppBar).$(race.name), findsOneWidget);
        expect($(FloatingActionButton), findsOneWidget);
        expect($(StageItemTile), findsNothing);
      });

      // ToDo: I can't pass context with TrailsBloc
      // patrolWidgetTest('Tap FAB, then add stage popup appears',
      //     (PatrolTester $) async {
      //   await $.pumpWidgetAndSettle(testWidget());
      //   await $(FloatingActionButton).tap();
      //   expect($(Localization.current.I18nDatabase_addStage), findsOneWidget);
      // });

      patrolWidgetTest('Existing races list', (PatrolTester $) async {
        const race = Race(id: 1, name: 'name', isDeleted: false);
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [race, race, race, race, race],
            stages: [stage, stage, stage, stage],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            race: race,
          ),
        );
        await $.pumpWidgetAndSettle(testWidget());
        expect($(StageItemTile), findsNWidgets(4));
      });
    },
  );
}
