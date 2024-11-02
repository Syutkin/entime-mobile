import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../database/database.dart';

part 'trails_bloc.freezed.dart';
part 'trails_event.dart';
part 'trails_state.dart';

class TrailsBloc extends Bloc<TrailsEvent, TrailsState> {
  final AppDatabase _db;

  TrailsBloc({
    required AppDatabase database,
  })  : _db = database,
        super(const TrailsState.initial()) {
    on<TrailsEvent>(transformer: sequential(), (event, emit) async {
      // TODO: implement event handler
      await event.map(getTrails: (_GetTrails value) async {
        // _db.getT
      });
    });
  }
}
