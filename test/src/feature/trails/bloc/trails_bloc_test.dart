// ignore_for_file: depend_on_referenced_packages, avoid_redundant_argument_values

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:bloc_test/bloc_test.dart';
import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:entime/src/constants/config.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

import '../../../../helpers/fake_path_provider_platform.dart';

void _noopIsolateEntry(Object? _) {}

Future<Isolate> _throwingIsolateSpawner(
  void Function(Map<String, Object?>) entryPoint,
  Map<String, Object?> message,
) {
  throw Exception('spawn failed');
}

Future<Isolate> _errorMessageIsolateSpawner(
  void Function(Map<String, Object?>) entryPoint,
  Map<String, Object?> message,
) async {
  final sendPort = message['sendPort']! as SendPort;
  sendPort.send(<String, Object?>{
    'type': 'error',
    'token': message['token'],
    'message': 'boom',
    'stack': 'stack',
  });
  return Isolate.spawn<Object?>(_noopIsolateEntry, null);
}

Future<Isolate> _doneWithoutTrackIdSpawner(
  void Function(Map<String, Object?>) entryPoint,
  Map<String, Object?> message,
) async {
  final sendPort = message['sendPort']! as SendPort;
  sendPort.send(<String, Object?>{
    'type': 'done',
    'token': message['token'],
  });
  return Isolate.spawn<Object?>(_noopIsolateEntry, null);
}

Future<Isolate> _loadEntryWithBadPathSpawner(
  void Function(Map<String, Object?>) entryPoint,
  Map<String, Object?> message,
) async {
  final badMessage = Map<String, Object?>.from(message)
    ..['filePath'] = path.join(Directory.systemTemp.path, 'missing_${DateTime.now().microsecondsSinceEpoch}');
  entryPoint(badMessage);
  return Isolate.spawn<Object?>(_noopIsolateEntry, null);
}

Future<File> _writeTempFile(Directory dir, String name, List<int> bytes) async {
  final file = File(path.join(dir.path, name));
  await file.writeAsBytes(bytes, flush: true);
  return file;
}

