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
  final AppDatabase _db;

  List<Trail> _trails = [];

  TrailsBloc({
    required AppDatabase database,
  })  : _db = database,
        super(const TrailsState.initial()) {
    _db.getTrails().watch().listen((event) async {
      _trails = event;
      logger.t('DatabaseBloc -> getTrails().watch()');
      add(TrailsEvent.getTrails());
    });

    on<TrailsEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        getTrails: (_GetTrails event) async {
          // _trails = await _db.getTrails().get();
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
          );
        },
        updateTrail: (_UpdateTrail value) {},
        upsertTrail: (_UpsertTrail value) {},
        deleteTrail: (_DeleteTrail value) {},
      );
    });
  }
}
