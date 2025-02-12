// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countdown_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CountdownEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tick tick) tick,
    required TResult Function(int stageId) start,
    required TResult Function() beep,
    required TResult Function(int stageId) callParticipant,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tick tick)? tick,
    TResult? Function(int stageId)? start,
    TResult? Function()? beep,
    TResult? Function(int stageId)? callParticipant,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tick tick)? tick,
    TResult Function(int stageId)? start,
    TResult Function()? beep,
    TResult Function(int stageId)? callParticipant,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownTick value) tick,
    required TResult Function(_CountdownStart value) start,
    required TResult Function(_CountdownBeep value) beep,
    required TResult Function(_CountdownCallParticipant value) callParticipant,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownTick value)? tick,
    TResult? Function(_CountdownStart value)? start,
    TResult? Function(_CountdownBeep value)? beep,
    TResult? Function(_CountdownCallParticipant value)? callParticipant,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownTick value)? tick,
    TResult Function(_CountdownStart value)? start,
    TResult Function(_CountdownBeep value)? beep,
    TResult Function(_CountdownCallParticipant value)? callParticipant,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownEventCopyWith<$Res> {
  factory $CountdownEventCopyWith(
    CountdownEvent value,
    $Res Function(CountdownEvent) then,
  ) = _$CountdownEventCopyWithImpl<$Res, CountdownEvent>;
}

/// @nodoc
class _$CountdownEventCopyWithImpl<$Res, $Val extends CountdownEvent>
    implements $CountdownEventCopyWith<$Res> {
  _$CountdownEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CountdownTickImplCopyWith<$Res> {
  factory _$$CountdownTickImplCopyWith(
    _$CountdownTickImpl value,
    $Res Function(_$CountdownTickImpl) then,
  ) = __$$CountdownTickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tick tick});
}

/// @nodoc
class __$$CountdownTickImplCopyWithImpl<$Res>
    extends _$CountdownEventCopyWithImpl<$Res, _$CountdownTickImpl>
    implements _$$CountdownTickImplCopyWith<$Res> {
  __$$CountdownTickImplCopyWithImpl(
    _$CountdownTickImpl _value,
    $Res Function(_$CountdownTickImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tick = null}) {
    return _then(
      _$CountdownTickImpl(
        null == tick
            ? _value.tick
            : tick // ignore: cast_nullable_to_non_nullable
                as Tick,
      ),
    );
  }
}

/// @nodoc

class _$CountdownTickImpl implements _CountdownTick {
  const _$CountdownTickImpl(this.tick);

  @override
  final Tick tick;

