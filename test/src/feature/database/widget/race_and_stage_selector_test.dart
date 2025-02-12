import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/race_and_stage_selector.dart';
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
      home: Material(child: BlocProvider.value(value: databaseBloc, child: const RaceAndStageSelector())),
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

  group('RaceAndStageSelector tests', () {
    patrolWidgetTest('Race and stage not selected', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(RacesListPage), findsOneWidget);
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
      expect($(StagesListPage), findsOneWidget);
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
      expect($(SizedBox), findsOneWidget);
    });
  });
}
