// ignore_for_file: prefer_final_fields

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:entime/src/common/logger/logger.dart';
import 'package:entime/src/feature/database/model/participant_status.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../settings/logic/settings_provider.dart';
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
  List<ParticipantAtStart> _participants = [];
  List<Start> _starts = [];
  List<Finish> _finishes = [];
  List<Trail> _trails = [];
  List<StartingParticipant> _numbersOnTrace = [];

  // Notification? _notification;

  Race? _race;
  Stage? _stage;

  bool _hideMarked = true;
  bool _hideNumbers = false;
  bool _hideManual = false;
  late int _finishDelay;
  late bool _substituteNumbers;
  late int _substituteNumbersDelay;
  int? _awaitingNumber;

  final SettingsProvider _settingsProvider;

  void _emitState({
    Notification? notification,
    int? autoFinishNumber,
    bool? updateFinishNumber,
  }) {
    add(DatabaseEvent.emitState(
      race: _race,
      stage: _stage,
      races: _races,
      stages: _stages,
      riders: _riders,
      statuses: _statuses,
      participants: _participants,
      starts: _starts,
      finishes: _finishes,
      trails: _trails,
      numbersOnTrace: _numbersOnTrace,
      notification: notification,
      autoFinishNumber: autoFinishNumber,
      awaitingNumber: _awaitingNumber,
      updateFinishNumber: updateFinishNumber,
    ));
  }

  DatabaseBloc(
      {required AppDatabase database,
      required SettingsProvider settingsProvider})
      : _db = database,
        _settingsProvider = settingsProvider,
        super(DatabaseState.initial()) {
    _db.getRaces().watch().listen((event) async {
      _races = event;
      logger.d('DatabaseBloc -> getRaces().watch()');
      _emitState();
    });

    _db.select(_db.stages).watch().listen((event) async {
      final raceId = _race?.id ?? 0;
      _stages = await _db.getStages(raceId: raceId).get();
      logger.d('DatabaseBloc -> getStages(raceId: $raceId).watch()');
      _emitState();
    });

    // _db.select(_db.riders).watch().listen((event) async {
    //   _riders = event;
    //   add( DatabaseEvent.onChanged());
    // });

    // _db.select(_db.statuses).watch().listen((event) async {
    //   _statuses = event;
    //   add( DatabaseEvent.onChanged());
    // });

    _db.select(_db.starts).watch().listen((event) async {
      final stageId = _stage?.id ?? 0;
      _participants = await _db.getParticipantsAtStart(stageId: stageId).get();
      logger.d(
          'DatabaseBloc -> getParticipantsAtStart(stageId: $stageId).watch()');
      _emitState();
    });

    //ToDo: сделать фильтры
    _db.select(_db.finishes).watch().listen((event) async {
      final stageId = _stage?.id ?? 0;
      _finishes = await _db.getFinishesFromStage(stageId: stageId).get();
      logger
          .d('DatabaseBloc -> getFinishesFromStage(stageId: $stageId).watch()');
      _emitState();
    });

    // _db.select(_db.trails).watch().listen((event) async {
    //   _trails = event;
    //   add( DatabaseEvent.onChanged());
    // });

    _db
        .getNumbersOnTraceNow(stageId: 0, dateTimeNow: DateTime.now())
        .watch()
        .listen((event) async {
      final stageId = _stage?.id ?? 0;
      _numbersOnTrace = await _db
          .getNumbersOnTraceNow(stageId: stageId, dateTimeNow: DateTime.now())
          .get();
      logger
          .d('DatabaseBloc -> getNumbersOnTraceNow(stageId: $stageId).watch()');
      _emitState();

      _settingsProvider.state.listen((state) {
        // условия чтобы не дёргать запросами sqlite базу при каждом изменении настроек
        if (_hideMarked != state.hideMarked ||
            _hideNumbers != state.hideNumbers ||
            _hideManual != state.hideManual) {
          _hideMarked = state.hideMarked;
          _hideNumbers = state.hideNumbers;
          _hideManual = state.hideManual;
          logger.d(
            'hideMarked: $_hideMarked, hideNumbers: $_hideNumbers, hideManual: $_hideManual, ',
          );
        }
        _finishDelay = state.finishDelay;
        _substituteNumbers = state.substituteNumbers;
        _substituteNumbersDelay = state.substituteNumbersDelay;
      });
    });

    on<DatabaseEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        initialize: (event) async {
          add(DatabaseEvent.getRaces());
          // _races = await _db.select(_db.races).get();
          // _stages = await _db.select(_db.stages).get();
          // _riders = await _db.select(_db.riders).get();
          // _statuses = await _db.select(_db.statuses).get();
          // _participants = await _db.select(_db.participants).get();
          // _starts = await _db.select(_db.starts).get();
          // _finishes = await _db.select(_db.finishes).get();
          // _trails = await _db.select(_db.trails).get();
          // emit(
          //   DatabaseState.initialized(
          //     race: _race,
          //     stage: _stage,
          //     races: _races,
          //     stages: _stages,
          //     riders: _riders,
          //     statuses: _statuses,
          //     participants: _participants,
          //     starts: _starts,
          //     finishes: _finishes,
          //     trails: _trails,
          //     numbersOnTrace: _numbersOnTrace,
          //   ),
          // );
        },
        emitState: (event) {
          emit(
            DatabaseState.initialized(
              race: event.race,
              stage: event.stage,
              races: event.races,
              stages: event.stages,
              riders: event.riders,
              statuses: event.statuses,
              participants: event.participants,
              starts: event.starts,
              finishes: event.finishes,
              trails: event.trails,
              numbersOnTrace: event.numbersOnTrace,
              notification: event.notification,
              autoFinishNumber: event.autoFinishNumber,
              awaitingNumber: _awaitingNumber,
            ),
          );
        },
        addRace: (event) async {
          await _db.addRace(
            name: event.race.name,
            startDate: event.race.startDate,
            finishDate: event.race.finishDate,
            location: event.race.location,
          );
        },
        deleteRace: (event) async {
          await _db.deleteRace(id: event.id);
        },
        getRaces: (event) async {
          _races = await _db.getRaces().get();
        },
        selectRace: (event) {
          _race = event.race;
          var raceId = event.race.id;
          if (raceId != null) {
            add(DatabaseEvent.getStages(raceId));
          }
        },
        addStage: (event) async {
          await _db.addStage(
            raceId: event.stage.raceId,
            name: event.stage.name,
            trailId: event.stage.trailId,
          );
        },
        deleteStage: (event) async {
          await _db.deleteStage(id: event.id);
        },
        getStages: (event) async {
          _stages = await _db.getStages(raceId: event.raceId).get();
          _emitState();
        },
        selectStage: (event) async {
          _stage = event.stage;
          var stageId = event.stage.id;

          /// Fill state with data
          if (stageId != null) {
            _participants =
                await _db.getParticipantsAtStart(stageId: stageId).get();
            _numbersOnTrace = await _db
                .getNumbersOnTraceNow(
                    stageId: stageId, dateTimeNow: DateTime.now())
                .get();
            _finishes = await _db.getFinishesFromStage(stageId: stageId).get();
            _emitState();
          }
        },
        getParticipantsAtStart: (event) async {
          _participants =
              await _db.getParticipantsAtStart(stageId: event.stageId).get();
          _emitState();
        },
        addStartNumber: (event) async {
          final startingParticipants = await _db.addStartNumber(
            stage: event.stage,
            number: event.number,
            startTime: event.startTime,
            forceAdd: event.forceAdd,
          );
          //ToDo: popup с вопросом обновлять или нет стартовое время или номер
          if (startingParticipants != null) {
            // add(
            //   DatabaseEvent.emitState(
            //     notification: Notification.updateNumber(
            //       existedStartingParticipants: startingParticipants,
            //       number: event.number,
            //       startTime: event.startTime,
            //     ),
            //   ),
            // );
            final notification = Notification.updateNumber(
              existedStartingParticipants: startingParticipants,
              number: event.number,
              startTime: event.startTime,
            );
            _emitState(notification: notification);
            // _notification = null;
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
            stageId: event.stageId,
            time: event.time,
            deltaInSeconds: event.deltaInSeconds,
          );
        },
        setStatusForStartId: (event) async {
          await _db.setStatusForStartId(
            startId: event.startId,
            status: ParticipantStatus.dns,
          );
        },
        updateAutomaticCorrection: (event) async {
          await _db.updateAutomaticCorrection(
            stageId: event.stageId,
            time: event.time,
            correction: event.correction,
            timeStamp: event.timeStamp,
            deltaInSeconds: event.deltaInSeconds,
            forceUpdate: event.forceUpdate,
          );
        },
        getFinishesFromStage: (event) {},
        addFinishTime: (event) async {
          final autoFinishNumber = await _db.addFinishTime(
            stage: event.stage,
            finish: event.finish,
            timeStamp: event.timeStamp,
            finishDelay: event.finishDelay ?? _finishDelay,
            substituteNumbers: event.substituteNumbers ?? _substituteNumbers,
            substituteNumbersDelay:
                event.finishDelay ?? _substituteNumbersDelay,
            dateTimeNow: event.dateTimeNow,
            number: _awaitingNumber,
          );
          if (autoFinishNumber != null) {
            // снять выделение с автоматически подставленного номера
            _awaitingNumber = null;
            _emitState(autoFinishNumber: autoFinishNumber);
          }
        },
        addFinishTimeManual: (event) async {
          await _db.addFinishTimeManual(
            stageId: event.stageId,
            finishTime: event.finishTime,
            number: event.number,
          );
        },
        //ToDo:
        clearStartResultsDebug: (event) {
          throw ('Not implemented');
        },
        clearFinishResultsDebug: (event) async {
          await _db.clearFinishResultsDebug(event.stageId);
        },
        hideFinish: (event) async {
          await _db.hideFinish(event.id);
        },
        hideAllFinises: (event) async {
          await _db.hideAllFinishes(event.stageId);
        },
        clearNumberAtFinish: (event) async {
          // _autoFinishNumber = null;
          await _db.clearNumberAtFinish(
              stage: event.stage, number: event.number);
        },
        setDNSForStage: (event) async {
          await _db.setDNSForStage(stage: event.stage, number: event.number);
        },
        setDNFForStage: (event) async {
          await _db.setDNFForStage(stage: event.stage, number: event.number);
        },
        addNumberToFinish: (event) async {
          // final update = await _db.addNumberToFinish(
          await _db.addNumberToFinish(
            stage: event.stage,
            finishId: event.finishId,
            number: event.number,
            finishTime: event.finishTime,
          );
          _emitState();
        },
        getNumbersOnTraceNow: (event) async {
          _numbersOnTrace = await _db
              .getNumbersOnTraceNow(
                  stageId: event.stageId, dateTimeNow: event.dateTimeNow)
              .get();
          _emitState();
        },
        //ToDo:
        loadStartFromCsv: (event) {
          throw ('Not implemented');
        },
        //ToDo:
        shareStart: (event) {
          throw ('Not implemented');
        },
        //ToDo:
        shareFinish: (event) {
          throw ('Not implemented');
        },
        selectAwaitingNumber: (event) {
          _awaitingNumber = event.number;
          _emitState();
        },
        deselectAwaitingNumber: (event) {
          _awaitingNumber = null;
          _emitState();
        },
      );
    });
  }
}
