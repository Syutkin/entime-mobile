import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/tab/widget/finish_page.dart';
import 'package:entime/src/feature/tab/widget/race_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

void main() {
  late DatabaseBloc databaseBloc;
  late Race race;
  late Stage stage;
  late SettingsCubit settingsCubit;
  late AppSettings settings;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: databaseBloc,
          child: BlocProvider.value(value: settingsCubit, child: const FinishPage()),
        ),
      ),
    );
  }

  setUpAll(() {
    databaseBloc = MockDatabaseBloc();
    settingsCubit = MockSettingsCubit();
    settings = const AppSettings.defaults();
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
    when(() => settingsCubit.state).thenReturn(settings);
  });

  group('FinishPage tests', () {
    patrolWidgetTest('Race and stage not selected', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(RaceTile), findsOneWidget);
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
      expect($(RaceTile), findsOneWidget);
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
      expect($(FinishListPage), findsOneWidget);
    });
  });
}
