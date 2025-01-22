import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/feature/csv/csv.dart';
import 'package:entime/src/feature/csv/model/stages_csv.dart';
import 'package:entime/src/feature/csv/model/start_number_and_times_csv.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../helpers/shared_prefs_defaults.dart';
import '../drift/app_database_test.dart';

class MockAppDatabase extends Mock implements AppDatabase {}

class MockFileProvider extends Mock implements StartlistProvider {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late DatabaseBloc bloc;
  late AppDatabase db;
  late StartlistProvider fileProvider;
  late SettingsProvider settingsProvider;
  late Race race;
  late Stage stage;
  late RaceCsv raceCsv;
  late StagesCsv stagesCsv;

  setUpAll(() async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );
    db = MockAppDatabase();
    fileProvider = MockFileProvider();
  });

  setUp(() async {
    db = AppDatabase.customConnection(
      DatabaseConnection(
        NativeDatabase.memory(),
        closeStreamsSynchronously: true,
      ),
    );

    // populate DB
    for (final query in PopDB().queries) {
      await db.customInsert(query);
    }

    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
    settingsProvider = await SharedPrefsSettingsProvider.load();

    race = const Race(id: 1, name: 'name', isDeleted: false);
    stage = const Stage(
      id: 1,
      raceId: 1,
      name: 'name',
      isActive: true,
      isDeleted: false,
    );
  });

  tearDown(() async {
    await db.close();
  });

  group(
    'DatabaseBloc tests',
    () {
      test(
        'Initial state',
        () async {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
          expect(
            bloc.state,
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              starts: [],
              finishes: [],
              numbersOnTrace: [],
            ),
          );
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Initialize',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) => bloc.add(const DatabaseEvent.initialize()),
        verify: (bloc) {
          // Two races
          expect(bloc.state.races.length, 2);
          // Race not selected
          expect(bloc.state.stages.length, 0);
          // Race not selected
          expect(bloc.state.categories.length, 0);
          // Total riders
          expect(bloc.state.riders.length, 79);
          // Race not selected
          expect(bloc.state.participants.length, 0);
          // Stage not selected
          expect(bloc.state.starts.length, 0);
          // Stage not selected
          expect(bloc.state.finishes.length, 0);
          // Stage not selected
          expect(bloc.state.numbersOnTrace.length, 0);
          // Race not selected
          expect(bloc.state.race, null);
          // Stage not selected
          expect(bloc.state.stage, null);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add race',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) => bloc.add(DatabaseEvent.addRace(name: race.name)),
        verify: (bloc) {
          expect(bloc.state.races.length, 3);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Delete race',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) => bloc.add(const DatabaseEvent.deleteRace(1)),
        verify: (bloc) {
          expect(bloc.state.races.length, 1);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Update race',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) =>
            bloc.add(DatabaseEvent.updateRace(id: race.id, name: 'newName')),
        verify: (bloc) {
          expect(bloc.state.races.first.name, 'newName');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Upsert race (update)',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) =>
            bloc.add(DatabaseEvent.upsertRace(id: race.id, name: 'newName')),
        verify: (bloc) {
          expect(bloc.state.races.first.name, 'newName');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Upsert race (new)',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) =>
            bloc.add(const DatabaseEvent.upsertRace(name: 'newName')),
        verify: (bloc) {
          expect(bloc.state.races.length, 3);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Get races',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) => bloc.add(const DatabaseEvent.getRaces()),
        verify: (bloc) {
          expect(bloc.state.races.length, 2);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Select race',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) => bloc.add(DatabaseEvent.selectRace(race)),
        verify: (bloc) {
          expect(bloc.state.race, race);
          // Stages populated after race selection
          expect(bloc.state.stages.length, 4);
          // Selected race id saved to settings
          expect(settingsProvider.settings.raceId, 1);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Deselect race',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) {
          bloc
            ..add(DatabaseEvent.selectRace(race))
            ..add(DatabaseEvent.selectStage(stage))
            ..add(const DatabaseEvent.deselectRace());
        },
        verify: (bloc) {
          expect(bloc.state.race, null);
          expect(bloc.state.stage, null);
          expect(settingsProvider.settings.raceId, -1);
          expect(settingsProvider.settings.stageId, -1);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add stage',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) {
          bloc
            ..add(DatabaseEvent.addStage(name: stage.name, raceId: race.id))
            ..add(DatabaseEvent.selectRace(race));
        },
        verify: (bloc) {
          // Stages populated only when race is selected
          expect(bloc.state.stages.length, 5);
          expect(bloc.state.stages.last.name, stage.name);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Upsert stage (new)',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) {
          bloc
            ..add(DatabaseEvent.upsertStage(name: stage.name, raceId: race.id))
            ..add(DatabaseEvent.selectRace(race));
        },
        verify: (bloc) {
          expect(bloc.state.stages.length, 5);
          expect(bloc.state.stages.last.name, stage.name);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Upsert stage (update)',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) {
          bloc
            ..add(
              DatabaseEvent.upsertStage(
                id: stage.id,
                name: stage.name,
                raceId: race.id,
              ),
            )
            ..add(DatabaseEvent.selectRace(race));
        },
        verify: (bloc) {
          expect(bloc.state.stages.length, 4);
          expect(bloc.state.stages.first.name, stage.name);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Delete stage',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) {
          bloc
            ..add(
              DatabaseEvent.deleteStage(stage.id),
            )
            ..add(DatabaseEvent.selectRace(race));
        },
        verify: (bloc) {
          expect(bloc.state.stages.length, 3);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Get stages',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) {
          bloc.add(
            // Emitted even when race not selected
            DatabaseEvent.getStages(race.id),
          );
        },
        verify: (bloc) {
          expect(bloc.state.stages.length, 4);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Select stage',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
          stage = const Stage(
            id: 2,
            raceId: 1,
            name: 'name',
            isActive: true,
            isDeleted: false,
          );
        },
        build: () => bloc,
        act: (bloc) {
          bloc.add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(settingsProvider.settings.stageId, stage.id);
          // We do not selected race at this time
          expect(bloc.state.stages.length, 0);
          expect(bloc.state.stage?.id, stage.id);
          expect(bloc.state.participants.length, 79);
          // At second stage we start at midnight, so there are always at least one number on trace
          expect(bloc.state.numbersOnTrace.isNotEmpty, true);
          expect(bloc.state.finishes.length, 0);
        },
      );

      // blocTest<DatabaseBloc, DatabaseState>(
      //   'Get participants at start',
      //   setUp: () {
      //     bloc = DatabaseBloc(
      //       database: db,
      //       settingsProvider: settingsProvider,
      //       fileProvider: fileProvider,
      //     );
      //   },
      //   build: () => bloc,
      //   act: (bloc) {
      //     // At third stage we starts at 12:00:00
      //     bloc.add( DatabaseEvent.getParticipantsAtStart(stage.id));
      //   },
      //   verify: (bloc) {
      //     expectLater(bloc.state.participants.length, 79);
      //     expectLater(bloc.state.participants.first.startTime, '12:00:00');
      //   },
      // );

      blocTest<DatabaseBloc, DatabaseState>(
        'Create race from file',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
          final startTimes = <String, String>{
            'stage1': '10:10:10',
            'stage2': '10:10:10',
            'stage3': '10:10:10',
            'stage4': '10:10:10',
            'stage5': '10:10:10',
          };
          final startItem = StartItemCsv(
            number: 1,
            name: 'name',
            startTimes: startTimes,
          );
          raceCsv = RaceCsv(
            fileName: 'fileName',
            stageNames: ['stage1', 'stage2', 'stage3', 'stage4', 'stage5'],
            startItems: [
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
            ],
          );
          when(() => fileProvider.getRaceFromFile())
              .thenAnswer((_) => Future.value(raceCsv));
        },
        build: () => bloc,
        act: (bloc) {
          bloc.add(const DatabaseEvent.createRaceFromFile());
        },
        verify: (bloc) {
          expect(bloc.state.race?.id, 3);
          expect(bloc.state.stages.length, 5);
          expect(bloc.state.stages.last.name, 'stage5');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Create stages from file',
        setUp: () {
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
          final startTimes = <String, String>{
            'stage1': '10:10:10',
            'stage2': '10:10:10',
            'stage3': '10:10:10',
            'stage4': '10:10:10',
            'stage5': '10:10:10',
          };
          final startItem = StartNumberAndTimesCsv(
            number: 1,
            startTimes: startTimes,
          );
          stagesCsv = StagesCsv(
            stageNames: ['stage1', 'stage2', 'stage3', 'stage4', 'stage5'],
            startItems: [
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
              startItem,
            ],
          );
          when(() => fileProvider.getStagesFromFile())
              .thenAnswer((_) => Future.value(stagesCsv));
        },
        build: () => bloc,
        act: (bloc) {
          bloc
            ..add(DatabaseEvent.createStagesFromFile(raceId: race.id))
            ..add(DatabaseEvent.selectRace(race));
        },
        verify: (bloc) {
          expect(bloc.state.stages.length, 9);
          expect(bloc.state.stages.last.name, 'stage5');
        },
      );
    },
  );
}
