// ignore_for_file: prefer_final_fields

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../drift/app_database.dart';

part 'database_bloc.freezed.dart';
part 'database_event.dart';
part 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final AppDatabase _db;

  List<Race> _races = [];
  List<Stage> _stages = [];
  List<Rider> _riders = [];
  List<Status> _statuses = [];
  List<Participant> _participants = [];
  List<Start> _starts = [];
  List<Finish> _finishes = [];
  List<Trail> _trails = [];

  int _raceId = 0;
  int _stagesId = 0;

  DatabaseBloc({required AppDatabase database})
      : _db = database,
        super(const _Initial()) {
    _db.select(_db.races).watch().listen((event) async {
      _races = event;
      add(const DatabaseEvent.onChanged());
    });

    _db.select(_db.stages).watch().listen((event) async {
      _stages = await _db.selectStages(raceId: _raceId).get();
      add(const DatabaseEvent.onChanged());
    });

    // _db.select(_db.riders).watch().listen((event) async {
    //   _riders = event;
    //   add(const DatabaseEvent.onChanged());
    // });

    // _db.select(_db.statuses).watch().listen((event) async {
    //   _statuses = event;
    //   add(const DatabaseEvent.onChanged());
    // });

    (_db.select(_db.participants)
          ..where((participant) => participant.raceId.equals(_raceId)))
        .watch()
        .listen((event) async {
      _participants = event;
      add(const DatabaseEvent.onChanged());
    });

    (_db.select(_db.starts)..where((start) => start.stageId.equals(_stagesId)))
        .watch()
        .listen((event) async {
      _starts = event;
      add(const DatabaseEvent.onChanged());
    });

    (_db.select(_db.finishes)
          ..where((finish) => finish.stageId.equals(_stagesId)))
        .watch()
        .listen((event) async {
      _finishes = event;
      add(const DatabaseEvent.onChanged());
    });

    // _db.select(_db.trails).watch().listen((event) async {
    //   _trails = event;
    //   add(const DatabaseEvent.onChanged());
    // });

    on<DatabaseEvent>(transformer: sequential(), (event, emit) async {
      await event.when(
        initialize: () async {
          _races = await _db.select(_db.races).get();
          // _stages = await _db.select(_db.stages).get();
          // _riders = await _db.select(_db.riders).get();
          // _statuses = await _db.select(_db.statuses).get();
          // _participants = await _db.select(_db.participants).get();
          // _starts = await _db.select(_db.starts).get();
          // _finishes = await _db.select(_db.finishes).get();
          // _trails = await _db.select(_db.trails).get();
          emit(
            DatabaseState.initialized(
              races: _races,
              stages: _stages,
              riders: _riders,
              statuses: _statuses,
              participants: _participants,
              starts: _starts,
              finishes: _finishes,
              trails: _trails,
            ),
          );
        },
        onChanged: () {
          emit(
            DatabaseState.initialized(
              races: _races,
              stages: _stages,
              riders: _riders,
              statuses: _statuses,
              participants: _participants,
              starts: _starts,
              finishes: _finishes,
              trails: _trails,
            ),
          );
        },
        addRace: (race) async {
          await _db.addRace(
            name: race.name,
            startDate: race.startDate,
            finishDate: race.finishDate,
          );
        },
        selectStages: (raceId) async {
          _raceId = raceId;
          _stages = await (_db.select(_db.stages)
                ..where((stage) => stage.raceId.equals(_raceId)))
              .get();
          add(const DatabaseEvent.onChanged());
        },
        addStage: (stage) async {
          await _db.addStage(
            raceId: stage.raceId,
            name: stage.name,
            isActive: stage.isActive,
          );
        },
      );
    });
  }
}
