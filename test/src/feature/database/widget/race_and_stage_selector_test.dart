import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/race_and_stage_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
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
      home: Material(
        child: BlocProvider.value(value: databaseBloc, child: const RaceAndStageSelector()),
      ),
    );
  }

  Widget routeTestWidget({required ValueChanged<RaceStageSelection?> onResult}) {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: databaseBloc,
          child: Builder(
            builder: (context) {
              return TextButton(
                key: const Key('openSelector'),
                onPressed: () async {
                  final result = await Navigator.of(context).push<RaceStageSelection>(
                    MaterialPageRoute(
                      builder: (context) => BlocProvider.value(
                        value: databaseBloc,
                        child: const RaceAndStageSelector(),
                      ),
                    ),
                  );
                  onResult(result);
                },
                child: const Text('open'),
              );
            },
          ),
        ),
      ),
    );
  }

  setUpAll(() async {
    await initializeDateFormatting();
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();
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

  group('RaceAndStageSelector tests', () {
    patrolWidgetTest('Race and stage not selected', ($) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(RacesListPage), findsOneWidget);
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
      expect($(StagesListPage), findsOneWidget);
    });

    patrolWidgetTest('Race and stage selected shows race list for a new selection', ($) async {
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
      expect($(RacesListPage), findsOneWidget);
    });

    patrolWidgetTest('Tap race loads stages without selecting race globally', ($) async {
      when(() => databaseBloc.state).thenReturn(
        DatabaseState(
          races: [race],
          stages: [],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(RaceItemTile).tap();

      verify(() => databaseBloc.add(DatabaseEvent.getStages(race.id))).called(1);
      expect($(StagesListPage), findsOneWidget);
    });

    patrolWidgetTest('Tap stage returns selected race and stage', ($) async {
      RaceStageSelection? selection;
      when(() => databaseBloc.state).thenReturn(
        DatabaseState(
          races: [race],
          stages: [stage],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );

      await $.pumpWidgetAndSettle(
        routeTestWidget(
          onResult: (result) {
            selection = result;
          },
        ),
      );
      await $(#openSelector).tap();
      await $(RaceItemTile).tap();
      await $(StageItemTile).tap();
      await $.pumpAndSettle();

      expect(selection?.race.id, race.id);
      expect(selection?.stage.id, stage.id);
    });

    patrolWidgetTest('Back without stage selection returns null', ($) async {
      RaceStageSelection? selection;
      var completed = false;
      when(() => databaseBloc.state).thenReturn(
        DatabaseState(
          races: [race],
          stages: [],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );

      await $.pumpWidgetAndSettle(
        routeTestWidget(
          onResult: (result) {
            selection = result;
            completed = true;
          },
        ),
      );
      await $(#openSelector).tap();
      await $.tester.pageBack();
      await $.pumpAndSettle();

      expect(completed, true);
      expect(selection, null);
    });
  });
}
