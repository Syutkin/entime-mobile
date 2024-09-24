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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
      List<GetParticipantsAtStartResult>? participants,
      List<Start>? starts,
      List<Finish>? finishes,
      List<Trail>? trails,
      List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
              as List<GetParticipantsAtStartResult>?,
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
              as List<GetNumbersOnTraceNowResult>?,
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
      final List<GetParticipantsAtStartResult>? participants,
      final List<Start>? starts,
      final List<Finish>? finishes,
      final List<Trail>? trails,
      final List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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

  final List<GetParticipantsAtStartResult>? _participants;
  @override
  List<GetParticipantsAtStartResult>? get participants {
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

  final List<GetNumbersOnTraceNowResult>? _numbersOnTrace;
  @override
  List<GetNumbersOnTraceNowResult>? get numbersOnTrace {
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
      final List<GetParticipantsAtStartResult>? participants,
      final List<Start>? starts,
      final List<Finish>? finishes,
      final List<Trail>? trails,
      final List<GetNumbersOnTraceNowResult>? numbersOnTrace,
      final Notification? notification}) = _$EmitStateImpl;

  List<Race>? get races;
  List<Stage>? get stages;
  List<Rider>? get riders;
  List<Status>? get statuses;
  List<GetParticipantsAtStartResult>? get participants;
  List<Start>? get starts;
  List<Finish>? get finishes;
  List<Trail>? get trails;
  List<GetNumbersOnTraceNowResult>? get numbersOnTrace;
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
abstract class _$$UpdateManualStartTimeImplCopyWith<$Res> {
  factory _$$UpdateManualStartTimeImplCopyWith(
          _$UpdateManualStartTimeImpl value,
          $Res Function(_$UpdateManualStartTimeImpl) then) =
      __$$UpdateManualStartTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId, DateTime time});
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
    ));
  }
}

/// @nodoc

class _$UpdateManualStartTimeImpl implements _UpdateManualStartTime {
  const _$UpdateManualStartTimeImpl(
      {required this.stageId, required this.time});

  @override
  final int stageId;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'DatabaseEvent.updateManualStartTime(stageId: $stageId, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateManualStartTimeImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId, time);

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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
  }) {
    return updateManualStartTime(stageId, time);
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
  }) {
    return updateManualStartTime?.call(stageId, time);
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
    required TResult orElse(),
  }) {
    if (updateManualStartTime != null) {
      return updateManualStartTime(stageId, time);
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
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
      required final DateTime time}) = _$UpdateManualStartTimeImpl;

  int get stageId;
  DateTime get time;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateManualStartTimeImplCopyWith<_$UpdateManualStartTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setDNSImplCopyWith<$Res> {
  factory _$$setDNSImplCopyWith(
          _$setDNSImpl value, $Res Function(_$setDNSImpl) then) =
      __$$setDNSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int startId});
}

/// @nodoc
class __$$setDNSImplCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$setDNSImpl>
    implements _$$setDNSImplCopyWith<$Res> {
  __$$setDNSImplCopyWithImpl(
      _$setDNSImpl _value, $Res Function(_$setDNSImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startId = null,
  }) {
    return _then(_$setDNSImpl(
      startId: null == startId
          ? _value.startId
          : startId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$setDNSImpl implements _setDNS {
  const _$setDNSImpl({required this.startId});

  @override
  final int startId;

  @override
  String toString() {
    return 'DatabaseEvent.setDNSatStart(startId: $startId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setDNSImpl &&
            (identical(other.startId, startId) || other.startId == startId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startId);

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$setDNSImplCopyWith<_$setDNSImpl> get copyWith =>
      __$$setDNSImplCopyWithImpl<_$setDNSImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            List<Race>? races,
            List<Stage>? stages,
            List<Rider>? riders,
            List<Status>? statuses,
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    required TResult Function(int stageId, DateTime time) updateManualStartTime,
    required TResult Function(int startId) setDNSatStart,
  }) {
    return setDNSatStart(startId);
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult? Function(int stageId, DateTime time)? updateManualStartTime,
    TResult? Function(int startId)? setDNSatStart,
  }) {
    return setDNSatStart?.call(startId);
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
            List<GetParticipantsAtStartResult>? participants,
            List<Start>? starts,
            List<Finish>? finishes,
            List<Trail>? trails,
            List<GetNumbersOnTraceNowResult>? numbersOnTrace,
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
    TResult Function(int stageId, DateTime time)? updateManualStartTime,
    TResult Function(int startId)? setDNSatStart,
    required TResult orElse(),
  }) {
    if (setDNSatStart != null) {
      return setDNSatStart(startId);
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
    required TResult Function(_AddStartNumber value) addStartNumber,
    required TResult Function(_UpdateStartingInfo value) updateStartingInfo,
    required TResult Function(_UpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(_setDNS value) setDNSatStart,
  }) {
    return setDNSatStart(this);
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
    TResult? Function(_AddStartNumber value)? addStartNumber,
    TResult? Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult? Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult? Function(_setDNS value)? setDNSatStart,
  }) {
    return setDNSatStart?.call(this);
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
    TResult Function(_AddStartNumber value)? addStartNumber,
    TResult Function(_UpdateStartingInfo value)? updateStartingInfo,
    TResult Function(_UpdateManualStartTime value)? updateManualStartTime,
    TResult Function(_setDNS value)? setDNSatStart,
    required TResult orElse(),
  }) {
    if (setDNSatStart != null) {
      return setDNSatStart(this);
    }
    return orElse();
  }
}

abstract class _setDNS implements DatabaseEvent {
  const factory _setDNS({required final int startId}) = _$setDNSImpl;

  int get startId;

  /// Create a copy of DatabaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$setDNSImplCopyWith<_$setDNSImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
      List<GetParticipantsAtStartResult> participants,
      List<Start> starts,
      List<Finish> finishes,
      List<Trail> trails,
      List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
              as List<GetParticipantsAtStartResult>,
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
              as List<GetNumbersOnTraceNowResult>,
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
      required final List<GetParticipantsAtStartResult> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<GetNumbersOnTraceNowResult> numbersOnTrace,
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

  final List<GetParticipantsAtStartResult> _participants;
  @override
  List<GetParticipantsAtStartResult> get participants {
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

  final List<GetNumbersOnTraceNowResult> _numbersOnTrace;
  @override
  List<GetNumbersOnTraceNowResult> get numbersOnTrace {
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
            List<GetParticipantsAtStartResult> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails,
            List<GetNumbersOnTraceNowResult> numbersOnTrace,
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
      required final List<GetParticipantsAtStartResult> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      required final List<GetNumbersOnTraceNowResult> numbersOnTrace,
      final Notification? notification}) = _$InitializedImpl;

  List<Race> get races;
  List<Stage> get stages;
  List<Rider> get riders;
  List<Status> get statuses;
  List<GetParticipantsAtStartResult> get participants;
  List<Start> get starts;
  List<Finish> get finishes;
  List<Trail> get trails;
  List<GetNumbersOnTraceNowResult> get numbersOnTrace;
  Notification? get notification;

  /// Create a copy of DatabaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
