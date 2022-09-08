// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  final DatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(DatabaseEvent) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, (v) => _then(v as _$_Initialize));

  @override
  _$_Initialize get _value => super._value as _$_Initialize;
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'DatabaseEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialize);
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
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements DatabaseEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$$_EmitStateCopyWith<$Res> {
  factory _$$_EmitStateCopyWith(
          _$_EmitState value, $Res Function(_$_EmitState) then) =
      __$$_EmitStateCopyWithImpl<$Res>;
  $Res call(
      {List<Race>? races,
      List<Stage>? stages,
      List<Rider>? riders,
      List<Status>? statuses,
      List<GetParticipantsAtStartResult>? participants,
      List<Start>? starts,
      List<Finish>? finishes,
      List<Trail>? trails,
      Notification? notification});

  $NotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$_EmitStateCopyWithImpl<$Res> extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_EmitStateCopyWith<$Res> {
  __$$_EmitStateCopyWithImpl(
      _$_EmitState _value, $Res Function(_$_EmitState) _then)
      : super(_value, (v) => _then(v as _$_EmitState));

  @override
  _$_EmitState get _value => super._value as _$_EmitState;

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
    Object? notification = freezed,
  }) {
    return _then(_$_EmitState(
      races: races == freezed
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>?,
      stages: stages == freezed
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>?,
      riders: riders == freezed
          ? _value._riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>?,
      statuses: statuses == freezed
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>?,
      participants: participants == freezed
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<GetParticipantsAtStartResult>?,
      starts: starts == freezed
          ? _value._starts
          : starts // ignore: cast_nullable_to_non_nullable
              as List<Start>?,
      finishes: finishes == freezed
          ? _value._finishes
          : finishes // ignore: cast_nullable_to_non_nullable
              as List<Finish>?,
      trails: trails == freezed
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification?,
    ));
  }

  @override
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

class _$_EmitState implements _EmitState {
  const _$_EmitState(
      {final List<Race>? races,
      final List<Stage>? stages,
      final List<Rider>? riders,
      final List<Status>? statuses,
      final List<GetParticipantsAtStartResult>? participants,
      final List<Start>? starts,
      final List<Finish>? finishes,
      final List<Trail>? trails,
      this.notification})
      : _races = races,
        _stages = stages,
        _riders = riders,
        _statuses = statuses,
        _participants = participants,
        _starts = starts,
        _finishes = finishes,
        _trails = trails;

  final List<Race>? _races;
  @override
  List<Race>? get races {
    final value = _races;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Stage>? _stages;
  @override
  List<Stage>? get stages {
    final value = _stages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Rider>? _riders;
  @override
  List<Rider>? get riders {
    final value = _riders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Status>? _statuses;
  @override
  List<Status>? get statuses {
    final value = _statuses;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetParticipantsAtStartResult>? _participants;
  @override
  List<GetParticipantsAtStartResult>? get participants {
    final value = _participants;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Start>? _starts;
  @override
  List<Start>? get starts {
    final value = _starts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Finish>? _finishes;
  @override
  List<Finish>? get finishes {
    final value = _finishes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Trail>? _trails;
  @override
  List<Trail>? get trails {
    final value = _trails;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Notification? notification;

  @override
  String toString() {
    return 'DatabaseEvent.emitState(races: $races, stages: $stages, riders: $riders, statuses: $statuses, participants: $participants, starts: $starts, finishes: $finishes, trails: $trails, notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmitState &&
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
                .equals(other.notification, notification));
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
      const DeepCollectionEquality().hash(notification));

  @JsonKey(ignore: true)
  @override
  _$$_EmitStateCopyWith<_$_EmitState> get copyWith =>
      __$$_EmitStateCopyWithImpl<_$_EmitState>(this, _$identity);

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
  }) {
    return emitState(races, stages, riders, statuses, participants, starts,
        finishes, trails, notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return emitState?.call(races, stages, riders, statuses, participants,
        starts, finishes, trails, notification);
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
    required TResult orElse(),
  }) {
    if (emitState != null) {
      return emitState(races, stages, riders, statuses, participants, starts,
          finishes, trails, notification);
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
  }) {
    return emitState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
      final Notification? notification}) = _$_EmitState;

  List<Race>? get races;
  List<Stage>? get stages;
  List<Rider>? get riders;
  List<Status>? get statuses;
  List<GetParticipantsAtStartResult>? get participants;
  List<Start>? get starts;
  List<Finish>? get finishes;
  List<Trail>? get trails;
  Notification? get notification;
  @JsonKey(ignore: true)
  _$$_EmitStateCopyWith<_$_EmitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddRaceCopyWith<$Res> {
  factory _$$_AddRaceCopyWith(
          _$_AddRace value, $Res Function(_$_AddRace) then) =
      __$$_AddRaceCopyWithImpl<$Res>;
  $Res call({Race race});
}

/// @nodoc
class __$$_AddRaceCopyWithImpl<$Res> extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_AddRaceCopyWith<$Res> {
  __$$_AddRaceCopyWithImpl(_$_AddRace _value, $Res Function(_$_AddRace) _then)
      : super(_value, (v) => _then(v as _$_AddRace));

  @override
  _$_AddRace get _value => super._value as _$_AddRace;

  @override
  $Res call({
    Object? race = freezed,
  }) {
    return _then(_$_AddRace(
      race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Race,
    ));
  }
}

/// @nodoc

class _$_AddRace implements _AddRace {
  const _$_AddRace(this.race);

  @override
  final Race race;

  @override
  String toString() {
    return 'DatabaseEvent.addRace(race: $race)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRace &&
            const DeepCollectionEquality().equals(other.race, race));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(race));

  @JsonKey(ignore: true)
  @override
  _$$_AddRaceCopyWith<_$_AddRace> get copyWith =>
      __$$_AddRaceCopyWithImpl<_$_AddRace>(this, _$identity);

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
  }) {
    return addRace(race);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return addRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
    required TResult orElse(),
  }) {
    if (addRace != null) {
      return addRace(this);
    }
    return orElse();
  }
}

abstract class _AddRace implements DatabaseEvent {
  const factory _AddRace(final Race race) = _$_AddRace;

