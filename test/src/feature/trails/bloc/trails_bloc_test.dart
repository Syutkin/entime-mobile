// ignore_for_file: avoid_redundant_argument_values

import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late AppDatabase db;

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

  group('TrailsBloc tests', () {
    late int trailId;
    late int trackId;

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
}
