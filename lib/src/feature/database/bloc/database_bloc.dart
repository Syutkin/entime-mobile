import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/localization/localization.dart';
import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../../../common/utils/file_utils.dart';
import '../../../constants/date_time_formats.dart';
import '../../../feature/csv/csv.dart';
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
    required ISettingsProvider settingsProvider,
    this.fileProvider = const StartlistProvider(),
  }) : _db = database,
       _settingsProvider = settingsProvider,
       super(
         const DatabaseState(
           races: [],
           stages: [],
           categories: [],
           riders: [],
           participants: [],
           finishes: [],
           numbersOnTrace: [],
         ),
       ) {
    on<DatabaseEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        initialize: (event) async {
          final raceId = _settingsProvider.settings.raceId;
          final stageId = _settingsProvider.settings.stageId;

          if (raceId > 0) {
            _race = await _db.getRace(raceId);
            if (stageId > 0) {
              _stage = await _db.getStage(stageId);
            }
          }

          _racesSubscription ??= _db.getRaces().watch().listen((event) async {
            _races = event;
            logger.t('DatabaseBloc -> getRaces().watch()');
            await _emitState();
          });

          await _stagesSubscription?.cancel();
          _stagesSubscription = _db.getStages(raceId: raceId).watch().listen((event) async {
            _stages = event;
            logger.t('DatabaseBloc -> getStages(raceId: $raceId).watch()');
            await _emitState();
          });

          _ridersSubscription ??= _db.getRiders.watch().listen((event) async {
            _riders = event;
            logger.t('DatabaseBloc -> getRiders().watch()');
            await _emitState();
          });

          await _startsSubscription?.cancel();
          _startsSubscription = _db.getParticipantsAtStart(stageId: stageId).watch().listen((event) async {
            _participants = event;
            _categories = await _db.getCategories(raceId);
            logger.t('DatabaseBloc -> getParticipantsAtStart(stageId: $stageId).watch()');
            await _emitState();
          });

          await _finishesSubscription?.cancel();
          _finishesSubscription = _db.getFinishesFromStage(stageId: stageId).watch().listen((event) async {
            _finishes = event;
            logger.d('DatabaseBloc -> getFinishesFromStage(stageId: $stageId).watch()');
            await _emitState();
          });

          await _numbersOnTraceSubscription?.cancel();
          _numbersOnTraceSubscription = _db
              .getNumbersOnTraceNow(stageId: stageId, dateTimeNow: DateTime(2020))
              .watch()
              .listen((event) async {
                _numbersOnTrace = await _db.getNumbersOnTraceNow(stageId: stageId, dateTimeNow: DateTime.now()).get();
                logger.t('DatabaseBloc -> getNumbersOnTraceNow(stageId: $stageId).watch()');
                await _emitState();
              });

          _appSettingsSubscription ??= _settingsProvider.state.listen((state) async {
            _finishDelay = state.finishDelay;
            _substituteNumbers = state.substituteNumbers;
            _substituteNumbersDelay = state.substituteNumbersDelay;
          });
        },
        emitState: (event) async {
          emit(
            DatabaseState(
              race: event.race,
              stage: event.stage,
              races: event.races,
              stages: event.stages,
              categories: event.categories,
              riders: event.riders,
              participants: event.participants,
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
        selectRace: (event) async {
          _race = event.race;
          final raceId = event.race.id;
          final settings = _settingsProvider.settings.copyWith(raceId: raceId);
          await _settingsProvider.update(settings);
          add(const DatabaseEvent.initialize());
        },
        deselectRace: (event) async {
          _race = null;
          _stage = null;
          final settings = _settingsProvider.settings.copyWith(raceId: -1, stageId: -1);
          await _settingsProvider.update(settings);
          add(const DatabaseEvent.initialize());
        },
        addStage: (event) async {
          await _db.addStage(raceId: event.raceId, name: event.name, trailId: event.trailId);
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
          await _emitState();
        },
        selectStage: (event) async {
          _stage = event.stage;
          final stageId = event.stage.id;
          final settings = _settingsProvider.settings.copyWith(stageId: stageId);
          await _settingsProvider.update(settings);
          add(const DatabaseEvent.initialize());
        },
        getParticipantsAtStart: (event) async {
          _participants = await _db.getParticipantsAtStart(stageId: event.stageId).get();
          await _emitState();
        },
        addStartNumber: (event) async {
          final startingParticipants = await _db.addStartNumber(
            stage: event.stage,
            number: event.number,
            startTime: event.startTime,
            forceAdd: event.forceAdd,
          );
          if (startingParticipants != null && !event.forceAdd) {
            final notification = Notification.updateStartNumber(
              existedStartingParticipants: startingParticipants,
              number: event.number,
              startTime: event.startTime,
            );
            await _emitState(notification: notification);
          }
        },
        updateRider: (event) async {
          await _db.updateRider(
            id: event.riderId,
            name: event.name,
            nickname: event.nickname,
            birthday: event.birthday,
            team: event.team,
            city: event.city,
            email: event.email,
            phone: event.phone,
            comment: event.comment,
            isDeleted: event.isDeleted,
          );
        },
        updateRacer: (event) async {
          if (event.riderId >= 0) {
            await _db.updateRider(
              id: event.riderId,
              name: event.name,
              nickname: event.nickname,
              birthday: event.birthday,
              team: event.team,
              city: event.city,
              email: event.email,
              phone: event.phone,
              comment: event.comment,
            );
            await _db.updateParticipant(id: event.participantId, riderId: event.riderId, category: event.category);
          } else {
            final riderId = await _db.addRider(
              name: event.name,
              nickname: event.nickname,
              birthday: event.birthday,
              team: event.team,
              city: event.city,
              email: event.email,
              phone: event.phone,
              comment: event.comment,
            );
            await _db.updateParticipant(id: event.participantId, riderId: riderId, category: event.category);
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
            timestamp: event.timestamp,
            ntpOffset: event.ntpOffset,
            deltaInSeconds: event.deltaInSeconds,
          );
        },
        setStatusForStartId: (event) async {
          await _db.setStatusForStartId(startId: event.startId, status: ParticipantStatus.dns);
        },
        updateAutomaticCorrection: (event) async {
          final previousStarts = await _db.updateAutomaticCorrection(
            stageId: event.stageId,
            time: event.startTime,
            correction: event.correction,
            timestamp: event.timestamp,
            ntpOffset: event.ntpOffset,
            deltaInSeconds: event.deltaInSeconds,
            forceUpdate: event.forceUpdate,
          );
          if (previousStarts != null && !event.forceUpdate) {
            await _emitState(
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
            ntpOffset: event.ntpOffset,
            finishDelay: event.finishDelay ?? _finishDelay,
            substituteNumbers: event.substituteNumbers ?? _substituteNumbers,
            substituteNumbersDelay: event.finishDelay ?? _substituteNumbersDelay,
            dateTimeNow: event.dateTimeNow,
            number: _awaitingNumber,
          );
          if (autoFinishNumber != null) {
            // снять выделение с автоматически подставленного номера
            _awaitingNumber = null;
            await _emitState(autoFinishNumber: autoFinishNumber);
          }
        },
        addFinishTimeManual: (event) async {
          await _db.addFinishTimeManual(
            stageId: event.stageId,
            timestamp: event.timestamp,
            ntpOffset: event.ntpOffset,
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
        hideAllFinishes: (event) async {
          await _db.hideAllFinishes(event.stageId);
        },
        clearNumberAtFinish: (event) async {
          // _autoFinishNumber = null;
          await _db.clearNumberAtFinish(stage: event.stage, number: event.number);
        },
        setDNSForStage: (event) async {
          await _db.setDNSForStage(stage: event.stage, number: event.number);
        },
        setDNFForStage: (event) async {
          await _db.setDNFForStage(stage: event.stage, number: event.number);
        },
        addNumberToFinish: (event) async {
          final success = await _db.addNumberToFinish(
            stage: event.stage,
            finishId: event.finishId,
            number: event.number,
            finishTime: event.finishTime,
          );
          if (success) {
            await _emitState();
          } else {
            await _emitState(
              notification: Notification.changeFinishTimeToNumber(
                stage: event.stage,
                finishId: event.finishId,
                number: event.number,
                finishTime: event.finishTime,
              ),
            );
          }
        },
        getNumbersOnTraceNow: (event) async {
          _numbersOnTrace =
              await _db.getNumbersOnTraceNow(stageId: event.stageId, dateTimeNow: event.dateTimeNow).get();
          await _emitState();
        },
        shiftStartsTime: (event) async {
          await _db.shiftStartsTime(stageId: event.stageId, minutes: event.minutes, fromTime: event.fromTime);
        },
        selectAwaitingNumber: (event) {
          _awaitingNumber = event.number;
          _emitState();
        },
        deselectAwaitingNumber: (event) {
          _awaitingNumber = null;
          _emitState();
        },
        createRaceFromFile: (event) async {
          final raceCsv = await fileProvider.getRaceFromFile();
          if (raceCsv != null) {
            final id = await _db.createRaceFromRaceCsv(raceCsv);
            final race = await _db.getRace(id);
            if (race != null) {
              _stage = null;
              add(DatabaseEvent.selectRace(race));
            }
          }
        },
        createStagesFromFile: (event) async {
          final stageCsv = await fileProvider.getStagesFromFile();
          if (stageCsv != null) {
            await _db.createStagesFromStagesCsv(event.raceId, stageCsv);
          }
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
              final file = await saveToFile(csv, filename);
              if (file != null) {
                await SharePlus.instance.share(
                  ShareParams(
                    files: [XFile(file.path)],
                    text: Localization.current.I18nProtocol_shareStartResults(race.name, stage.name),
                  ),
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
              final file = await saveToFile(csv, filename);
              if (file != null) {
                await SharePlus.instance.share(
                  ShareParams(
                    files: [XFile(file.path)],
                    text: Localization.current.I18nProtocol_shareFinishResults(race.name, stage.name),
                  ),
                );
              }
            }
          }
        },
        shareDatabase: (event) async {
          final timeStamp = DateFormat(longDateFormat).format(DateTime.now());
          final dbDir = await getApplicationDocumentsDirectory();
          final file = File(path.join(dbDir.path, 'database_backup_$timeStamp.sqlite'));
          await _db.exportInto(file);
          await SharePlus.instance.share(ShareParams(files: [XFile(file.path)]));
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
              final file = File(path.join(dir.path, fileName));
              // final sink = file.openWrite()
              //   // writeAsBytes(trail.info! as List<int>);
              //   ..write(track.data);
              // await sink.close();
              await file.writeAsBytes(track.data);
              await SharePlus.instance.share(ShareParams(files: [XFile(file.path)]));
            }
          }
        },
      );
    });
    add(const DatabaseEvent.initialize());
  }

  final AppDatabase _db;

  List<Race> _races = [];
  List<Stage> _stages = [];
  List<String?> _categories = [];
  List<Rider> _riders = [];
  List<ParticipantAtStart> _participants = [];
  List<Finish> _finishes = [];
  List<StartingParticipant> _numbersOnTrace = [];

  Race? _race;
  Stage? _stage;

  late int _finishDelay;
  late bool _substituteNumbers;
  late int _substituteNumbersDelay;
  int? _awaitingNumber;

  final ISettingsProvider _settingsProvider;

  StreamSubscription<List<Race>>? _racesSubscription;
  StreamSubscription<List<Stage>>? _stagesSubscription;
  StreamSubscription<List<Rider>>? _ridersSubscription;
  StreamSubscription<List<ParticipantAtStart>>? _startsSubscription;
  StreamSubscription<List<Finish>>? _finishesSubscription;
  StreamSubscription<List<StartingParticipant>>? _numbersOnTraceSubscription;
  StreamSubscription<AppSettings>? _appSettingsSubscription;

  StartlistProvider fileProvider;

  Future<void> _emitState({Notification? notification, int? autoFinishNumber, bool? updateFinishNumber}) async {
    add(
      DatabaseEvent.emitState(
        race: _race,
        stage: _stage,
        races: _races,
        stages: _stages,
        categories: _categories,
        riders: _riders,
        participants: _participants,
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
    _racesSubscription?.cancel();
    _stagesSubscription?.cancel();
    _ridersSubscription?.cancel();
    _startsSubscription?.cancel();
    _finishesSubscription?.cancel();
    _numbersOnTraceSubscription?.cancel();
    _appSettingsSubscription?.cancel();
    return super.close();
  }
}
