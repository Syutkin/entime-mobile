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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountdownEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, DateTime? nextStartTime) tick,
    required TResult Function(int stageId) start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, DateTime? nextStartTime)? tick,
    TResult? Function(int stageId)? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, DateTime? nextStartTime)? tick,
    TResult Function(int stageId)? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TickEvent value) tick,
    required TResult Function(_TickInit value) start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TickEvent value)? tick,
    TResult? Function(_TickInit value)? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TickEvent value)? tick,
    TResult Function(_TickInit value)? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownEventCopyWith<$Res> {
  factory $CountdownEventCopyWith(
          CountdownEvent value, $Res Function(CountdownEvent) then) =
      _$CountdownEventCopyWithImpl<$Res, CountdownEvent>;
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
abstract class _$$TickEventImplCopyWith<$Res> {
  factory _$$TickEventImplCopyWith(
          _$TickEventImpl value, $Res Function(_$TickEventImpl) then) =
      __$$TickEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, DateTime? nextStartTime});
}

/// @nodoc
class __$$TickEventImplCopyWithImpl<$Res>
    extends _$CountdownEventCopyWithImpl<$Res, _$TickEventImpl>
    implements _$$TickEventImplCopyWith<$Res> {
  __$$TickEventImplCopyWithImpl(
      _$TickEventImpl _value, $Res Function(_$TickEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? nextStartTime = freezed,
  }) {
    return _then(_$TickEventImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextStartTime: freezed == nextStartTime
          ? _value.nextStartTime
          : nextStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$TickEventImpl implements _TickEvent {
  const _$TickEventImpl({required this.text, this.nextStartTime});

  @override
  final String text;
  @override
  final DateTime? nextStartTime;

  @override
  String toString() {
    return 'CountdownEvent.tick(text: $text, nextStartTime: $nextStartTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickEventImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.nextStartTime, nextStartTime) ||
                other.nextStartTime == nextStartTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, nextStartTime);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TickEventImplCopyWith<_$TickEventImpl> get copyWith =>
      __$$TickEventImplCopyWithImpl<_$TickEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, DateTime? nextStartTime) tick,
    required TResult Function(int stageId) start,
  }) {
    return tick(text, nextStartTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, DateTime? nextStartTime)? tick,
    TResult? Function(int stageId)? start,
  }) {
    return tick?.call(text, nextStartTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, DateTime? nextStartTime)? tick,
    TResult Function(int stageId)? start,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(text, nextStartTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TickEvent value) tick,
    required TResult Function(_TickInit value) start,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TickEvent value)? tick,
    TResult? Function(_TickInit value)? start,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TickEvent value)? tick,
    TResult Function(_TickInit value)? start,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _TickEvent implements CountdownEvent {
  const factory _TickEvent(
      {required final String text,
      final DateTime? nextStartTime}) = _$TickEventImpl;

  String get text;
  DateTime? get nextStartTime;

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TickEventImplCopyWith<_$TickEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TickInitImplCopyWith<$Res> {
  factory _$$TickInitImplCopyWith(
          _$TickInitImpl value, $Res Function(_$TickInitImpl) then) =
      __$$TickInitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stageId});
}

/// @nodoc
class __$$TickInitImplCopyWithImpl<$Res>
    extends _$CountdownEventCopyWithImpl<$Res, _$TickInitImpl>
    implements _$$TickInitImplCopyWith<$Res> {
  __$$TickInitImplCopyWithImpl(
      _$TickInitImpl _value, $Res Function(_$TickInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageId = null,
  }) {
    return _then(_$TickInitImpl(
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TickInitImpl implements _TickInit {
  const _$TickInitImpl({required this.stageId});

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
            other is _$TickInitImpl &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stageId);

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TickInitImplCopyWith<_$TickInitImpl> get copyWith =>
      __$$TickInitImplCopyWithImpl<_$TickInitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, DateTime? nextStartTime) tick,
    required TResult Function(int stageId) start,
  }) {
    return start(stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, DateTime? nextStartTime)? tick,
    TResult? Function(int stageId)? start,
  }) {
    return start?.call(stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, DateTime? nextStartTime)? tick,
    TResult Function(int stageId)? start,
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
    required TResult Function(_TickEvent value) tick,
    required TResult Function(_TickInit value) start,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TickEvent value)? tick,
    TResult? Function(_TickInit value)? start,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TickEvent value)? tick,
    TResult Function(_TickInit value)? start,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _TickInit implements CountdownEvent {
  const factory _TickInit({required final int stageId}) = _$TickInitImpl;

  int get stageId;

  /// Create a copy of CountdownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TickInitImplCopyWith<_$TickInitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountdownState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, String? nextStartTime) working,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, String? nextStartTime)? working,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, String? nextStartTime)? working,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownInitialState value) initial,
    required TResult Function(_CountdownWorkingState value) working,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountdownInitialState value)? initial,
    TResult? Function(_CountdownWorkingState value)? working,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInitialState value)? initial,
    TResult Function(_CountdownWorkingState value)? working,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownStateCopyWith<$Res> {
  factory $CountdownStateCopyWith(
          CountdownState value, $Res Function(CountdownState) then) =
      _$CountdownStateCopyWithImpl<$Res, CountdownState>;
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
          $Res Function(_$CountdownInitialStateImpl) then) =
      __$$CountdownInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountdownInitialStateImplCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res, _$CountdownInitialStateImpl>
    implements _$$CountdownInitialStateImplCopyWith<$Res> {
  __$$CountdownInitialStateImplCopyWithImpl(_$CountdownInitialStateImpl _value,
      $Res Function(_$CountdownInitialStateImpl) _then)
      : super(_value, _then);

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
    required TResult Function(String text, String? nextStartTime) working,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, String? nextStartTime)? working,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, String? nextStartTime)? working,
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
          $Res Function(_$CountdownWorkingStateImpl) then) =
      __$$CountdownWorkingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String? nextStartTime});
}

/// @nodoc
class __$$CountdownWorkingStateImplCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res, _$CountdownWorkingStateImpl>
    implements _$$CountdownWorkingStateImplCopyWith<$Res> {
  __$$CountdownWorkingStateImplCopyWithImpl(_$CountdownWorkingStateImpl _value,
      $Res Function(_$CountdownWorkingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? nextStartTime = freezed,
  }) {
    return _then(_$CountdownWorkingStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextStartTime: freezed == nextStartTime
          ? _value.nextStartTime
          : nextStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CountdownWorkingStateImpl implements _CountdownWorkingState {
  const _$CountdownWorkingStateImpl({required this.text, this.nextStartTime});

  @override
  final String text;
  @override
  final String? nextStartTime;

  @override
  String toString() {
    return 'CountdownState.working(text: $text, nextStartTime: $nextStartTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountdownWorkingStateImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.nextStartTime, nextStartTime) ||
                other.nextStartTime == nextStartTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, nextStartTime);

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountdownWorkingStateImplCopyWith<_$CountdownWorkingStateImpl>
      get copyWith => __$$CountdownWorkingStateImplCopyWithImpl<
          _$CountdownWorkingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, String? nextStartTime) working,
  }) {
    return working(text, nextStartTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, String? nextStartTime)? working,
  }) {
    return working?.call(text, nextStartTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, String? nextStartTime)? working,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(text, nextStartTime);
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
  const factory _CountdownWorkingState(
      {required final String text,
      final String? nextStartTime}) = _$CountdownWorkingStateImpl;

  String get text;
  String? get nextStartTime;

  /// Create a copy of CountdownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountdownWorkingStateImplCopyWith<_$CountdownWorkingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