  @override
  String toString() {
    return 'CountdownEvent.tick(tick: $tick)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountdownTickImpl &&
            (identical(other.tick, tick) || other.tick == tick));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tick);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountdownTickImplCopyWith<_$CountdownTickImpl> get copyWith =>
      __$$CountdownTickImplCopyWithImpl<_$CountdownTickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tick tick) tick,
    required TResult Function(int stageId) start,
    required TResult Function() beep,
    required TResult Function(int stageId) callParticipant,
  }) {
    return tick(this.tick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tick tick)? tick,
    TResult? Function(int stageId)? start,
    TResult? Function()? beep,
    TResult? Function(int stageId)? callParticipant,
  }) {
    return tick?.call(this.tick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tick tick)? tick,
    TResult Function(int stageId)? start,
    TResult Function()? beep,
    TResult Function(int stageId)? callParticipant,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this.tick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownTick value) tick,
    required TResult Function(_CountdownStart value) start,
    required TResult Function(_CountdownBeep value) beep,
    required TResult Function(_CountdownCallParticipant value) callParticipant,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownTick value)? tick,
    TResult? Function(_CountdownStart value)? start,
    TResult? Function(_CountdownBeep value)? beep,
    TResult? Function(_CountdownCallParticipant value)? callParticipant,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownTick value)? tick,
    TResult Function(_CountdownStart value)? start,
    TResult Function(_CountdownBeep value)? beep,
    TResult Function(_CountdownCallParticipant value)? callParticipant,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _CountdownTick implements CountdownEvent {
  const factory _CountdownTick(final Tick tick) = _$CountdownTickImpl;

  Tick get tick;

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountdownTickImplCopyWith<_$CountdownTickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountdownStartImplCopyWith<$Res> {
  factory _$$CountdownStartImplCopyWith(
    _$CountdownStartImpl value,
    $Res Function(_$CountdownStartImpl) then,
  ) = __$$CountdownStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$CountdownStartImplCopyWithImpl<$Res>
    extends _$CountdownEventCopyWithImpl<$Res, _$CountdownStartImpl>
    implements _$$CountdownStartImplCopyWith<$Res> {
  __$$CountdownStartImplCopyWithImpl(
    _$CountdownStartImpl _value,
    $Res Function(_$CountdownStartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stageId = null}) {
    return _then(
      _$CountdownStartImpl(
        stageId:
            null == stageId
                ? _value.stageId
                : stageId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$CountdownStartImpl implements _CountdownStart {
  const _$CountdownStartImpl({required this.stageId});

  @override
  final int stageId;

  @override
  String toString() {
    return 'CountdownEvent.start(stageId: $stageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountdownStartImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountdownStartImplCopyWith<_$CountdownStartImpl> get copyWith =>
      __$$CountdownStartImplCopyWithImpl<_$CountdownStartImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tick tick) tick,
    required TResult Function(int stageId) start,
    required TResult Function() beep,
    required TResult Function(int stageId) callParticipant,
  }) {
    return start(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tick tick)? tick,
    TResult? Function(int stageId)? start,
    TResult? Function()? beep,
    TResult? Function(int stageId)? callParticipant,
  }) {
    return start?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tick tick)? tick,
    TResult Function(int stageId)? start,
    TResult Function()? beep,
    TResult Function(int stageId)? callParticipant,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(stageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownTick value) tick,
    required TResult Function(_CountdownStart value) start,
    required TResult Function(_CountdownBeep value) beep,
    required TResult Function(_CountdownCallParticipant value) callParticipant,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownTick value)? tick,
    TResult? Function(_CountdownStart value)? start,
    TResult? Function(_CountdownBeep value)? beep,
    TResult? Function(_CountdownCallParticipant value)? callParticipant,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownTick value)? tick,
    TResult Function(_CountdownStart value)? start,
    TResult Function(_CountdownBeep value)? beep,
    TResult Function(_CountdownCallParticipant value)? callParticipant,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _CountdownStart implements CountdownEvent {
  const factory _CountdownStart({required final int stageId}) =
      _$CountdownStartImpl;

  int get stageId;

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountdownStartImplCopyWith<_$CountdownStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountdownBeepImplCopyWith<$Res> {
  factory _$$CountdownBeepImplCopyWith(
    _$CountdownBeepImpl value,
    $Res Function(_$CountdownBeepImpl) then,
  ) = __$$CountdownBeepImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountdownBeepImplCopyWithImpl<$Res>
    extends _$CountdownEventCopyWithImpl<$Res, _$CountdownBeepImpl>
    implements _$$CountdownBeepImplCopyWith<$Res> {
  __$$CountdownBeepImplCopyWithImpl(
    _$CountdownBeepImpl _value,
    $Res Function(_$CountdownBeepImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CountdownBeepImpl implements _CountdownBeep {
  const _$CountdownBeepImpl();

  @override
  String toString() {
    return 'CountdownEvent.beep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountdownBeepImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tick tick) tick,
    required TResult Function(int stageId) start,
    required TResult Function() beep,
    required TResult Function(int stageId) callParticipant,
  }) {
    return beep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tick tick)? tick,
    TResult? Function(int stageId)? start,
    TResult? Function()? beep,
    TResult? Function(int stageId)? callParticipant,
  }) {
    return beep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tick tick)? tick,
    TResult Function(int stageId)? start,
    TResult Function()? beep,
    TResult Function(int stageId)? callParticipant,
    required TResult orElse(),
  }) {
    if (beep != null) {
      return beep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownTick value) tick,
    required TResult Function(_CountdownStart value) start,
    required TResult Function(_CountdownBeep value) beep,
    required TResult Function(_CountdownCallParticipant value) callParticipant,
  }) {
    return beep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownTick value)? tick,
    TResult? Function(_CountdownStart value)? start,
    TResult? Function(_CountdownBeep value)? beep,
    TResult? Function(_CountdownCallParticipant value)? callParticipant,
  }) {
    return beep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownTick value)? tick,
    TResult Function(_CountdownStart value)? start,
    TResult Function(_CountdownBeep value)? beep,
    TResult Function(_CountdownCallParticipant value)? callParticipant,
    required TResult orElse(),
  }) {
    if (beep != null) {
      return beep(this);
    }
    return orElse();
  }
}

