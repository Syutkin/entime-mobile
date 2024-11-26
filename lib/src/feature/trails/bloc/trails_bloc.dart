import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;

import '../../../common/logger/logger.dart';
import '../../database/database.dart';

part 'trails_bloc.freezed.dart';

part 'trails_event.dart';

part 'trails_state.dart';

class TrailsBloc extends Bloc<TrailsEvent, TrailsState> {
  TrailsBloc({
    required AppDatabase database,
  })  : _db = database,
        super(const TrailsState.initial()) {
    _trailsSubscription = _db.getTrails().watch().listen((event) async {
      _trails = event;
      logger.t('TrailsBloc -> getTrails().watch()');
      add(const TrailsEvent.getTrails());
    });

    on<TrailsEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        getTrails: (_GetTrails event) async {
          emit(TrailsState.initialized(trails: _trails));
        },
        addTrail: (_AddTrail event) async {
          // await _db.addTrail(
          //   name: event.name,
          //   elevation: event.elevation,
          //   distance: event.distance,
          //   url: event.url,
          //   description: event.description,
          //   filePath: event.fileId,
          // );
        },
        updateTrail: (_UpdateTrail event) async {
          await _db.updateTrail(
            id: event.id,
            name: event.name,
            elevation: event.elevation,
            distance: event.distance,
            url: event.url,
            description: event.description,
            fileId: event.fileId,
          );
        },
        upsertTrail: (_UpsertTrail event) async {
          await _db.upsertTrail(
            id: event.id,
            name: event.name,
            elevation: event.elevation,
            distance: event.distance,
            url: event.url,
            description: event.description,
            fileId: event.fileId,
            isDeleted: event.isDeleted,
          );
        },
        deleteTrail: (_DeleteTrail event) async {
          await _db.deleteTrail(event.id);
        },
        loadTrack: (event) async {
          emit(TrailsState.loadingTrack(trails: _trails));
          final file = File(event.filePath);

          if (file.existsSync()) {
            try {
              // ToDo: расчитывать distance и elevation
              final name = path.basename(event.filePath);
              final extension = path.extension(event.filePath);
              final size = await file.length();
              final timestamp = DateTime.now().toUtc().toIso8601String();
              final data = <int>[];

              file.openRead().listen(data.addAll, onDone: () {
                final fileHash = sha1.convert(data);
                add(
                  TrailsEvent.emitTrack(
                    track: TrackFile(
                      id: -1,
                      name: name,
                      extension: extension,
                      size: size,
                      hashSha1: fileHash.toString(),
                      data: Uint8List(0),
                      timestamp: timestamp,
                    ),
                  ),
                );
              });

              // final sink = file.openRead().listen(
              //   (onData) {
              //     streamData += onData;
              //   },
              //   onDone: () {
              //     final fileHashStream = sha1.convert(streamData);
              //     print('fileHash == fileHashStream: ${fileHash == fileHashStream}');
              //     emit(
              //       TrailsState.initialized(
              //         trails: _trails,
              //         track: TrackFile(
              //           id: 1,
              //           name: name,
              //           size: size,
              //           hashSha1: fileHash.toString(),
              //           data: data,
              //           timestamp: timestamp,
              //         ),
              //       ),
              //     );
              //   },
              //   onError: (_) {
              //   },
              // );

              // await sink.cancel();

              // final trackId = await _db.managers.trackFiles.create(
              //   (row) => row(
              //     name: name,
              //     size: size,
              //     data: data,
              //     hashSha1: fileHash.toString(),
              //     extension: Value(extension),
              //     timestamp: timestamp,
              //   ),
              // );
              // emit(
              //   TrailsState.initialized(
              //     trails: _trails,
              //     track: TrackFile(
              //       id: 1,
              //       name: name,
              //       size: size,
              //       hashSha1: fileHash.toString(),
              //       data: data,
              //       timestamp: timestamp,
              //     ),
              //   ),
              // );
            } catch (e) {
              logger.e('TrailsBloc -> Error reading file: ${event.filePath}');
            }
          } else {
            emit(TrailsState.initialized(trails: _trails));
          }
        },
        unloadTrack: (event) {
          emit(TrailsState.initialized(trails: _trails));
        },
        emitTrack: (event) {
          emit(TrailsState.initialized(trails: _trails, track: event.track));
        },
      );
    });
  }

  final AppDatabase _db;

  List<TrailInfo> _trails = [];

  late StreamSubscription<List<TrailInfo>> _trailsSubscription;

  @override
  Future<void> close() {
    _trailsSubscription.cancel();
    return super.close();
  }
}
