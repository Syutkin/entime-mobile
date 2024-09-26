// ignore_for_file: prefer_final_fields

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:entime/src/feature/database/model/participant_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../drift/app_database.dart';
import '../model/notification.dart';

part 'database_bloc.freezed.dart';

part 'database_event.dart';

part 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final AppDatabase _db;

  List<Race> _races = [];
  List<Stage> _stages = [];
  List<Rider> _riders = [];
  List<Status> _statuses = [];
  List<GetParticipantsAtStartResult> _participants = [];
  List<Start> _starts = [];
  List<Finish> _finishes = [];
  List<Trail> _trails = [];
  List<GetNumbersOnTraceNowResult> _numbersOnTrace = [];

  // List<ExistedStartingParticipantsResult> _newStartingParticipant = [];

  int _raceId = 0;
  int _stageId = 0;

  DatabaseBloc({required AppDatabase database})
      : _db = database,
        super(const _Initial()) {
    _db.getRaces().watch().listen((event) async {
      _races = event;
      add(const DatabaseEvent.emitState());
    });

    _db.getStages(raceId: _raceId).watch().listen((event) async {
      //! watch generates empty list at event
      _stages = await _db.getStages(raceId: _raceId).get();
      add(const DatabaseEvent.emitState());
    });

    // _db.select(_db.riders).watch().listen((event) async {
    //   _riders = event;
    //   add(const DatabaseEvent.onChanged());
    // });

    // _db.select(_db.statuses).watch().listen((event) async {
    //   _statuses = event;
    //   add(const DatabaseEvent.onChanged());
    // });

    _db.getParticipantsAtStart(stageId: _stageId).watch().listen((event) async {
      //! watch generates empty list at event
      _participants = await _db.getParticipantsAtStart(stageId: _stageId).get();
      add(const DatabaseEvent.emitState());
    });

    (_db.select(_db.starts)..where((start) => start.stageId.equals(_stageId)))
        .watch()
        .listen((event) async {
      _starts = event;
      add(const DatabaseEvent.emitState());
    });

    (_db.select(_db.finishes)
          ..where((finish) => finish.stageId.equals(_stageId)))
        .watch()
        .listen((event) async {
      _finishes = event;
      add(const DatabaseEvent.emitState());
    });

    // _db.select(_db.trails).watch().listen((event) async {
    //   _trails = event;
    //   add(const DatabaseEvent.onChanged());
    // });

    _db
        .getNumbersOnTraceNow(stageId: _stageId, timeNow: "'now', 'localtime'")
        .watch()
        .listen((event) async {
      _numbersOnTrace = event;
      add(const DatabaseEvent.emitState());
    });

    on<DatabaseEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        initialize: (event) async {
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
              numbersOnTrace: _numbersOnTrace,
            ),
          );
        },
        emitState: (event) {
          emit(
            DatabaseState.initialized(
              races: event.races ?? _races,
              stages: event.stages ?? _stages,
              riders: event.riders ?? _riders,
              statuses: event.statuses ?? _statuses,
              participants: event.participants ?? _participants,
              starts: event.starts ?? _starts,
              finishes: event.finishes ?? _finishes,
              trails: event.trails ?? _trails,
              numbersOnTrace: event.numbersOnTrace ?? _numbersOnTrace,
              notification: event.notification,
            ),
          );
          // _newStartingParticipant = [];
        },
        addRace: (event) async {
          await _db.addRace(
            name: event.race.name,
            startDate: event.race.startDate,
            finishDate: event.race.finishDate,
          );
        },
        selectStages: (event) async {
          _raceId = event.raceId;
          _stages = await _db.getStages(raceId: _raceId).get();
          // _stages = await (_db.select(_db.stages)
          //       ..where((stage) => stage.raceId.equals(_raceId)))
          //     .get();
          add(const DatabaseEvent.emitState());
        },
        addStage: (event) async {
          await _db.addStage(
            raceId: event.stage.raceId,
            name: event.stage.name,
          );
        },
        deleteRace: (event) async {
          await _db.deleteRace(id: event.id);
        },
        deleteStage: (event) async {
          await _db.deleteStage(id: event.id);
        },
        getParticipantsAtStart: (event) async {
          _stageId = event.stageId;
          _participants =
              await _db.getParticipantsAtStart(stageId: event.stageId).get();
          add(const DatabaseEvent.emitState());
        },
        addStartNumber: (event) async {
          final result = await _db.addStartNumber(
            stage: event.stage,
            number: event.number,
            startTime: event.startTime,
            forceAdd: event.forceAdd,
          );
          //ToDo: popup с вопросом обновлять или нет стартовое время или номер
          if (result != null) {
            add(
              DatabaseEvent.emitState(
                notification: Notification.updateNumber(
                  existedStartingParticipants: result,
                  number: event.number,
                  startTime: event.startTime,
                ),
              ),
            );
          }
        },
        updateStartingInfo: (event) async {
          await _db.setStartingInfo(
            startTime: event.startTime,
            automaticStartTime: event.automaticStartTime,
            automaticCorrection: event.automaticCorrection,
            manualStartTime: event.manualStartTime,
            manualCorrection: event.manualCorrection,
            stageId: event.stageId,
            participantId: event.participantId,
          );
        },
        updateManualStartTime: (event) async {
          await _db.updateManualStartTime(
              stageId: event.stageId, time: event.time);
        },
        setDNSatStart: (event) {
          _db.setStatusForStartId(
              id: event.startId, status: ParticipantStatus.dns);
        },
        // getNumbersOnTrace: (event) async {
        //   await _db.getNumbersOnTrace(stageId: _stageId);
        // },
      );
    });
  }
}