  Race get race;
  @JsonKey(ignore: true)
  _$$_AddRaceCopyWith<_$_AddRace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteRaceCopyWith<$Res> {
  factory _$$_DeleteRaceCopyWith(
          _$_DeleteRace value, $Res Function(_$_DeleteRace) then) =
      __$$_DeleteRaceCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteRaceCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_DeleteRaceCopyWith<$Res> {
  __$$_DeleteRaceCopyWithImpl(
      _$_DeleteRace _value, $Res Function(_$_DeleteRace) _then)
      : super(_value, (v) => _then(v as _$_DeleteRace));

  @override
  _$_DeleteRace get _value => super._value as _$_DeleteRace;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_DeleteRace(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteRace implements _DeleteRace {
  const _$_DeleteRace(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DatabaseEvent.deleteRace(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteRace &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteRaceCopyWith<_$_DeleteRace> get copyWith =>
      __$$_DeleteRaceCopyWithImpl<_$_DeleteRace>(this, _$identity);

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
  }) {
    return deleteRace(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return deleteRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
    required TResult orElse(),
  }) {
    if (deleteRace != null) {
      return deleteRace(this);
    }
    return orElse();
  }
}

abstract class _DeleteRace implements DatabaseEvent {
  const factory _DeleteRace(final int id) = _$_DeleteRace;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteRaceCopyWith<_$_DeleteRace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddStageCopyWith<$Res> {
  factory _$$_AddStageCopyWith(
          _$_AddStage value, $Res Function(_$_AddStage) then) =
      __$$_AddStageCopyWithImpl<$Res>;
  $Res call({Stage stage});
}

/// @nodoc
class __$$_AddStageCopyWithImpl<$Res> extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_AddStageCopyWith<$Res> {
  __$$_AddStageCopyWithImpl(
      _$_AddStage _value, $Res Function(_$_AddStage) _then)
      : super(_value, (v) => _then(v as _$_AddStage));

  @override
  _$_AddStage get _value => super._value as _$_AddStage;

  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(_$_AddStage(
      stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
    ));
  }
}

/// @nodoc

class _$_AddStage implements _AddStage {
  const _$_AddStage(this.stage);

  @override
  final Stage stage;

  @override
  String toString() {
    return 'DatabaseEvent.addStage(stage: $stage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStage &&
            const DeepCollectionEquality().equals(other.stage, stage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stage));

  @JsonKey(ignore: true)
  @override
  _$$_AddStageCopyWith<_$_AddStage> get copyWith =>
      __$$_AddStageCopyWithImpl<_$_AddStage>(this, _$identity);

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
  }) {
    return addStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return addStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
    required TResult orElse(),
  }) {
    if (addStage != null) {
      return addStage(this);
    }
    return orElse();
  }
}

abstract class _AddStage implements DatabaseEvent {
  const factory _AddStage(final Stage stage) = _$_AddStage;

