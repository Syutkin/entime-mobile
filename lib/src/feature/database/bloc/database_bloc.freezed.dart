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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
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
      {Race? race,
      Stage? stage,
      List<Race> races,
      List<Stage> stages,
      List<Rider> riders,
      List<Status> statuses,
      List<ParticipantAtStart> participants,
      List<Start> starts,
      List<Finish> finishes,
      List<Trail> trails,
      List<StartingParticipant> numbersOnTrace,
      Notification? notification,
      int? autoFinishNumber,
      int? awaitingNumber,
      bool? updateFinishNumber});

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
    Object? race = freezed,
    Object? stage = freezed,
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
    Object? autoFinishNumber = freezed,
    Object? awaitingNumber = freezed,
    Object? updateFinishNumber = freezed,
  }) {
    return _then(_$EmitStateImpl(
      race: freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Race?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage?,
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
      autoFinishNumber: freezed == autoFinishNumber
          ? _value.autoFinishNumber
          : autoFinishNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      awaitingNumber: freezed == awaitingNumber
          ? _value.awaitingNumber
          : awaitingNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      updateFinishNumber: freezed == updateFinishNumber
          ? _value.updateFinishNumber
          : updateFinishNumber // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {required this.race,
      required this.stage,
      required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<ParticipantAtStart> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<StartingParticipant> numbersOnTrace,
      required this.notification,
      required this.autoFinishNumber,
      required this.awaitingNumber,
      required this.updateFinishNumber})
      : _races = races,
        _stages = stages,
        _riders = riders,
        _statuses = statuses,
        _participants = participants,
        _starts = starts,
        _finishes = finishes,
        _trails = trails,
        _numbersOnTrace = numbersOnTrace;

  @override
  final Race? race;
  @override
  final Stage? stage;
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
  final int? autoFinishNumber;
  @override
  final int? awaitingNumber;
  @override
  final bool? updateFinishNumber;

  @override
  String toString() {
    return 'DatabaseEvent.emitState(race: $race, stage: $stage, races: $races, stages: $stages, riders: $riders, statuses: $statuses, participants: $participants, starts: $starts, finishes: $finishes, trails: $trails, numbersOnTrace: $numbersOnTrace, notification: $notification, autoFinishNumber: $autoFinishNumber, awaitingNumber: $awaitingNumber, updateFinishNumber: $updateFinishNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitStateImpl &&
            const DeepCollectionEquality().equals(other.race, race) &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
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
                other.notification == notification) &&
            (identical(other.autoFinishNumber, autoFinishNumber) ||
                other.autoFinishNumber == autoFinishNumber) &&
            (identical(other.awaitingNumber, awaitingNumber) ||
                other.awaitingNumber == awaitingNumber) &&
            (identical(other.updateFinishNumber, updateFinishNumber) ||
                other.updateFinishNumber == updateFinishNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(race),
      const DeepCollectionEquality().hash(stage),
      const DeepCollectionEquality().hash(_races),
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_riders),
      const DeepCollectionEquality().hash(_statuses),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_starts),
      const DeepCollectionEquality().hash(_finishes),
      const DeepCollectionEquality().hash(_trails),
      const DeepCollectionEquality().hash(_numbersOnTrace),
      notification,
      autoFinishNumber,
      awaitingNumber,
      updateFinishNumber);

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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return emitState(
        race,
        stage,
        races,
        stages,
        riders,
        statuses,
        participants,
        starts,
        finishes,
        trails,
        numbersOnTrace,
        notification,
        autoFinishNumber,
        awaitingNumber,
        updateFinishNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return emitState?.call(
        race,
        stage,
        races,
        stages,
        riders,
        statuses,
        participants,
        starts,
        finishes,
        trails,
        numbersOnTrace,
        notification,
        autoFinishNumber,
        awaitingNumber,
        updateFinishNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (emitState != null) {
      return emitState(
          race,
          stage,
          races,
          stages,
          riders,
          statuses,
          participants,
          starts,
          finishes,
          trails,
          numbersOnTrace,
          notification,
          autoFinishNumber,
          awaitingNumber,
          updateFinishNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return emitState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return emitState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
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
      {required final Race? race,
      required final Stage? stage,
      required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<ParticipantAtStart> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<StartingParticipant> numbersOnTrace,
      required final Notification? notification,
      required final int? autoFinishNumber,
      required final int? awaitingNumber,
      required final bool? updateFinishNumber}) = _$EmitStateImpl;

  Race? get race;
  Stage? get stage;
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
  int? get autoFinishNumber;
  int? get awaitingNumber;
  bool? get updateFinishNumber;

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
  $Res call(
      {String name,
      DateTime? startDate,
      DateTime? finishDate,
      String? location,
      String? url,
      String? description});
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
    Object? name = null,
    Object? startDate = freezed,
    Object? finishDate = freezed,
    Object? location = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AddRaceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishDate: freezed == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddRaceImpl implements _AddRace {
  const _$AddRaceImpl(
      {required this.name,
      this.startDate,
      this.finishDate,
      this.location,
      this.url,
      this.description});

  @override
  final String name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? finishDate;
  @override
  final String? location;
  @override
  final String? url;
  @override
  final String? description;

  @override
  String toString() {
    return 'DatabaseEvent.addRace(name: $name, startDate: $startDate, finishDate: $finishDate, location: $location, url: $url, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRaceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, startDate, finishDate, location, url, description);

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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return addRace(name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return addRace?.call(
        name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (addRace != null) {
      return addRace(name, startDate, finishDate, location, url, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return addRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return addRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (addRace != null) {
      return addRace(this);
    }
    return orElse();
  }
}

abstract class _AddRace implements DatabaseEvent {
  const factory _AddRace(
      {required final String name,
      final DateTime? startDate,
      final DateTime? finishDate,
      final String? location,
      final String? url,
      final String? description}) = _$AddRaceImpl;

  String get name;
  DateTime? get startDate;
  DateTime? get finishDate;
  String? get location;
  String? get url;
  String? get description;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRaceImplCopyWith<_$AddRaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRaceImplCopyWith<$Res> {
  factory _$$UpdateRaceImplCopyWith(
          _$UpdateRaceImpl value, $Res Function(_$UpdateRaceImpl) then) =
      __$$UpdateRaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String? name,
      DateTime? startDate,
      DateTime? finishDate,
      String? location,
      String? url,
      String? description});
}

/// @nodoc
class __$$UpdateRaceImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UpdateRaceImpl>
    implements _$$UpdateRaceImplCopyWith<$Res> {
  __$$UpdateRaceImplCopyWithImpl(
      _$UpdateRaceImpl _value, $Res Function(_$UpdateRaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? startDate = freezed,
    Object? finishDate = freezed,
    Object? location = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UpdateRaceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishDate: freezed == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateRaceImpl implements _UpdateRace {
  const _$UpdateRaceImpl(
      {required this.id,
      this.name,
      this.startDate,
      this.finishDate,
      this.location,
      this.url,
      this.description});

  @override
  final int id;
  @override
  final String? name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? finishDate;
  @override
  final String? location;
  @override
  final String? url;
  @override
  final String? description;

  @override
  String toString() {
    return 'DatabaseEvent.updateRace(id: $id, name: $name, startDate: $startDate, finishDate: $finishDate, location: $location, url: $url, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, startDate, finishDate, location, url, description);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRaceImplCopyWith<_$UpdateRaceImpl> get copyWith =>
      __$$UpdateRaceImplCopyWithImpl<_$UpdateRaceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return updateRace(
        id, name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return updateRace?.call(
        id, name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (updateRace != null) {
      return updateRace(
          id, name, startDate, finishDate, location, url, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return updateRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return updateRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (updateRace != null) {
      return updateRace(this);
    }
    return orElse();
  }
}

abstract class _UpdateRace implements DatabaseEvent {
  const factory _UpdateRace(
      {required final int id,
      final String? name,
      final DateTime? startDate,
      final DateTime? finishDate,
      final String? location,
      final String? url,
      final String? description}) = _$UpdateRaceImpl;

  int get id;
  String? get name;
  DateTime? get startDate;
  DateTime? get finishDate;
  String? get location;
  String? get url;
  String? get description;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRaceImplCopyWith<_$UpdateRaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpsertRaceImplCopyWith<$Res> {
  factory _$$UpsertRaceImplCopyWith(
          _$UpsertRaceImpl value, $Res Function(_$UpsertRaceImpl) then) =
      __$$UpsertRaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      DateTime? startDate,
      DateTime? finishDate,
      String? location,
      String? url,
      String? description});
}

/// @nodoc
class __$$UpsertRaceImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UpsertRaceImpl>
    implements _$$UpsertRaceImplCopyWith<$Res> {
  __$$UpsertRaceImplCopyWithImpl(
      _$UpsertRaceImpl _value, $Res Function(_$UpsertRaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? startDate = freezed,
    Object? finishDate = freezed,
    Object? location = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UpsertRaceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishDate: freezed == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpsertRaceImpl implements _UpsertRace {
  const _$UpsertRaceImpl(
      {this.id,
      this.name,
      this.startDate,
      this.finishDate,
      this.location,
      this.url,
      this.description});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? finishDate;
  @override
  final String? location;
  @override
  final String? url;
  @override
  final String? description;

  @override
  String toString() {
    return 'DatabaseEvent.upsertRace(id: $id, name: $name, startDate: $startDate, finishDate: $finishDate, location: $location, url: $url, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpsertRaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, startDate, finishDate, location, url, description);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpsertRaceImplCopyWith<_$UpsertRaceImpl> get copyWith =>
      __$$UpsertRaceImplCopyWithImpl<_$UpsertRaceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return upsertRace(
        id, name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return upsertRace?.call(
        id, name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (upsertRace != null) {
      return upsertRace(
          id, name, startDate, finishDate, location, url, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return upsertRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return upsertRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (upsertRace != null) {
      return upsertRace(this);
    }
    return orElse();
  }
}

abstract class _UpsertRace implements DatabaseEvent {
  const factory _UpsertRace(
      {final int? id,
      final String? name,
      final DateTime? startDate,
      final DateTime? finishDate,
      final String? location,
      final String? url,
      final String? description}) = _$UpsertRaceImpl;

  int? get id;
  String? get name;
  DateTime? get startDate;
  DateTime? get finishDate;
  String? get location;
  String? get url;
  String? get description;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpsertRaceImplCopyWith<_$UpsertRaceImpl> get copyWith =>
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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return deleteRace(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return deleteRace?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return deleteRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return deleteRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
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
abstract class _$$GetRacesImplCopyWith<$Res> {
  factory _$$GetRacesImplCopyWith(
          _$GetRacesImpl value, $Res Function(_$GetRacesImpl) then) =
      __$$GetRacesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRacesImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$GetRacesImpl>
    implements _$$GetRacesImplCopyWith<$Res> {
  __$$GetRacesImplCopyWithImpl(
      _$GetRacesImpl _value, $Res Function(_$GetRacesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetRacesImpl implements _GetRaces {
  const _$GetRacesImpl();

  @override
  String toString() {
    return 'DatabaseEvent.getRaces()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRacesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return getRaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return getRaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (getRaces != null) {
      return getRaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return getRaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return getRaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (getRaces != null) {
      return getRaces(this);
    }
    return orElse();
  }
}

abstract class _GetRaces implements DatabaseEvent {
  const factory _GetRaces() = _$GetRacesImpl;
}

/// @nodoc
abstract class _$$SelectRaceImplCopyWith<$Res> {
  factory _$$SelectRaceImplCopyWith(
          _$SelectRaceImpl value, $Res Function(_$SelectRaceImpl) then) =
      __$$SelectRaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Race race});
}

/// @nodoc
class __$$SelectRaceImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SelectRaceImpl>
    implements _$$SelectRaceImplCopyWith<$Res> {
  __$$SelectRaceImplCopyWithImpl(
      _$SelectRaceImpl _value, $Res Function(_$SelectRaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? race = freezed,
  }) {
    return _then(_$SelectRaceImpl(
      freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Race,
    ));
  }
}

/// @nodoc

class _$SelectRaceImpl implements _SelectRace {
  const _$SelectRaceImpl(this.race);

  @override
  final Race race;

  @override
  String toString() {
    return 'DatabaseEvent.selectRace(race: $race)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRaceImpl &&
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
  _$$SelectRaceImplCopyWith<_$SelectRaceImpl> get copyWith =>
      __$$SelectRaceImplCopyWithImpl<_$SelectRaceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return selectRace(race);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return selectRace?.call(race);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (selectRace != null) {
      return selectRace(race);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return selectRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return selectRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (selectRace != null) {
      return selectRace(this);
    }
    return orElse();
  }
}

abstract class _SelectRace implements DatabaseEvent {
  const factory _SelectRace(final Race race) = _$SelectRaceImpl;

  Race get race;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRaceImplCopyWith<_$SelectRaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeselectRaceImplCopyWith<$Res> {
  factory _$$DeselectRaceImplCopyWith(
          _$DeselectRaceImpl value, $Res Function(_$DeselectRaceImpl) then) =
      __$$DeselectRaceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeselectRaceImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$DeselectRaceImpl>
    implements _$$DeselectRaceImplCopyWith<$Res> {
  __$$DeselectRaceImplCopyWithImpl(
      _$DeselectRaceImpl _value, $Res Function(_$DeselectRaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeselectRaceImpl implements _DeselectRace {
  const _$DeselectRaceImpl();

  @override
  String toString() {
    return 'DatabaseEvent.deselectRace()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeselectRaceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return deselectRace();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return deselectRace?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (deselectRace != null) {
      return deselectRace();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return deselectRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return deselectRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (deselectRace != null) {
      return deselectRace(this);
    }
    return orElse();
  }
}

abstract class _DeselectRace implements DatabaseEvent {
  const factory _DeselectRace() = _$DeselectRaceImpl;
}

/// @nodoc
abstract class _$$AddStageImplCopyWith<$Res> {
  factory _$$AddStageImplCopyWith(
          _$AddStageImpl value, $Res Function(_$AddStageImpl) then) =
      __$$AddStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, int raceId, int? trailId});
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
    Object? name = null,
    Object? raceId = null,
    Object? trailId = freezed,
  }) {
    return _then(_$AddStageImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      raceId: null == raceId
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
      trailId: freezed == trailId
          ? _value.trailId
          : trailId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AddStageImpl implements _AddStage {
  const _$AddStageImpl(
      {required this.name, required this.raceId, this.trailId});

  @override
  final String name;
  @override
  final int raceId;
  @override
  final int? trailId;

  @override
  String toString() {
    return 'DatabaseEvent.addStage(name: $name, raceId: $raceId, trailId: $trailId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.raceId, raceId) || other.raceId == raceId) &&
            (identical(other.trailId, trailId) || other.trailId == trailId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, raceId, trailId);

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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return addStage(name, raceId, trailId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return addStage?.call(name, raceId, trailId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (addStage != null) {
      return addStage(name, raceId, trailId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return addStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return addStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (addStage != null) {
      return addStage(this);
    }
    return orElse();
  }
}

abstract class _AddStage implements DatabaseEvent {
  const factory _AddStage(
      {required final String name,
      required final int raceId,
      final int? trailId}) = _$AddStageImpl;

  String get name;
  int get raceId;
  int? get trailId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStageImplCopyWith<_$AddStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpsertStageImplCopyWith<$Res> {
  factory _$$UpsertStageImplCopyWith(
          _$UpsertStageImpl value, $Res Function(_$UpsertStageImpl) then) =
      __$$UpsertStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? raceId,
      int? trailId,
      bool? isActive,
      bool? isDeleted});
}

/// @nodoc
class __$$UpsertStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UpsertStageImpl>
    implements _$$UpsertStageImplCopyWith<$Res> {
  __$$UpsertStageImplCopyWithImpl(
      _$UpsertStageImpl _value, $Res Function(_$UpsertStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? raceId = freezed,
    Object? trailId = freezed,
    Object? isActive = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(_$UpsertStageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      raceId: freezed == raceId
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int?,
      trailId: freezed == trailId
          ? _value.trailId
          : trailId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$UpsertStageImpl implements _UpsertStage {
  const _$UpsertStageImpl(
      {this.id,
      this.name,
      this.description,
      this.raceId,
      this.trailId,
      this.isActive,
      this.isDeleted});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? raceId;
  @override
  final int? trailId;
  @override
  final bool? isActive;
  @override
  final bool? isDeleted;

  @override
  String toString() {
    return 'DatabaseEvent.upsertStage(id: $id, name: $name, description: $description, raceId: $raceId, trailId: $trailId, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpsertStageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.raceId, raceId) || other.raceId == raceId) &&
            (identical(other.trailId, trailId) || other.trailId == trailId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, raceId, trailId, isActive, isDeleted);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpsertStageImplCopyWith<_$UpsertStageImpl> get copyWith =>
      __$$UpsertStageImplCopyWithImpl<_$UpsertStageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return upsertStage(
        id, name, description, raceId, trailId, isActive, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return upsertStage?.call(
        id, name, description, raceId, trailId, isActive, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (upsertStage != null) {
      return upsertStage(
          id, name, description, raceId, trailId, isActive, isDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return upsertStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return upsertStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (upsertStage != null) {
      return upsertStage(this);
    }
    return orElse();
  }
}

abstract class _UpsertStage implements DatabaseEvent {
  const factory _UpsertStage(
      {final int? id,
      final String? name,
      final String? description,
      final int? raceId,
      final int? trailId,
      final bool? isActive,
      final bool? isDeleted}) = _$UpsertStageImpl;

  int? get id;
  String? get name;
  String? get description;
  int? get raceId;
  int? get trailId;
  bool? get isActive;
  bool? get isDeleted;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpsertStageImplCopyWith<_$UpsertStageImpl> get copyWith =>
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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return deleteStage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return deleteStage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return deleteStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return deleteStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
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
abstract class _$$GetStagesImplCopyWith<$Res> {
  factory _$$GetStagesImplCopyWith(
          _$GetStagesImpl value, $Res Function(_$GetStagesImpl) then) =
      __$$GetStagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int raceId});
}

/// @nodoc
class __$$GetStagesImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$GetStagesImpl>
    implements _$$GetStagesImplCopyWith<$Res> {
  __$$GetStagesImplCopyWithImpl(
      _$GetStagesImpl _value, $Res Function(_$GetStagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raceId = null,
  }) {
    return _then(_$GetStagesImpl(
      null == raceId
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetStagesImpl implements _GetStages {
  const _$GetStagesImpl(this.raceId);

  @override
  final int raceId;

  @override
  String toString() {
    return 'DatabaseEvent.getStages(raceId: $raceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStagesImpl &&
            (identical(other.raceId, raceId) || other.raceId == raceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, raceId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStagesImplCopyWith<_$GetStagesImpl> get copyWith =>
      __$$GetStagesImplCopyWithImpl<_$GetStagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return getStages(raceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return getStages?.call(raceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (getStages != null) {
      return getStages(raceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return getStages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return getStages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (getStages != null) {
      return getStages(this);
    }
    return orElse();
  }
}

abstract class _GetStages implements DatabaseEvent {
  const factory _GetStages(final int raceId) = _$GetStagesImpl;

  int get raceId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStagesImplCopyWith<_$GetStagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectStageImplCopyWith<$Res> {
  factory _$$SelectStageImplCopyWith(
          _$SelectStageImpl value, $Res Function(_$SelectStageImpl) then) =
      __$$SelectStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage});
}

/// @nodoc
class __$$SelectStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SelectStageImpl>
    implements _$$SelectStageImplCopyWith<$Res> {
  __$$SelectStageImplCopyWithImpl(
      _$SelectStageImpl _value, $Res Function(_$SelectStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(_$SelectStageImpl(
      freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
    ));
  }
}

/// @nodoc

class _$SelectStageImpl implements _SelectStage {
  const _$SelectStageImpl(this.stage);

  @override
  final Stage stage;

  @override
  String toString() {
    return 'DatabaseEvent.selectStage(stage: $stage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStageImpl &&
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
  _$$SelectStageImplCopyWith<_$SelectStageImpl> get copyWith =>
      __$$SelectStageImplCopyWithImpl<_$SelectStageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return selectStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return selectStage?.call(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (selectStage != null) {
      return selectStage(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return selectStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return selectStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (selectStage != null) {
      return selectStage(this);
    }
    return orElse();
  }
}

abstract class _SelectStage implements DatabaseEvent {
  const factory _SelectStage(final Stage stage) = _$SelectStageImpl;

  Stage get stage;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectStageImplCopyWith<_$SelectStageImpl> get copyWith =>
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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return getParticipantsAtStart(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return getParticipantsAtStart?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return getParticipantsAtStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return getParticipantsAtStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
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
abstract class _$$AddStartNumberImplCopyWith<$Res> {
  factory _$$AddStartNumberImplCopyWith(_$AddStartNumberImpl value,
          $Res Function(_$AddStartNumberImpl) then) =
      __$$AddStartNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number, String startTime, bool forceAdd});
}

/// @nodoc
class __$$AddStartNumberImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$AddStartNumberImpl>
    implements _$$AddStartNumberImplCopyWith<$Res> {
  __$$AddStartNumberImplCopyWithImpl(
      _$AddStartNumberImpl _value, $Res Function(_$AddStartNumberImpl) _then)
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
    return _then(_$AddStartNumberImpl(
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

class _$AddStartNumberImpl implements _AddStartNumber {
  const _$AddStartNumberImpl(
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
            other is _$AddStartNumberImpl &&
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
  _$$AddStartNumberImplCopyWith<_$AddStartNumberImpl> get copyWith =>
      __$$AddStartNumberImplCopyWithImpl<_$AddStartNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return addStartNumber(stage, number, startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return addStartNumber?.call(stage, number, startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return addStartNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return addStartNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (addStartNumber != null) {
      return addStartNumber(this);
    }
    return orElse();
  }
}

abstract class _AddStartNumber implements DatabaseEvent {
  const factory _AddStartNumber(
      {required final Stage stage,
      required final int number,
      required final String startTime,
      final bool forceAdd}) = _$AddStartNumberImpl;

  Stage get stage;
  int get number;
  String get startTime;
  bool get forceAdd;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStartNumberImplCopyWith<_$AddStartNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStartingInfoImplCopyWith<$Res> {
  factory _$$UpdateStartingInfoImplCopyWith(_$UpdateStartingInfoImpl value,
          $Res Function(_$UpdateStartingInfoImpl) then) =
      __$$UpdateStartingInfoImplCopyWithImpl<$Res>;
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
class __$$UpdateStartingInfoImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UpdateStartingInfoImpl>
    implements _$$UpdateStartingInfoImplCopyWith<$Res> {
  __$$UpdateStartingInfoImplCopyWithImpl(_$UpdateStartingInfoImpl _value,
      $Res Function(_$UpdateStartingInfoImpl) _then)
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
    return _then(_$UpdateStartingInfoImpl(
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

class _$UpdateStartingInfoImpl implements _UpdateStartingInfo {
  const _$UpdateStartingInfoImpl(
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
            other is _$UpdateStartingInfoImpl &&
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
  _$$UpdateStartingInfoImplCopyWith<_$UpdateStartingInfoImpl> get copyWith =>
      __$$UpdateStartingInfoImplCopyWithImpl<_$UpdateStartingInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return updateStartingInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return updateStartingInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (updateStartingInfo != null) {
      return updateStartingInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateStartingInfo implements DatabaseEvent {
  const factory _UpdateStartingInfo(
      {required final String startTime,
      final String? automaticStartTime,
      final int? automaticCorrection,
      final String? manualStartTime,
      final int? manualCorrection,
      required final int stageId,
      required final int participantId}) = _$UpdateStartingInfoImpl;

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
  _$$UpdateStartingInfoImplCopyWith<_$UpdateStartingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAutomaticCorrectionImplCopyWith<$Res> {
  factory _$$UpdateAutomaticCorrectionImplCopyWith(
          _$UpdateAutomaticCorrectionImpl value,
          $Res Function(_$UpdateAutomaticCorrectionImpl) then) =
      __$$UpdateAutomaticCorrectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int stageId,
      String startTime,
      int correction,
      DateTime timestamp,
      bool forceUpdate,
      int? deltaInSeconds});
}

/// @nodoc
class __$$UpdateAutomaticCorrectionImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$UpdateAutomaticCorrectionImpl>
    implements _$$UpdateAutomaticCorrectionImplCopyWith<$Res> {
  __$$UpdateAutomaticCorrectionImplCopyWithImpl(
      _$UpdateAutomaticCorrectionImpl _value,
      $Res Function(_$UpdateAutomaticCorrectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? startTime = null,
    Object? correction = null,
    Object? timestamp = null,
    Object? forceUpdate = null,
    Object? deltaInSeconds = freezed,
  }) {
    return _then(_$UpdateAutomaticCorrectionImpl(
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      correction: null == correction
          ? _value.correction
          : correction // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      deltaInSeconds: freezed == deltaInSeconds
          ? _value.deltaInSeconds
          : deltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateAutomaticCorrectionImpl implements _UpdateAutomaticCorrection {
  const _$UpdateAutomaticCorrectionImpl(
      {required this.stageId,
      required this.startTime,
      required this.correction,
      required this.timestamp,
      this.forceUpdate = false,
      this.deltaInSeconds});

  @override
  final int stageId;
  @override
  final String startTime;
  @override
  final int correction;
  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final bool forceUpdate;
  @override
  final int? deltaInSeconds;

  @override
  String toString() {
    return 'DatabaseEvent.updateAutomaticCorrection(stageId: $stageId, startTime: $startTime, correction: $correction, timestamp: $timestamp, forceUpdate: $forceUpdate, deltaInSeconds: $deltaInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAutomaticCorrectionImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.correction, correction) ||
                other.correction == correction) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.deltaInSeconds, deltaInSeconds) ||
                other.deltaInSeconds == deltaInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId, startTime, correction,
      timestamp, forceUpdate, deltaInSeconds);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAutomaticCorrectionImplCopyWith<_$UpdateAutomaticCorrectionImpl>
      get copyWith => __$$UpdateAutomaticCorrectionImplCopyWithImpl<
          _$UpdateAutomaticCorrectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return updateAutomaticCorrection(
        stageId, startTime, correction, timestamp, forceUpdate, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return updateAutomaticCorrection?.call(
        stageId, startTime, correction, timestamp, forceUpdate, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(stageId, startTime, correction,
          timestamp, forceUpdate, deltaInSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return updateAutomaticCorrection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return updateAutomaticCorrection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(this);
    }
    return orElse();
  }
}

abstract class _UpdateAutomaticCorrection implements DatabaseEvent {
  const factory _UpdateAutomaticCorrection(
      {required final int stageId,
      required final String startTime,
      required final int correction,
      required final DateTime timestamp,
      final bool forceUpdate,
      final int? deltaInSeconds}) = _$UpdateAutomaticCorrectionImpl;

  int get stageId;
  String get startTime;
  int get correction;
  DateTime get timestamp;
  bool get forceUpdate;
  int? get deltaInSeconds;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAutomaticCorrectionImplCopyWith<_$UpdateAutomaticCorrectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateManualStartTimeImplCopyWith<$Res> {
  factory _$$UpdateManualStartTimeImplCopyWith(
          _$UpdateManualStartTimeImpl value,
          $Res Function(_$UpdateManualStartTimeImpl) then) =
      __$$UpdateManualStartTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int stageId, DateTime time, DateTime timestamp, int deltaInSeconds});
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
    Object? timestamp = null,
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
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
      {required this.stageId,
      required this.time,
      required this.timestamp,
      this.deltaInSeconds = 15});

  @override
  final int stageId;
  @override
  final DateTime time;
  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final int deltaInSeconds;

  @override
  String toString() {
    return 'DatabaseEvent.updateManualStartTime(stageId: $stageId, time: $time, timestamp: $timestamp, deltaInSeconds: $deltaInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateManualStartTimeImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.deltaInSeconds, deltaInSeconds) ||
                other.deltaInSeconds == deltaInSeconds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stageId, time, timestamp, deltaInSeconds);

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
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return updateManualStartTime(stageId, time, timestamp, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return updateManualStartTime?.call(
        stageId, time, timestamp, deltaInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (updateManualStartTime != null) {
      return updateManualStartTime(stageId, time, timestamp, deltaInSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return updateManualStartTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return updateManualStartTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
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
      required final DateTime timestamp,
      final int deltaInSeconds}) = _$UpdateManualStartTimeImpl;

  int get stageId;
  DateTime get time;
  DateTime get timestamp;
  int get deltaInSeconds;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateManualStartTimeImplCopyWith<_$UpdateManualStartTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetStatusForStartIdImplCopyWith<$Res> {
  factory _$$SetStatusForStartIdImplCopyWith(_$SetStatusForStartIdImpl value,
          $Res Function(_$SetStatusForStartIdImpl) then) =
      __$$SetStatusForStartIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int startId, ParticipantStatus status});
}

/// @nodoc
class __$$SetStatusForStartIdImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SetStatusForStartIdImpl>
    implements _$$SetStatusForStartIdImplCopyWith<$Res> {
  __$$SetStatusForStartIdImplCopyWithImpl(_$SetStatusForStartIdImpl _value,
      $Res Function(_$SetStatusForStartIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startId = null,
    Object? status = null,
  }) {
    return _then(_$SetStatusForStartIdImpl(
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

class _$SetStatusForStartIdImpl implements _SetStatusForStartId {
  const _$SetStatusForStartIdImpl(
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
            other is _$SetStatusForStartIdImpl &&
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
  _$$SetStatusForStartIdImplCopyWith<_$SetStatusForStartIdImpl> get copyWith =>
      __$$SetStatusForStartIdImplCopyWithImpl<_$SetStatusForStartIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return setStatusForStartId(startId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return setStatusForStartId?.call(startId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return setStatusForStartId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return setStatusForStartId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (setStatusForStartId != null) {
      return setStatusForStartId(this);
    }
    return orElse();
  }
}

abstract class _SetStatusForStartId implements DatabaseEvent {
  const factory _SetStatusForStartId(
      {required final int startId,
      required final ParticipantStatus status}) = _$SetStatusForStartIdImpl;

  int get startId;
  ParticipantStatus get status;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetStatusForStartIdImplCopyWith<_$SetStatusForStartIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFinishTimeImplCopyWith<$Res> {
  factory _$$AddFinishTimeImplCopyWith(
          _$AddFinishTimeImpl value, $Res Function(_$AddFinishTimeImpl) then) =
      __$$AddFinishTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Stage stage,
      String finishTime,
      DateTime timestamp,
      int? finishDelay,
      bool? substituteNumbers,
      int? substituteNumbersDelay,
      DateTime? dateTimeNow,
      int? number});
}

/// @nodoc
class __$$AddFinishTimeImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$AddFinishTimeImpl>
    implements _$$AddFinishTimeImplCopyWith<$Res> {
  __$$AddFinishTimeImplCopyWithImpl(
      _$AddFinishTimeImpl _value, $Res Function(_$AddFinishTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? finishTime = null,
    Object? timestamp = null,
    Object? finishDelay = freezed,
    Object? substituteNumbers = freezed,
    Object? substituteNumbersDelay = freezed,
    Object? dateTimeNow = freezed,
    Object? number = freezed,
  }) {
    return _then(_$AddFinishTimeImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishDelay: freezed == finishDelay
          ? _value.finishDelay
          : finishDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      substituteNumbers: freezed == substituteNumbers
          ? _value.substituteNumbers
          : substituteNumbers // ignore: cast_nullable_to_non_nullable
              as bool?,
      substituteNumbersDelay: freezed == substituteNumbersDelay
          ? _value.substituteNumbersDelay
          : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
              as int?,
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

class _$AddFinishTimeImpl implements _AddFinishTime {
  const _$AddFinishTimeImpl(
      {required this.stage,
      required this.finishTime,
      required this.timestamp,
      this.finishDelay,
      this.substituteNumbers,
      this.substituteNumbersDelay,
      this.dateTimeNow,
      this.number});

  @override
  final Stage stage;
  @override
  final String finishTime;
  @override
  final DateTime timestamp;
  @override
  final int? finishDelay;
  @override
  final bool? substituteNumbers;
  @override
  final int? substituteNumbersDelay;
  @override
  final DateTime? dateTimeNow;
  @override
  final int? number;

  @override
  String toString() {
    return 'DatabaseEvent.addFinishTime(stage: $stage, finishTime: $finishTime, timestamp: $timestamp, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, dateTimeNow: $dateTimeNow, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFinishTimeImpl &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
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
      finishTime,
      timestamp,
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
  _$$AddFinishTimeImplCopyWith<_$AddFinishTimeImpl> get copyWith =>
      __$$AddFinishTimeImplCopyWithImpl<_$AddFinishTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return addFinishTime(stage, finishTime, timestamp, finishDelay,
        substituteNumbers, substituteNumbersDelay, dateTimeNow, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return addFinishTime?.call(stage, finishTime, timestamp, finishDelay,
        substituteNumbers, substituteNumbersDelay, dateTimeNow, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (addFinishTime != null) {
      return addFinishTime(stage, finishTime, timestamp, finishDelay,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return addFinishTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return addFinishTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (addFinishTime != null) {
      return addFinishTime(this);
    }
    return orElse();
  }
}

abstract class _AddFinishTime implements DatabaseEvent {
  const factory _AddFinishTime(
      {required final Stage stage,
      required final String finishTime,
      required final DateTime timestamp,
      final int? finishDelay,
      final bool? substituteNumbers,
      final int? substituteNumbersDelay,
      final DateTime? dateTimeNow,
      final int? number}) = _$AddFinishTimeImpl;

  Stage get stage;
  String get finishTime;
  DateTime get timestamp;
  int? get finishDelay;
  bool? get substituteNumbers;
  int? get substituteNumbersDelay;
  DateTime? get dateTimeNow;
  int? get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFinishTimeImplCopyWith<_$AddFinishTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFinishTimeManualImplCopyWith<$Res> {
  factory _$$AddFinishTimeManualImplCopyWith(_$AddFinishTimeManualImpl value,
          $Res Function(_$AddFinishTimeManualImpl) then) =
      __$$AddFinishTimeManualImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId, String finishTime, DateTime timestamp, int? number});
}

/// @nodoc
class __$$AddFinishTimeManualImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$AddFinishTimeManualImpl>
    implements _$$AddFinishTimeManualImplCopyWith<$Res> {
  __$$AddFinishTimeManualImplCopyWithImpl(_$AddFinishTimeManualImpl _value,
      $Res Function(_$AddFinishTimeManualImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? finishTime = null,
    Object? timestamp = null,
    Object? number = freezed,
  }) {
    return _then(_$AddFinishTimeManualImpl(
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AddFinishTimeManualImpl implements _AddFinishTimeManual {
  const _$AddFinishTimeManualImpl(
      {required this.stageId,
      required this.finishTime,
      required this.timestamp,
      this.number});

  @override
  final int stageId;
  @override
  final String finishTime;
  @override
  final DateTime timestamp;
  @override
  final int? number;

  @override
  String toString() {
    return 'DatabaseEvent.addFinishTimeManual(stageId: $stageId, finishTime: $finishTime, timestamp: $timestamp, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFinishTimeManualImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stageId, finishTime, timestamp, number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFinishTimeManualImplCopyWith<_$AddFinishTimeManualImpl> get copyWith =>
      __$$AddFinishTimeManualImplCopyWithImpl<_$AddFinishTimeManualImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return addFinishTimeManual(stageId, finishTime, timestamp, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return addFinishTimeManual?.call(stageId, finishTime, timestamp, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (addFinishTimeManual != null) {
      return addFinishTimeManual(stageId, finishTime, timestamp, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return addFinishTimeManual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return addFinishTimeManual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (addFinishTimeManual != null) {
      return addFinishTimeManual(this);
    }
    return orElse();
  }
}

abstract class _AddFinishTimeManual implements DatabaseEvent {
  const factory _AddFinishTimeManual(
      {required final int stageId,
      required final String finishTime,
      required final DateTime timestamp,
      final int? number}) = _$AddFinishTimeManualImpl;

  int get stageId;
  String get finishTime;
  DateTime get timestamp;
  int? get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFinishTimeManualImplCopyWith<_$AddFinishTimeManualImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearStartResultsDebugImplCopyWith<$Res> {
  factory _$$ClearStartResultsDebugImplCopyWith(
          _$ClearStartResultsDebugImpl value,
          $Res Function(_$ClearStartResultsDebugImpl) then) =
      __$$ClearStartResultsDebugImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$ClearStartResultsDebugImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$ClearStartResultsDebugImpl>
    implements _$$ClearStartResultsDebugImplCopyWith<$Res> {
  __$$ClearStartResultsDebugImplCopyWithImpl(
      _$ClearStartResultsDebugImpl _value,
      $Res Function(_$ClearStartResultsDebugImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$ClearStartResultsDebugImpl(
      null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClearStartResultsDebugImpl implements _ClearStartResultsDebug {
  const _$ClearStartResultsDebugImpl(this.stageId);

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
            other is _$ClearStartResultsDebugImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearStartResultsDebugImplCopyWith<_$ClearStartResultsDebugImpl>
      get copyWith => __$$ClearStartResultsDebugImplCopyWithImpl<
          _$ClearStartResultsDebugImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return clearStartResultsDebug(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return clearStartResultsDebug?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return clearStartResultsDebug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return clearStartResultsDebug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (clearStartResultsDebug != null) {
      return clearStartResultsDebug(this);
    }
    return orElse();
  }
}

abstract class _ClearStartResultsDebug implements DatabaseEvent {
  const factory _ClearStartResultsDebug(final int stageId) =
      _$ClearStartResultsDebugImpl;

  int get stageId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearStartResultsDebugImplCopyWith<_$ClearStartResultsDebugImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFinishResultsDebugImplCopyWith<$Res> {
  factory _$$ClearFinishResultsDebugImplCopyWith(
          _$ClearFinishResultsDebugImpl value,
          $Res Function(_$ClearFinishResultsDebugImpl) then) =
      __$$ClearFinishResultsDebugImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$ClearFinishResultsDebugImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$ClearFinishResultsDebugImpl>
    implements _$$ClearFinishResultsDebugImplCopyWith<$Res> {
  __$$ClearFinishResultsDebugImplCopyWithImpl(
      _$ClearFinishResultsDebugImpl _value,
      $Res Function(_$ClearFinishResultsDebugImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$ClearFinishResultsDebugImpl(
      null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClearFinishResultsDebugImpl implements _ClearFinishResultsDebug {
  const _$ClearFinishResultsDebugImpl(this.stageId);

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
            other is _$ClearFinishResultsDebugImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearFinishResultsDebugImplCopyWith<_$ClearFinishResultsDebugImpl>
      get copyWith => __$$ClearFinishResultsDebugImplCopyWithImpl<
          _$ClearFinishResultsDebugImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return clearFinishResultsDebug(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return clearFinishResultsDebug?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return clearFinishResultsDebug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return clearFinishResultsDebug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (clearFinishResultsDebug != null) {
      return clearFinishResultsDebug(this);
    }
    return orElse();
  }
}

abstract class _ClearFinishResultsDebug implements DatabaseEvent {
  const factory _ClearFinishResultsDebug(final int stageId) =
      _$ClearFinishResultsDebugImpl;

  int get stageId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearFinishResultsDebugImplCopyWith<_$ClearFinishResultsDebugImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideAllFinisesImplCopyWith<$Res> {
  factory _$$HideAllFinisesImplCopyWith(_$HideAllFinisesImpl value,
          $Res Function(_$HideAllFinisesImpl) then) =
      __$$HideAllFinisesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$HideAllFinisesImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$HideAllFinisesImpl>
    implements _$$HideAllFinisesImplCopyWith<$Res> {
  __$$HideAllFinisesImplCopyWithImpl(
      _$HideAllFinisesImpl _value, $Res Function(_$HideAllFinisesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$HideAllFinisesImpl(
      null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HideAllFinisesImpl implements _HideAllFinises {
  const _$HideAllFinisesImpl(this.stageId);

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
            other is _$HideAllFinisesImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HideAllFinisesImplCopyWith<_$HideAllFinisesImpl> get copyWith =>
      __$$HideAllFinisesImplCopyWithImpl<_$HideAllFinisesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return hideAllFinises(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return hideAllFinises?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return hideAllFinises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return hideAllFinises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (hideAllFinises != null) {
      return hideAllFinises(this);
    }
    return orElse();
  }
}

abstract class _HideAllFinises implements DatabaseEvent {
  const factory _HideAllFinises(final int stageId) = _$HideAllFinisesImpl;

  int get stageId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HideAllFinisesImplCopyWith<_$HideAllFinisesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearNumberAtFinishImplCopyWith<$Res> {
  factory _$$ClearNumberAtFinishImplCopyWith(_$ClearNumberAtFinishImpl value,
          $Res Function(_$ClearNumberAtFinishImpl) then) =
      __$$ClearNumberAtFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number});
}

/// @nodoc
class __$$ClearNumberAtFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$ClearNumberAtFinishImpl>
    implements _$$ClearNumberAtFinishImplCopyWith<$Res> {
  __$$ClearNumberAtFinishImplCopyWithImpl(_$ClearNumberAtFinishImpl _value,
      $Res Function(_$ClearNumberAtFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? number = null,
  }) {
    return _then(_$ClearNumberAtFinishImpl(
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

class _$ClearNumberAtFinishImpl implements _ClearNumberAtFinish {
  const _$ClearNumberAtFinishImpl({required this.stage, required this.number});

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
            other is _$ClearNumberAtFinishImpl &&
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
  _$$ClearNumberAtFinishImplCopyWith<_$ClearNumberAtFinishImpl> get copyWith =>
      __$$ClearNumberAtFinishImplCopyWithImpl<_$ClearNumberAtFinishImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return clearNumberAtFinish(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return clearNumberAtFinish?.call(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return clearNumberAtFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return clearNumberAtFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (clearNumberAtFinish != null) {
      return clearNumberAtFinish(this);
    }
    return orElse();
  }
}

abstract class _ClearNumberAtFinish implements DatabaseEvent {
  const factory _ClearNumberAtFinish(
      {required final Stage stage,
      required final int number}) = _$ClearNumberAtFinishImpl;

  Stage get stage;
  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearNumberAtFinishImplCopyWith<_$ClearNumberAtFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDNSForStageImplCopyWith<$Res> {
  factory _$$SetDNSForStageImplCopyWith(_$SetDNSForStageImpl value,
          $Res Function(_$SetDNSForStageImpl) then) =
      __$$SetDNSForStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number});
}

/// @nodoc
class __$$SetDNSForStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SetDNSForStageImpl>
    implements _$$SetDNSForStageImplCopyWith<$Res> {
  __$$SetDNSForStageImplCopyWithImpl(
      _$SetDNSForStageImpl _value, $Res Function(_$SetDNSForStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? number = null,
  }) {
    return _then(_$SetDNSForStageImpl(
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

class _$SetDNSForStageImpl implements _SetDNSForStage {
  const _$SetDNSForStageImpl({required this.stage, required this.number});

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
            other is _$SetDNSForStageImpl &&
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
  _$$SetDNSForStageImplCopyWith<_$SetDNSForStageImpl> get copyWith =>
      __$$SetDNSForStageImplCopyWithImpl<_$SetDNSForStageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return setDNSForStage(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return setDNSForStage?.call(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return setDNSForStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return setDNSForStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (setDNSForStage != null) {
      return setDNSForStage(this);
    }
    return orElse();
  }
}

abstract class _SetDNSForStage implements DatabaseEvent {
  const factory _SetDNSForStage(
      {required final Stage stage,
      required final int number}) = _$SetDNSForStageImpl;

  Stage get stage;
  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDNSForStageImplCopyWith<_$SetDNSForStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDNFForStageImplCopyWith<$Res> {
  factory _$$SetDNFForStageImplCopyWith(_$SetDNFForStageImpl value,
          $Res Function(_$SetDNFForStageImpl) then) =
      __$$SetDNFForStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int number});
}

/// @nodoc
class __$$SetDNFForStageImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SetDNFForStageImpl>
    implements _$$SetDNFForStageImplCopyWith<$Res> {
  __$$SetDNFForStageImplCopyWithImpl(
      _$SetDNFForStageImpl _value, $Res Function(_$SetDNFForStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? number = null,
  }) {
    return _then(_$SetDNFForStageImpl(
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

class _$SetDNFForStageImpl implements _SetDNFForStage {
  const _$SetDNFForStageImpl({required this.stage, required this.number});

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
            other is _$SetDNFForStageImpl &&
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
  _$$SetDNFForStageImplCopyWith<_$SetDNFForStageImpl> get copyWith =>
      __$$SetDNFForStageImplCopyWithImpl<_$SetDNFForStageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return setDNFForStage(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return setDNFForStage?.call(stage, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return setDNFForStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return setDNFForStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (setDNFForStage != null) {
      return setDNFForStage(this);
    }
    return orElse();
  }
}

abstract class _SetDNFForStage implements DatabaseEvent {
  const factory _SetDNFForStage(
      {required final Stage stage,
      required final int number}) = _$SetDNFForStageImpl;

  Stage get stage;
  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDNFForStageImplCopyWith<_$SetDNFForStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideFinishImplCopyWith<$Res> {
  factory _$$HideFinishImplCopyWith(
          _$HideFinishImpl value, $Res Function(_$HideFinishImpl) then) =
      __$$HideFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$HideFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$HideFinishImpl>
    implements _$$HideFinishImplCopyWith<$Res> {
  __$$HideFinishImplCopyWithImpl(
      _$HideFinishImpl _value, $Res Function(_$HideFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HideFinishImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HideFinishImpl implements _HideFinish {
  const _$HideFinishImpl({required this.id});

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
            other is _$HideFinishImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HideFinishImplCopyWith<_$HideFinishImpl> get copyWith =>
      __$$HideFinishImplCopyWithImpl<_$HideFinishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return hideFinish(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return hideFinish?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return hideFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return hideFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (hideFinish != null) {
      return hideFinish(this);
    }
    return orElse();
  }
}

abstract class _HideFinish implements DatabaseEvent {
  const factory _HideFinish({required final int id}) = _$HideFinishImpl;

  int get id;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HideFinishImplCopyWith<_$HideFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNumberToFinishImplCopyWith<$Res> {
  factory _$$AddNumberToFinishImplCopyWith(_$AddNumberToFinishImpl value,
          $Res Function(_$AddNumberToFinishImpl) then) =
      __$$AddNumberToFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stage stage, int finishId, int number, String finishTime});
}

/// @nodoc
class __$$AddNumberToFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$AddNumberToFinishImpl>
    implements _$$AddNumberToFinishImplCopyWith<$Res> {
  __$$AddNumberToFinishImplCopyWithImpl(_$AddNumberToFinishImpl _value,
      $Res Function(_$AddNumberToFinishImpl) _then)
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
    return _then(_$AddNumberToFinishImpl(
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

class _$AddNumberToFinishImpl implements _AddNumberToFinish {
  const _$AddNumberToFinishImpl(
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
            other is _$AddNumberToFinishImpl &&
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
  _$$AddNumberToFinishImplCopyWith<_$AddNumberToFinishImpl> get copyWith =>
      __$$AddNumberToFinishImplCopyWithImpl<_$AddNumberToFinishImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return addNumberToFinish(stage, finishId, number, finishTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return addNumberToFinish?.call(stage, finishId, number, finishTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return addNumberToFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return addNumberToFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (addNumberToFinish != null) {
      return addNumberToFinish(this);
    }
    return orElse();
  }
}

abstract class _AddNumberToFinish implements DatabaseEvent {
  const factory _AddNumberToFinish(
      {required final Stage stage,
      required final int finishId,
      required final int number,
      required final String finishTime}) = _$AddNumberToFinishImpl;

  Stage get stage;
  int get finishId;
  int get number;
  String get finishTime;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNumberToFinishImplCopyWith<_$AddNumberToFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNumbersOnTraceNowImplCopyWith<$Res> {
  factory _$$GetNumbersOnTraceNowImplCopyWith(_$GetNumbersOnTraceNowImpl value,
          $Res Function(_$GetNumbersOnTraceNowImpl) then) =
      __$$GetNumbersOnTraceNowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId, DateTime dateTimeNow});
}

/// @nodoc
class __$$GetNumbersOnTraceNowImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$GetNumbersOnTraceNowImpl>
    implements _$$GetNumbersOnTraceNowImplCopyWith<$Res> {
  __$$GetNumbersOnTraceNowImplCopyWithImpl(_$GetNumbersOnTraceNowImpl _value,
      $Res Function(_$GetNumbersOnTraceNowImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
    Object? dateTimeNow = null,
  }) {
    return _then(_$GetNumbersOnTraceNowImpl(
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

class _$GetNumbersOnTraceNowImpl implements _GetNumbersOnTraceNow {
  const _$GetNumbersOnTraceNowImpl(
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
            other is _$GetNumbersOnTraceNowImpl &&
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
  _$$GetNumbersOnTraceNowImplCopyWith<_$GetNumbersOnTraceNowImpl>
      get copyWith =>
          __$$GetNumbersOnTraceNowImplCopyWithImpl<_$GetNumbersOnTraceNowImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return getNumbersOnTraceNow(stageId, dateTimeNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return getNumbersOnTraceNow?.call(stageId, dateTimeNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return getNumbersOnTraceNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return getNumbersOnTraceNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (getNumbersOnTraceNow != null) {
      return getNumbersOnTraceNow(this);
    }
    return orElse();
  }
}

abstract class _GetNumbersOnTraceNow implements DatabaseEvent {
  const factory _GetNumbersOnTraceNow(
      {required final int stageId,
      required final DateTime dateTimeNow}) = _$GetNumbersOnTraceNowImpl;

  int get stageId;
  DateTime get dateTimeNow;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNumbersOnTraceNowImplCopyWith<_$GetNumbersOnTraceNowImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAwaitingNumberImplCopyWith<$Res> {
  factory _$$SelectAwaitingNumberImplCopyWith(_$SelectAwaitingNumberImpl value,
          $Res Function(_$SelectAwaitingNumberImpl) then) =
      __$$SelectAwaitingNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$SelectAwaitingNumberImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$SelectAwaitingNumberImpl>
    implements _$$SelectAwaitingNumberImplCopyWith<$Res> {
  __$$SelectAwaitingNumberImplCopyWithImpl(_$SelectAwaitingNumberImpl _value,
      $Res Function(_$SelectAwaitingNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$SelectAwaitingNumberImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectAwaitingNumberImpl implements _SelectAwaitingNumber {
  const _$SelectAwaitingNumberImpl({required this.number});

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
            other is _$SelectAwaitingNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAwaitingNumberImplCopyWith<_$SelectAwaitingNumberImpl>
      get copyWith =>
          __$$SelectAwaitingNumberImplCopyWithImpl<_$SelectAwaitingNumberImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return selectAwaitingNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return selectAwaitingNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return selectAwaitingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return selectAwaitingNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (selectAwaitingNumber != null) {
      return selectAwaitingNumber(this);
    }
    return orElse();
  }
}

abstract class _SelectAwaitingNumber implements DatabaseEvent {
  const factory _SelectAwaitingNumber({required final int number}) =
      _$SelectAwaitingNumberImpl;

  int get number;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAwaitingNumberImplCopyWith<_$SelectAwaitingNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeselectAwaitingNumberImplCopyWith<$Res> {
  factory _$$DeselectAwaitingNumberImplCopyWith(
          _$DeselectAwaitingNumberImpl value,
          $Res Function(_$DeselectAwaitingNumberImpl) then) =
      __$$DeselectAwaitingNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeselectAwaitingNumberImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$DeselectAwaitingNumberImpl>
    implements _$$DeselectAwaitingNumberImplCopyWith<$Res> {
  __$$DeselectAwaitingNumberImplCopyWithImpl(
      _$DeselectAwaitingNumberImpl _value,
      $Res Function(_$DeselectAwaitingNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeselectAwaitingNumberImpl implements _DeselectAwaitingNumber {
  const _$DeselectAwaitingNumberImpl();

  @override
  String toString() {
    return 'DatabaseEvent.deselectAwaitingNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeselectAwaitingNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return deselectAwaitingNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return deselectAwaitingNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return deselectAwaitingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return deselectAwaitingNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (deselectAwaitingNumber != null) {
      return deselectAwaitingNumber(this);
    }
    return orElse();
  }
}

abstract class _DeselectAwaitingNumber implements DatabaseEvent {
  const factory _DeselectAwaitingNumber() = _$DeselectAwaitingNumberImpl;
}

/// @nodoc
abstract class _$$CreateRaceFromRaceCsvImplCopyWith<$Res> {
  factory _$$CreateRaceFromRaceCsvImplCopyWith(
          _$CreateRaceFromRaceCsvImpl value,
          $Res Function(_$CreateRaceFromRaceCsvImpl) then) =
      __$$CreateRaceFromRaceCsvImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RaceCsv race});
}

/// @nodoc
class __$$CreateRaceFromRaceCsvImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$CreateRaceFromRaceCsvImpl>
    implements _$$CreateRaceFromRaceCsvImplCopyWith<$Res> {
  __$$CreateRaceFromRaceCsvImplCopyWithImpl(_$CreateRaceFromRaceCsvImpl _value,
      $Res Function(_$CreateRaceFromRaceCsvImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? race = null,
  }) {
    return _then(_$CreateRaceFromRaceCsvImpl(
      race: null == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as RaceCsv,
    ));
  }
}

/// @nodoc

class _$CreateRaceFromRaceCsvImpl implements _CreateRaceFromRaceCsv {
  const _$CreateRaceFromRaceCsvImpl({required this.race});

  @override
  final RaceCsv race;

  @override
  String toString() {
    return 'DatabaseEvent.createRaceFromRaceCsv(race: $race)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRaceFromRaceCsvImpl &&
            (identical(other.race, race) || other.race == race));
  }

  @override
  int get hashCode => Object.hash(runtimeType, race);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRaceFromRaceCsvImplCopyWith<_$CreateRaceFromRaceCsvImpl>
      get copyWith => __$$CreateRaceFromRaceCsvImplCopyWithImpl<
          _$CreateRaceFromRaceCsvImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return createRaceFromRaceCsv(race);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return createRaceFromRaceCsv?.call(race);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (createRaceFromRaceCsv != null) {
      return createRaceFromRaceCsv(race);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return createRaceFromRaceCsv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return createRaceFromRaceCsv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (createRaceFromRaceCsv != null) {
      return createRaceFromRaceCsv(this);
    }
    return orElse();
  }
}

abstract class _CreateRaceFromRaceCsv implements DatabaseEvent {
  const factory _CreateRaceFromRaceCsv({required final RaceCsv race}) =
      _$CreateRaceFromRaceCsvImpl;

  RaceCsv get race;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRaceFromRaceCsvImplCopyWith<_$CreateRaceFromRaceCsvImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareStartImplCopyWith<$Res> {
  factory _$$ShareStartImplCopyWith(
          _$ShareStartImpl value, $Res Function(_$ShareStartImpl) then) =
      __$$ShareStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareStartImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$ShareStartImpl>
    implements _$$ShareStartImplCopyWith<$Res> {
  __$$ShareStartImplCopyWithImpl(
      _$ShareStartImpl _value, $Res Function(_$ShareStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShareStartImpl implements _ShareStart {
  const _$ShareStartImpl();

  @override
  String toString() {
    return 'DatabaseEvent.shareStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShareStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return shareStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return shareStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return shareStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return shareStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (shareStart != null) {
      return shareStart(this);
    }
    return orElse();
  }
}

abstract class _ShareStart implements DatabaseEvent {
  const factory _ShareStart() = _$ShareStartImpl;
}

/// @nodoc
abstract class _$$ShareFinishImplCopyWith<$Res> {
  factory _$$ShareFinishImplCopyWith(
          _$ShareFinishImpl value, $Res Function(_$ShareFinishImpl) then) =
      __$$ShareFinishImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareFinishImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$ShareFinishImpl>
    implements _$$ShareFinishImplCopyWith<$Res> {
  __$$ShareFinishImplCopyWithImpl(
      _$ShareFinishImpl _value, $Res Function(_$ShareFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShareFinishImpl implements _ShareFinish {
  const _$ShareFinishImpl();

  @override
  String toString() {
    return 'DatabaseEvent.shareFinish()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShareFinishImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return shareFinish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return shareFinish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
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
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return shareFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return shareFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (shareFinish != null) {
      return shareFinish(this);
    }
    return orElse();
  }
}

abstract class _ShareFinish implements DatabaseEvent {
  const factory _ShareFinish() = _$ShareFinishImpl;
}

/// @nodoc
abstract class _$$ShareDatabaseImplCopyWith<$Res> {
  factory _$$ShareDatabaseImplCopyWith(
          _$ShareDatabaseImpl value, $Res Function(_$ShareDatabaseImpl) then) =
      __$$ShareDatabaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareDatabaseImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$ShareDatabaseImpl>
    implements _$$ShareDatabaseImplCopyWith<$Res> {
  __$$ShareDatabaseImplCopyWithImpl(
      _$ShareDatabaseImpl _value, $Res Function(_$ShareDatabaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShareDatabaseImpl implements _ShareDatabase {
  const _$ShareDatabaseImpl();

  @override
  String toString() {
    return 'DatabaseEvent.shareDatabase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShareDatabaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)
        emitState,
    required TResult Function(
            String name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        addRace,
    required TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateRace,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        upsertRace,
    required TResult Function(int id) deleteRace,
    required TResult Function() getRaces,
    required TResult Function(Race race) selectRace,
    required TResult Function() deselectRace,
    required TResult Function(String name, int raceId, int? trailId) addStage,
    required TResult Function(int? id, String? name, String? description,
            int? raceId, int? trailId, bool? isActive, bool? isDeleted)
        upsertStage,
    required TResult Function(int id) deleteStage,
    required TResult Function(int raceId) getStages,
    required TResult Function(Stage stage) selectStage,
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
    required TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)
        updateAutomaticCorrection,
    required TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)
        updateManualStartTime,
    required TResult Function(int startId, ParticipantStatus status)
        setStatusForStartId,
    required TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)
        addFinishTime,
    required TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)
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
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
    required TResult Function(RaceCsv race) createRaceFromRaceCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function() shareDatabase,
  }) {
    return shareDatabase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult? Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult? Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult? Function(int id)? deleteRace,
    TResult? Function()? getRaces,
    TResult? Function(Race race)? selectRace,
    TResult? Function()? deselectRace,
    TResult? Function(String name, int raceId, int? trailId)? addStage,
    TResult? Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult? Function(int id)? deleteStage,
    TResult? Function(int raceId)? getStages,
    TResult? Function(Stage stage)? selectStage,
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
    TResult? Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult? Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult? Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult? Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult? Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
    TResult? Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function()? shareDatabase,
  }) {
    return shareDatabase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            Race? race,
            Stage? stage,
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<ParticipantAtStart> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<StartingParticipant> numbersOnTrace,
            Notification? notification,
            int? autoFinishNumber,
            int? awaitingNumber,
            bool? updateFinishNumber)?
        emitState,
    TResult Function(String name, DateTime? startDate, DateTime? finishDate,
            String? location, String? url, String? description)?
        addRace,
    TResult Function(
            int id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateRace,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        upsertRace,
    TResult Function(int id)? deleteRace,
    TResult Function()? getRaces,
    TResult Function(Race race)? selectRace,
    TResult Function()? deselectRace,
    TResult Function(String name, int raceId, int? trailId)? addStage,
    TResult Function(int? id, String? name, String? description, int? raceId,
            int? trailId, bool? isActive, bool? isDeleted)?
        upsertStage,
    TResult Function(int id)? deleteStage,
    TResult Function(int raceId)? getStages,
    TResult Function(Stage stage)? selectStage,
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
    TResult Function(int stageId, String startTime, int correction,
            DateTime timestamp, bool forceUpdate, int? deltaInSeconds)?
        updateAutomaticCorrection,
    TResult Function(
            int stageId, DateTime time, DateTime timestamp, int deltaInSeconds)?
        updateManualStartTime,
    TResult Function(int startId, ParticipantStatus status)?
        setStatusForStartId,
    TResult Function(
            Stage stage,
            String finishTime,
            DateTime timestamp,
            int? finishDelay,
            bool? substituteNumbers,
            int? substituteNumbersDelay,
            DateTime? dateTimeNow,
            int? number)?
        addFinishTime,
    TResult Function(
            int stageId, String finishTime, DateTime timestamp, int? number)?
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
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    TResult Function(RaceCsv race)? createRaceFromRaceCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function()? shareDatabase,
    required TResult orElse(),
  }) {
    if (shareDatabase != null) {
      return shareDatabase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_UpdateRace value) updateRace,
    required TResult Function(_UpsertRace value) upsertRace,
    required TResult Function(_DeleteRace value) deleteRace,
    required TResult Function(_GetRaces value) getRaces,
    required TResult Function(_SelectRace value) selectRace,
    required TResult Function(_DeselectRace value) deselectRace,
    required TResult Function(_AddStage value) addStage,
    required TResult Function(_UpsertStage value) upsertStage,
    required TResult Function(_DeleteStage value) deleteStage,
    required TResult Function(_GetStages value) getStages,
    required TResult Function(_SelectStage value) selectStage,
    required TResult Function(_GetParticipantsAtStart value)
        getParticipantsAtStart,
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_SetStatusForStartId value) setStatusForStartId,
    required TResult Function(_AddFinishTime value) addFinishTime,
    required TResult Function(_AddFinishTimeManual value) addFinishTimeManual,
    required TResult Function(_ClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(_ClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(_HideAllFinises value) hideAllFinises,
    required TResult Function(_ClearNumberAtFinish value) clearNumberAtFinish,
    required TResult Function(_SetDNSForStage value) setDNSForStage,
    required TResult Function(_SetDNFForStage value) setDNFForStage,
    required TResult Function(_HideFinish value) hideFinish,
    required TResult Function(_AddNumberToFinish value) addNumberToFinish,
    required TResult Function(_GetNumbersOnTraceNow value) getNumbersOnTraceNow,
    required TResult Function(_SelectAwaitingNumber value) selectAwaitingNumber,
    required TResult Function(_DeselectAwaitingNumber value)
        deselectAwaitingNumber,
    required TResult Function(_CreateRaceFromRaceCsv value)
        createRaceFromRaceCsv,
    required TResult Function(_ShareStart value) shareStart,
    required TResult Function(_ShareFinish value) shareFinish,
    required TResult Function(_ShareDatabase value) shareDatabase,
  }) {
    return shareDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddRace value)? addRace,
    TResult? Function(_UpdateRace value)? updateRace,
    TResult? Function(_UpsertRace value)? upsertRace,
    TResult? Function(_DeleteRace value)? deleteRace,
    TResult? Function(_GetRaces value)? getRaces,
    TResult? Function(_SelectRace value)? selectRace,
    TResult? Function(_DeselectRace value)? deselectRace,
    TResult? Function(_AddStage value)? addStage,
    TResult? Function(_UpsertStage value)? upsertStage,
    TResult? Function(_DeleteStage value)? deleteStage,
    TResult? Function(_GetStages value)? getStages,
    TResult? Function(_SelectStage value)? selectStage,
    TResult? Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult? Function(_AddFinishTime value)? addFinishTime,
    TResult? Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult? Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult? Function(_HideAllFinises value)? hideAllFinises,
    TResult? Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(_SetDNSForStage value)? setDNSForStage,
    TResult? Function(_SetDNFForStage value)? setDNFForStage,
    TResult? Function(_HideFinish value)? hideFinish,
    TResult? Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult? Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult? Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult? Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult? Function(_ShareStart value)? shareStart,
    TResult? Function(_ShareFinish value)? shareFinish,
    TResult? Function(_ShareDatabase value)? shareDatabase,
  }) {
    return shareDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_UpdateRace value)? updateRace,
    TResult Function(_UpsertRace value)? upsertRace,
    TResult Function(_DeleteRace value)? deleteRace,
    TResult Function(_GetRaces value)? getRaces,
    TResult Function(_SelectRace value)? selectRace,
    TResult Function(_DeselectRace value)? deselectRace,
    TResult Function(_AddStage value)? addStage,
    TResult Function(_UpsertStage value)? upsertStage,
    TResult Function(_DeleteStage value)? deleteStage,
    TResult Function(_GetStages value)? getStages,
    TResult Function(_SelectStage value)? selectStage,
    TResult Function(_GetParticipantsAtStart value)? getParticipantsAtStart,
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_SetStatusForStartId value)? setStatusForStartId,
    TResult Function(_AddFinishTime value)? addFinishTime,
    TResult Function(_AddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(_ClearStartResultsDebug value)? clearStartResultsDebug,
    TResult Function(_ClearFinishResultsDebug value)? clearFinishResultsDebug,
    TResult Function(_HideAllFinises value)? hideAllFinises,
    TResult Function(_ClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(_SetDNSForStage value)? setDNSForStage,
    TResult Function(_SetDNFForStage value)? setDNFForStage,
    TResult Function(_HideFinish value)? hideFinish,
    TResult Function(_AddNumberToFinish value)? addNumberToFinish,
    TResult Function(_GetNumbersOnTraceNow value)? getNumbersOnTraceNow,
    TResult Function(_SelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(_DeselectAwaitingNumber value)? deselectAwaitingNumber,
    TResult Function(_CreateRaceFromRaceCsv value)? createRaceFromRaceCsv,
    TResult Function(_ShareStart value)? shareStart,
    TResult Function(_ShareFinish value)? shareFinish,
    TResult Function(_ShareDatabase value)? shareDatabase,
    required TResult orElse(),
  }) {
    if (shareDatabase != null) {
      return shareDatabase(this);
    }
    return orElse();
  }
}

abstract class _ShareDatabase implements DatabaseEvent {
  const factory _ShareDatabase() = _$ShareDatabaseImpl;
}

/// @nodoc
mixin _$DatabaseState {
  Race? get race => throw _privateConstructorUsedError;
  Stage? get stage => throw _privateConstructorUsedError;
  List<Race> get races => throw _privateConstructorUsedError;
  List<Stage> get stages => throw _privateConstructorUsedError;
  List<Rider> get riders => throw _privateConstructorUsedError;
  List<Status> get statuses => throw _privateConstructorUsedError;
  List<ParticipantAtStart> get participants =>
      throw _privateConstructorUsedError;
  List<Start> get starts => throw _privateConstructorUsedError;
  List<Finish> get finishes => throw _privateConstructorUsedError;
  List<Trail> get trails => throw _privateConstructorUsedError;
  List<StartingParticipant> get numbersOnTrace =>
      throw _privateConstructorUsedError;
  Notification? get notification =>
      throw _privateConstructorUsedError; // Стартовое время и номер, которые хотим установить
// StartTime? startTime,
// Автоматический старт из стартового модуля
// Служит для проверки, установлено ли уже стартовое время или нет
// AutomaticStart? automaticStart,
// Предыдущее стартовое время номера, которому предлагается
// поставить новое. Запоминаем для передачи его в UI popup.
// Используется два раза, и при установке автоматического стартового времени
// и при ручном вводе нового времени старта
// List<StartingParticipant>? previousStart,
// Изменить время финиша для номера
  bool? get updateFinishNumber =>
      throw _privateConstructorUsedError; // Автоматически подставленный в финишное время номер
  int? get autoFinishNumber =>
      throw _privateConstructorUsedError; // Номер, который будет автоматически подставлен в следующую автоматическую отсечку
  int? get awaitingNumber => throw _privateConstructorUsedError;

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatabaseStateCopyWith<DatabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res, DatabaseState>;
  @useResult
  $Res call(
      {Race? race,
      Stage? stage,
      List<Race> races,
      List<Stage> stages,
      List<Rider> riders,
      List<Status> statuses,
      List<ParticipantAtStart> participants,
      List<Start> starts,
      List<Finish> finishes,
      List<Trail> trails,
      List<StartingParticipant> numbersOnTrace,
      Notification? notification,
      bool? updateFinishNumber,
      int? autoFinishNumber,
      int? awaitingNumber});

  $NotificationCopyWith<$Res>? get notification;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? race = freezed,
    Object? stage = freezed,
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
    Object? updateFinishNumber = freezed,
    Object? autoFinishNumber = freezed,
    Object? awaitingNumber = freezed,
  }) {
    return _then(_value.copyWith(
      race: freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Race?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage?,
      races: null == races
          ? _value.races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>,
      stages: null == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      riders: null == riders
          ? _value.riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>,
      statuses: null == statuses
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantAtStart>,
      starts: null == starts
          ? _value.starts
          : starts // ignore: cast_nullable_to_non_nullable
              as List<Start>,
      finishes: null == finishes
          ? _value.finishes
          : finishes // ignore: cast_nullable_to_non_nullable
              as List<Finish>,
      trails: null == trails
          ? _value.trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>,
      numbersOnTrace: null == numbersOnTrace
          ? _value.numbersOnTrace
          : numbersOnTrace // ignore: cast_nullable_to_non_nullable
              as List<StartingParticipant>,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification?,
      updateFinishNumber: freezed == updateFinishNumber
          ? _value.updateFinishNumber
          : updateFinishNumber // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoFinishNumber: freezed == autoFinishNumber
          ? _value.autoFinishNumber
          : autoFinishNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      awaitingNumber: freezed == awaitingNumber
          ? _value.awaitingNumber
          : awaitingNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatabaseStateImplCopyWith<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  factory _$$DatabaseStateImplCopyWith(
          _$DatabaseStateImpl value, $Res Function(_$DatabaseStateImpl) then) =
      __$$DatabaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Race? race,
      Stage? stage,
      List<Race> races,
      List<Stage> stages,
      List<Rider> riders,
      List<Status> statuses,
      List<ParticipantAtStart> participants,
      List<Start> starts,
      List<Finish> finishes,
      List<Trail> trails,
      List<StartingParticipant> numbersOnTrace,
      Notification? notification,
      bool? updateFinishNumber,
      int? autoFinishNumber,
      int? awaitingNumber});

  @override
  $NotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$DatabaseStateImplCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$DatabaseStateImpl>
    implements _$$DatabaseStateImplCopyWith<$Res> {
  __$$DatabaseStateImplCopyWithImpl(
      _$DatabaseStateImpl _value, $Res Function(_$DatabaseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? race = freezed,
    Object? stage = freezed,
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
    Object? updateFinishNumber = freezed,
    Object? autoFinishNumber = freezed,
    Object? awaitingNumber = freezed,
  }) {
    return _then(_$DatabaseStateImpl(
      race: freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Race?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage?,
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
      updateFinishNumber: freezed == updateFinishNumber
          ? _value.updateFinishNumber
          : updateFinishNumber // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoFinishNumber: freezed == autoFinishNumber
          ? _value.autoFinishNumber
          : autoFinishNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      awaitingNumber: freezed == awaitingNumber
          ? _value.awaitingNumber
          : awaitingNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DatabaseStateImpl implements _DatabaseState {
  const _$DatabaseStateImpl(
      {this.race,
      this.stage,
      required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<ParticipantAtStart> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<StartingParticipant> numbersOnTrace,
      this.notification,
      this.updateFinishNumber,
      this.autoFinishNumber,
      this.awaitingNumber})
      : _races = races,
        _stages = stages,
        _riders = riders,
        _statuses = statuses,
        _participants = participants,
        _starts = starts,
        _finishes = finishes,
        _trails = trails,
        _numbersOnTrace = numbersOnTrace;

  @override
  final Race? race;
  @override
  final Stage? stage;
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
// Стартовое время и номер, которые хотим установить
// StartTime? startTime,
// Автоматический старт из стартового модуля
// Служит для проверки, установлено ли уже стартовое время или нет
// AutomaticStart? automaticStart,
// Предыдущее стартовое время номера, которому предлагается
// поставить новое. Запоминаем для передачи его в UI popup.
// Используется два раза, и при установке автоматического стартового времени
// и при ручном вводе нового времени старта
// List<StartingParticipant>? previousStart,
// Изменить время финиша для номера
  @override
  final bool? updateFinishNumber;
// Автоматически подставленный в финишное время номер
  @override
  final int? autoFinishNumber;
// Номер, который будет автоматически подставлен в следующую автоматическую отсечку
  @override
  final int? awaitingNumber;

  @override
  String toString() {
    return 'DatabaseState(race: $race, stage: $stage, races: $races, stages: $stages, riders: $riders, statuses: $statuses, participants: $participants, starts: $starts, finishes: $finishes, trails: $trails, numbersOnTrace: $numbersOnTrace, notification: $notification, updateFinishNumber: $updateFinishNumber, autoFinishNumber: $autoFinishNumber, awaitingNumber: $awaitingNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseStateImpl &&
            const DeepCollectionEquality().equals(other.race, race) &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
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
                other.notification == notification) &&
            (identical(other.updateFinishNumber, updateFinishNumber) ||
                other.updateFinishNumber == updateFinishNumber) &&
            (identical(other.autoFinishNumber, autoFinishNumber) ||
                other.autoFinishNumber == autoFinishNumber) &&
            (identical(other.awaitingNumber, awaitingNumber) ||
                other.awaitingNumber == awaitingNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(race),
      const DeepCollectionEquality().hash(stage),
      const DeepCollectionEquality().hash(_races),
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_riders),
      const DeepCollectionEquality().hash(_statuses),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_starts),
      const DeepCollectionEquality().hash(_finishes),
      const DeepCollectionEquality().hash(_trails),
      const DeepCollectionEquality().hash(_numbersOnTrace),
      notification,
      updateFinishNumber,
      autoFinishNumber,
      awaitingNumber);

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseStateImplCopyWith<_$DatabaseStateImpl> get copyWith =>
      __$$DatabaseStateImplCopyWithImpl<_$DatabaseStateImpl>(this, _$identity);
}

abstract class _DatabaseState implements DatabaseState {
  const factory _DatabaseState(
      {final Race? race,
      final Stage? stage,
      required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<ParticipantAtStart> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<StartingParticipant> numbersOnTrace,
      final Notification? notification,
      final bool? updateFinishNumber,
      final int? autoFinishNumber,
      final int? awaitingNumber}) = _$DatabaseStateImpl;

  @override
  Race? get race;
  @override
  Stage? get stage;
  @override
  List<Race> get races;
  @override
  List<Stage> get stages;
  @override
  List<Rider> get riders;
  @override
  List<Status> get statuses;
  @override
  List<ParticipantAtStart> get participants;
  @override
  List<Start> get starts;
  @override
  List<Finish> get finishes;
  @override
  List<Trail> get trails;
  @override
  List<StartingParticipant> get numbersOnTrace;
  @override
  Notification?
      get notification; // Стартовое время и номер, которые хотим установить
// StartTime? startTime,
// Автоматический старт из стартового модуля
// Служит для проверки, установлено ли уже стартовое время или нет
// AutomaticStart? automaticStart,
// Предыдущее стартовое время номера, которому предлагается
// поставить новое. Запоминаем для передачи его в UI popup.
// Используется два раза, и при установке автоматического стартового времени
// и при ручном вводе нового времени старта
// List<StartingParticipant>? previousStart,
// Изменить время финиша для номера
  @override
  bool?
      get updateFinishNumber; // Автоматически подставленный в финишное время номер
  @override
  int?
      get autoFinishNumber; // Номер, который будет автоматически подставлен в следующую автоматическую отсечку
  @override
  int? get awaitingNumber;

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseStateImplCopyWith<_$DatabaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
