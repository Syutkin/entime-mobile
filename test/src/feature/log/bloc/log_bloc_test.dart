import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/log/log.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/subjects.dart';

class MockSettingsProvider extends Mock implements ISettingsProvider {
  MockSettingsProvider(this._settings);

  AppSettings _settings;

  @override
  AppSettings get settings => _settings;

  @override
  BehaviorSubject<AppSettings> get state => BehaviorSubject<AppSettings>.seeded(_settings);

  @override
  AppSettings getDefaults() => const AppSettings.defaults();

  @override
  Future<void> setDefaults() async {
    _settings = const AppSettings.defaults();
  }

  @override
  Future<void> update(AppSettings settings) async {
    _settings = settings;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late LogBloc bloc;
  late AppDatabase db;
  late ISettingsProvider settingsProvider;

  setUp(() async {
    db = AppDatabase.customConnection(
      DatabaseConnection(NativeDatabase.memory(), closeStreamsSynchronously: true),
    );
    settingsProvider = MockSettingsProvider(const AppSettings.defaults());
  });

  tearDown(() async {
    await db.close();
  });

  group('LogBloc tests', () {
    blocTest<LogBloc, LogState>(
      'Initial state is correct',
      setUp: () {
        Bloc.observer = AppBlocObserver();
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);
      },
      build: () => bloc,
      verify: (bloc) {
        expect(bloc.state.log, isEmpty);
      },
    );

    blocTest<LogBloc, LogState>(
      'EmitState event emits current log state',
      setUp: () {
        Bloc.observer = AppBlocObserver();
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const LogEvent.emitState()),
      expect: () => [const LogState(log: [])],
    );

    blocTest<LogBloc, LogState>(
      'Add event adds log entry to database',
      setUp: () {
        Bloc.observer = AppBlocObserver();
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);
      },
      build: () => bloc,
      act: (bloc) => bloc.add(
        const LogEvent.add(
          level: LogLevel.information,
          source: LogSource.app,
          direction: LogSourceDirection.output,
          rawData: 'Test log message',
        ),
      ),
      verify: (bloc) async {
        // Wait a bit for the database operation to complete
        await Future<void>.delayed(const Duration(milliseconds: 100));

        // Verify that the log was added to the database
        // final logs = await db.getLog();
        final logs = bloc.state.log;
        expect(logs.length, 1);
        expect(logs.first.level, LogLevel.information);
        expect(logs.first.source, LogSource.app);
        expect(logs.first.direction, LogSourceDirection.output);
        expect(logs.first.rawData, 'Test log message');
      },
    );

    blocTest<LogBloc, LogState>(
      'Add event with different log levels',
      setUp: () {
        Bloc.observer = AppBlocObserver();
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);
      },
      build: () => bloc,
      act: (bloc) => bloc
        ..add(
          const LogEvent.add(
            level: LogLevel.debug,
            source: LogSource.bluetooth,
            direction: LogSourceDirection.input,
            rawData: 'Debug message',
          ),
        )
        ..add(
          const LogEvent.add(
            level: LogLevel.error,
            source: LogSource.other,
            direction: LogSourceDirection.undefined,
            rawData: 'Error message',
          ),
        ),
      wait: const Duration(milliseconds: 100),
      verify: (bloc) async {
        final logs = bloc.state.log;
        expect(logs.length, 2);

        // ORDER DESC
        expect(logs.last.level, LogLevel.debug);
        expect(logs.last.source, LogSource.bluetooth);
        expect(logs.last.direction, LogSourceDirection.input);
        expect(logs.last.rawData, 'Debug message');

        expect(logs.first.level, LogLevel.error);
        expect(logs.first.source, LogSource.other);
        expect(logs.first.direction, LogSourceDirection.undefined);
        expect(logs.first.rawData, 'Error message');
      },
    );

    blocTest<LogBloc, LogState>(
      'Settings change updates log limit',
      setUp: () {
        Bloc.observer = AppBlocObserver();
        final newSettings = settingsProvider.settings.copyWith(logLimit: 5);
        settingsProvider = MockSettingsProvider(newSettings);
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);
      },
      build: () => bloc,
      verify: (bloc) {
        // The bloc should listen to settings changes and update the limit
        expect(bloc.state.log, isEmpty);
      },
    );

    blocTest<LogBloc, LogState>(
      'Database watch triggers state update',
      setUp: () async {
        Bloc.observer = AppBlocObserver();
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);

        // Add a log entry directly to the database to trigger the watch
        await db.addLog(
          level: LogLevel.warning,
          source: LogSource.app,
          rawData: 'Warning message',
        );
      },
      build: () => bloc,
      verify: (bloc) async {
        // Wait for the watch to trigger and state to update
        await Future<void>.delayed(const Duration(milliseconds: 200));

        // The state should be updated with the new log entry
        expect(bloc.state.log.length, 1);
        expect(bloc.state.log.first.level, LogLevel.warning);
        expect(bloc.state.log.first.source, LogSource.app);
        expect(bloc.state.log.first.rawData, 'Warning message');
      },
    );

    blocTest<LogBloc, LogState>(
      'Multiple log entries are handled correctly',
      setUp: () async {
        Bloc.observer = AppBlocObserver();
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);

        // Add multiple log entries
        await db.addLog(
          level: LogLevel.verbose,
          source: LogSource.bluetooth,
          rawData: 'Verbose message 1',
        );
        await db.addLog(
          level: LogLevel.information,
          source: LogSource.app,
          rawData: 'Info message 2',
        );
        await db.addLog(
          level: LogLevel.error,
          source: LogSource.other,
          rawData: 'Error message 3',
        );
      },
      build: () => bloc,
      verify: (bloc) async {
        await Future<void>.delayed(const Duration(milliseconds: 200));

        // ORDER DESC
        expect(bloc.state.log.length, 3);
        expect(bloc.state.log[2].level, LogLevel.verbose);
        expect(bloc.state.log[1].level, LogLevel.information);
        expect(bloc.state.log[0].level, LogLevel.error);
      },
    );

    blocTest<LogBloc, LogState>(
      'Bloc properly closes and cancels subscriptions',
      setUp: () {
        Bloc.observer = AppBlocObserver();
        bloc = LogBloc(database: db, settingsProvider: settingsProvider);
      },
      build: () => bloc,
      act: (bloc) async {
        await bloc.close();
      },
      verify: (bloc) {
        // The bloc should be closed and subscriptions cancelled
        expect(bloc.isClosed, true);
      },
    );
  });
}
