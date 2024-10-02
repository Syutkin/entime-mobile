part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.initialize() = _Initialize;

  const factory DatabaseEvent.emitState({
    List<Race>? races,
    List<Stage>? stages,
    List<Rider>? riders,
    List<Status>? statuses,
    List<ParticipantAtStart>? participants,
    List<Start>? starts,
    List<Finish>? finishes,
    List<Trail>? trails,
    List<StartingParticipant>? numbersOnTrace,
    Notification? notification,
  }) = _EmitState;

  const factory DatabaseEvent.addRace(Race race) = _AddRace;

  const factory DatabaseEvent.deleteRace(int id) = _DeleteRace;

  const factory DatabaseEvent.addStage(Stage stage) = _AddStage;

  const factory DatabaseEvent.selectStages(int raceId) = _SelectStages;

  const factory DatabaseEvent.deleteStage(int id) = _DeleteStage;

  const factory DatabaseEvent.getParticipantsAtStart(int stageId) =
      _GetParticipantsAtStart;

  const factory DatabaseEvent.addStartNumber({
    required Stage stage,
    required int number,
    required String startTime,
    @Default(false) bool forceAdd,
  }) = _addStartNumber;

  const factory DatabaseEvent.updateStartingInfo({
    required String startTime,
    String? automaticStartTime,
    int? automaticCorrection,
    String? manualStartTime,
    int? manualCorrection,
    required int stageId,
    required int participantId,
  }) = _updateStartingInfo;

  const factory DatabaseEvent.updateAutomaticCorrection({
    required int stageId,
    required String time,
    required int correction,
    required DateTime timeStamp,
    @Default(false) bool forceUpdate,
    @Default(15) int deltaInSeconds,
  }) = _updateAutomaticCorrection;

  const factory DatabaseEvent.updateManualStartTime({
    required int stageId,
    required DateTime time,
    @Default(15) int deltaInSeconds,
  }) = _UpdateManualStartTime;

  const factory DatabaseEvent.setStatusForStartId({
    required int startId,
    required ParticipantStatus status,
  }) = _setStatusForStartId;

  const factory DatabaseEvent.addFinishTime({
    required Stage stage,
    required String finish,
    required DateTime timeStamp,
    @Default(0) int finishDelay,
    @Default(false) bool substituteNumbers,
    @Default(0) int substituteNumbersDelay,
    DateTime? dateTimeNow,
    int? number,
  }) = _addFinishTime;

  const factory DatabaseEvent.addFinishTimeManual({
    required int stageId,
    required String finishTime,
    int? number,
  }) = _addFinishTimeManual;

  //ToDO
  const factory DatabaseEvent.clearStartResultsDebug(
    int stageId,
  ) = _clearStartResultsDebug;

  const factory DatabaseEvent.clearFinishResultsDebug(
    int stageId,
  ) = _clearFinishResultsDebug;

  const factory DatabaseEvent.hideAllFinises(
    int stageId,
  ) = _hideAllFinises;

  const factory DatabaseEvent.clearNumberAtFinish({
    required Stage stage,
    required int number,
  }) = _clearNumberAtFinish;

  const factory DatabaseEvent.setDNSForStage({
    required Stage stage,
    required int number,
  }) = _setDNSForStage;

  const factory DatabaseEvent.setDNFForStage({
    required Stage stage,
    required int number,
  }) = _setDNFForStage;

  const factory DatabaseEvent.hideFinish({
    required int id,
  }) = _hideFinish;

  const factory DatabaseEvent.addNumberToFinish({
    required Stage stage,
    required int finishId,
    required int number,
    required String finishTime,
  }) = _addNumberToFinish;

  const factory DatabaseEvent.getNumbersOnTraceNow({
    required int stageId,
    required DateTime dateTimeNow,
  }) = _getNumbersOnTraceNow;

  //ToDO:
  const factory DatabaseEvent.loadStartFromCsv({
    PlatformFile? csv,
  }) = _loadStartFromCsv;

  //ToDO:
  const factory DatabaseEvent.shareStart() = _shareStart;

  //ToDO:
  const factory DatabaseEvent.shareFinish() = _shareFinish;

  //ToDO:
  const factory DatabaseEvent.selectAwaitingNumber({
    required int number,
  }) = _selectAwaitingNumber;

  //ToDO:
  const factory DatabaseEvent.deselectAwaitingNumber() =
      _deselectAwaitingNumber;
}
