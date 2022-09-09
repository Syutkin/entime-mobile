// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countdown_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function(String text, DateTime? nextStartTime)? tick,
    TResult Function(int stageId)? start,
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
    TResult Function(_TickEvent value)? tick,
    TResult Function(_TickInit value)? start,
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
      _$CountdownEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountdownEventCopyWithImpl<$Res>
    implements $CountdownEventCopyWith<$Res> {
  _$CountdownEventCopyWithImpl(this._value, this._then);

  final CountdownEvent _value;
  // ignore: unused_field
  final $Res Function(CountdownEvent) _then;
}

/// @nodoc
abstract class _$$_TickEventCopyWith<$Res> {
  factory _$$_TickEventCopyWith(
          _$_TickEvent value, $Res Function(_$_TickEvent) then) =
      __$$_TickEventCopyWithImpl<$Res>;
  $Res call({String text, DateTime? nextStartTime});
}

/// @nodoc
class __$$_TickEventCopyWithImpl<$Res>
    extends _$CountdownEventCopyWithImpl<$Res>
    implements _$$_TickEventCopyWith<$Res> {
  __$$_TickEventCopyWithImpl(
      _$_TickEvent _value, $Res Function(_$_TickEvent) _then)
      : super(_value, (v) => _then(v as _$_TickEvent));

  @override
  _$_TickEvent get _value => super._value as _$_TickEvent;

  @override
  $Res call({
    Object? text = freezed,
    Object? nextStartTime = freezed,
  }) {
    return _then(_$_TickEvent(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextStartTime: nextStartTime == freezed
          ? _value.nextStartTime
          : nextStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TickEvent implements _TickEvent {
  const _$_TickEvent({required this.text, this.nextStartTime});

  @override
  final String text;
  @override
  final DateTime? nextStartTime;

  @override
  String toString() {
    return 'CountdownEvent.tick(text: $text, nextStartTime: $nextStartTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TickEvent &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.nextStartTime, nextStartTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(nextStartTime));

  @JsonKey(ignore: true)
  @override
  _$$_TickEventCopyWith<_$_TickEvent> get copyWith =>
      __$$_TickEventCopyWithImpl<_$_TickEvent>(this, _$identity);

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
    TResult Function(String text, DateTime? nextStartTime)? tick,
    TResult Function(int stageId)? start,
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
    TResult Function(_TickEvent value)? tick,
    TResult Function(_TickInit value)? start,
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
      final DateTime? nextStartTime}) = _$_TickEvent;

  String get text;
  DateTime? get nextStartTime;
  @JsonKey(ignore: true)
  _$$_TickEventCopyWith<_$_TickEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TickInitCopyWith<$Res> {
  factory _$$_TickInitCopyWith(
          _$_TickInit value, $Res Function(_$_TickInit) then) =
      __$$_TickInitCopyWithImpl<$Res>;
  $Res call({int stageId});
}

/// @nodoc
class __$$_TickInitCopyWithImpl<$Res> extends _$CountdownEventCopyWithImpl<$Res>
    implements _$$_TickInitCopyWith<$Res> {
  __$$_TickInitCopyWithImpl(
      _$_TickInit _value, $Res Function(_$_TickInit) _then)
      : super(_value, (v) => _then(v as _$_TickInit));

  @override
  _$_TickInit get _value => super._value as _$_TickInit;

  @override
  $Res call({
    Object? stageId = freezed,
  }) {
    return _then(_$_TickInit(
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TickInit implements _TickInit {
  const _$_TickInit({required this.stageId});

  @override
  final int stageId;

  @override
  String toString() {
    return 'CountdownEvent.start(stageId: $stageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TickInit &&
            const DeepCollectionEquality().equals(other.stageId, stageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stageId));

  @JsonKey(ignore: true)
  @override
  _$$_TickInitCopyWith<_$_TickInit> get copyWith =>
      __$$_TickInitCopyWithImpl<_$_TickInit>(this, _$identity);

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
    TResult Function(String text, DateTime? nextStartTime)? tick,
    TResult Function(int stageId)? start,
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
    TResult Function(_TickEvent value)? tick,
    TResult Function(_TickInit value)? start,
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
  const factory _TickInit({required final int stageId}) = _$_TickInit;

  int get stageId;
  @JsonKey(ignore: true)
  _$$_TickInitCopyWith<_$_TickInit> get copyWith =>
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
    TResult Function()? initial,
    TResult Function(String text, String? nextStartTime)? working,
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
    TResult Function(_CountdownInitialState value)? initial,
    TResult Function(_CountdownWorkingState value)? working,
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
      _$CountdownStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountdownStateCopyWithImpl<$Res>
    implements $CountdownStateCopyWith<$Res> {
  _$CountdownStateCopyWithImpl(this._value, this._then);

  final CountdownState _value;
  // ignore: unused_field
  final $Res Function(CountdownState) _then;
}

/// @nodoc
abstract class _$$_CountdownInitialStateCopyWith<$Res> {
  factory _$$_CountdownInitialStateCopyWith(_$_CountdownInitialState value,
          $Res Function(_$_CountdownInitialState) then) =
      __$$_CountdownInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountdownInitialStateCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res>
    implements _$$_CountdownInitialStateCopyWith<$Res> {
  __$$_CountdownInitialStateCopyWithImpl(_$_CountdownInitialState _value,
      $Res Function(_$_CountdownInitialState) _then)
      : super(_value, (v) => _then(v as _$_CountdownInitialState));

  @override
  _$_CountdownInitialState get _value =>
      super._value as _$_CountdownInitialState;
}

/// @nodoc

class _$_CountdownInitialState implements _CountdownInitialState {
  const _$_CountdownInitialState();

  @override
  String toString() {
    return 'CountdownState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CountdownInitialState);
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
    TResult Function()? initial,
    TResult Function(String text, String? nextStartTime)? working,
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
    TResult Function(_CountdownInitialState value)? initial,
    TResult Function(_CountdownWorkingState value)? working,
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
  const factory _CountdownInitialState() = _$_CountdownInitialState;
}

/// @nodoc
abstract class _$$_CountdownWorkingStateCopyWith<$Res> {
  factory _$$_CountdownWorkingStateCopyWith(_$_CountdownWorkingState value,
          $Res Function(_$_CountdownWorkingState) then) =
      __$$_CountdownWorkingStateCopyWithImpl<$Res>;
  $Res call({String text, String? nextStartTime});
}

/// @nodoc
class __$$_CountdownWorkingStateCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res>
    implements _$$_CountdownWorkingStateCopyWith<$Res> {
  __$$_CountdownWorkingStateCopyWithImpl(_$_CountdownWorkingState _value,
      $Res Function(_$_CountdownWorkingState) _then)
      : super(_value, (v) => _then(v as _$_CountdownWorkingState));

  @override
  _$_CountdownWorkingState get _value =>
      super._value as _$_CountdownWorkingState;

  @override
  $Res call({
    Object? text = freezed,
    Object? nextStartTime = freezed,
  }) {
    return _then(_$_CountdownWorkingState(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      nextStartTime: nextStartTime == freezed
          ? _value.nextStartTime
          : nextStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CountdownWorkingState implements _CountdownWorkingState {
  const _$_CountdownWorkingState({required this.text, this.nextStartTime});

  @override
  final String text;
  @override
  final String? nextStartTime;

  @override
  String toString() {
    return 'CountdownState.working(text: $text, nextStartTime: $nextStartTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountdownWorkingState &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.nextStartTime, nextStartTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(nextStartTime));

  @JsonKey(ignore: true)
  @override
  _$$_CountdownWorkingStateCopyWith<_$_CountdownWorkingState> get copyWith =>
      __$$_CountdownWorkingStateCopyWithImpl<_$_CountdownWorkingState>(
          this, _$identity);

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
    TResult Function()? initial,
    TResult Function(String text, String? nextStartTime)? working,
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
    TResult Function(_CountdownInitialState value)? initial,
    TResult Function(_CountdownWorkingState value)? working,
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
      final String? nextStartTime}) = _$_CountdownWorkingState;

  String get text;
  String? get nextStartTime;
  @JsonKey(ignore: true)
  _$$_CountdownWorkingStateCopyWith<_$_CountdownWorkingState> get copyWith =>
      throw _privateConstructorUsedError;
}