  Stage get stage;
  @JsonKey(ignore: true)
  _$$_AddStageCopyWith<_$_AddStage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectStagesCopyWith<$Res> {
  factory _$$_SelectStagesCopyWith(
          _$_SelectStages value, $Res Function(_$_SelectStages) then) =
      __$$_SelectStagesCopyWithImpl<$Res>;
  $Res call({int raceId});
}

/// @nodoc
class __$$_SelectStagesCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_SelectStagesCopyWith<$Res> {
  __$$_SelectStagesCopyWithImpl(
      _$_SelectStages _value, $Res Function(_$_SelectStages) _then)
      : super(_value, (v) => _then(v as _$_SelectStages));

  @override
  _$_SelectStages get _value => super._value as _$_SelectStages;

  @override
  $Res call({
    Object? raceId = freezed,
  }) {
    return _then(_$_SelectStages(
      raceId == freezed
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectStages implements _SelectStages {
  const _$_SelectStages(this.raceId);

  @override
  final int raceId;

  @override
  String toString() {
    return 'DatabaseEvent.selectStages(raceId: $raceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectStages &&
            const DeepCollectionEquality().equals(other.raceId, raceId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(raceId));

  @JsonKey(ignore: true)
  @override
  _$$_SelectStagesCopyWith<_$_SelectStages> get copyWith =>
      __$$_SelectStagesCopyWithImpl<_$_SelectStages>(this, _$identity);

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
  }) {
    return selectStages(raceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return selectStages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
    required TResult orElse(),
  }) {
    if (selectStages != null) {
      return selectStages(this);
    }
    return orElse();
  }
}

abstract class _SelectStages implements DatabaseEvent {
  const factory _SelectStages(final int raceId) = _$_SelectStages;

  int get raceId;
  @JsonKey(ignore: true)
  _$$_SelectStagesCopyWith<_$_SelectStages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteStageCopyWith<$Res> {
  factory _$$_DeleteStageCopyWith(
          _$_DeleteStage value, $Res Function(_$_DeleteStage) then) =
      __$$_DeleteStageCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteStageCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_DeleteStageCopyWith<$Res> {
  __$$_DeleteStageCopyWithImpl(
      _$_DeleteStage _value, $Res Function(_$_DeleteStage) _then)
      : super(_value, (v) => _then(v as _$_DeleteStage));

  @override
  _$_DeleteStage get _value => super._value as _$_DeleteStage;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_DeleteStage(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteStage implements _DeleteStage {
  const _$_DeleteStage(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DatabaseEvent.deleteStage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteStage &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteStageCopyWith<_$_DeleteStage> get copyWith =>
      __$$_DeleteStageCopyWithImpl<_$_DeleteStage>(this, _$identity);

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
  }) {
    return deleteStage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return deleteStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
    required TResult orElse(),
  }) {
    if (deleteStage != null) {
      return deleteStage(this);
    }
    return orElse();
  }
}

abstract class _DeleteStage implements DatabaseEvent {
  const factory _DeleteStage(final int id) = _$_DeleteStage;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteStageCopyWith<_$_DeleteStage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetParticipantsAtStartCopyWith<$Res> {
  factory _$$_GetParticipantsAtStartCopyWith(_$_GetParticipantsAtStart value,
          $Res Function(_$_GetParticipantsAtStart) then) =
      __$$_GetParticipantsAtStartCopyWithImpl<$Res>;
  $Res call({int stageId});
}

/// @nodoc
class __$$_GetParticipantsAtStartCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_GetParticipantsAtStartCopyWith<$Res> {
  __$$_GetParticipantsAtStartCopyWithImpl(_$_GetParticipantsAtStart _value,
      $Res Function(_$_GetParticipantsAtStart) _then)
      : super(_value, (v) => _then(v as _$_GetParticipantsAtStart));

  @override
  _$_GetParticipantsAtStart get _value =>
      super._value as _$_GetParticipantsAtStart;

  @override
  $Res call({
    Object? stageId = freezed,
  }) {
    return _then(_$_GetParticipantsAtStart(
      stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetParticipantsAtStart implements _GetParticipantsAtStart {
  const _$_GetParticipantsAtStart(this.stageId);

  @override
  final int stageId;

  @override
  String toString() {
    return 'DatabaseEvent.getParticipantsAtStart(stageId: $stageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetParticipantsAtStart &&
            const DeepCollectionEquality().equals(other.stageId, stageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stageId));

  @JsonKey(ignore: true)
  @override
  _$$_GetParticipantsAtStartCopyWith<_$_GetParticipantsAtStart> get copyWith =>
      __$$_GetParticipantsAtStartCopyWithImpl<_$_GetParticipantsAtStart>(
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
  }) {
    return getParticipantsAtStart(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return getParticipantsAtStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
      _$_GetParticipantsAtStart;

  int get stageId;
  @JsonKey(ignore: true)
  _$$_GetParticipantsAtStartCopyWith<_$_GetParticipantsAtStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddStartNumberCopyWith<$Res> {
  factory _$$_AddStartNumberCopyWith(
          _$_AddStartNumber value, $Res Function(_$_AddStartNumber) then) =
      __$$_AddStartNumberCopyWithImpl<$Res>;
  $Res call({Stage stage, int number, String startTime, bool forceAdd});
}

/// @nodoc
class __$$_AddStartNumberCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_AddStartNumberCopyWith<$Res> {
  __$$_AddStartNumberCopyWithImpl(
      _$_AddStartNumber _value, $Res Function(_$_AddStartNumber) _then)
      : super(_value, (v) => _then(v as _$_AddStartNumber));

  @override
  _$_AddStartNumber get _value => super._value as _$_AddStartNumber;

  @override
  $Res call({
    Object? stage = freezed,
    Object? number = freezed,
    Object? startTime = freezed,
    Object? forceAdd = freezed,
  }) {
    return _then(_$_AddStartNumber(
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      forceAdd: forceAdd == freezed
          ? _value.forceAdd
          : forceAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddStartNumber implements _AddStartNumber {
  const _$_AddStartNumber(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStartNumber &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.forceAdd, forceAdd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stage),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(forceAdd));

  @JsonKey(ignore: true)
  @override
  _$$_AddStartNumberCopyWith<_$_AddStartNumber> get copyWith =>
      __$$_AddStartNumberCopyWithImpl<_$_AddStartNumber>(this, _$identity);

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
  }) {
    return addStartNumber(stage, number, startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return addStartNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
      final bool forceAdd}) = _$_AddStartNumber;

  Stage get stage;
  int get number;
  String get startTime;
  bool get forceAdd;
  @JsonKey(ignore: true)
  _$$_AddStartNumberCopyWith<_$_AddStartNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateStartingInfoCopyWith<$Res> {
  factory _$$_UpdateStartingInfoCopyWith(_$_UpdateStartingInfo value,
          $Res Function(_$_UpdateStartingInfo) then) =
      __$$_UpdateStartingInfoCopyWithImpl<$Res>;
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
class __$$_UpdateStartingInfoCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_UpdateStartingInfoCopyWith<$Res> {
  __$$_UpdateStartingInfoCopyWithImpl(
      _$_UpdateStartingInfo _value, $Res Function(_$_UpdateStartingInfo) _then)
      : super(_value, (v) => _then(v as _$_UpdateStartingInfo));

  @override
  _$_UpdateStartingInfo get _value => super._value as _$_UpdateStartingInfo;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? automaticStartTime = freezed,
    Object? automaticCorrection = freezed,
    Object? manualStartTime = freezed,
    Object? manualCorrection = freezed,
    Object? stageId = freezed,
    Object? participantId = freezed,
  }) {
    return _then(_$_UpdateStartingInfo(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      automaticStartTime: automaticStartTime == freezed
          ? _value.automaticStartTime
          : automaticStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticCorrection: automaticCorrection == freezed
          ? _value.automaticCorrection
          : automaticCorrection // ignore: cast_nullable_to_non_nullable
              as int?,
      manualStartTime: manualStartTime == freezed
          ? _value.manualStartTime
          : manualStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      manualCorrection: manualCorrection == freezed
          ? _value.manualCorrection
          : manualCorrection // ignore: cast_nullable_to_non_nullable
              as int?,
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      participantId: participantId == freezed
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateStartingInfo implements _UpdateStartingInfo {
  const _$_UpdateStartingInfo(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateStartingInfo &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality()
                .equals(other.automaticStartTime, automaticStartTime) &&
            const DeepCollectionEquality()
                .equals(other.automaticCorrection, automaticCorrection) &&
            const DeepCollectionEquality()
                .equals(other.manualStartTime, manualStartTime) &&
            const DeepCollectionEquality()
                .equals(other.manualCorrection, manualCorrection) &&
            const DeepCollectionEquality().equals(other.stageId, stageId) &&
            const DeepCollectionEquality()
                .equals(other.participantId, participantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(automaticStartTime),
      const DeepCollectionEquality().hash(automaticCorrection),
      const DeepCollectionEquality().hash(manualStartTime),
      const DeepCollectionEquality().hash(manualCorrection),
      const DeepCollectionEquality().hash(stageId),
      const DeepCollectionEquality().hash(participantId));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateStartingInfoCopyWith<_$_UpdateStartingInfo> get copyWith =>
      __$$_UpdateStartingInfoCopyWithImpl<_$_UpdateStartingInfo>(
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
  }) {
    return updateStartingInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
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
      required final int participantId}) = _$_UpdateStartingInfo;

  String get startTime;
  String? get automaticStartTime;
  int? get automaticCorrection;
  String? get manualStartTime;
  int? get manualCorrection;
  int get stageId;
  int get participantId;
  @JsonKey(ignore: true)
  _$$_UpdateStartingInfoCopyWith<_$_UpdateStartingInfo> get copyWith =>
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
            Notification? notification)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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
      _$DatabaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  final DatabaseState _value;
  // ignore: unused_field
  final $Res Function(DatabaseState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$DatabaseStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DatabaseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
            Notification? notification)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  $Res call(
      {List<Race> races,
      List<Stage> stages,
      List<Rider> riders,
      List<Status> statuses,
      List<GetParticipantsAtStartResult> participants,
      List<Start> starts,
      List<Finish> finishes,
      List<Trail> trails,
      Notification? notification});

  $NotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

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
    Object? notification = freezed,
  }) {
    return _then(_$_Initialized(
      races: races == freezed
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>,
      stages: stages == freezed
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      riders: riders == freezed
          ? _value._riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>,
      statuses: statuses == freezed
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>,
      participants: participants == freezed
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<GetParticipantsAtStartResult>,
      starts: starts == freezed
          ? _value._starts
          : starts // ignore: cast_nullable_to_non_nullable
              as List<Start>,
      finishes: finishes == freezed
          ? _value._finishes
          : finishes // ignore: cast_nullable_to_non_nullable
              as List<Finish>,
      trails: trails == freezed
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification?,
    ));
  }

  @override
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

class _$_Initialized implements _Initialized {
  const _$_Initialized(
      {required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<GetParticipantsAtStartResult> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails,
      this.notification})
      : _races = races,
        _stages = stages,
        _riders = riders,
        _statuses = statuses,
        _participants = participants,
        _starts = starts,
        _finishes = finishes,
        _trails = trails;

  final List<Race> _races;
  @override
  List<Race> get races {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_races);
  }

  final List<Stage> _stages;
  @override
  List<Stage> get stages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stages);
  }

  final List<Rider> _riders;
  @override
  List<Rider> get riders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_riders);
  }

  final List<Status> _statuses;
  @override
  List<Status> get statuses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  final List<GetParticipantsAtStartResult> _participants;
  @override
  List<GetParticipantsAtStartResult> get participants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<Start> _starts;
  @override
  List<Start> get starts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_starts);
  }

  final List<Finish> _finishes;
  @override
  List<Finish> get finishes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finishes);
  }

  final List<Trail> _trails;
  @override
  List<Trail> get trails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  @override
  final Notification? notification;

  @override
  String toString() {
    return 'DatabaseState.initialized(races: $races, stages: $stages, riders: $riders, statuses: $statuses, participants: $participants, starts: $starts, finishes: $finishes, trails: $trails, notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
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
                .equals(other.notification, notification));
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
      const DeepCollectionEquality().hash(notification));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

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
            Notification? notification)
        initialized,
  }) {
    return initialized(races, stages, riders, statuses, participants, starts,
        finishes, trails, notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
            Notification? notification)?
        initialized,
  }) {
    return initialized?.call(races, stages, riders, statuses, participants,
        starts, finishes, trails, notification);
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
            Notification? notification)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(races, stages, riders, statuses, participants, starts,
          finishes, trails, notification);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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
      final Notification? notification}) = _$_Initialized;

  List<Race> get races;
  List<Stage> get stages;
  List<Rider> get riders;
  List<Status> get statuses;
  List<GetParticipantsAtStartResult> get participants;
  List<Start> get starts;
  List<Finish> get finishes;
  List<Trail> get trails;
  Notification? get notification;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
