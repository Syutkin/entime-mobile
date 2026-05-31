import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/countdown/countdown.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/tab/model/race_menu_button.dart';
import 'package:entime/src/feature/tab/widget/race_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockCountdownBloc extends MockBloc<CountdownEvent, CountdownState> implements CountdownBloc {}

void main() {
  late DatabaseBloc databaseBloc;
  late CountdownBloc countdownBloc;
  late Race race;
  late Stage stage;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: countdownBloc,
          child: BlocProvider.value(value: databaseBloc, child: const RaceTile()),
        ),
      ),
    );
  }

  setUpAll(() async {
    await initializeDateFormatting();
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();
    countdownBloc = MockCountdownBloc();
    race = const Race(id: 1, name: 'Race name');
    stage = const Stage(id: 1, raceId: 1, name: 'Stage name', isActive: true);
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
    patrolWidgetTest('Initial build', ($) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(RaceTile), findsOneWidget);
      expect($(ListTile), findsOneWidget);
    });

    patrolWidgetTest('Race selected and stage not selected', ($) async {
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

    patrolWidgetTest('Race and stage selected', ($) async {
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

    patrolWidgetTest('Opening selector does not stop countdown', ($) async {
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
      await $(ListTile).tap();

      expect($(RacesListPage), findsOneWidget);
      verifyNever(() => countdownBloc.add(const CountdownEvent.stop()));
    });

    patrolWidgetTest('Cancel selection after choosing race does not commit or touch countdown', ($) async {
      final currentRace = race;
      final currentStage = stage;
      const newRace = Race(id: 2, name: 'New race');
      const newStage = Stage(id: 3, raceId: 2, name: 'New stage', isActive: true);
      when(() => databaseBloc.state).thenReturn(
        DatabaseState(
          races: [newRace],
          stages: [newStage],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
          race: currentRace,
          stage: currentStage,
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();
      await $(RaceItemTile).tap();
      await $.pumpAndSettle();
      await $.tester.pageBack();
      await $.pumpAndSettle();
      await $.tester.pageBack();
      await $.pumpAndSettle();

      verify(() => databaseBloc.add(DatabaseEvent.getStages(newRace.id))).called(1);
      verifyNever(() => databaseBloc.add(const DatabaseEvent.selectRaceAndStage(race: newRace, stage: newStage)));
      verifyNever(() => countdownBloc.add(CountdownEvent.start(stageId: newStage.id)));
      verifyNever(() => countdownBloc.add(const CountdownEvent.stop()));
    });

    patrolWidgetTest('Successful selection commits race and stage and starts countdown', ($) async {
      final currentRace = race;
      final currentStage = stage;
      const newRace = Race(id: 2, name: 'New race');
      const newStage = Stage(id: 3, raceId: 2, name: 'New stage', isActive: true);
      when(() => databaseBloc.state).thenReturn(
        DatabaseState(
          races: [newRace],
          stages: [newStage],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
          race: currentRace,
          stage: currentStage,
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();
      await $(RaceItemTile).tap();
      await $(StageItemTile).tap();
      await $.pumpAndSettle();

      verify(() => databaseBloc.add(DatabaseEvent.getStages(newRace.id))).called(1);
      verify(() => databaseBloc.add(const DatabaseEvent.selectRaceAndStage(race: newRace, stage: newStage))).called(1);
      verify(() => countdownBloc.add(CountdownEvent.start(stageId: newStage.id))).called(1);
      verifyNever(() => countdownBloc.add(const CountdownEvent.stop()));
    });

    patrolWidgetTest('Tap import protocol', ($) async {
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
