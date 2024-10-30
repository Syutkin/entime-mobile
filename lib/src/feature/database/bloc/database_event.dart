part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.initialize() = _Initialize;

  const factory DatabaseEvent.emitState({
    required Race? race,
    required Stage? stage,
    required List<Race> races,
    required List<Stage> stages,
    required List<Rider> riders,
    required List<Status> statuses,
    required List<ParticipantAtStart> participants,
    required List<Start> starts,
    required List<Finish> finishes,
    required List<Trail> trails,
    required List<StartingParticipant> numbersOnTrace,
    required Notification? notification,
    required int? autoFinishNumber,
    required int? awaitingNumber,
    required bool? updateFinishNumber,
  }) = _EmitState;

  const factory DatabaseEvent.addRace({
    required String name,
    DateTime? startDate,
    DateTime? finishDate,
    String? location,
  }) = _AddRace;

  const factory DatabaseEvent.updateRace({
    required int id,
    String? name,
    DateTime? startDate,
    DateTime? finishDate,
    String? location,
    String? url,
    String? description,
  }) = _UpdateRace;

  const factory DatabaseEvent.deleteRace(int id) = _DeleteRace;

  const factory DatabaseEvent.getRaces() = _GetRaces;

  const factory DatabaseEvent.selectRace(Race race) = _SelectRace;

  const factory DatabaseEvent.deselectRace() = _DeselectRace;

  const factory DatabaseEvent.addStage({
    required String name,
    required int raceId,
    int? trailId,
  }) = _AddStage;

  const factory DatabaseEvent.deleteStage(int id) = _DeleteStage;

  const factory DatabaseEvent.getStages(int raceId) = _GetStages;

  const factory DatabaseEvent.selectStage(Stage stage) = _SelectStage;

  const factory DatabaseEvent.getParticipantsAtStart(int stageId) =
      _GetParticipantsAtStart;

  const factory DatabaseEvent.addStartNumber({
    required Stage stage,
    required int number,
    required String startTime,
    @Default(false) bool forceAdd,
  }) = _AddStartNumber;

  const factory DatabaseEvent.updateStartingInfo({
    required String startTime,
    String? automaticStartTime,
    int? automaticCorrection,
    String? manualStartTime,
    int? manualCorrection,
    required int stageId,
    required int participantId,
  }) = _UpdateStartingInfo;

  const factory DatabaseEvent.updateAutomaticCorrection({
    required int stageId,
    required String startTime,
    required int correction,
    required DateTime timestamp,
    @Default(false) bool forceUpdate,
    int? deltaInSeconds,
  }) = _UpdateAutomaticCorrection;

  const factory DatabaseEvent.updateManualStartTime({
    required int stageId,
    required DateTime time,
    required DateTime timestamp,
    @Default(15) int deltaInSeconds,
  }) = _UpdateManualStartTime;

  const factory DatabaseEvent.setStatusForStartId({
    required int startId,
    required ParticipantStatus status,
  }) = _SetStatusForStartId;

  // const factory DatabaseEvent.getFinishesFromStage({
  //   required int stageId,
  // }) = _GetFinishesFromStage;

  const factory DatabaseEvent.addFinishTime({
    required Stage stage,
    required String finishTime,
    required DateTime timestamp,
    int? finishDelay,
    bool? substituteNumbers,
    int? substituteNumbersDelay,
    DateTime? dateTimeNow,
    int? number,
  }) = _AddFinishTime;

  const factory DatabaseEvent.addFinishTimeManual({
    required int stageId,
    required String finishTime,
    required DateTime timestamp,
    int? number,
  }) = _AddFinishTimeManual;

  const factory DatabaseEvent.clearStartResultsDebug(
    int stageId,
  ) = _ClearStartResultsDebug;

  const factory DatabaseEvent.clearFinishResultsDebug(
    int stageId,
  ) = _ClearFinishResultsDebug;

  const factory DatabaseEvent.hideAllFinises(
    int stageId,
  ) = _HideAllFinises;

  const factory DatabaseEvent.clearNumberAtFinish({
    required Stage stage,
    required int number,
  }) = _ClearNumberAtFinish;

  const factory DatabaseEvent.setDNSForStage({
    required Stage stage,
    required int number,
  }) = _SetDNSForStage;

  const factory DatabaseEvent.setDNFForStage({
    required Stage stage,
    required int number,
  }) = _SetDNFForStage;

  const factory DatabaseEvent.hideFinish({
    required int id,
  }) = _HideFinish;

  const factory DatabaseEvent.addNumberToFinish({
    required Stage stage,
    required int finishId,
    required int number,
    required String finishTime,
  }) = _AddNumberToFinish;

  const factory DatabaseEvent.getNumbersOnTraceNow({
    required int stageId,
    required DateTime dateTimeNow,
  }) = _GetNumbersOnTraceNow;

  const factory DatabaseEvent.selectAwaitingNumber({
    required int number,
  }) = _SelectAwaitingNumber;

  const factory DatabaseEvent.deselectAwaitingNumber() =
      _DeselectAwaitingNumber;

  const factory DatabaseEvent.createRaceFromRaceCsv({
    required RaceCsv race,
  }) = _CreateRaceFromRaceCsv;

  const factory DatabaseEvent.shareStart() = _ShareStart;

  const factory DatabaseEvent.shareFinish() = _ShareFinish;

  const factory DatabaseEvent.shareDatabase() = _ShareDatabase;
}
