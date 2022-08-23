part of 'protocol_bloc.dart';

@freezed
class ProtocolEvent with _$ProtocolEvent {
  const factory ProtocolEvent.select({
    String? file,
    PlatformFile? csv,
  }) = SelectProtocol;

  const factory ProtocolEvent.deselect() = DeselectProtocol;

  const factory ProtocolEvent.addStartNumber({
    required StartTime startTime,
    @Default(false) bool forceAdd,
  }) = ProtocolAddStartNumber;

  const factory ProtocolEvent.updateAutomaticCorrection({
    required AutomaticStart automaticStart,
    @Default(false) bool forceUpdate,
  }) = ProtocolUpdateAutomaticCorrection;

  const factory ProtocolEvent.updateManualStartTime({
    required DateTime time,
  }) = ProtocolUpdateManualStartTime;

  const factory ProtocolEvent.addFinishTime({
    required String time,
    required DateTime timeStamp,
  }) = ProtocolAddFinishTime;

  const factory ProtocolEvent.addFinishTimeManual({
    required String time,
  }) = ProtocolAddFinishTimeManual;

  const factory ProtocolEvent.updateItemInfoAtStart({
    required StartItem item,
  }) = ProtocolUpdateItemInfoAtStart;

  const factory ProtocolEvent.clearStartResultsDebug() =
      ProtocolClearStartResultsDebug;

  const factory ProtocolEvent.clearFinishResultsDebug() =
      ProtocolClearFinishResultsDebug;

  const factory ProtocolEvent.hideAllFinishResults() =
      ProtocolHideAllFinishResults;

  const factory ProtocolEvent.clearNumberAtFinish({
    required int number,
  }) = ProtocolClearNumberAtFinish;

  const factory ProtocolEvent.setDNS({
    required int number,
  }) = ProtocolSetDNS;

  const factory ProtocolEvent.setDNF({
    required int number,
  }) = ProtocolSetDNF;

  const factory ProtocolEvent.hideFinishTime({
    required int id,
  }) = ProtocolHideFinishTime;

  const factory ProtocolEvent.setNumberToFinishTime({
    required int id,
    required int number,
    required String finishTime,
  }) = ProtocolSetNumberToFinishTime;

  const factory ProtocolEvent.getNumbersOnTrace() = ProtocolGetNumbersOnTrace;

  const factory ProtocolEvent.loadStartFromCsv({
    PlatformFile? csv,
  }) = ProtocolLoadStartFromCsv;

  const factory ProtocolEvent.shareStart() = ProtocolShareStart;

  const factory ProtocolEvent.shareFinish() = ProtocolShareFinish;

  const factory ProtocolEvent.selectAwaitingNumber({
    required int number,
  }) = ProtocolSelectAwaitingNumber;

  const factory ProtocolEvent.deselectAwaitingNumber() =
      ProtocolDeselectAwaitingNumber;
}