Future<TrailsState> _collectStatesUntil(
  TrailsBloc bloc,
  List<TrailsState> states, {
  required FutureOr<void> Function() action,
  required bool Function(TrailsState state, List<TrailsState> states) predicate,
}) async {
  final completer = Completer<TrailsState>();
  late StreamSubscription<TrailsState> subscription;
  subscription = bloc.stream.listen((state) {
    states.add(state);
    if (!completer.isCompleted) {
      if (predicate(state, states)) {
        completer.complete(state);
      }
    }
  });

  await action();
  final result = await completer.future.timeout(const Duration(seconds: 3));
  await subscription.cancel();
  return result;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('TrailsBloc tests', () {
    late AppDatabase db;
    late int trailId;
    late int trackId;

    setUp(() {
      db = AppDatabase.customConnection(
        DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
    });

    tearDown(() async {
      await db.close();
    });

    blocTest<TrailsBloc, TrailsState>(
      'Initial emission from watch',
      build: () => TrailsBloc(database: db),
      wait: const Duration(milliseconds: 10),
      expect: () => [
        isA<Initialized>()
            .having((state) => state.trails.isEmpty, 'trails empty', true)
            .having((state) => state.track, 'track', null),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'GetTrails preserves loading progress',
      setUp: () async {
        await db.addTrail(
          name: 'Trail 1',
          distance: 1000,
          elevation: 100,
          url: 'u',
          description: 'd',
        );
      },
      build: () => TrailsBloc(database: db),
      seed: () => const TrailsState.loadingTrack(trails: [], progress: 0.42),
      wait: const Duration(milliseconds: 20),
      expect: () => [
        isA<LoadingTrack>()
            .having((state) => state.trails.length, 'trails length', 1)
            .having((state) => state.progress, 'progress', 0.42),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'GetTrails preserves saving progress',
      setUp: () async {
        await db.addTrail(
          name: 'Trail 1',
          distance: 1000,
          elevation: 100,
          url: 'u',
          description: 'd',
        );
      },
      build: () => TrailsBloc(database: db),
      seed: () => const TrailsState.savingTrack(trails: [], progress: 0.7),
      wait: const Duration(milliseconds: 20),
      expect: () => [
        isA<SavingTrack>()
            .having((state) => state.trails.length, 'trails length', 1)
            .having((state) => state.progress, 'progress', 0.7),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Add trail (no file path)',
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(
          const TrailsEvent.addTrail(
            name: 'Trail 1',
            distance: 1000,
            elevation: 100,
            url: 'u',
            description: 'd',
          ),
        );
      },
      skip: 1,
      wait: const Duration(milliseconds: 10),
      expect: () => [
        isA<Initialized>()
            .having((state) => state.trails.length, 'trails length', 1)
            .having((state) => state.trails.first.name, 'name', 'Trail 1')
            .having((state) => state.trails.first.distance, 'distance', 1000)
            .having((state) => state.trails.first.elevation, 'elevation', 100),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Update trail (no file path, no delete)',
      setUp: () async {
        trailId = await db.addTrail(
          name: 'Trail 1',
          distance: 1000,
          elevation: 100,
          url: 'u',
          description: 'd',
        );
      },
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(
          TrailsEvent.updateTrail(
            id: trailId,
            name: 'New',
            distance: 2000,
            elevation: 200,
            url: 'u2',
            description: 'd2',
            fileId: null,
            deleteTrack: false,
          ),
        );
      },
      skip: 1,
      wait: const Duration(milliseconds: 10),
      expect: () => [
        isA<Initialized>()
            .having((state) => state.trails.length, 'trails length', 1)
            .having((state) => state.trails.first.name, 'name', 'New')
            .having((state) => state.trails.first.distance, 'distance', 2000)
            .having((state) => state.trails.first.elevation, 'elevation', 200)
            .having((state) => state.trails.first.url, 'url', 'u2')
            .having((state) => state.trails.first.description, 'description', 'd2'),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Update trail with deleteTrack clears file id',
      setUp: () async {
        trackId = await db.addTrack(
          TrackFile(
            id: -1,
            name: 'track',
            extension: 'gpx',
            size: 2,
            description: null,
            hashSha1: 'hash',
            data: Uint8List.fromList([1, 2]),
            timestamp: DateTime(2024, 1, 1),
          ),
        );
        trailId = await db.addTrail(
          name: 'Trail 1',
          distance: 1000,
          elevation: 100,
          url: 'u',
          description: 'd',
          fileId: trackId,
        );
      },
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(
          TrailsEvent.updateTrail(
            id: trailId,
            name: 'Trail 1',
            distance: 1000,
            elevation: 100,
            url: 'u',
            description: 'd',
            fileId: trackId,
            deleteTrack: true,
          ),
        );
      },
      skip: 1,
      wait: const Duration(milliseconds: 10),
      expect: () => [
        isA<Initialized>(),
        isA<Initialized>()
            .having((state) => state.trails.length, 'trails length', 1)
            .having((state) => state.trails.first.fileId, 'fileId', null),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Delete trail hides it from list',
      setUp: () async {
        trailId = await db.addTrail(
          name: 'Trail 1',
          distance: 1000,
          elevation: 100,
          url: 'u',
          description: 'd',
        );
      },
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(TrailsEvent.deleteTrail(trailId));
      },
      skip: 1,
      wait: const Duration(milliseconds: 10),
      expect: () => [
        isA<Initialized>().having((state) => state.trails.isEmpty, 'trails empty', true),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Emit track then unload track',
      setUp: () async {
        await db.addTrail(
          name: 'Trail 1',
          distance: 1000,
          elevation: 100,
          url: 'u',
          description: 'd',
        );
      },
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        final track = TrackFile(
          id: -1,
          name: 'track',
          extension: 'gpx',
          size: 0,
          description: null,
          hashSha1: 'hash',
          data: Uint8List(0),
          timestamp: DateTime(2024, 1, 1),
        );
        bloc.add(TrailsEvent.emitTrack(track: track));
        bloc.add(const TrailsEvent.unloadTrack());
      },
      skip: 1,
      expect: () => [
        isA<Initialized>()
            .having((state) => state.trails.length, 'trails length', 1)
            .having((state) => state.track, 'track', isNotNull),
        isA<Initialized>()
            .having((state) => state.trails.length, 'trails length', 1)
            .having((state) => state.track, 'track', null),
      ],
    );
  });

  group('TrailsBloc integration (file-DB + isolate)', () {
    late AppDatabase db;
    late Directory tempDir;
    late String documentsPath;
    late String tempPath;
    late PathProviderPlatform previousPathProvider;
    late int originalUploadMaxSize;

    setUp(() async {
      originalUploadMaxSize = uploadMaxSize;
      previousPathProvider = PathProviderPlatform.instance;
      tempDir = await Directory.systemTemp.createTemp('trails_bloc_test_');
      documentsPath = path.join(tempDir.path, 'documents');
      tempPath = path.join(tempDir.path, 'temp');
      await Directory(documentsPath).create(recursive: true);
      await Directory(tempPath).create(recursive: true);

      PathProviderPlatform.instance = FakePathProviderPlatform(
        documentsPath: documentsPath,
        temporaryPath: tempPath,
      );

      final dbPath = path.join(documentsPath, 'database.sqlite');
      db = AppDatabase.customConnection(
        DatabaseConnection(
          NativeDatabase(File(dbPath)),
          closeStreamsSynchronously: true,
        ),
      );
    });

    tearDown(() async {
      uploadMaxSize = originalUploadMaxSize;
      PathProviderPlatform.instance = previousPathProvider;
      await db.close();
      await tempDir.delete(recursive: true);
    });

    blocTest<TrailsBloc, TrailsState>(
      'Load track success (small file)',
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        final bytes = utf8.encode('hello');
        final file = await _writeTempFile(tempDir, 'trail.gpx', bytes);
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(TrailsEvent.loadTrack(filePath: file.path));
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => [
        isA<LoadingTrack>().having((state) => state.progress, 'progress', 0),
        isA<LoadingTrack>().having((state) => state.progress, 'progress', 1.0),
        isA<Initialized>()
            .having((state) => state.track, 'track', isNotNull)
            .having((state) => state.track?.name, 'name', 'trail')
            .having((state) => state.track?.extension, 'extension', 'gpx')
            .having((state) => state.track?.size, 'size', 5)
            .having(
              (state) => state.track?.hashSha1,
              'hash',
              sha1.convert(utf8.encode('hello')).toString(),
            ),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Load track oversize emits empty hash',
      setUp: () {
        uploadMaxSize = 1;
      },
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        final bytes = <int>[1, 2];
        final file = await _writeTempFile(tempDir, 'big.gpx', bytes);
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(TrailsEvent.loadTrack(filePath: file.path));
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => [
        isA<LoadingTrack>().having((state) => state.progress, 'progress', 0),
        isA<LoadingTrack>().having((state) => state.progress, 'progress', 1.0),
        isA<Initialized>()
            .having((state) => state.track, 'track', isNotNull)
            .having((state) => state.track?.hashSha1, 'hash', '')
            .having((state) => state.track?.size, 'size', 2),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Load track missing file emits nothing',
      build: () => TrailsBloc(database: db),
      act: (bloc) async {
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(TrailsEvent.loadTrack(filePath: path.join(tempDir.path, 'missing.gpx')));
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => <TrailsState>[],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Load track start isolate failure emits unload',
      build: () => TrailsBloc(
        database: db,
        loadIsolateSpawner: _throwingIsolateSpawner,
      ),
      act: (bloc) async {
        final file = await _writeTempFile(tempDir, 'load_fail.gpx', <int>[1, 2]);
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(TrailsEvent.loadTrack(filePath: file.path));
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => [
        isA<LoadingTrack>().having((state) => state.progress, 'progress', 0),
        isA<Initialized>().having((state) => state.track, 'track', null),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Load track isolate error message triggers unload',
      build: () => TrailsBloc(
        database: db,
        loadIsolateSpawner: _errorMessageIsolateSpawner,
      ),
      act: (bloc) async {
        final file = await _writeTempFile(tempDir, 'load_error.gpx', <int>[1, 2]);
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(TrailsEvent.loadTrack(filePath: file.path));
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => [
        isA<LoadingTrack>().having((state) => state.progress, 'progress', 0),
        isA<Initialized>().having((state) => state.track, 'track', null),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Load track isolate entry catch sends error',
      build: () => TrailsBloc(
        database: db,
        loadIsolateSpawner: _loadEntryWithBadPathSpawner,
      ),
      act: (bloc) async {
        final file = await _writeTempFile(tempDir, 'load_entry_fail.gpx', <int>[1, 2]);
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(TrailsEvent.loadTrack(filePath: file.path));
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => [
        isA<LoadingTrack>().having((state) => state.progress, 'progress', 0),
        isA<Initialized>().having((state) => state.track, 'track', null),
      ],
    );

    test('Load track directory path does nothing', () async {
      final bloc = TrailsBloc(database: db);
      final badDir = await Directory(path.join(tempDir.path, 'not_a_file')).create();

      bloc.add(TrailsEvent.loadTrack(filePath: badDir.path));
      await Future<void>.delayed(const Duration(milliseconds: 200));

      expect(bloc.state, isA<Initialized>().having((state) => state.track, 'track', null));
      await bloc.close();
    });

    test('Save track success (addTrail with filePath)', () async {
      final bloc = TrailsBloc(database: db);
      final states = <TrailsState>[];
      final file = await _writeTempFile(tempDir, 'save.gpx', <int>[1, 2]);

      final lastState = await _collectStatesUntil(
        bloc,
        states,
        action: () {
          bloc.add(
            TrailsEvent.addTrail(
              name: 'Trail 1',
              distance: 1000,
              elevation: 100,
              url: 'u',
              description: 'd',
              filePath: file.path,
            ),
          );
        },
        predicate: (state, _) {
          return state is Initialized && state.trails.length == 1 && state.trails.first.fileId != null;
        },
      );
      await bloc.close();
      final last = lastState as Initialized;

      final savingStates = states.whereType<SavingTrack>().toList();
      expect(savingStates.isNotEmpty, true);
      expect(savingStates.first.progress, 0);
      expect(savingStates.any((state) => state.progress == 0.95), true);
      expect(savingStates.any((state) => state.progress == 1.0), true);

      expect(last.trails.length, 1);
      expect(last.trails.first.fileId, isNotNull);

      final track = await db.getTrack(last.trails.first.fileId!);
      expect(track, isNotNull);
    });

    test('Save track oversize emits failure and keeps list empty', () async {
      uploadMaxSize = 1;
      final bloc = TrailsBloc(database: db);
      final states = <TrailsState>[];
      final file = await _writeTempFile(tempDir, 'too_big.gpx', <int>[1, 2]);

      await _collectStatesUntil(
        bloc,
        states,
        action: () {
          bloc.add(
            TrailsEvent.addTrail(
              name: 'Trail 1',
              distance: 1000,
              elevation: 100,
              url: 'u',
              description: 'd',
              filePath: file.path,
            ),
          );
        },
        predicate: (state, _) => state is Initialized && state.trails.isEmpty,
      );
      await bloc.close();

      final savingStates = states.whereType<SavingTrack>().toList();
      expect(savingStates.isNotEmpty, true);
      expect(savingStates.first.progress, 0);

      final last = states.whereType<Initialized>().last;
      expect(last.trails.isEmpty, true);
    });

    blocTest<TrailsBloc, TrailsState>(
      'Save track start isolate failure emits trackSaveFailed',
      build: () => TrailsBloc(
        database: db,
        saveIsolateSpawner: _throwingIsolateSpawner,
      ),
      act: (bloc) async {
        final file = await _writeTempFile(tempDir, 'save_fail.gpx', <int>[1, 2]);
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(
          TrailsEvent.addTrail(
            name: 'Trail 1',
            distance: 1000,
            elevation: 100,
            url: 'u',
            description: 'd',
            filePath: file.path,
          ),
        );
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => [
        isA<SavingTrack>().having((state) => state.progress, 'progress', 0),
        isA<Initialized>().having((state) => state.trails.isEmpty, 'trails empty', true),
      ],
    );

    blocTest<TrailsBloc, TrailsState>(
      'Save track done without trackId emits trackSaveFailed',
      build: () => TrailsBloc(
        database: db,
        saveIsolateSpawner: _doneWithoutTrackIdSpawner,
      ),
      act: (bloc) async {
        final file = await _writeTempFile(tempDir, 'save_done.gpx', <int>[1, 2]);
        if (bloc.state is! Initialized) {
          await bloc.stream.firstWhere((state) => state is Initialized);
        }
        bloc.add(
          TrailsEvent.addTrail(
            name: 'Trail 1',
            distance: 1000,
            elevation: 100,
            url: 'u',
            description: 'd',
            filePath: file.path,
          ),
        );
      },
      skip: 1,
      wait: const Duration(milliseconds: 200),
      expect: () => [
        isA<SavingTrack>().having((state) => state.progress, 'progress', 0),
        isA<Initialized>().having((state) => state.trails.isEmpty, 'trails empty', true),
      ],
    );

    test('Save track error emits failure and keeps list empty', () async {
      final bloc = TrailsBloc(database: db);
      final states = <TrailsState>[];
      final badDir = await Directory(path.join(tempDir.path, 'save_error')).create();

      await _collectStatesUntil(
        bloc,
        states,
        action: () {
          bloc.add(
            TrailsEvent.addTrail(
              name: 'Trail 1',
              distance: 1000,
              elevation: 100,
              url: 'u',
              description: 'd',
              filePath: badDir.path,
            ),
          );
        },
        predicate: (state, allStates) {
          final hasSaving = allStates.any((s) => s is SavingTrack);
          return state is Initialized && state.trails.isEmpty && hasSaving;
        },
      );
      await bloc.close();

      final savingStates = states.whereType<SavingTrack>().toList();
      expect(savingStates.isNotEmpty, true);
      final last = states.whereType<Initialized>().last;
      expect(last.trails.isEmpty, true);
    });

    test('Save track error when db is corrupt keeps list empty', () async {
      final corruptDocumentsPath = path.join(tempDir.path, 'corrupt_documents');
      await Directory(corruptDocumentsPath).create(recursive: true);
      await File(path.join(corruptDocumentsPath, 'database.sqlite'))
          .writeAsBytes(utf8.encode('not a sqlite db'), flush: true);

      final previousProvider = PathProviderPlatform.instance;
      PathProviderPlatform.instance = FakePathProviderPlatform(
        documentsPath: corruptDocumentsPath,
        temporaryPath: tempPath,
      );

      final bloc = TrailsBloc(database: db);
      final states = <TrailsState>[];
      final file = await _writeTempFile(tempDir, 'save_corrupt.gpx', <int>[1, 2]);

      await _collectStatesUntil(
        bloc,
        states,
        action: () {
          bloc.add(
            TrailsEvent.addTrail(
              name: 'Trail 1',
              distance: 1000,
              elevation: 100,
              url: 'u',
              description: 'd',
              filePath: file.path,
            ),
          );
        },
        predicate: (state, allStates) {
          final hasSaving = allStates.any((s) => s is SavingTrack);
          return state is Initialized && state.trails.isEmpty && hasSaving;
        },
      );

      await bloc.close();
      PathProviderPlatform.instance = previousProvider;

      final savingStates = states.whereType<SavingTrack>().toList();
      expect(savingStates.isNotEmpty, true);
      final last = states.whereType<Initialized>().last;
      expect(last.trails.isEmpty, true);
    });

    test('Save track success (updateTrail with filePath)', () async {
      await db.addTrail(
        name: 'Old',
        distance: 10,
        elevation: 1,
        url: 'old',
        description: 'old',
      );

      final bloc = TrailsBloc(database: db);
      final states = <TrailsState>[];
      final file = await _writeTempFile(tempDir, 'update.gpx', <int>[1, 2]);
      final trails = await db.getTrails().get();
      final id = trails.first.id;

      final lastState = await _collectStatesUntil(
        bloc,
        states,
        action: () {
          bloc.add(
            TrailsEvent.updateTrail(
              id: id,
              name: 'New',
              distance: 2000,
              elevation: 200,
              url: 'u2',
              description: 'd2',
              filePath: file.path,
            ),
          );
        },
        predicate: (state, _) {
          return state is Initialized &&
              state.trails.length == 1 &&
              state.trails.first.fileId != null &&
              state.trails.first.name == 'New';
        },
      );
      await bloc.close();
      final last = lastState as Initialized;

      final savingStates = states.whereType<SavingTrack>().toList();
      expect(savingStates.isNotEmpty, true);
      expect(savingStates.first.progress, 0);
      expect(savingStates.any((state) => state.progress == 0.95), true);
      expect(savingStates.any((state) => state.progress == 1.0), true);

      expect(last.trails.length, 1);
      expect(last.trails.first.fileId, isNotNull);
      expect(last.trails.first.name, 'New');
      expect(last.trails.first.distance, 2000);
      expect(last.trails.first.elevation, 200);
      expect(last.trails.first.url, 'u2');
      expect(last.trails.first.description, 'd2');
    });
  });
}