abstract class _CountdownBeep implements CountdownEvent {
  const factory _CountdownBeep() = _$CountdownBeepImpl;
}

/// @nodoc
abstract class _$$CountdownCallParticipantImplCopyWith<$Res> {
  factory _$$CountdownCallParticipantImplCopyWith(
    _$CountdownCallParticipantImpl value,
    $Res Function(_$CountdownCallParticipantImpl) then,
  ) = __$$CountdownCallParticipantImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$CountdownCallParticipantImplCopyWithImpl<$Res>
    extends _$CountdownEventCopyWithImpl<$Res, _$CountdownCallParticipantImpl>
    implements _$$CountdownCallParticipantImplCopyWith<$Res> {
  __$$CountdownCallParticipantImplCopyWithImpl(
    _$CountdownCallParticipantImpl _value,
    $Res Function(_$CountdownCallParticipantImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stageId = null}) {
    return _then(
      _$CountdownCallParticipantImpl(
        stageId:
            null == stageId
                ? _value.stageId
                : stageId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$CountdownCallParticipantImpl implements _CountdownCallParticipant {
  const _$CountdownCallParticipantImpl({required this.stageId});

  @override
  final int stageId;

  @override
  String toString() {
    return 'CountdownEvent.callParticipant(stageId: $stageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountdownCallParticipantImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountdownCallParticipantImplCopyWith<_$CountdownCallParticipantImpl>
  get copyWith => __$$CountdownCallParticipantImplCopyWithImpl<
    _$CountdownCallParticipantImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tick tick) tick,
    required TResult Function(int stageId) start,
    required TResult Function() beep,
    required TResult Function(int stageId) callParticipant,
  }) {
    return callParticipant(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tick tick)? tick,
    TResult? Function(int stageId)? start,
    TResult? Function()? beep,
    TResult? Function(int stageId)? callParticipant,
  }) {
    return callParticipant?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tick tick)? tick,
    TResult Function(int stageId)? start,
    TResult Function()? beep,
    TResult Function(int stageId)? callParticipant,
    required TResult orElse(),
  }) {
    if (callParticipant != null) {
      return callParticipant(stageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownTick value) tick,
    required TResult Function(_CountdownStart value) start,
    required TResult Function(_CountdownBeep value) beep,
    required TResult Function(_CountdownCallParticipant value) callParticipant,
  }) {
    return callParticipant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownTick value)? tick,
    TResult? Function(_CountdownStart value)? start,
    TResult? Function(_CountdownBeep value)? beep,
    TResult? Function(_CountdownCallParticipant value)? callParticipant,
  }) {
    return callParticipant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownTick value)? tick,
    TResult Function(_CountdownStart value)? start,
    TResult Function(_CountdownBeep value)? beep,
    TResult Function(_CountdownCallParticipant value)? callParticipant,
    required TResult orElse(),
  }) {
    if (callParticipant != null) {
      return callParticipant(this);
    }
    return orElse();
  }
}

abstract class _CountdownCallParticipant implements CountdownEvent {
  const factory _CountdownCallParticipant({required final int stageId}) =
      _$CountdownCallParticipantImpl;

