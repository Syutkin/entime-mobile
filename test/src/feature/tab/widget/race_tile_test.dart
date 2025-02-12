import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/tab/model/race_menu_button.dart';
import 'package:entime/src/feature/tab/widget/race_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

void main() {
  late DatabaseBloc databaseBloc;
  late Race race;
  late Stage stage;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(child: BlocProvider.value(value: databaseBloc, child: const RaceTile())),
    );
  }

  setUpAll(() {
    databaseBloc = MockDatabaseBloc();
  });

  setUp(() {
    race = const Race(id: 1, name: 'Race name', isDeleted: false);
    stage = const Stage(id: 1, raceId: 1, name: 'Stage name', isActive: true, isDeleted: false);
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

  group('RaceTile tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(RaceTile), findsOneWidget);
      expect($(ListTile), findsOneWidget);
    });

    patrolWidgetTest('Race selected and stage not selected', (PatrolTester $) async {
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

      await $.pumpWidgetAndSettle(testWidget());
      expect($(Localization.current.I18nInit_selectRace), findsNothing);
      expect($(race.name), findsOneWidget);
      expect($(Localization.current.I18nInit_selectStage), findsOneWidget);
    });

    patrolWidgetTest('Race and stage selected', (PatrolTester $) async {
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
          stage: stage,
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());
      expect($(Localization.current.I18nInit_selectRace), findsNothing);
      expect($(race.name), findsOneWidget);
      expect($(Localization.current.I18nInit_selectStage), findsNothing);
      expect($(stage.name), findsOneWidget);
    });

    patrolWidgetTest('Tap import protocol', (PatrolTester $) async {
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
          stage: stage,
        ),
      );
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<RaceMenuButton>).tap();
      await $(Localization.current.I18nInit_importFromCsv).tap();
      verify(() => databaseBloc.add(const DatabaseEvent.createRaceFromFile())).called(1);
    });
  });
}
