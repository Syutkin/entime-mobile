import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:entime/src/common/utils/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;

import '../../../common/logger/logger.dart';
import '../../../constants/config.dart';
import '../../database/database.dart';

part 'trails_bloc.freezed.dart';

part 'trails_event.dart';

part 'trails_state.dart';

class TrailsBloc extends Bloc<TrailsEvent, TrailsState> {
  TrailsBloc({required AppDatabase database})
    : _db = database,
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
          int? trackId;
          final filePath = event.filePath;
          // Сохраняем трек если указан путь к файлу
          if (filePath != null && filePath.isNotEmpty) {
            await state.whenOrNull(
              initialized: (_, track) async {
                if (track != null) {
                  trackId = await _db.addTrack(track);
                }
              },
            );
          }
          // Записываем трейл
          await _db.addTrail(
            name: event.name,
            elevation: event.elevation,
            distance: event.distance,
            url: event.url,
            description: event.description,
            fileId: trackId,
          );
        },
        updateTrail: (_UpdateTrail event) async {
          final fileId = event.fileId;
          Value<int?>? trackId;
          // Если надо удалить старый файл, ставим null в trackId
          if (event.deleteTrack && fileId != null) {
            trackId = const Value(null);
          }
          final filePath = event.filePath;
          // Сохраняем трек если указан путь к файлу
          if (filePath != null && filePath.isNotEmpty) {
            await state.whenOrNull(
              initialized: (_, track) async {
                if (track != null) {
                  trackId = Value(await _db.addTrack(track));
                }
              },
            );
          }
          // Обновляем трейл
          await _db.updateTrail(
            id: event.id,
            name: event.name,
            elevation: event.elevation,
            distance: event.distance,
            url: event.url,
            description: event.description,
            fileId: trackId,
          );
          // Удаляем старый файл трека
          // ToDo: переделать на очистку сирот
          if (event.deleteTrack && fileId != null) {
            await _db.deleteTrack(fileId);
          }
        },
        deleteTrail: (_DeleteTrail event) async {
          await _db.deleteTrail(event.id);
        },
        loadTrack: (event) async {
          final file = File(event.filePath);
          if (file.existsSync()) {
            emit(TrailsState.loadingTrack(trails: _trails));
            try {
              // ToDo: рассчитывать distance и elevation
              final name = path.basenameWithoutExtension(event.filePath);
              final extension = path.extension(event.filePath);
              final size = await file.length();
              final timestamp = DateTime.now();
              final data = <int>[];

              if (size > uploadMaxSize) {
                add(
                  TrailsEvent.emitTrack(
                    track: TrackFile(
                      id: -1,
                      name: name,
                      extension: extension,
                      // ToDo: Description
                      // description: null,
                      size: size,
                      hashSha1: '',
                      data: Uint8List(0),
                      timestamp: timestamp,
                    ),
                  ),
                );
              } else {
                file.openRead().listen(
                  data.addAll,
                  onDone: () {
                    final fileHash = sha1.convert(data);
                    add(
                      TrailsEvent.emitTrack(
                        track: TrackFile(
                          id: -1,
                          name: name,
                          extension: extension,
                          // ToDo: Description
                          // description: null,
                          size: size,
                          hashSha1: fileHash.toString(),
                          data: data.asUint8List(),
                          timestamp: timestamp,
                        ),
                      ),
                    );
                  },
                );
              }
            } catch (e) {
              logger.e('TrailsBloc -> Error reading file: ${event.filePath}');
              emit(TrailsState.initialized(trails: _trails));
            }
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
