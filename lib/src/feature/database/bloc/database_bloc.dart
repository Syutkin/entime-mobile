import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/localization/localization.dart';
import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../../../constants/date_time_formats.dart';
import '../../../feature/csv/csv.dart';
import '../../csv/model/stages_csv.dart';
import '../../settings/logic/settings_provider.dart';
import '../drift/app_database.dart';
import '../model/notification.dart';
import '../model/participant_status.dart';

part 'database_bloc.freezed.dart';

part 'database_event.dart';

part 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  DatabaseBloc({
    required AppDatabase database,
    required SettingsProvider settingsProvider,
  })  : _db = database,
        _settingsProvider = settingsProvider,
        super(
          const DatabaseState(
            races: [],
            stages: [],
            riders: [],
            statuses: [],
            participants: [],
            starts: [],
            finishes: [],
            numbersOnTrace: [],
          ),
        ) {
    _racesSubscription = _db.getRaces().watch().listen((event) async {
      _races = event;
      logger.t('DatabaseBloc -> getRaces().watch()');
      _emitState();
    });

    _stagesSubscription = _db.select(_db.stages).watch().listen((event) async {
      final raceId = _race?.id ?? 0;
      _stages = await _db.getStages(raceId: raceId).get();
      logger.t('DatabaseBloc -> getStages(raceId: $raceId).watch()');
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

    _startsSubscription =
        _db.getParticipantsAtStart(stageId: 0).watch().listen((event) async {
      final stageId = _stage?.id ?? 0;
      _participants = await _db.getParticipantsAtStart(stageId: stageId).get();
      logger.t(
        'DatabaseBloc -> getParticipantsAtStart(stageId: $stageId).watch()',
      );
      _emitState();
    });

    _finishesSubscription =
        _db.select(_db.finishes).watch().listen((event) async {
      final stageId = _stage?.id ?? 0;
      _finishes = await _db
          .getFinishesFromStage(
            stageId: stageId,
            // hideManual: _hideManual,
            // hideMarked: _hideMarked,
            // hideNumbers: _hideNumbers,
          )
          .get();
      logger
          .d('DatabaseBloc -> getFinishesFromStage(stageId: $stageId).watch()');
      _emitState();
    });

    _numbersOnTraceSubscription = _db
        .getNumbersOnTraceNow(
          stageId: 0,
          dateTimeNow: DateTime.now(),
        )
        .watch()
        .listen((event) async {
      final stageId = _stage?.id ?? 0;
      _numbersOnTrace = await _db
          .getNumbersOnTraceNow(stageId: stageId, dateTimeNow: DateTime.now())
          .get();
      logger
          .t('DatabaseBloc -> getNumbersOnTraceNow(stageId: $stageId).watch()');
      _emitState();
    });

    _appSettingsSubscription = _settingsProvider.state.listen((state) async {
      // ToDo: условия чтобы не дёргать запросами sqlite базу при каждом изменении настроек
      // if (_hideMarked != state.hideMarked ||
      //     _hideNumbers != state.hideNumbers ||
      //     _hideManual != state.hideManual) {
      //ignore: literal_only_boolean_expressions
      // if (true) {
      //   _hideMarked = state.hideMarked;
      //   _hideNumbers = state.hideNumbers;
      //   _hideManual = state.hideManual;
      //   await _finishesSubscription.cancel();
      //   _finishesSubscription =
      //       _db.select(_db.finishes).watch().listen((event) async {
      //     final stageId = _stage?.id ?? 0;
      //     _finishes = await _db
      //         .getFinishesFromStage(
      //           stageId: stageId,
      //           hideManual: _hideManual,
      //           hideMarked: _hideMarked,
      //           hideNumbers: _hideNumbers,
      //         )
      //         .get();
      //     logger.t(
      //       'DatabaseBloc -> getFinishesFromStage(stageId: $stageId).watch()',
      //     );
      //     _emitState();
      //   });
      //   logger.t(
      //     'hideMarked: $_hideMarked, hideNumbers: $_hideNumbers, hideManual: $_hideManual, ',
      //   );
      // }
      _finishDelay = state.finishDelay;
      _substituteNumbers = state.substituteNumbers;
      _substituteNumbersDelay = state.substituteNumbersDelay;
    });

    on<DatabaseEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        initialize: (event) async {
          final raceId = _settingsProvider.settings.raceId;
          if (raceId > 0) {
            _races = await _db.getRaces().get();
            for (final race in _races) {
              if (race.id == raceId) {
                _race = race;
                _stages = await _db.getStages(raceId: raceId).get();
              }
            }
          }

          final stageId = _settingsProvider.settings.stageId;
          if (stageId > 0) {
            for (final stage in _stages) {
              if (stage.id == stageId) {
                // _stage = stage;
                add(DatabaseEvent.selectStage(stage));
              }
            }
          }

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
            DatabaseState(
              race: event.race,
              stage: event.stage,
              races: event.races,
              stages: event.stages,
              riders: event.riders,
              statuses: event.statuses,
              participants: event.participants,
              starts: event.starts,
              finishes: event.finishes,
              numbersOnTrace: event.numbersOnTrace,
              notification: event.notification,
              autoFinishNumber: event.autoFinishNumber,
              awaitingNumber: _awaitingNumber,
            ),
          );
        },
        addRace: (event) async {
          await _db.addRace(
            name: event.name,
            startDate: event.startDate,
            finishDate: event.finishDate,
            location: event.location,
            url: event.url,
            description: event.description,
          );
        },
        deleteRace: (event) async {
          await _db.deleteRace(event.id);
        },
        updateRace: (event) async {
          await _db.updateRace(
            id: event.id,
            name: event.name,
            startDate: event.startDate,
            finishDate: event.finishDate,
            location: event.location,
            url: event.url,
            description: event.description,
          );
        },
        upsertRace: (event) async {
          await _db.upsertRace(
            id: event.id,
            name: event.name,
            startDate: event.startDate,
            finishDate: event.finishDate,
            location: event.location,
            url: event.url,
            description: event.description,
          );
        },
        getRaces: (event) async {
          _races = await _db.getRaces().get();
        },
        selectRace: (event) {
          _race = event.race;
          final raceId = event.race.id;
          final settings = _settingsProvider.settings.copyWith(raceId: raceId);
          _settingsProvider.update(settings);
          add(DatabaseEvent.getStages(raceId));
        },
        deselectRace: (event) {
          _race = null;
          _stage = null;
          final settings =
              _settingsProvider.settings.copyWith(raceId: -1, stageId: -1);
          _settingsProvider.update(settings);
          _emitState();
        },
        addStage: (event) async {
          await _db.addStage(
            raceId: event.raceId,
            name: event.name,
            trailId: event.trailId,
          );
        },
        upsertStage: (event) async {
          await _db.upsertStage(
            id: event.id,
            name: event.name,
            description: event.description,
            raceId: event.raceId,
            trailId: event.trailId,
            isActive: event.isActive,
            isDeleted: event.isDeleted,
            removeTrailId: event.removeTrailId,
          );
        },
        deleteStage: (event) async {
          await _db.deleteStage(event.id);
        },
        getStages: (event) async {
          _stages = await _db.getStages(raceId: event.raceId).get();
          _emitState();
        },
        selectStage: (event) async {
          _stage = event.stage;
          final stageId = event.stage.id;

          /// Fill state with data
          final settings =
              _settingsProvider.settings.copyWith(stageId: stageId);
          await _settingsProvider.update(settings);
          _participants =
              await _db.getParticipantsAtStart(stageId: stageId).get();
          _numbersOnTrace = await _db
              .getNumbersOnTraceNow(
                stageId: stageId,
                dateTimeNow: DateTime.now(),
              )
              .get();
          _finishes = await _db.getFinishesFromStage(stageId: stageId).get();
          _emitState();
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
          if (startingParticipants != null && !event.forceAdd) {
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
            timestamp: event.timestamp,
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
          final previousStarts = await _db.updateAutomaticCorrection(
            stageId: event.stageId,
            time: event.startTime,
            correction: event.correction,
            timestamp: event.timestamp,
            deltaInSeconds: event.deltaInSeconds ??
                settingsProvider.settings.deltaInSeconds,
            forceUpdate: event.forceUpdate,
          );
          if (previousStarts != null && !event.forceUpdate) {
            _emitState(
              notification: Notification.updateAutomaticCorrection(
                previousStarts: previousStarts,
                number: previousStarts.first.number,
                startTime: event.startTime,
                timestamp: event.timestamp,
                correction: event.correction,
              ),
            );
          }
        },
        addFinishTime: (event) async {
          final autoFinishNumber = await _db.addFinishTime(
            stage: event.stage,
            finish: event.finishTime,
            timestamp: event.timestamp,
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
            timestamp: event.timestamp,
            number: event.number,
          );
        },
        clearStartResultsDebug: (event) async {
          await _db.clearStartResultsDebug(stageId: event.stageId);
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
            stage: event.stage,
            number: event.number,
          );
        },
        setDNSForStage: (event) async {
          await _db.setDNSForStage(stage: event.stage, number: event.number);
        },
        setDNFForStage: (event) async {
          await _db.setDNFForStage(stage: event.stage, number: event.number);
        },
        addNumberToFinish: (event) async {
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
                stageId: event.stageId,
                dateTimeNow: event.dateTimeNow,
              )
              .get();
          _emitState();
        },
        selectAwaitingNumber: (event) {
          _awaitingNumber = event.number;
          _emitState();
        },
        deselectAwaitingNumber: (event) {
          _awaitingNumber = null;
          _emitState();
        },
        createRaceFromRaceCsv: (event) async {
          final id = await _db.createRaceFromRaceCsv(event.race);
          final race = await _db.getRace(id);
          if (race != null) {
            _stage = null;
            add(DatabaseEvent.selectRace(race));
          }
        },
        createStagesFromStagesCsv: (event) async {
          await _db.createStagesFromStagesCsv(event.raceId, event.stages);
        },
        shareStart: (event) async {
          final race = _race;
          final stage = _stage;
          final stageId = stage?.id;
          if (race != null && stage != null && stageId != null) {
            final startList = await _db.getStartResults(stageId);
            final startMap = <Map<String, dynamic>>[];
            for (final start in startList) {
              startMap.add(start.row.data);
            }
            final csv = mapListToCsv(startMap);
            if (csv != null) {
              final filename = '${race.name}-${stage.name}-start';
              final file = await saveCsv(csv, filename);
              if (file != null) {
                await Share.shareXFiles(
                  [XFile(file.path)],
                  text: Localization.current
                      .I18nProtocol_shareStartResults(race.name, stage.name),
                );
              }
            }
          }
        },
        shareFinish: (event) async {
          final race = _race;
          final stage = _stage;
          final stageId = stage?.id;
          if (race != null && stage != null && stageId != null) {
            final finishList = await _db.getFinishResults(stageId);
            final finishMap = <Map<String, dynamic>>[];
            for (final start in finishList) {
              finishMap.add(start.row.data);
            }
            final csv = mapListToCsv(finishMap);
            if (csv != null) {
              final filename = '${race.name}-${stage.name}-finish';
              final file = await saveCsv(csv, filename);
              if (file != null) {
                await Share.shareXFiles(
                  [XFile(file.path)],
                  text: Localization.current.I18nProtocol_shareFinishResults(
                    race.name,
                    stage.name,
                  ),
                );
              }
            }
          }
        },
        shareDatabase: (event) async {
          final timeStamp = DateFormat(longDateFormat).format(DateTime.now());
          final dbDir = await getApplicationDocumentsDirectory();
          final file = File(
            path.join(dbDir.path, 'database_backup_$timeStamp.sqlite'),
          );
          await _db.exportInto(file);
          await Share.shareXFiles([XFile(file.path)]);
        },
        shareTrack: (event) async {
          final fileId = event.trail.fileId;
          if (fileId != null) {
            final track = await _db.getTrack(fileId);
            if (track != null) {
              final dir = await getTemporaryDirectory();
              var fileName = track.name;
              if (track.extension != null) {
                fileName += '.${track.extension}';
              }
              final file = File(
                path.join(dir.path, fileName),
              );
              // final sink = file.openWrite()
              //   // writeAsBytes(trail.info! as List<int>);
              //   ..write(track.data);
              // await sink.close();
              await file.writeAsBytes(track.data);
              await Share.shareXFiles([XFile(file.path)]);
            }
          }
        },
      );
    });
  }

  final AppDatabase _db;

  List<Race> _races = [];
  List<Stage> _stages = [];
  List<Rider> _riders = [];
  List<Status> _statuses = [];
  List<ParticipantAtStart> _participants = [];
  List<Start> _starts = [];
  List<Finish> _finishes = [];
  List<StartingParticipant> _numbersOnTrace = [];

  Race? _race;
  Stage? _stage;

  // bool _hideMarked = true;
  // bool _hideNumbers = false;
  // bool _hideManual = false;
  late int _finishDelay;
  late bool _substituteNumbers;
  late int _substituteNumbersDelay;
  int? _awaitingNumber;

  final SettingsProvider _settingsProvider;

  late StreamSubscription<List<Race>> _racesSubscription;
  late StreamSubscription<List<Stage>> _stagesSubscription;
  late StreamSubscription<List<ParticipantAtStart>> _startsSubscription;
  late StreamSubscription<List<Finish>> _finishesSubscription;
  late StreamSubscription<List<StartingParticipant>>
      _numbersOnTraceSubscription;
  late StreamSubscription<AppSettings> _appSettingsSubscription;

  void _emitState({
    Notification? notification,
    int? autoFinishNumber,
    bool? updateFinishNumber,
  }) {
    add(
      DatabaseEvent.emitState(
        race: _race,
        stage: _stage,
        races: _races,
        stages: _stages,
        riders: _riders,
        statuses: _statuses,
        participants: _participants,
        starts: _starts,
        finishes: _finishes,
        numbersOnTrace: _numbersOnTrace,
        notification: notification,
        autoFinishNumber: autoFinishNumber,
        awaitingNumber: _awaitingNumber,
        updateFinishNumber: updateFinishNumber,
      ),
    );
  }

  @override
  Future<void> close() {
    _racesSubscription.cancel();
    _stagesSubscription.cancel();
    _startsSubscription.cancel();
    _finishesSubscription.cancel();
    _numbersOnTraceSubscription.cancel();
    _appSettingsSubscription.cancel();
    return super.close();
  }
}
