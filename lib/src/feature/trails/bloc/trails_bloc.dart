import 'dart:async';
import 'dart:typed_data';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
          await _db.addTrail(
            name: event.name,
            elevation: event.elevation,
            distance: event.distance,
            url: event.url,
            description: event.description,
            gpxTrack: event.gpxTrack,
            fileExtension: event.fileExtension,
          );
        },
        updateTrail: (_UpdateTrail event) async {
          await _db.updateTrail(
            id: event.id,
            name: event.name,
            elevation: event.elevation,
            distance: event.distance,
            url: event.url,
            description: event.description,
            gpxTrack: event.gpxTrack,
            fileExtension: event.fileExtension,
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
            gpxTrack: event.gpxTrack,
            fileExtension: event.fileExtension,
            isDeleted: event.isDeleted,
          );
        },
        deleteTrail: (_DeleteTrail event) async {
          await _db.deleteTrail(event.id);
        },
      );
    });
  }
  final AppDatabase _db;

  List<Trail> _trails = [];

  late StreamSubscription<List<Trail>> _trailsSubscription;

  @override
  Future<void> close() {
    _trailsSubscription.cancel();
    return super.close();
  }
}