  int get stageId;

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountdownCallParticipantImplCopyWith<_$CountdownCallParticipantImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountdownState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Tick tick) working,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Tick tick)? working,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Tick tick)? working,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownInitialState value) initial,
    required TResult Function(_CountdownWorkingState value) working,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownInitialState value)? initial,
    TResult? Function(_CountdownWorkingState value)? working,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInitialState value)? initial,
    TResult Function(_CountdownWorkingState value)? working,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownStateCopyWith<$Res> {
  factory $CountdownStateCopyWith(
    CountdownState value,
    $Res Function(CountdownState) then,
  ) = _$CountdownStateCopyWithImpl<$Res, CountdownState>;
}

/// @nodoc
class _$CountdownStateCopyWithImpl<$Res, $Val extends CountdownState>
    implements $CountdownStateCopyWith<$Res> {
  _$CountdownStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CountdownInitialStateImplCopyWith<$Res> {
  factory _$$CountdownInitialStateImplCopyWith(
    _$CountdownInitialStateImpl value,
    $Res Function(_$CountdownInitialStateImpl) then,
  ) = __$$CountdownInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountdownInitialStateImplCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res, _$CountdownInitialStateImpl>
    implements _$$CountdownInitialStateImplCopyWith<$Res> {
  __$$CountdownInitialStateImplCopyWithImpl(
    _$CountdownInitialStateImpl _value,
    $Res Function(_$CountdownInitialStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CountdownInitialStateImpl implements _CountdownInitialState {
  const _$CountdownInitialStateImpl();

  @override
  String toString() {
    return 'CountdownState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountdownInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Tick tick) working,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Tick tick)? working,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Tick tick)? working,
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
    required TResult Function(_CountdownInitialState value) initial,
    required TResult Function(_CountdownWorkingState value) working,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownInitialState value)? initial,
    TResult? Function(_CountdownWorkingState value)? working,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInitialState value)? initial,
    TResult Function(_CountdownWorkingState value)? working,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CountdownInitialState implements CountdownState {
  const factory _CountdownInitialState() = _$CountdownInitialStateImpl;
}

/// @nodoc
abstract class _$$CountdownWorkingStateImplCopyWith<$Res> {
  factory _$$CountdownWorkingStateImplCopyWith(
    _$CountdownWorkingStateImpl value,
    $Res Function(_$CountdownWorkingStateImpl) then,
  ) = __$$CountdownWorkingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tick tick});
}

/// @nodoc
class __$$CountdownWorkingStateImplCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res, _$CountdownWorkingStateImpl>
    implements _$$CountdownWorkingStateImplCopyWith<$Res> {
  __$$CountdownWorkingStateImplCopyWithImpl(
    _$CountdownWorkingStateImpl _value,
    $Res Function(_$CountdownWorkingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tick = null}) {
    return _then(
      _$CountdownWorkingStateImpl(
        tick:
            null == tick
                ? _value.tick
                : tick // ignore: cast_nullable_to_non_nullable
                    as Tick,
      ),
    );
  }
}

/// @nodoc

class _$CountdownWorkingStateImpl implements _CountdownWorkingState {
  const _$CountdownWorkingStateImpl({required this.tick});

  @override
  final Tick tick;

  @override
  String toString() {
    return 'CountdownState.working(tick: $tick)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountdownWorkingStateImpl &&
            (identical(other.tick, tick) || other.tick == tick));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tick);

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountdownWorkingStateImplCopyWith<_$CountdownWorkingStateImpl>
  get copyWith =>
      __$$CountdownWorkingStateImplCopyWithImpl<_$CountdownWorkingStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Tick tick) working,
  }) {
    return working(tick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Tick tick)? working,
  }) {
    return working?.call(tick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Tick tick)? working,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(tick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownInitialState value) initial,
    required TResult Function(_CountdownWorkingState value) working,
  }) {
    return working(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownInitialState value)? initial,
    TResult? Function(_CountdownWorkingState value)? working,
  }) {
    return working?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInitialState value)? initial,
    TResult Function(_CountdownWorkingState value)? working,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(this);
    }
    return orElse();
  }
}

abstract class _CountdownWorkingState implements CountdownState {
  const factory _CountdownWorkingState({required final Tick tick}) =
      _$CountdownWorkingStateImpl;

  Tick get tick;

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountdownWorkingStateImplCopyWith<_$CountdownWorkingStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
