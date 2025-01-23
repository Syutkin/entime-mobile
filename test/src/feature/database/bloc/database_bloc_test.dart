// ignore_for_file: prefer_const_constructors, strict_raw_type

import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/common/logger/logger.dart';
import 'package:entime/src/feature/csv/csv.dart';
import 'package:entime/src/feature/csv/model/stages_csv.dart';
import 'package:entime/src/feature/csv/model/start_number_and_times_csv.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
        'Initialize with race selected',
        setUp: () async {
          Bloc.observer = AppBlocObserver();
          await settingsProvider
              .update(settingsProvider.settings.copyWith(raceId: 1));
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
          // Race selected
          expect(bloc.state.stages.length, 4);
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
          // Race selected
          expect(bloc.state.race != null, true);
          // Stage not selected
          expect(bloc.state.stage, null);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Initialize with only stage selected, '
        'nothing selected because stage was not in list',
        setUp: () async {
          Bloc.observer = AppBlocObserver();
          await settingsProvider
              .update(settingsProvider.settings.copyWith(stageId: 1));
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

      // ToDo: this
      // blocTest<DatabaseBloc, DatabaseState>(
      //   'Initialize with race and stage selected',
      //   setUp: () async {
      //     Bloc.observer = AppBlocObserver();
      //     await settingsProvider.update(
      //         settingsProvider.settings.copyWith(raceId: 1, stageId: 1),);
      //     bloc = DatabaseBloc(
      //       database: db,
      //       settingsProvider: settingsProvider,
      //       fileProvider: fileProvider,
      //     );
      //   },
      //   build: () => bloc,
      //   act: (bloc) async {
      //     // bloc.add(const DatabaseEvent.initialize());
      //     await Future<void>.delayed(Duration.zero);
      //     bloc.add(const DatabaseEvent.initialize());
      //   },
      //   verify: (bloc) async {
      //     await Future<void>.delayed(Duration.zero);
      //     // Two races
      //     expect(bloc.state.races.length, 2);
      //     expect(bloc.state.stages.length, 4);
      //     expect(bloc.state.categories.length, 0);
      //     // Total riders
      //     expect(bloc.state.riders.length, 79);
      //     // Race not selected
      //     expect(bloc.state.participants.length, 79);
      //     // Stage not selected
      //     expect(bloc.state.starts.length, 0);
      //     // Stage not selected
      //     expect(bloc.state.finishes.length, 0);
      //     // Race not selected
      //     expect(bloc.state.race?.id, 1);
      //     // Stage not selected
      //     expect(bloc.state.stage?.id, 1);
      //   },
      // );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add race',
        setUp: () {
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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

      blocTest<DatabaseBloc, DatabaseState>(
        'Get participants at start',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          await Future<void>.delayed(Duration.zero);
          // At third stage we starts at 12:00:00
          bloc.add(const DatabaseEvent.getParticipantsAtStart(3));
        },
        verify: (bloc) {
          expect(bloc.state.participants.length, 79);
          expect(bloc.state.participants.first.startTime, '12:00:00');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add start number',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(DatabaseEvent.selectStage(stage))
            ..add(
              DatabaseEvent.addStartNumber(
                stage: stage,
                number: 1,
                startTime: '09:00:00',
              ),
            );
        },
        verify: (bloc) {
          expect(bloc.state.participants.first.number, 1);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add start number to existing start time',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc.add(
            DatabaseEvent.addStartNumber(
              stage: stage,
              number: 1,
              startTime: '10:00:00',
            ),
          );
        },
        verify: (bloc) {
          bloc.state.notification?.mapOrNull(
            updateStartNumber: (notification) {
              expect(notification.number, 1);
              expect(notification.startTime, '10:00:00');
            },
          );
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Update rider',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc.add(DatabaseEvent.updateRider(riderId: 1, name: 'name'));
        },
        verify: (bloc) {
          expect(bloc.state.riders.first.name, 'name');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Update racer',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.updateRacer(
                riderId: 1,
                participantId: 1,
                name: 'name',
                category: 'category',
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.riders.first.name, 'name');
          expect(bloc.state.participants.first.name, 'name');
          expect(bloc.state.participants.first.category, 'category');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Update starting info',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.updateStartingInfo(
                stageId: stage.id,
                participantId: 1,
                startTime: '05:00:00',
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.participants.first.startTime, '05:00:00');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Update manual start time',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.updateManualStartTime(
                stageId: stage.id,
                timestamp: DateTime(2020, 1, 1, 10, 0, 2, 123),
                ntpOffset: 111,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          // Add offset to manual start time
          expect(bloc.state.participants.first.manualStartTime, '10:00:02,234');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Set status for start id',
        setUp: () async {
          Bloc.observer = AppBlocObserver();
          await settingsProvider
              .update(settingsProvider.settings.copyWith(showDNS: true));
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.setStatusForStartId(
                startId: 1,
                status: ParticipantStatus.dns,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(
            bloc.state.participants.first.statusId,
            ParticipantStatus.dns.index,
          );
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Update automatic correction',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.updateAutomaticCorrection(
                stageId: stage.id,
                startTime: '10:00:01',
                correction: 1000,
                timestamp: DateTime.now(),
                ntpOffset: 123,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.participants.first.automaticCorrection, 1000);
          expect(bloc.state.participants.first.ntpOffset, 123);
          expect(bloc.state.participants.first.startTime, '10:00:00');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add finish time',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.addFinishTime(
                stage: stage,
                finishTime: '11:11:11,123',
                timestamp: DateTime.now(),
                ntpOffset: 123,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.finishes.length, 1);
          expect(bloc.state.finishes.first.finishTime, '11:11:11,123');
          expect(bloc.state.finishes.first.ntpOffset, 123);
          expect(bloc.state.finishes.first.isManual, false);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add finish time manual',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.finishes.length, 1);
          expect(bloc.state.finishes.first.finishTime.isNotEmpty, true);
          expect(bloc.state.finishes.first.ntpOffset, 123);
          expect(bloc.state.finishes.first.isManual, true);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Clear start results debug',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.updateAutomaticCorrection(
                stageId: stage.id,
                startTime: '10:00:01',
                correction: 1000,
                timestamp: DateTime.now(),
                ntpOffset: 123,
              ),
            )
            ..add(
              DatabaseEvent.clearStartResultsDebug(stage.id),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.participants.first.automaticCorrection, null);
          expect(bloc.state.participants.first.ntpOffset, null);
          expect(bloc.state.participants.first.timestamp, null);
          expect(bloc.state.participants.first.startTime, '10:00:00');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Clear finish results debug',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 1,
              ),
            )
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 2,
              ),
            )
            ..add(DatabaseEvent.clearFinishResultsDebug(stage.id))
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.finishes.length, 2);
          expect(bloc.state.finishes.first.number, null);
          expect(bloc.state.finishes.last.number, null);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Hide finish',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 1,
              ),
            )
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 2,
              ),
            )
            ..add(DatabaseEvent.hideFinish(id: 1))
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.finishes.first.isHidden, true);
          expect(bloc.state.finishes.last.isHidden, false);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Hide all finishes',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 1,
              ),
            )
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 2,
              ),
            )
            ..add(DatabaseEvent.hideAllFinishes(stage.id))
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.finishes.first.isHidden, true);
          expect(bloc.state.finishes.last.isHidden, true);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Clear number at finish',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 1,
              ),
            )
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
                number: 2,
              ),
            )
            ..add(DatabaseEvent.clearNumberAtFinish(stage: stage, number: 1))
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.finishes.first.number, null);
          expect(bloc.state.finishes.last.number, 2);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Set DNS for stage',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.setDNSForStage(
                stage: stage,
                number: 2,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.participants.first.number, 2);
          expect(
            bloc.state.participants.first.statusId,
            ParticipantStatus.dns.index,
          );
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Set DNF for stage',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.setDNFForStage(
                stage: stage,
                number: 2,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.participants.first.number, 2);
          expect(
            bloc.state.participants.first.statusId,
            ParticipantStatus.dnf.index,
          );
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Add number to finish',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.addFinishTimeManual(
                stageId: stage.id,
                timestamp: DateTime.now(),
                ntpOffset: 123,
              ),
            )
            ..add(
              DatabaseEvent.addNumberToFinish(
                stage: stage,
                finishId: 1,
                finishTime: '',
                number: 5,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.finishes.first.number, 5);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Get numbers on trace now',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc.add(
            DatabaseEvent.initialize(),
          );
          await Future<void>.delayed(Duration.zero);
          bloc.add(
            DatabaseEvent.getNumbersOnTraceNow(
              stageId: stage.id,
              dateTimeNow: DateTime(2020, 1, 1, 11, 11, 11),
            ),
          );
        },
        verify: (bloc) {
          expect(bloc.state.numbersOnTrace.length, 52);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Shift starts time',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(
              DatabaseEvent.shiftStartsTime(
                stageId: stage.id,
                minutes: 65,
              ),
            )
            ..add(DatabaseEvent.selectStage(stage));
        },
        verify: (bloc) {
          expect(bloc.state.participants.first.startTime, '11:05:00');
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Select awaiting number',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc.add(DatabaseEvent.selectAwaitingNumber(number: 12));
        },
        verify: (bloc) {
          expect(bloc.state.awaitingNumber, 12);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Deselect awaiting number',
        setUp: () {
          Bloc.observer = AppBlocObserver();
          bloc = DatabaseBloc(
            database: db,
            settingsProvider: settingsProvider,
            fileProvider: fileProvider,
          );
        },
        build: () => bloc,
        act: (bloc) async {
          bloc
            ..add(DatabaseEvent.selectAwaitingNumber(number: 12))
            ..add(DatabaseEvent.deselectAwaitingNumber());
        },
        verify: (bloc) {
          expect(bloc.state.awaitingNumber, null);
        },
      );

      blocTest<DatabaseBloc, DatabaseState>(
        'Create race from file',
        setUp: () {
          Bloc.observer = AppBlocObserver();
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
          Bloc.observer = AppBlocObserver();
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

class DebugBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

      logger.d('Event: $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('Bloc unknown error', error: error, stackTrace: stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.d('Transition: $transition');
  }
}
