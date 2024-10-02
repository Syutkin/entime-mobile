// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res, DatabaseEvent>;
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res, $Val extends DatabaseEvent>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'DatabaseEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements DatabaseEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$EmitStateImplCopyWith<$Res> {
  factory _$$EmitStateImplCopyWith(
          _$EmitStateImpl value, $Res Function(_$EmitStateImpl) then) =
      __$$EmitStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Race>? races,
      List<Stage>? stages,
      List<Rider>? riders,
      List<Status>? statuses,
      List<ParticipantAtStart>? participants,
      List<Start>? starts,
      List<Finish>? finishes,
      List<Trail>? trails,
      List<StartingParticipant>? numbersOnTrace,
      Notification? notification});

  $NotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$EmitStateImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$EmitStateImpl>
    implements _$$EmitStateImplCopyWith<$Res> {
  __$$EmitStateImplCopyWithImpl(
      _$EmitStateImpl _value, $Res Function(_$EmitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? races = freezed,
    Object? stages = freezed,
    Object? riders = freezed,
    Object? statuses = freezed,
    Object? participants = freezed,
    Object? starts = freezed,
    Object? finishes = freezed,
    Object? trails = freezed,
    Object? numbersOnTrace = freezed,
    Object? notification = freezed,
  }) {
    return _then(_$EmitStateImpl(
      races: freezed == races
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>?,
      stages: freezed == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>?,
      riders: freezed == riders
          ? _value._riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>?,
      statuses: freezed == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantAtStart>?,
      starts: freezed == starts
          ? _value._starts
          : starts // ignore: cast_nullable_to_non_nullable
              as List<Start>?,
      finishes: freezed == finishes
          ? _value._finishes
          : finishes // ignore: cast_nullable_to_non_nullable
              as List<Finish>?,
      trails: freezed == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
      numbersOnTrace: freezed == numbersOnTrace
          ? _value._numbersOnTrace
          : numbersOnTrace // ignore: cast_nullable_to_non_nullable
              as List<StartingParticipant>?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification?,
    ));
  }

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $NotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$EmitStateImpl implements _EmitState {
  const _$EmitStateImpl(
      {final List<Race>? races,
      final List<Stage>? stages,
      final List<Rider>? riders,
      final List<Status>? statuses,
      final List<ParticipantAtStart>? participants,
      final List<Start>? starts,
      final List<Finish>? finishes,
      final List<Trail>? trails,
      final List<StartingParticipant>? numbersOnTrace,
      this.notification})
      : _races = races,
        _stages = stages,
        _riders = riders,
        _statuses = statuses,
        _participants = participants,
        _starts = starts,
        _finishes = finishes,
        _trails = trails,
        _numbersOnTrace = numbersOnTrace;

  final List<Race>? _races;
  @override
  List<Race>? get races {
    final value = _races;
    if (value == null) return null;
    if (_races is EqualUnmodifiableListView) return _races;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Stage>? _stages;
  @override
  List<Stage>? get stages {
    final value = _stages;
    if (value == null) return null;
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Rider>? _riders;
  @override
  List<Rider>? get riders {
    final value = _riders;
    if (value == null) return null;
    if (_riders is EqualUnmodifiableListView) return _riders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Status>? _statuses;
  @override
  List<Status>? get statuses {
    final value = _statuses;
    if (value == null) return null;
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ParticipantAtStart>? _participants;
  @override
  List<ParticipantAtStart>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Start>? _starts;
  @override
  List<Start>? get starts {
    final value = _starts;
    if (value == null) return null;
    if (_starts is EqualUnmodifiableListView) return _starts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Finish>? _finishes;
  @override
  List<Finish>? get finishes {
    final value = _finishes;
    if (value == null) return null;
    if (_finishes is EqualUnmodifiableListView) return _finishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Trail>? _trails;
  @override
  List<Trail>? get trails {
    final value = _trails;
    if (value == null) return null;
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StartingParticipant>? _numbersOnTrace;
  @override
  List<StartingParticipant>? get numbersOnTrace {
    final value = _numbersOnTrace;
    if (value == null) return null;
    if (_numbersOnTrace is EqualUnmodifiableListView) return _numbersOnTrace;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Notification? notification;

  @override
  String toString() {
    return 'DatabaseEvent.emitState(races: $races, stages: $stages, riders: $riders, statuses: $statuses, participants: $participants, starts: $starts, finishes: $finishes, trails: $trails, numbersOnTrace: $numbersOnTrace, notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitStateImpl &&
            const DeepCollectionEquality().equals(other._races, _races) &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            const DeepCollectionEquality().equals(other._riders, _riders) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._starts, _starts) &&
            const DeepCollectionEquality().equals(other._finishes, _finishes) &&
            const DeepCollectionEquality().equals(other._trails, _trails) &&
            const DeepCollectionEquality()
                .equals(other._numbersOnTrace, _numbersOnTrace) &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_races),
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_riders),
      const DeepCollectionEquality().hash(_statuses),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_starts),
      const DeepCollectionEquality().hash(_finishes),
      const DeepCollectionEquality().hash(_trails),
      const DeepCollectionEquality().hash(_numbersOnTrace),
      notification);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitStateImplCopyWith<_$EmitStateImpl> get copyWith =>
      __$$EmitStateImplCopyWithImpl<_$EmitStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return emitState(races, stages, riders, statuses, participants, starts,
        finishes, trails, numbersOnTrace, notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return emitState?.call(races, stages, riders, statuses, participants,
        starts, finishes, trails, numbersOnTrace, notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (emitState != null) {
      return emitState(races, stages, riders, statuses, participants, starts,
          finishes, trails, numbersOnTrace, notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return emitState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return emitState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (emitState != null) {
      return emitState(this);
    }
    return orElse();
  }
}

abstract class _EmitState implements DatabaseEvent {
  const factory _EmitState(
      {final List<Race>? races,
      final List<Stage>? stages,
      final List<Rider>? riders,
      final List<Status>? statuses,
      final List<ParticipantAtStart>? participants,
      final List<Start>? starts,
      final List<Finish>? finishes,
      final List<Trail>? trails,
      final List<StartingParticipant>? numbersOnTrace,
      final Notification? notification}) = _$EmitStateImpl;

  List<Race>? get races;
  List<Stage>? get stages;
  List<Rider>? get riders;
  List<Status>? get statuses;
  List<ParticipantAtStart>? get participants;
  List<Start>? get starts;
  List<Finish>? get finishes;
  List<Trail>? get trails;
  List<StartingParticipant>? get numbersOnTrace;
  Notification? get notification;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmitStateImplCopyWith<_$EmitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRaceImplCopyWith<$Res> {
  factory _$$AddRaceImplCopyWith(
          _$AddRaceImpl value, $Res Function(_$AddRaceImpl) then) =
      __$$AddRaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Race race});
}

/// @nodoc
class __$$AddRaceImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$AddRaceImpl>
    implements _$$AddRaceImplCopyWith<$Res> {
  __$$AddRaceImplCopyWithImpl(
      _$AddRaceImpl _value, $Res Function(_$AddRaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? race = freezed,
  }) {
    return _then(_$AddRaceImpl(
      freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Race,
    ));
  }
}

/// @nodoc

class _$AddRaceImpl implements _AddRace {
  const _$AddRaceImpl(this.race);

  @override
  final Race race;

  @override
  String toString() {
    return 'DatabaseEvent.addRace(race: $race)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRaceImpl &&
            const DeepCollectionEquality().equals(other.race, race));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(race));

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRaceImplCopyWith<_$AddRaceImpl> get copyWith =>
      __$$AddRaceImplCopyWithImpl<_$AddRaceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addRace(race);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addRace?.call(race);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addRace != null) {
      return addRace(race);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return addRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addRace != null) {
      return addRace(this);
    }
    return orElse();
  }
}

abstract class _AddRace implements DatabaseEvent {
  const factory _AddRace(final Race race) = _$AddRaceImpl;

  Race get race;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRaceImplCopyWith<_$AddRaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRaceImplCopyWith<$Res> {
  factory _$$DeleteRaceImplCopyWith(
          _$DeleteRaceImpl value, $Res Function(_$DeleteRaceImpl) then) =
      __$$DeleteRaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteRaceImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$DeleteRaceImpl>
    implements _$$DeleteRaceImplCopyWith<$Res> {
  __$$DeleteRaceImplCopyWithImpl(
      _$DeleteRaceImpl _value, $Res Function(_$DeleteRaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteRaceImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteRaceImpl implements _DeleteRace {
  const _$DeleteRaceImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DatabaseEvent.deleteRace(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRaceImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRaceImplCopyWith<_$DeleteRaceImpl> get copyWith =>
      __$$DeleteRaceImplCopyWithImpl<_$DeleteRaceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return deleteRace(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return deleteRace?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deleteRace != null) {
      return deleteRace(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return deleteRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return deleteRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deleteRace != null) {
      return deleteRace(this);
    }
    return orElse();
  }
}

abstract class _DeleteRace implements DatabaseEvent {
  const factory _DeleteRace(final int id) = _$DeleteRaceImpl;

  int get id;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteRaceImplCopyWith<_$DeleteRaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddStageImplCopyWith<$Res> {
  factory _$$AddStageImplCopyWith(
          _$AddStageImpl value, $Res Function(_$AddStageImpl) then) =
      __$$AddStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage});
}

/// @nodoc
class __$$AddStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$AddStageImpl>
    implements _$$AddStageImplCopyWith<$Res> {
  __$$AddStageImplCopyWithImpl(
      _$AddStageImpl _value, $Res Function(_$AddStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(_$AddStageImpl(
      freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
    ));
  }
}

/// @nodoc

class _$AddStageImpl implements _AddStage {
  const _$AddStageImpl(this.stage);

  @override
  final Stage stage;

  @override
  String toString() {
    return 'DatabaseEvent.addStage(stage: $stage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStageImpl &&
            const DeepCollectionEquality().equals(other.stage, stage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stage));

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStageImplCopyWith<_$AddStageImpl> get copyWith =>
      __$$AddStageImplCopyWithImpl<_$AddStageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addStage?.call(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addStage != null) {
      return addStage(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return addStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addStage != null) {
      return addStage(this);
    }
    return orElse();
  }
}

abstract class _AddStage implements DatabaseEvent {
  const factory _AddStage(final Stage stage) = _$AddStageImpl;

  Stage get stage;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStageImplCopyWith<_$AddStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectStagesImplCopyWith<$Res> {
  factory _$$SelectStagesImplCopyWith(
          _$SelectStagesImpl value, $Res Function(_$SelectStagesImpl) then) =
      __$$SelectStagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int raceId});
}

/// @nodoc
class __$$SelectStagesImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SelectStagesImpl>
    implements _$$SelectStagesImplCopyWith<$Res> {
  __$$SelectStagesImplCopyWithImpl(
      _$SelectStagesImpl _value, $Res Function(_$SelectStagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raceId = null,
  }) {
    return _then(_$SelectStagesImpl(
      null == raceId
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectStagesImpl implements _SelectStages {
  const _$SelectStagesImpl(this.raceId);

  @override
  final int raceId;

  @override
  String toString() {
    return 'DatabaseEvent.selectStages(raceId: $raceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStagesImpl &&
            (identical(other.raceId, raceId) || other.raceId == raceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, raceId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectStagesImplCopyWith<_$SelectStagesImpl> get copyWith =>
      __$$SelectStagesImplCopyWithImpl<_$SelectStagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return selectStages(raceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return selectStages?.call(raceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (selectStages != null) {
      return selectStages(raceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return selectStages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return selectStages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (selectStages != null) {
      return selectStages(this);
    }
    return orElse();
  }
}

abstract class _SelectStages implements DatabaseEvent {
  const factory _SelectStages(final int raceId) = _$SelectStagesImpl;

  int get raceId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectStagesImplCopyWith<_$SelectStagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStageImplCopyWith<$Res> {
  factory _$$DeleteStageImplCopyWith(
          _$DeleteStageImpl value, $Res Function(_$DeleteStageImpl) then) =
      __$$DeleteStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$DeleteStageImpl>
    implements _$$DeleteStageImplCopyWith<$Res> {
  __$$DeleteStageImplCopyWithImpl(
      _$DeleteStageImpl _value, $Res Function(_$DeleteStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteStageImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteStageImpl implements _DeleteStage {
  const _$DeleteStageImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DatabaseEvent.deleteStage(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStageImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStageImplCopyWith<_$DeleteStageImpl> get copyWith =>
      __$$DeleteStageImplCopyWithImpl<_$DeleteStageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return deleteStage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return deleteStage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deleteStage != null) {
      return deleteStage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return deleteStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return deleteStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deleteStage != null) {
      return deleteStage(this);
    }
    return orElse();
  }
}

abstract class _DeleteStage implements DatabaseEvent {
  const factory _DeleteStage(final int id) = _$DeleteStageImpl;

  int get id;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteStageImplCopyWith<_$DeleteStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetParticipantsAtStartImplCopyWith<$Res> {
  factory _$$GetParticipantsAtStartImplCopyWith(
          _$GetParticipantsAtStartImpl value,
          $Res Function(_$GetParticipantsAtStartImpl) then) =
      __$$GetParticipantsAtStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$GetParticipantsAtStartImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$GetParticipantsAtStartImpl>
    implements _$$GetParticipantsAtStartImplCopyWith<$Res> {
  __$$GetParticipantsAtStartImplCopyWithImpl(
      _$GetParticipantsAtStartImpl _value,
      $Res Function(_$GetParticipantsAtStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$GetParticipantsAtStartImpl(
      null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetParticipantsAtStartImpl implements _GetParticipantsAtStart {
  const _$GetParticipantsAtStartImpl(this.stageId);

  @override
  final int stageId;

  @override
  String toString() {
    return 'DatabaseEvent.getParticipantsAtStart(stageId: $stageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetParticipantsAtStartImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetParticipantsAtStartImplCopyWith<_$GetParticipantsAtStartImpl>
      get copyWith => __$$GetParticipantsAtStartImplCopyWithImpl<
          _$GetParticipantsAtStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return getParticipantsAtStart(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return getParticipantsAtStart?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (getParticipantsAtStart != null) {
      return getParticipantsAtStart(stageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return getParticipantsAtStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return getParticipantsAtStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (getParticipantsAtStart != null) {
      return getParticipantsAtStart(this);
    }
    return orElse();
  }
}

abstract class _GetParticipantsAtStart implements DatabaseEvent {
  const factory _GetParticipantsAtStart(final int stageId) =
      _$GetParticipantsAtStartImpl;

  int get stageId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetParticipantsAtStartImplCopyWith<_$GetParticipantsAtStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addStartNumberImplCopyWith<$Res> {
  factory _$$addStartNumberImplCopyWith(_$addStartNumberImpl value,
          $Res Function(_$addStartNumberImpl) then) =
      __$$addStartNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number, String startTime, bool forceAdd});
}

/// @nodoc
class __$$addStartNumberImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$addStartNumberImpl>
    implements _$$addStartNumberImplCopyWith<$Res> {
  __$$addStartNumberImplCopyWithImpl(
      _$addStartNumberImpl _value, $Res Function(_$addStartNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? number = null,
    Object? startTime = null,
    Object? forceAdd = null,
  }) {
    return _then(_$addStartNumberImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      forceAdd: null == forceAdd
          ? _value.forceAdd
          : forceAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$addStartNumberImpl implements _addStartNumber {
  const _$addStartNumberImpl(
      {required this.stage,
      required this.number,
      required this.startTime,
      this.forceAdd = false});

  @override
  final Stage stage;
  @override
  final int number;
  @override
  final String startTime;
  @override
  @JsonKey()
  final bool forceAdd;

  @override
  String toString() {
    return 'DatabaseEvent.addStartNumber(stage: $stage, number: $number, startTime: $startTime, forceAdd: $forceAdd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addStartNumberImpl &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.forceAdd, forceAdd) ||
                other.forceAdd == forceAdd));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(stage), number, startTime, forceAdd);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addStartNumberImplCopyWith<_$addStartNumberImpl> get copyWith =>
      __$$addStartNumberImplCopyWithImpl<_$addStartNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addStartNumber(stage, number, startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addStartNumber?.call(stage, number, startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addStartNumber != null) {
      return addStartNumber(stage, number, startTime, forceAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addStartNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return addStartNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addStartNumber != null) {
      return addStartNumber(this);
    }
    return orElse();
  }
}

abstract class _addStartNumber implements DatabaseEvent {
  const factory _addStartNumber(
      {required final Stage stage,
      required final int number,
      required final String startTime,
      final bool forceAdd}) = _$addStartNumberImpl;

  Stage get stage;
  int get number;
  String get startTime;
  bool get forceAdd;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addStartNumberImplCopyWith<_$addStartNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateStartingInfoImplCopyWith<$Res> {
  factory _$$updateStartingInfoImplCopyWith(_$updateStartingInfoImpl value,
          $Res Function(_$updateStartingInfoImpl) then) =
      __$$updateStartingInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String startTime,
      String? automaticStartTime,
      int? automaticCorrection,
      String? manualStartTime,
      int? manualCorrection,
      int stageId,
      int participantId});
}

/// @nodoc
class __$$updateStartingInfoImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$updateStartingInfoImpl>
    implements _$$updateStartingInfoImplCopyWith<$Res> {
  __$$updateStartingInfoImplCopyWithImpl(_$updateStartingInfoImpl _value,
      $Res Function(_$updateStartingInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? automaticStartTime = freezed,
    Object? automaticCorrection = freezed,
    Object? manualStartTime = freezed,
    Object? manualCorrection = freezed,
    Object? stageId = null,
    Object? participantId = null,
  }) {
    return _then(_$updateStartingInfoImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      automaticStartTime: freezed == automaticStartTime
          ? _value.automaticStartTime
          : automaticStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticCorrection: freezed == automaticCorrection
          ? _value.automaticCorrection
          : automaticCorrection // ignore: cast_nullable_to_non_nullable
              as int?,
      manualStartTime: freezed == manualStartTime
          ? _value.manualStartTime
          : manualStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      manualCorrection: freezed == manualCorrection
          ? _value.manualCorrection
          : manualCorrection // ignore: cast_nullable_to_non_nullable
              as int?,
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$updateStartingInfoImpl implements _updateStartingInfo {
  const _$updateStartingInfoImpl(
      {required this.startTime,
      this.automaticStartTime,
      this.automaticCorrection,
      this.manualStartTime,
      this.manualCorrection,
      required this.stageId,
      required this.participantId});

  @override
  final String startTime;
  @override
  final String? automaticStartTime;
  @override
  final int? automaticCorrection;
  @override
  final String? manualStartTime;
  @override
  final int? manualCorrection;
  @override
  final int stageId;
  @override
  final int participantId;

  @override
  String toString() {
    return 'DatabaseEvent.updateStartingInfo(startTime: $startTime, automaticStartTime: $automaticStartTime, automaticCorrection: $automaticCorrection, manualStartTime: $manualStartTime, manualCorrection: $manualCorrection, stageId: $stageId, participantId: $participantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateStartingInfoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.automaticStartTime, automaticStartTime) ||
                other.automaticStartTime == automaticStartTime) &&
            (identical(other.automaticCorrection, automaticCorrection) ||
                other.automaticCorrection == automaticCorrection) &&
            (identical(other.manualStartTime, manualStartTime) ||
                other.manualStartTime == manualStartTime) &&
            (identical(other.manualCorrection, manualCorrection) ||
                other.manualCorrection == manualCorrection) &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.participantId, participantId) ||
                other.participantId == participantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      startTime,
      automaticStartTime,
      automaticCorrection,
      manualStartTime,
      manualCorrection,
      stageId,
      participantId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$updateStartingInfoImplCopyWith<_$updateStartingInfoImpl> get copyWith =>
      __$$updateStartingInfoImplCopyWithImpl<_$updateStartingInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return updateStartingInfo(
        startTime,
        automaticStartTime,
        automaticCorrection,
        manualStartTime,
        manualCorrection,
        stageId,
        participantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return updateStartingInfo?.call(
        startTime,
        automaticStartTime,
        automaticCorrection,
        manualStartTime,
        manualCorrection,
        stageId,
        participantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateStartingInfo != null) {
      return updateStartingInfo(
          startTime,
          automaticStartTime,
          automaticCorrection,
          manualStartTime,
          manualCorrection,
          stageId,
          participantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return updateStartingInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return updateStartingInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateStartingInfo != null) {
      return updateStartingInfo(this);
    }
    return orElse();
  }
}

abstract class _updateStartingInfo implements DatabaseEvent {
  const factory _updateStartingInfo(
      {required final String startTime,
      final String? automaticStartTime,
      final int? automaticCorrection,
      final String? manualStartTime,
      final int? manualCorrection,
      required final int stageId,
      required final int participantId}) = _$updateStartingInfoImpl;

  String get startTime;
  String? get automaticStartTime;
  int? get automaticCorrection;
  String? get manualStartTime;
  int? get manualCorrection;
  int get stageId;
  int get participantId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$updateStartingInfoImplCopyWith<_$updateStartingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateAutomaticCorrectionImplCopyWith<$Res> {
  factory _$$updateAutomaticCorrectionImplCopyWith(
          _$updateAutomaticCorrectionImpl value,
          $Res Function(_$updateAutomaticCorrectionImpl) then) =
      __$$updateAutomaticCorrectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int stageId,
      String time,
      int correction,
      DateTime timeStamp,
      bool forceUpdate,
      int deltaInSeconds});
}

/// @nodoc
class __$$updateAutomaticCorrectionImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$updateAutomaticCorrectionImpl>
    implements _$$updateAutomaticCorrectionImplCopyWith<$Res> {
  __$$updateAutomaticCorrectionImplCopyWithImpl(
      _$updateAutomaticCorrectionImpl _value,
      $Res Function(_$updateAutomaticCorrectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? time = null,
    Object? correction = null,
    Object? timeStamp = null,
    Object? forceUpdate = null,
    Object? deltaInSeconds = null,
  }) {
    return _then(_$updateAutomaticCorrectionImpl(
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      correction: null == correction
          ? _value.correction
          : correction // ignore: cast_nullable_to_non_nullable
              as int,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      deltaInSeconds: null == deltaInSeconds
          ? _value.deltaInSeconds
          : deltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$updateAutomaticCorrectionImpl implements _updateAutomaticCorrection {
  const _$updateAutomaticCorrectionImpl(
      {required this.stageId,
      required this.time,
      required this.correction,
      required this.timeStamp,
      this.forceUpdate = false,
      this.deltaInSeconds = 15});

  @override
  final int stageId;
  @override
  final String time;
  @override
  final int correction;
  @override
  final DateTime timeStamp;
  @override
  @JsonKey()
  final bool forceUpdate;
  @override
  @JsonKey()
  final int deltaInSeconds;

  @override
  String toString() {
    return 'DatabaseEvent.updateAutomaticCorrection(stageId: $stageId, time: $time, correction: $correction, timeStamp: $timeStamp, forceUpdate: $forceUpdate, deltaInSeconds: $deltaInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateAutomaticCorrectionImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.correction, correction) ||
                other.correction == correction) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.deltaInSeconds, deltaInSeconds) ||
                other.deltaInSeconds == deltaInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId, time, correction,
      timeStamp, forceUpdate, deltaInSeconds);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$updateAutomaticCorrectionImplCopyWith<_$updateAutomaticCorrectionImpl>
      get copyWith => __$$updateAutomaticCorrectionImplCopyWithImpl<
          _$updateAutomaticCorrectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection(
        stageId, time, correction, timeStamp, forceUpdate, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection?.call(
        stageId, time, correction, timeStamp, forceUpdate, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(
          stageId, time, correction, timeStamp, forceUpdate, deltaInSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(this);
    }
    return orElse();
  }
}

abstract class _updateAutomaticCorrection implements DatabaseEvent {
  const factory _updateAutomaticCorrection(
      {required final int stageId,
      required final String time,
      required final int correction,
      required final DateTime timeStamp,
      final bool forceUpdate,
      final int deltaInSeconds}) = _$updateAutomaticCorrectionImpl;

  int get stageId;
  String get time;
  int get correction;
  DateTime get timeStamp;
  bool get forceUpdate;
  int get deltaInSeconds;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$updateAutomaticCorrectionImplCopyWith<_$updateAutomaticCorrectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateManualStartTimeImplCopyWith<$Res> {
  factory _$$UpdateManualStartTimeImplCopyWith(
          _$UpdateManualStartTimeImpl value,
          $Res Function(_$UpdateManualStartTimeImpl) then) =
      __$$UpdateManualStartTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId, DateTime time, int deltaInSeconds});
}

/// @nodoc
class __$$UpdateManualStartTimeImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UpdateManualStartTimeImpl>
    implements _$$UpdateManualStartTimeImplCopyWith<$Res> {
  __$$UpdateManualStartTimeImplCopyWithImpl(_$UpdateManualStartTimeImpl _value,
      $Res Function(_$UpdateManualStartTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? time = null,
    Object? deltaInSeconds = null,
  }) {
    return _then(_$UpdateManualStartTimeImpl(
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deltaInSeconds: null == deltaInSeconds
          ? _value.deltaInSeconds
          : deltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateManualStartTimeImpl implements _UpdateManualStartTime {
  const _$UpdateManualStartTimeImpl(
      {required this.stageId, required this.time, this.deltaInSeconds = 15});

  @override
  final int stageId;
  @override
  final DateTime time;
  @override
  @JsonKey()
  final int deltaInSeconds;

  @override
  String toString() {
    return 'DatabaseEvent.updateManualStartTime(stageId: $stageId, time: $time, deltaInSeconds: $deltaInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateManualStartTimeImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.deltaInSeconds, deltaInSeconds) ||
                other.deltaInSeconds == deltaInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId, time, deltaInSeconds);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateManualStartTimeImplCopyWith<_$UpdateManualStartTimeImpl>
      get copyWith => __$$UpdateManualStartTimeImplCopyWithImpl<
          _$UpdateManualStartTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return updateManualStartTime(stageId, time, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return updateManualStartTime?.call(stageId, time, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateManualStartTime != null) {
      return updateManualStartTime(stageId, time, deltaInSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return updateManualStartTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return updateManualStartTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateManualStartTime != null) {
      return updateManualStartTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateManualStartTime implements DatabaseEvent {
  const factory _UpdateManualStartTime(
      {required final int stageId,
      required final DateTime time,
      final int deltaInSeconds}) = _$UpdateManualStartTimeImpl;

  int get stageId;
  DateTime get time;
  int get deltaInSeconds;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateManualStartTimeImplCopyWith<_$UpdateManualStartTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setStatusForStartIdImplCopyWith<$Res> {
  factory _$$setStatusForStartIdImplCopyWith(_$setStatusForStartIdImpl value,
          $Res Function(_$setStatusForStartIdImpl) then) =
      __$$setStatusForStartIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int startId, ParticipantStatus status});
}

/// @nodoc
class __$$setStatusForStartIdImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$setStatusForStartIdImpl>
    implements _$$setStatusForStartIdImplCopyWith<$Res> {
  __$$setStatusForStartIdImplCopyWithImpl(_$setStatusForStartIdImpl _value,
      $Res Function(_$setStatusForStartIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startId = null,
    Object? status = null,
  }) {
    return _then(_$setStatusForStartIdImpl(
      startId: null == startId
          ? _value.startId
          : startId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParticipantStatus,
    ));
  }
}

/// @nodoc

class _$setStatusForStartIdImpl implements _setStatusForStartId {
  const _$setStatusForStartIdImpl(
      {required this.startId, required this.status});

  @override
  final int startId;
  @override
  final ParticipantStatus status;

  @override
  String toString() {
    return 'DatabaseEvent.setStatusForStartId(startId: $startId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setStatusForStartIdImpl &&
            (identical(other.startId, startId) || other.startId == startId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startId, status);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$setStatusForStartIdImplCopyWith<_$setStatusForStartIdImpl> get copyWith =>
      __$$setStatusForStartIdImplCopyWithImpl<_$setStatusForStartIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return setStatusForStartId(startId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return setStatusForStartId?.call(startId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setStatusForStartId != null) {
      return setStatusForStartId(startId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return setStatusForStartId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return setStatusForStartId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setStatusForStartId != null) {
      return setStatusForStartId(this);
    }
    return orElse();
  }
}

abstract class _setStatusForStartId implements DatabaseEvent {
  const factory _setStatusForStartId(
      {required final int startId,
      required final ParticipantStatus status}) = _$setStatusForStartIdImpl;

  int get startId;
  ParticipantStatus get status;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$setStatusForStartIdImplCopyWith<_$setStatusForStartIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addFinishTimeImplCopyWith<$Res> {
  factory _$$addFinishTimeImplCopyWith(
          _$addFinishTimeImpl value, $Res Function(_$addFinishTimeImpl) then) =
      __$$addFinishTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Stage stage,
      String finish,
      DateTime timeStamp,
      int finishDelay,
      bool substituteNumbers,
      int substituteNumbersDelay,
      DateTime? dateTimeNow,
      int? number});
}

/// @nodoc
class __$$addFinishTimeImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$addFinishTimeImpl>
    implements _$$addFinishTimeImplCopyWith<$Res> {
  __$$addFinishTimeImplCopyWithImpl(
      _$addFinishTimeImpl _value, $Res Function(_$addFinishTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? finish = null,
    Object? timeStamp = null,
    Object? finishDelay = null,
    Object? substituteNumbers = null,
    Object? substituteNumbersDelay = null,
    Object? dateTimeNow = freezed,
    Object? number = freezed,
  }) {
    return _then(_$addFinishTimeImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      finish: null == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishDelay: null == finishDelay
          ? _value.finishDelay
          : finishDelay // ignore: cast_nullable_to_non_nullable
              as int,
      substituteNumbers: null == substituteNumbers
          ? _value.substituteNumbers
          : substituteNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      substituteNumbersDelay: null == substituteNumbersDelay
          ? _value.substituteNumbersDelay
          : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
              as int,
      dateTimeNow: freezed == dateTimeNow
          ? _value.dateTimeNow
          : dateTimeNow // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$addFinishTimeImpl implements _addFinishTime {
  const _$addFinishTimeImpl(
      {required this.stage,
      required this.finish,
      required this.timeStamp,
      this.finishDelay = 0,
      this.substituteNumbers = false,
      this.substituteNumbersDelay = 0,
      this.dateTimeNow,
      this.number});

  @override
  final Stage stage;
  @override
  final String finish;
  @override
  final DateTime timeStamp;
  @override
  @JsonKey()
  final int finishDelay;
  @override
  @JsonKey()
  final bool substituteNumbers;
  @override
  @JsonKey()
  final int substituteNumbersDelay;
  @override
  final DateTime? dateTimeNow;
  @override
  final int? number;

  @override
  String toString() {
    return 'DatabaseEvent.addFinishTime(stage: $stage, finish: $finish, timeStamp: $timeStamp, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, dateTimeNow: $dateTimeNow, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addFinishTimeImpl &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.finish, finish) || other.finish == finish) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.finishDelay, finishDelay) ||
                other.finishDelay == finishDelay) &&
            (identical(other.substituteNumbers, substituteNumbers) ||
                other.substituteNumbers == substituteNumbers) &&
            (identical(other.substituteNumbersDelay, substituteNumbersDelay) ||
                other.substituteNumbersDelay == substituteNumbersDelay) &&
            (identical(other.dateTimeNow, dateTimeNow) ||
                other.dateTimeNow == dateTimeNow) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stage),
      finish,
      timeStamp,
      finishDelay,
      substituteNumbers,
      substituteNumbersDelay,
      dateTimeNow,
      number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addFinishTimeImplCopyWith<_$addFinishTimeImpl> get copyWith =>
      __$$addFinishTimeImplCopyWithImpl<_$addFinishTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addFinishTime(stage, finish, timeStamp, finishDelay,
        substituteNumbers, substituteNumbersDelay, dateTimeNow, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addFinishTime?.call(stage, finish, timeStamp, finishDelay,
        substituteNumbers, substituteNumbersDelay, dateTimeNow, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTime != null) {
      return addFinishTime(stage, finish, timeStamp, finishDelay,
          substituteNumbers, substituteNumbersDelay, dateTimeNow, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addFinishTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return addFinishTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTime != null) {
      return addFinishTime(this);
    }
    return orElse();
  }
}

abstract class _addFinishTime implements DatabaseEvent {
  const factory _addFinishTime(
      {required final Stage stage,
      required final String finish,
      required final DateTime timeStamp,
      final int finishDelay,
      final bool substituteNumbers,
      final int substituteNumbersDelay,
      final DateTime? dateTimeNow,
      final int? number}) = _$addFinishTimeImpl;

  Stage get stage;
  String get finish;
  DateTime get timeStamp;
  int get finishDelay;
  bool get substituteNumbers;
  int get substituteNumbersDelay;
  DateTime? get dateTimeNow;
  int? get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addFinishTimeImplCopyWith<_$addFinishTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addFinishTimeManualImplCopyWith<$Res> {
  factory _$$addFinishTimeManualImplCopyWith(_$addFinishTimeManualImpl value,
          $Res Function(_$addFinishTimeManualImpl) then) =
      __$$addFinishTimeManualImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId, String finishTime, int? number});
}

/// @nodoc
class __$$addFinishTimeManualImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$addFinishTimeManualImpl>
    implements _$$addFinishTimeManualImplCopyWith<$Res> {
  __$$addFinishTimeManualImplCopyWithImpl(_$addFinishTimeManualImpl _value,
      $Res Function(_$addFinishTimeManualImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? finishTime = null,
    Object? number = freezed,
  }) {
    return _then(_$addFinishTimeManualImpl(
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$addFinishTimeManualImpl implements _addFinishTimeManual {
  const _$addFinishTimeManualImpl(
      {required this.stageId, required this.finishTime, this.number});

  @override
  final int stageId;
  @override
  final String finishTime;
  @override
  final int? number;

  @override
  String toString() {
    return 'DatabaseEvent.addFinishTimeManual(stageId: $stageId, finishTime: $finishTime, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addFinishTimeManualImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId, finishTime, number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addFinishTimeManualImplCopyWith<_$addFinishTimeManualImpl> get copyWith =>
      __$$addFinishTimeManualImplCopyWithImpl<_$addFinishTimeManualImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addFinishTimeManual(stageId, finishTime, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addFinishTimeManual?.call(stageId, finishTime, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTimeManual != null) {
      return addFinishTimeManual(stageId, finishTime, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addFinishTimeManual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return addFinishTimeManual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTimeManual != null) {
      return addFinishTimeManual(this);
    }
    return orElse();
  }
}

abstract class _addFinishTimeManual implements DatabaseEvent {
  const factory _addFinishTimeManual(
      {required final int stageId,
      required final String finishTime,
      final int? number}) = _$addFinishTimeManualImpl;

  int get stageId;
  String get finishTime;
  int? get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addFinishTimeManualImplCopyWith<_$addFinishTimeManualImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearStartResultsDebugImplCopyWith<$Res> {
  factory _$$clearStartResultsDebugImplCopyWith(
          _$clearStartResultsDebugImpl value,
          $Res Function(_$clearStartResultsDebugImpl) then) =
      __$$clearStartResultsDebugImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$clearStartResultsDebugImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$clearStartResultsDebugImpl>
    implements _$$clearStartResultsDebugImplCopyWith<$Res> {
  __$$clearStartResultsDebugImplCopyWithImpl(
      _$clearStartResultsDebugImpl _value,
      $Res Function(_$clearStartResultsDebugImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$clearStartResultsDebugImpl(
      null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$clearStartResultsDebugImpl implements _clearStartResultsDebug {
  const _$clearStartResultsDebugImpl(this.stageId);

  @override
  final int stageId;

  @override
  String toString() {
    return 'DatabaseEvent.clearStartResultsDebug(stageId: $stageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$clearStartResultsDebugImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$clearStartResultsDebugImplCopyWith<_$clearStartResultsDebugImpl>
      get copyWith => __$$clearStartResultsDebugImplCopyWithImpl<
          _$clearStartResultsDebugImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearStartResultsDebug != null) {
      return clearStartResultsDebug(stageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearStartResultsDebug != null) {
      return clearStartResultsDebug(this);
    }
    return orElse();
  }
}

abstract class _clearStartResultsDebug implements DatabaseEvent {
  const factory _clearStartResultsDebug(final int stageId) =
      _$clearStartResultsDebugImpl;

  int get stageId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$clearStartResultsDebugImplCopyWith<_$clearStartResultsDebugImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearFinishResultsDebugImplCopyWith<$Res> {
  factory _$$clearFinishResultsDebugImplCopyWith(
          _$clearFinishResultsDebugImpl value,
          $Res Function(_$clearFinishResultsDebugImpl) then) =
      __$$clearFinishResultsDebugImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$clearFinishResultsDebugImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$clearFinishResultsDebugImpl>
    implements _$$clearFinishResultsDebugImplCopyWith<$Res> {
  __$$clearFinishResultsDebugImplCopyWithImpl(
      _$clearFinishResultsDebugImpl _value,
      $Res Function(_$clearFinishResultsDebugImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$clearFinishResultsDebugImpl(
      null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$clearFinishResultsDebugImpl implements _clearFinishResultsDebug {
  const _$clearFinishResultsDebugImpl(this.stageId);

  @override
  final int stageId;

  @override
  String toString() {
    return 'DatabaseEvent.clearFinishResultsDebug(stageId: $stageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$clearFinishResultsDebugImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$clearFinishResultsDebugImplCopyWith<_$clearFinishResultsDebugImpl>
      get copyWith => __$$clearFinishResultsDebugImplCopyWithImpl<
          _$clearFinishResultsDebugImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearFinishResultsDebug != null) {
      return clearFinishResultsDebug(stageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearFinishResultsDebug != null) {
      return clearFinishResultsDebug(this);
    }
    return orElse();
  }
}

abstract class _clearFinishResultsDebug implements DatabaseEvent {
  const factory _clearFinishResultsDebug(final int stageId) =
      _$clearFinishResultsDebugImpl;

  int get stageId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$clearFinishResultsDebugImplCopyWith<_$clearFinishResultsDebugImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$hideAllFinisesImplCopyWith<$Res> {
  factory _$$hideAllFinisesImplCopyWith(_$hideAllFinisesImpl value,
          $Res Function(_$hideAllFinisesImpl) then) =
      __$$hideAllFinisesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$hideAllFinisesImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$hideAllFinisesImpl>
    implements _$$hideAllFinisesImplCopyWith<$Res> {
  __$$hideAllFinisesImplCopyWithImpl(
      _$hideAllFinisesImpl _value, $Res Function(_$hideAllFinisesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$hideAllFinisesImpl(
      null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$hideAllFinisesImpl implements _hideAllFinises {
  const _$hideAllFinisesImpl(this.stageId);

  @override
  final int stageId;

  @override
  String toString() {
    return 'DatabaseEvent.hideAllFinises(stageId: $stageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$hideAllFinisesImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$hideAllFinisesImplCopyWith<_$hideAllFinisesImpl> get copyWith =>
      __$$hideAllFinisesImplCopyWithImpl<_$hideAllFinisesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return hideAllFinises(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return hideAllFinises?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideAllFinises != null) {
      return hideAllFinises(stageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return hideAllFinises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return hideAllFinises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideAllFinises != null) {
      return hideAllFinises(this);
    }
    return orElse();
  }
}

abstract class _hideAllFinises implements DatabaseEvent {
  const factory _hideAllFinises(final int stageId) = _$hideAllFinisesImpl;

  int get stageId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$hideAllFinisesImplCopyWith<_$hideAllFinisesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearNumberAtFinishImplCopyWith<$Res> {
  factory _$$clearNumberAtFinishImplCopyWith(_$clearNumberAtFinishImpl value,
          $Res Function(_$clearNumberAtFinishImpl) then) =
      __$$clearNumberAtFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number});
}

/// @nodoc
class __$$clearNumberAtFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$clearNumberAtFinishImpl>
    implements _$$clearNumberAtFinishImplCopyWith<$Res> {
  __$$clearNumberAtFinishImplCopyWithImpl(_$clearNumberAtFinishImpl _value,
      $Res Function(_$clearNumberAtFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? number = null,
  }) {
    return _then(_$clearNumberAtFinishImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$clearNumberAtFinishImpl implements _clearNumberAtFinish {
  const _$clearNumberAtFinishImpl({required this.stage, required this.number});

  @override
  final Stage stage;
  @override
  final int number;

  @override
  String toString() {
    return 'DatabaseEvent.clearNumberAtFinish(stage: $stage, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$clearNumberAtFinishImpl &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(stage), number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$clearNumberAtFinishImplCopyWith<_$clearNumberAtFinishImpl> get copyWith =>
      __$$clearNumberAtFinishImplCopyWithImpl<_$clearNumberAtFinishImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish?.call(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearNumberAtFinish != null) {
      return clearNumberAtFinish(stage, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearNumberAtFinish != null) {
      return clearNumberAtFinish(this);
    }
    return orElse();
  }
}

abstract class _clearNumberAtFinish implements DatabaseEvent {
  const factory _clearNumberAtFinish(
      {required final Stage stage,
      required final int number}) = _$clearNumberAtFinishImpl;

  Stage get stage;
  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$clearNumberAtFinishImplCopyWith<_$clearNumberAtFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setDNSForStageImplCopyWith<$Res> {
  factory _$$setDNSForStageImplCopyWith(_$setDNSForStageImpl value,
          $Res Function(_$setDNSForStageImpl) then) =
      __$$setDNSForStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number});
}

/// @nodoc
class __$$setDNSForStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$setDNSForStageImpl>
    implements _$$setDNSForStageImplCopyWith<$Res> {
  __$$setDNSForStageImplCopyWithImpl(
      _$setDNSForStageImpl _value, $Res Function(_$setDNSForStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? number = null,
  }) {
    return _then(_$setDNSForStageImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$setDNSForStageImpl implements _setDNSForStage {
  const _$setDNSForStageImpl({required this.stage, required this.number});

  @override
  final Stage stage;
  @override
  final int number;

  @override
  String toString() {
    return 'DatabaseEvent.setDNSForStage(stage: $stage, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setDNSForStageImpl &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(stage), number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$setDNSForStageImplCopyWith<_$setDNSForStageImpl> get copyWith =>
      __$$setDNSForStageImplCopyWithImpl<_$setDNSForStageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return setDNSForStage(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return setDNSForStage?.call(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNSForStage != null) {
      return setDNSForStage(stage, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return setDNSForStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return setDNSForStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNSForStage != null) {
      return setDNSForStage(this);
    }
    return orElse();
  }
}

abstract class _setDNSForStage implements DatabaseEvent {
  const factory _setDNSForStage(
      {required final Stage stage,
      required final int number}) = _$setDNSForStageImpl;

  Stage get stage;
  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$setDNSForStageImplCopyWith<_$setDNSForStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setDNFForStageImplCopyWith<$Res> {
  factory _$$setDNFForStageImplCopyWith(_$setDNFForStageImpl value,
          $Res Function(_$setDNFForStageImpl) then) =
      __$$setDNFForStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number});
}

/// @nodoc
class __$$setDNFForStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$setDNFForStageImpl>
    implements _$$setDNFForStageImplCopyWith<$Res> {
  __$$setDNFForStageImplCopyWithImpl(
      _$setDNFForStageImpl _value, $Res Function(_$setDNFForStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? number = null,
  }) {
    return _then(_$setDNFForStageImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$setDNFForStageImpl implements _setDNFForStage {
  const _$setDNFForStageImpl({required this.stage, required this.number});

  @override
  final Stage stage;
  @override
  final int number;

  @override
  String toString() {
    return 'DatabaseEvent.setDNFForStage(stage: $stage, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setDNFForStageImpl &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(stage), number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$setDNFForStageImplCopyWith<_$setDNFForStageImpl> get copyWith =>
      __$$setDNFForStageImplCopyWithImpl<_$setDNFForStageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return setDNFForStage(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return setDNFForStage?.call(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNFForStage != null) {
      return setDNFForStage(stage, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return setDNFForStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return setDNFForStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNFForStage != null) {
      return setDNFForStage(this);
    }
    return orElse();
  }
}

abstract class _setDNFForStage implements DatabaseEvent {
  const factory _setDNFForStage(
      {required final Stage stage,
      required final int number}) = _$setDNFForStageImpl;

  Stage get stage;
  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$setDNFForStageImplCopyWith<_$setDNFForStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$hideFinishImplCopyWith<$Res> {
  factory _$$hideFinishImplCopyWith(
          _$hideFinishImpl value, $Res Function(_$hideFinishImpl) then) =
      __$$hideFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$hideFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$hideFinishImpl>
    implements _$$hideFinishImplCopyWith<$Res> {
  __$$hideFinishImplCopyWithImpl(
      _$hideFinishImpl _value, $Res Function(_$hideFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$hideFinishImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$hideFinishImpl implements _hideFinish {
  const _$hideFinishImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DatabaseEvent.hideFinish(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$hideFinishImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$hideFinishImplCopyWith<_$hideFinishImpl> get copyWith =>
      __$$hideFinishImplCopyWithImpl<_$hideFinishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return hideFinish(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return hideFinish?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideFinish != null) {
      return hideFinish(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return hideFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return hideFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideFinish != null) {
      return hideFinish(this);
    }
    return orElse();
  }
}

abstract class _hideFinish implements DatabaseEvent {
  const factory _hideFinish({required final int id}) = _$hideFinishImpl;

  int get id;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$hideFinishImplCopyWith<_$hideFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addNumberToFinishImplCopyWith<$Res> {
  factory _$$addNumberToFinishImplCopyWith(_$addNumberToFinishImpl value,
          $Res Function(_$addNumberToFinishImpl) then) =
      __$$addNumberToFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int finishId, int number, String finishTime});
}

/// @nodoc
class __$$addNumberToFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$addNumberToFinishImpl>
    implements _$$addNumberToFinishImplCopyWith<$Res> {
  __$$addNumberToFinishImplCopyWithImpl(_$addNumberToFinishImpl _value,
      $Res Function(_$addNumberToFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? finishId = null,
    Object? number = null,
    Object? finishTime = null,
  }) {
    return _then(_$addNumberToFinishImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      finishId: null == finishId
          ? _value.finishId
          : finishId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addNumberToFinishImpl implements _addNumberToFinish {
  const _$addNumberToFinishImpl(
      {required this.stage,
      required this.finishId,
      required this.number,
      required this.finishTime});

  @override
  final Stage stage;
  @override
  final int finishId;
  @override
  final int number;
  @override
  final String finishTime;

  @override
  String toString() {
    return 'DatabaseEvent.addNumberToFinish(stage: $stage, finishId: $finishId, number: $number, finishTime: $finishTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addNumberToFinishImpl &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.finishId, finishId) ||
                other.finishId == finishId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(stage), finishId, number, finishTime);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addNumberToFinishImplCopyWith<_$addNumberToFinishImpl> get copyWith =>
      __$$addNumberToFinishImplCopyWithImpl<_$addNumberToFinishImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addNumberToFinish(stage, finishId, number, finishTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addNumberToFinish?.call(stage, finishId, number, finishTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addNumberToFinish != null) {
      return addNumberToFinish(stage, finishId, number, finishTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addNumberToFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return addNumberToFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addNumberToFinish != null) {
      return addNumberToFinish(this);
    }
    return orElse();
  }
}

abstract class _addNumberToFinish implements DatabaseEvent {
  const factory _addNumberToFinish(
      {required final Stage stage,
      required final int finishId,
      required final int number,
      required final String finishTime}) = _$addNumberToFinishImpl;

  Stage get stage;
  int get finishId;
  int get number;
  String get finishTime;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addNumberToFinishImplCopyWith<_$addNumberToFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getNumbersOnTraceNowImplCopyWith<$Res> {
  factory _$$getNumbersOnTraceNowImplCopyWith(_$getNumbersOnTraceNowImpl value,
          $Res Function(_$getNumbersOnTraceNowImpl) then) =
      __$$getNumbersOnTraceNowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId, DateTime dateTimeNow});
}

/// @nodoc
class __$$getNumbersOnTraceNowImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$getNumbersOnTraceNowImpl>
    implements _$$getNumbersOnTraceNowImplCopyWith<$Res> {
  __$$getNumbersOnTraceNowImplCopyWithImpl(_$getNumbersOnTraceNowImpl _value,
      $Res Function(_$getNumbersOnTraceNowImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? dateTimeNow = null,
  }) {
    return _then(_$getNumbersOnTraceNowImpl(
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTimeNow: null == dateTimeNow
          ? _value.dateTimeNow
          : dateTimeNow // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$getNumbersOnTraceNowImpl implements _getNumbersOnTraceNow {
  const _$getNumbersOnTraceNowImpl(
      {required this.stageId, required this.dateTimeNow});

  @override
  final int stageId;
  @override
  final DateTime dateTimeNow;

  @override
  String toString() {
    return 'DatabaseEvent.getNumbersOnTraceNow(stageId: $stageId, dateTimeNow: $dateTimeNow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getNumbersOnTraceNowImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.dateTimeNow, dateTimeNow) ||
                other.dateTimeNow == dateTimeNow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId, dateTimeNow);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getNumbersOnTraceNowImplCopyWith<_$getNumbersOnTraceNowImpl>
      get copyWith =>
          __$$getNumbersOnTraceNowImplCopyWithImpl<_$getNumbersOnTraceNowImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return getNumbersOnTraceNow(stageId, dateTimeNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return getNumbersOnTraceNow?.call(stageId, dateTimeNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (getNumbersOnTraceNow != null) {
      return getNumbersOnTraceNow(stageId, dateTimeNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return getNumbersOnTraceNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return getNumbersOnTraceNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (getNumbersOnTraceNow != null) {
      return getNumbersOnTraceNow(this);
    }
    return orElse();
  }
}

abstract class _getNumbersOnTraceNow implements DatabaseEvent {
  const factory _getNumbersOnTraceNow(
      {required final int stageId,
      required final DateTime dateTimeNow}) = _$getNumbersOnTraceNowImpl;

  int get stageId;
  DateTime get dateTimeNow;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getNumbersOnTraceNowImplCopyWith<_$getNumbersOnTraceNowImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loadStartFromCsvImplCopyWith<$Res> {
  factory _$$loadStartFromCsvImplCopyWith(_$loadStartFromCsvImpl value,
          $Res Function(_$loadStartFromCsvImpl) then) =
      __$$loadStartFromCsvImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlatformFile? csv});
}

/// @nodoc
class __$$loadStartFromCsvImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$loadStartFromCsvImpl>
    implements _$$loadStartFromCsvImplCopyWith<$Res> {
  __$$loadStartFromCsvImplCopyWithImpl(_$loadStartFromCsvImpl _value,
      $Res Function(_$loadStartFromCsvImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? csv = freezed,
  }) {
    return _then(_$loadStartFromCsvImpl(
      csv: freezed == csv
          ? _value.csv
          : csv // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$loadStartFromCsvImpl implements _loadStartFromCsv {
  const _$loadStartFromCsvImpl({this.csv});

  @override
  final PlatformFile? csv;

  @override
  String toString() {
    return 'DatabaseEvent.loadStartFromCsv(csv: $csv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadStartFromCsvImpl &&
            (identical(other.csv, csv) || other.csv == csv));
  }

  @override
  int get hashCode => Object.hash(runtimeType, csv);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loadStartFromCsvImplCopyWith<_$loadStartFromCsvImpl> get copyWith =>
      __$$loadStartFromCsvImplCopyWithImpl<_$loadStartFromCsvImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return loadStartFromCsv(csv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return loadStartFromCsv?.call(csv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (loadStartFromCsv != null) {
      return loadStartFromCsv(csv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return loadStartFromCsv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return loadStartFromCsv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (loadStartFromCsv != null) {
      return loadStartFromCsv(this);
    }
    return orElse();
  }
}

abstract class _loadStartFromCsv implements DatabaseEvent {
  const factory _loadStartFromCsv({final PlatformFile? csv}) =
      _$loadStartFromCsvImpl;

  PlatformFile? get csv;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loadStartFromCsvImplCopyWith<_$loadStartFromCsvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$shareStartImplCopyWith<$Res> {
  factory _$$shareStartImplCopyWith(
          _$shareStartImpl value, $Res Function(_$shareStartImpl) then) =
      __$$shareStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$shareStartImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$shareStartImpl>
    implements _$$shareStartImplCopyWith<$Res> {
  __$$shareStartImplCopyWithImpl(
      _$shareStartImpl _value, $Res Function(_$shareStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$shareStartImpl implements _shareStart {
  const _$shareStartImpl();

  @override
  String toString() {
    return 'DatabaseEvent.shareStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$shareStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return shareStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return shareStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareStart != null) {
      return shareStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return shareStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return shareStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareStart != null) {
      return shareStart(this);
    }
    return orElse();
  }
}

abstract class _shareStart implements DatabaseEvent {
  const factory _shareStart() = _$shareStartImpl;
}

/// @nodoc
abstract class _$$shareFinishImplCopyWith<$Res> {
  factory _$$shareFinishImplCopyWith(
          _$shareFinishImpl value, $Res Function(_$shareFinishImpl) then) =
      __$$shareFinishImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$shareFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$shareFinishImpl>
    implements _$$shareFinishImplCopyWith<$Res> {
  __$$shareFinishImplCopyWithImpl(
      _$shareFinishImpl _value, $Res Function(_$shareFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$shareFinishImpl implements _shareFinish {
  const _$shareFinishImpl();

  @override
  String toString() {
    return 'DatabaseEvent.shareFinish()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$shareFinishImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return shareFinish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return shareFinish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareFinish != null) {
      return shareFinish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return shareFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return shareFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareFinish != null) {
      return shareFinish(this);
    }
    return orElse();
  }
}

abstract class _shareFinish implements DatabaseEvent {
  const factory _shareFinish() = _$shareFinishImpl;
}

/// @nodoc
abstract class _$$selectAwaitingNumberImplCopyWith<$Res> {
  factory _$$selectAwaitingNumberImplCopyWith(_$selectAwaitingNumberImpl value,
          $Res Function(_$selectAwaitingNumberImpl) then) =
      __$$selectAwaitingNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$selectAwaitingNumberImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$selectAwaitingNumberImpl>
    implements _$$selectAwaitingNumberImplCopyWith<$Res> {
  __$$selectAwaitingNumberImplCopyWithImpl(_$selectAwaitingNumberImpl _value,
      $Res Function(_$selectAwaitingNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$selectAwaitingNumberImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$selectAwaitingNumberImpl implements _selectAwaitingNumber {
  const _$selectAwaitingNumberImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'DatabaseEvent.selectAwaitingNumber(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectAwaitingNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$selectAwaitingNumberImplCopyWith<_$selectAwaitingNumberImpl>
      get copyWith =>
          __$$selectAwaitingNumberImplCopyWithImpl<_$selectAwaitingNumberImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (selectAwaitingNumber != null) {
      return selectAwaitingNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (selectAwaitingNumber != null) {
      return selectAwaitingNumber(this);
    }
    return orElse();
  }
}

abstract class _selectAwaitingNumber implements DatabaseEvent {
  const factory _selectAwaitingNumber({required final int number}) =
      _$selectAwaitingNumberImpl;

  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$selectAwaitingNumberImplCopyWith<_$selectAwaitingNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deselectAwaitingNumberImplCopyWith<$Res> {
  factory _$$deselectAwaitingNumberImplCopyWith(
          _$deselectAwaitingNumberImpl value,
          $Res Function(_$deselectAwaitingNumberImpl) then) =
      __$$deselectAwaitingNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$deselectAwaitingNumberImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$deselectAwaitingNumberImpl>
    implements _$$deselectAwaitingNumberImplCopyWith<$Res> {
  __$$deselectAwaitingNumberImplCopyWithImpl(
      _$deselectAwaitingNumberImpl _value,
      $Res Function(_$deselectAwaitingNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$deselectAwaitingNumberImpl implements _deselectAwaitingNumber {
  const _$deselectAwaitingNumberImpl();

  @override
  String toString() {
    return 'DatabaseEvent.deselectAwaitingNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deselectAwaitingNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)
        emitState,
    required TResult Function(Race race) addRace,
    required TResult Function(int id) deleteRace,
    required TResult Function(Stage stage) addStage,
    required TResult Function(int raceId) selectStages,
    required TResult Function(int id) deleteStage,
    required TResult Function(int stageId) getParticipantsAtStart,
    required TResult Function(
            Stage stage, int number, String startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)
        updateStartingInfo,
    required TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(int stageId, DateTime time, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(int stageId, String finishTime, int? number)
        addFinishTimeManual,
    required TResult Function(int stageId) clearStartResultsDebug,
    required TResult Function(int stageId) clearFinishResultsDebug,
    required TResult Function(int stageId) hideAllFinises,
    required TResult Function(Stage stage, int number) clearNumberAtFinish,
    required TResult Function(Stage stage, int number) setDNSForStage,
    required TResult Function(Stage stage, int number) setDNFForStage,
    required TResult Function(int id) hideFinish,
    required TResult Function(
            Stage stage, int finishId, int number, String finishTime)
        addNumberToFinish,
    required TResult Function(int stageId, DateTime dateTimeNow)
        getNumbersOnTraceNow,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult? Function(Race race)? addRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function(Stage stage)? addStage,
    TResult? Function(int raceId)? selectStages,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int stageId)? getParticipantsAtStart,
    TResult? Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult? Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult? Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult? Function(int stageId)? clearStartResultsDebug,
    TResult? Function(int stageId)? clearFinishResultsDebug,
    TResult? Function(int stageId)? hideAllFinises,
    TResult? Function(Stage stage, int number)? clearNumberAtFinish,
    TResult? Function(Stage stage, int number)? setDNSForStage,
    TResult? Function(Stage stage, int number)? setDNFForStage,
    TResult? Function(int id)? hideFinish,
    TResult? Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult? Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<ParticipantAtStart>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<StartingParticipant>? numbersOnTrace,
            Notification? notification)?
        emitState,
    TResult Function(Race race)? addRace,
    TResult Function(int id)? deleteRace,
    TResult Function(Stage stage)? addStage,
    TResult Function(int raceId)? selectStages,
    TResult Function(int id)? deleteStage,
    TResult Function(int stageId)? getParticipantsAtStart,
    TResult Function(Stage stage, int number, String startTime, bool forceAdd)?
        addStartNumber,
    TResult Function(
            String startTime,
            String? automaticStartTime,
            int? automaticCorrection,
            String? manualStartTime,
            int? manualCorrection,
            int stageId,
            int participantId)?
        updateStartingInfo,
    TResult Function(int stageId, String time, int correction,
            DateTime timeStamp, bool forceUpdate, int deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(int stageId, DateTime time, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finish,
            DateTime timeStamp,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(int stageId, String finishTime, int? number)?
        addFinishTimeManual,
    TResult Function(int stageId)? clearStartResultsDebug,
    TResult Function(int stageId)? clearFinishResultsDebug,
    TResult Function(int stageId)? hideAllFinises,
    TResult Function(Stage stage, int number)? clearNumberAtFinish,
    TResult Function(Stage stage, int number)? setDNSForStage,
    TResult Function(Stage stage, int number)? setDNFForStage,
    TResult Function(int id)? hideFinish,
    TResult Function(Stage stage, int finishId, int number, String finishTime)?
        addNumberToFinish,
    TResult Function(int stageId, DateTime dateTimeNow)? getNumbersOnTraceNow,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deselectAwaitingNumber != null) {
      return deselectAwaitingNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_addStartNumber value) addStartNumber,
    required TResult Function(_updateStartingInfo value) updateStartingInfo,
    required TResult Function(_updateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setStatusForStartId value) setStatusForStartId,
    required TResult Function(_addFinishTime value) addFinishTime,
    required TResult Function(_addFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_clearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_clearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_hideAllFinises value) hideAllFinises,
    required TResult Function(_clearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_setDNSForStage value) setDNSForStage,
    required TResult Function(_setDNFForStage value) setDNFForStage,
    required TResult Function(_hideFinish value) hideFinish,
    required TResult Function(_addNumberToFinish value) addNumberToFinish,
    required TResult Function(_getNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_loadStartFromCsv value) loadStartFromCsv,
    required TResult Function(_shareStart value) shareStart,
    required TResult Function(_shareFinish value) shareFinish,
    required TResult Function(_selectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_deselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_SelectStages value)? selectStages,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_addStartNumber value)? addStartNumber,
    TResult? Function(_updateStartingInfo value)? updateStartingInfo,
    TResult? Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setStatusForStartId value)? setStatusForStartId,
    TResult? Function(_addFinishTime value)? addFinishTime,
    TResult? Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_hideAllFinises value)? hideAllFinises,
    TResult? Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_setDNSForStage value)? setDNSForStage,
    TResult? Function(_setDNFForStage value)? setDNFForStage,
    TResult? Function(_hideFinish value)? hideFinish,
    TResult? Function(_addNumberToFinish value)? addNumberToFinish,
    TResult? Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(_shareStart value)? shareStart,
    TResult? Function(_shareFinish value)? shareFinish,
    TResult? Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_addStartNumber value)? addStartNumber,
    TResult Function(_updateStartingInfo value)? updateStartingInfo,
    TResult Function(_updateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setStatusForStartId value)? setStatusForStartId,
    TResult Function(_addFinishTime value)? addFinishTime,
    TResult Function(_addFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_clearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_clearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_hideAllFinises value)? hideAllFinises,
    TResult Function(_clearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_setDNSForStage value)? setDNSForStage,
    TResult Function(_setDNFForStage value)? setDNFForStage,
    TResult Function(_hideFinish value)? hideFinish,
    TResult Function(_addNumberToFinish value)? addNumberToFinish,
    TResult Function(_getNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_loadStartFromCsv value)? loadStartFromCsv,
    TResult Function(_shareStart value)? shareStart,
    TResult Function(_shareFinish value)? shareFinish,
    TResult Function(_selectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_deselectAwaitingNumber value)? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deselectAwaitingNumber != null) {
      return deselectAwaitingNumber(this);
    }
    return orElse();
  }
}

abstract class _deselectAwaitingNumber implements DatabaseEvent {
  const factory _deselectAwaitingNumber() = _$deselectAwaitingNumberImpl;
}

/// @nodoc
mixin _$DatabaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res, DatabaseState>;
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res, $Val extends DatabaseState>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DatabaseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)?
        initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)?
        initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DatabaseState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Race> races,
      List<Stage> stages,
      List<Rider> riders,
      List<Status> statuses,
      List<ParticipantAtStart> participants,
      List<Start> starts,
      List<Finish> finishes,
      List<Trail> trails,
      List<StartingParticipant> numbersOnTrace,
      Notification? notification});

  $NotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? races = null,
    Object? stages = null,
    Object? riders = null,
    Object? statuses = null,
    Object? participants = null,
    Object? starts = null,
    Object? finishes = null,
    Object? trails = null,
    Object? numbersOnTrace = null,
    Object? notification = freezed,
  }) {
    return _then(_$InitializedImpl(
      races: null == races
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>,
      stages: null == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      riders: null == riders
          ? _value._riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>,
      statuses: null == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantAtStart>,
      starts: null == starts
          ? _value._starts
          : starts // ignore: cast_nullable_to_non_nullable
              as List<Start>,
      finishes: null == finishes
          ? _value._finishes
          : finishes // ignore: cast_nullable_to_non_nullable
              as List<Finish>,
      trails: null == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>,
      numbersOnTrace: null == numbersOnTrace
          ? _value._numbersOnTrace
          : numbersOnTrace // ignore: cast_nullable_to_non_nullable
              as List<StartingParticipant>,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification?,
    ));
  }

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $NotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(
      {required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<ParticipantAtStart> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<StartingParticipant> numbersOnTrace,
      this.notification})
      : _races = races,
        _stages = stages,
        _riders = riders,
        _statuses = statuses,
        _participants = participants,
        _starts = starts,
        _finishes = finishes,
        _trails = trails,
        _numbersOnTrace = numbersOnTrace;

  final List<Race> _races;
  @override
  List<Race> get races {
    if (_races is EqualUnmodifiableListView) return _races;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_races);
  }

  final List<Stage> _stages;
  @override
  List<Stage> get stages {
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stages);
  }

  final List<Rider> _riders;
  @override
  List<Rider> get riders {
    if (_riders is EqualUnmodifiableListView) return _riders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_riders);
  }

  final List<Status> _statuses;
  @override
  List<Status> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  final List<ParticipantAtStart> _participants;
  @override
  List<ParticipantAtStart> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<Start> _starts;
  @override
  List<Start> get starts {
    if (_starts is EqualUnmodifiableListView) return _starts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_starts);
  }

  final List<Finish> _finishes;
  @override
  List<Finish> get finishes {
    if (_finishes is EqualUnmodifiableListView) return _finishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finishes);
  }

  final List<Trail> _trails;
  @override
  List<Trail> get trails {
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  final List<StartingParticipant> _numbersOnTrace;
  @override
  List<StartingParticipant> get numbersOnTrace {
    if (_numbersOnTrace is EqualUnmodifiableListView) return _numbersOnTrace;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbersOnTrace);
  }

  @override
  final Notification? notification;

  @override
  String toString() {
    return 'DatabaseState.initialized(races: $races, stages: $stages, riders: $riders, statuses: $statuses, participants: $participants, starts: $starts, finishes: $finishes, trails: $trails, numbersOnTrace: $numbersOnTrace, notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            const DeepCollectionEquality().equals(other._races, _races) &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            const DeepCollectionEquality().equals(other._riders, _riders) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._starts, _starts) &&
            const DeepCollectionEquality().equals(other._finishes, _finishes) &&
            const DeepCollectionEquality().equals(other._trails, _trails) &&
            const DeepCollectionEquality()
                .equals(other._numbersOnTrace, _numbersOnTrace) &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_races),
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_riders),
      const DeepCollectionEquality().hash(_statuses),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_starts),
      const DeepCollectionEquality().hash(_finishes),
      const DeepCollectionEquality().hash(_trails),
      const DeepCollectionEquality().hash(_numbersOnTrace),
      notification);

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)
        initialized,
  }) {
    return initialized(races, stages, riders, statuses, participants, starts,
        finishes, trails, numbersOnTrace, notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)?
        initialized,
  }) {
    return initialized?.call(races, stages, riders, statuses, participants,
        starts, finishes, trails, numbersOnTrace, notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(races, stages, riders, statuses, participants, starts,
          finishes, trails, numbersOnTrace, notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DatabaseState {
  const factory _Initialized(
      {required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<ParticipantAtStart> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<StartingParticipant> numbersOnTrace,
      final Notification? notification}) = _$InitializedImpl;

  List<Race> get races;
  List<Stage> get stages;
  List<Rider> get riders;
  List<Status> get statuses;
  List<ParticipantAtStart> get participants;
  List<Start> get starts;
  List<Finish> get finishes;
  List<Trail> get trails;
  List<StartingParticipant> get numbersOnTrace;
  Notification? get notification;

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
