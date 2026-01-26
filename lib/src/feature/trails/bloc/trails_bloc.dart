// ignore_for_file: unreachable_from_main

import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto/crypto.dart';
import 'package:drift/native.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';

import '../../../common/logger/logger.dart';
import '../../../constants/config.dart';
import '../../database/database.dart';

part 'trails_bloc.freezed.dart';

part 'trails_event.dart';

part 'trails_state.dart';

class TrailsBloc extends Bloc<TrailsEvent, TrailsState> {
  TrailsBloc({required AppDatabase database}) : _db = database, super(const TrailsState.initial()) {
    _trailsSubscription = _db.getTrails().watch().listen((event) async {
      _trails = event;
      logger.t('TrailsBloc -> getTrails().watch()');
      add(const TrailsEvent.getTrails());
    });

    on<TrailsEvent>(transformer: sequential(), (event, emit) async {
      switch (event) {
        case _GetTrails():
          switch (state) {
            case LoadingTrack(progress: final progress):
              emit(TrailsState.loadingTrack(trails: _trails, progress: progress));
            case SavingTrack(progress: final progress):
              emit(TrailsState.savingTrack(trails: _trails, progress: progress));
            default:
              emit(TrailsState.initialized(trails: _trails, track: _loadedTrack));
          }
        case _AddTrail():
          final filePath = event.filePath;
          if (filePath != null && filePath.isNotEmpty) {
            _pendingTrackSave = _PendingTrailSave.add(
              name: event.name,
              elevation: event.elevation,
              distance: event.distance,
              url: event.url,
              description: event.description,
            );
            emit(TrailsState.savingTrack(trails: _trails, progress: 0));
            await _startTrackSave(filePath);
            return;
          }

          // Записываем трейл
          await _db.addTrail(
            name: event.name,
            elevation: event.elevation,
            distance: event.distance,
            url: event.url,
            description: event.description,
            // ignore: avoid_redundant_argument_values
            fileId: null,
          );
        case _UpdateTrail():
          final filePath = event.filePath;
          if (filePath != null && filePath.isNotEmpty) {
            _pendingTrackSave = _PendingTrailSave.update(
              id: event.id,
              name: event.name,
              elevation: event.elevation,
              distance: event.distance,
              url: event.url,
              description: event.description,
            );
            emit(TrailsState.savingTrack(trails: _trails, progress: 0));
            await _startTrackSave(filePath);
            return;
          }
          var trackId = event.fileId;
          // Если надо удалить старый файл, ставим null в trackId
          if (event.deleteTrack) {
            trackId = null;
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
          if (event.deleteTrack && event.fileId != null) {
            await _db.deleteTrack(event.fileId!);
          }
        case _DeleteTrail():
          await _db.deleteTrail(event.id);
        case _LoadTrack():
          final file = File(event.filePath);
          if (file.existsSync()) {
            _loadedTrack = null;
            emit(TrailsState.loadingTrack(trails: _trails, progress: 0));
            await _startTrackLoad(event.filePath);
          }
        case _TrackLoadProgress():
          if (state is! LoadingTrack) {
            return;
          }
          final progress = event.progress.isNaN ? 0.0 : event.progress.clamp(0.0, 1.0);
          emit(TrailsState.loadingTrack(trails: _trails, progress: progress));
        case _TrackSaveProgress():
          if (_pendingTrackSave == null) {
            return;
          }
          final progress = event.progress.isNaN ? 0.0 : event.progress.clamp(0.0, 1.0);
          emit(TrailsState.savingTrack(trails: _trails, progress: progress));
        case _TrackSaveCompleted():
          final pending = _pendingTrackSave;
          if (pending == null) {
            return;
          }
          _pendingTrackSave = null;
          unawaited(_cancelTrackSave());
          switch (pending) {
            case _PendingTrailSaveAdd():
              await _db.addTrail(
                name: pending.name,
                elevation: pending.elevation,
                distance: pending.distance,
                url: pending.url,
                description: pending.description,
                fileId: event.trackId,
              );
            case _PendingTrailSaveUpdate():
              await _db.updateTrail(
                id: pending.id,
                name: pending.name,
                elevation: pending.elevation,
                distance: pending.distance,
                url: pending.url,
                description: pending.description,
                fileId: event.trackId,
              );
          }
          _loadedTrack = null;
          emit(TrailsState.initialized(trails: _trails, track: _loadedTrack));
        case _TrackSaveFailed():
          logger.e('TrailsBloc -> Error saving track: ${event.message}');
          _pendingTrackSave = null;
          unawaited(_cancelTrackSave());
          emit(TrailsState.initialized(trails: _trails, track: _loadedTrack));
        case _UnloadTrack():
          await _cancelTrackLoad();
          _loadedTrack = null;
          emit(TrailsState.initialized(trails: _trails, track: _loadedTrack));
        case _EmitTrack():
          _loadedTrack = event.track;
          emit(TrailsState.initialized(trails: _trails, track: _loadedTrack));
      }
    });
  }

  final AppDatabase _db;

  List<TrailInfo> _trails = [];
  TrackFile? _loadedTrack;

  late StreamSubscription<List<TrailInfo>> _trailsSubscription;
  Isolate? _trackLoadIsolate;
  ReceivePort? _trackLoadReceivePort;
  StreamSubscription<dynamic>? _trackLoadSubscription;
  int _trackLoadToken = 0;

  _PendingTrailSave? _pendingTrackSave;
  Isolate? _trackSaveIsolate;
  ReceivePort? _trackSaveReceivePort;
  StreamSubscription<dynamic>? _trackSaveSubscription;
  int _trackSaveToken = 0;

  @override
  Future<void> close() async {
    await _cancelTrackLoad();
    await _cancelTrackSave();
    await _trailsSubscription.cancel();
    return super.close();
  }

  Future<void> _startTrackLoad(String filePath) async {
    await _cancelTrackLoad();
    final token = ++_trackLoadToken;
    final receivePort = ReceivePort();
    _trackLoadReceivePort = receivePort;
    _trackLoadSubscription = receivePort.listen(
      (message) => _handleTrackLoadMessage(token, filePath, message),
    );

    try {
      _trackLoadIsolate = await Isolate.spawn(
        _loadTrackIsolateEntry,
        <String, Object?>{
          'sendPort': receivePort.sendPort,
          'filePath': filePath,
          'maxSize': uploadMaxSize,
          'token': token,
        },
      );
    } catch (e, stackTrace) {
      logger.e(
        'TrailsBloc -> Error starting isolate for: $filePath',
        error: e,
        stackTrace: stackTrace,
      );
      await _cancelTrackLoad();
      if (!isClosed) {
        add(const TrailsEvent.unloadTrack());
      }
    }
  }

  void _handleTrackLoadMessage(int token, String filePath, Object? message) {
    if (message is! Map<Object?, Object?>) {
      return;
    }
    if (isClosed) {
      return;
    }
    final messageToken = message['token'];
    if (messageToken is! int || messageToken != token) {
      return;
    }
    final type = message['type'];
    if (type == 'progress') {
      final progress = (message['progress'] as num?)?.toDouble() ?? 0.0;
      add(TrailsEvent.trackLoadProgress(progress: progress));
      return;
    }
    if (type == 'done') {
      final name = message['name'] as String? ?? '';
      final extension = message['extension'] as String? ?? '';
      final size = message['size'] as int? ?? 0;
      final hashSha1 = message['hashSha1'] as String? ?? '';
      final timestampMs = message['timestampMs'] as int? ?? 0;
      unawaited(_cancelTrackLoad());
      add(
        TrailsEvent.emitTrack(
          track: TrackFile(
            id: -1,
            name: name,
            extension: extension,
            // ToDo: Description
            // description: null,
            size: size,
            hashSha1: hashSha1,
            data: Uint8List(0),
            timestamp: DateTime.fromMillisecondsSinceEpoch(timestampMs),
          ),
        ),
      );
      return;
    }
    if (type == 'error') {
      final errorMessage = message['message'];
      final stack = message['stack'] as String?;
      logger.e(
        'TrailsBloc -> Error reading file: $filePath',
        error: errorMessage,
        stackTrace: stack == null ? null : StackTrace.fromString(stack),
      );
      unawaited(_cancelTrackLoad());
      if (!isClosed) {
        add(const TrailsEvent.unloadTrack());
      }
    }
  }

  Future<void> _cancelTrackLoad() async {
    _trackLoadIsolate?.kill(priority: Isolate.immediate);
    _trackLoadIsolate = null;
    await _trackLoadSubscription?.cancel();
    _trackLoadSubscription = null;
    _trackLoadReceivePort?.close();
    _trackLoadReceivePort = null;
  }

  Future<void> _startTrackSave(String filePath) async {
    await _cancelTrackLoad();
    await _cancelTrackSave();
    final token = ++_trackSaveToken;
    final receivePort = ReceivePort();
    _trackSaveReceivePort = receivePort;
    _trackSaveSubscription = receivePort.listen(
      (message) => _handleTrackSaveMessage(token, filePath, message),
    );

    try {
      final dbFolder = await getApplicationDocumentsDirectory();
      final tempFolder = await getTemporaryDirectory();
      final dbPath = path.join(dbFolder.path, 'database.sqlite');

      _trackSaveIsolate = await Isolate.spawn(
        _saveTrackIsolateEntry,
        <String, Object?>{
          'sendPort': receivePort.sendPort,
          'filePath': filePath,
          'dbPath': dbPath,
          'tempDir': tempFolder.path,
          'maxSize': uploadMaxSize,
          'token': token,
        },
      );
    } catch (e, stackTrace) {
      logger.e(
        'TrailsBloc -> Error starting save isolate for: $filePath',
        error: e,
        stackTrace: stackTrace,
      );
      await _cancelTrackSave();
      if (!isClosed) {
        add(TrailsEvent.trackSaveFailed(message: e.toString()));
      }
    }
  }

  void _handleTrackSaveMessage(int token, String filePath, Object? message) {
    if (message is! Map<Object?, Object?>) {
      return;
    }
    if (isClosed) {
      return;
    }
    final messageToken = message['token'];
    if (messageToken is! int || messageToken != token) {
      return;
    }
    final type = message['type'];
    if (type == 'progress') {
      final progress = (message['progress'] as num?)?.toDouble() ?? 0.0;
      add(TrailsEvent.trackSaveProgress(progress: progress));
      return;
    }
    if (type == 'done') {
      final trackId = message['trackId'];
      if (trackId is int) {
        add(TrailsEvent.trackSaveCompleted(trackId: trackId));
      } else {
        add(const TrailsEvent.trackSaveFailed(message: 'Track id missing'));
      }
      return;
    }
    if (type == 'error') {
      final errorMessage = message['message'];
      final stack = message['stack'] as String?;
      logger.e(
        'TrailsBloc -> Error saving file: $filePath',
        error: errorMessage,
        stackTrace: stack == null ? null : StackTrace.fromString(stack),
      );
      add(TrailsEvent.trackSaveFailed(message: errorMessage?.toString() ?? 'Unknown error'));
    }
  }

  Future<void> _cancelTrackSave() async {
    _trackSaveIsolate?.kill(priority: Isolate.immediate);
    _trackSaveIsolate = null;
    await _trackSaveSubscription?.cancel();
    _trackSaveSubscription = null;
    _trackSaveReceivePort?.close();
    _trackSaveReceivePort = null;
  }
}

@pragma('vm:entry-point')
Future<void> _loadTrackIsolateEntry(Map<String, Object?> message) async {
  if (message case {
    'sendPort': final SendPort sendPort,
    'filePath': final String filePath,
    'maxSize': final int maxSize,
    'token': final int token,
  }) {
    try {
      final file = File(filePath);
      final name = path.basenameWithoutExtension(filePath);
      final extension = path.extension(filePath);
      final size = await file.length();
      final timestampMs = DateTime.now().millisecondsSinceEpoch;

      if (size > maxSize) {
        sendPort
          ..send(<String, Object?>{'type': 'progress', 'token': token, 'progress': 1.0})
          ..send(<String, Object?>{
            'type': 'done',
            'token': token,
            'name': name,
            'extension': extension,
            'size': size,
            'hashSha1': '',
            'timestampMs': timestampMs,
          });
        return;
      }

      final digestSink = _DigestSink();
      final sha1Sink = sha1.startChunkedConversion(digestSink);

      var bytesRead = 0;
      var lastProgress = 0.0;
      await for (final chunk in file.openRead()) {
        sha1Sink.add(chunk);
        bytesRead += chunk.length;
        if (size > 0) {
          final progress = bytesRead / size;
          if (progress - lastProgress >= 0.02 || bytesRead == size) {
            lastProgress = progress;
            sendPort.send(<String, Object?>{'type': 'progress', 'token': token, 'progress': progress});
          }
        }
      }

      sha1Sink.close();
      final hashSha1 = digestSink.value?.toString() ?? '';

      sendPort.send(<String, Object?>{
        'type': 'done',
        'token': token,
        'name': name,
        'extension': extension,
        'size': size,
        'hashSha1': hashSha1,
        'timestampMs': timestampMs,
      });
    } catch (e, stackTrace) {
      sendPort.send(<String, Object?>{
        'type': 'error',
        'token': token,
        'message': e.toString(),
        'stack': stackTrace.toString(),
      });
    }
  }
}

@pragma('vm:entry-point')
Future<void> _saveTrackIsolateEntry(Map<String, Object?> message) async {
  if (message case {
    'sendPort': final SendPort sendPort,
    'filePath': final String filePath,
    'dbPath': final String dbPath,
    'tempDir': final String tempDir,
    'maxSize': final int maxSize,
    'token': final int token,
  }) {
    AppDatabase? database;
    try {
      final file = File(filePath);
      final name = path.basenameWithoutExtension(filePath);
      final extension = path.extension(filePath);
      final size = await file.length();
      final timestampMs = DateTime.now().millisecondsSinceEpoch;

      if (size > maxSize) {
        sendPort.send(<String, Object?>{
          'type': 'error',
          'token': token,
          'message': 'File too large: $size',
        });
        return;
      }

      final digestSink = _DigestSink();
      final sha1Sink = sha1.startChunkedConversion(digestSink);
      final bytesBuilder = BytesBuilder(copy: false);

      var bytesRead = 0;
      var lastProgress = 0.0;
      await for (final chunk in file.openRead()) {
        sha1Sink.add(chunk);
        bytesBuilder.add(chunk);
        bytesRead += chunk.length;
        if (size > 0) {
          final scaledProgress = (bytesRead / size) * 0.95;
          if (scaledProgress - lastProgress >= 0.02 || bytesRead == size) {
            lastProgress = scaledProgress;
            sendPort.send(<String, Object?>{'type': 'progress', 'token': token, 'progress': scaledProgress});
          }
        }
      }

      sha1Sink.close();
      final hashSha1 = digestSink.value?.toString() ?? '';
      final data = bytesBuilder.takeBytes();

      sqlite3.tempDirectory = tempDir;
      database = AppDatabase(NativeDatabase(File(dbPath)));
      final trackId = await database.addTrack(
        TrackFile(
          id: -1,
          name: name,
          extension: extension,
          size: size,
          hashSha1: hashSha1,
          data: data,
          timestamp: DateTime.fromMillisecondsSinceEpoch(timestampMs),
        ),
      );
      await database.close();
      database = null;

      sendPort
        ..send(<String, Object?>{'type': 'progress', 'token': token, 'progress': 1.0})
        ..send(<String, Object?>{'type': 'done', 'token': token, 'trackId': trackId});
    } catch (e, stackTrace) {
      await database?.close();
      sendPort.send(<String, Object?>{
        'type': 'error',
        'token': token,
        'message': e.toString(),
        'stack': stackTrace.toString(),
      });
    }
  }
}

sealed class _PendingTrailSave {
  const _PendingTrailSave({
    required this.name,
    required this.distance,
    required this.elevation,
    required this.url,
    required this.description,
  });

  const factory _PendingTrailSave.add({
    required String name,
    required int? distance,
    required int? elevation,
    required String? url,
    required String? description,
  }) = _PendingTrailSaveAdd;

  const factory _PendingTrailSave.update({
    required int id,
    required String name,
    required int? distance,
    required int? elevation,
    required String? url,
    required String? description,
  }) = _PendingTrailSaveUpdate;

  final String name;
  final int? distance;
  final int? elevation;
  final String? url;
  final String? description;
}

class _PendingTrailSaveAdd extends _PendingTrailSave {
  const _PendingTrailSaveAdd({
    required super.name,
    required super.distance,
    required super.elevation,
    required super.url,
    required super.description,
  });
}

class _PendingTrailSaveUpdate extends _PendingTrailSave {
  const _PendingTrailSaveUpdate({
    required this.id,
    required super.name,
    required super.distance,
    required super.elevation,
    required super.url,
    required super.description,
  });

  final int id;
}

class _DigestSink implements Sink<Digest> {
  Digest? value;

  @override
  void add(Digest data) {
    value = data;
  }

  @override
  void close() {}
}
