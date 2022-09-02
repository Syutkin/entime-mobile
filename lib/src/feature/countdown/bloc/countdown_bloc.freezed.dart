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
    required TResult Function(String text) tick,
    required TResult Function() reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? tick,
    TResult Function()? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? tick,
    TResult Function()? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TickEvent value) tick,
    required TResult Function(TickInit value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TickEvent value)? tick,
    TResult Function(TickInit value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickEvent value)? tick,
    TResult Function(TickInit value)? reload,
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
abstract class _$$TickEventCopyWith<$Res> {
  factory _$$TickEventCopyWith(
          _$TickEvent value, $Res Function(_$TickEvent) then) =
      __$$TickEventCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$TickEventCopyWithImpl<$Res> extends _$CountdownEventCopyWithImpl<$Res>
    implements _$$TickEventCopyWith<$Res> {
  __$$TickEventCopyWithImpl(
      _$TickEvent _value, $Res Function(_$TickEvent) _then)
      : super(_value, (v) => _then(v as _$TickEvent));

  @override
  _$TickEvent get _value => super._value as _$TickEvent;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$TickEvent(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TickEvent implements TickEvent {
  const _$TickEvent({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'CountdownEvent.tick(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickEvent &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$TickEventCopyWith<_$TickEvent> get copyWith =>
      __$$TickEventCopyWithImpl<_$TickEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) tick,
    required TResult Function() reload,
  }) {
    return tick(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? tick,
    TResult Function()? reload,
  }) {
    return tick?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? tick,
    TResult Function()? reload,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TickEvent value) tick,
    required TResult Function(TickInit value) reload,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TickEvent value)? tick,
    TResult Function(TickInit value)? reload,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickEvent value)? tick,
    TResult Function(TickInit value)? reload,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class TickEvent implements CountdownEvent {
  const factory TickEvent({required final String text}) = _$TickEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$TickEventCopyWith<_$TickEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TickInitCopyWith<$Res> {
  factory _$$TickInitCopyWith(
          _$TickInit value, $Res Function(_$TickInit) then) =
      __$$TickInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TickInitCopyWithImpl<$Res> extends _$CountdownEventCopyWithImpl<$Res>
    implements _$$TickInitCopyWith<$Res> {
  __$$TickInitCopyWithImpl(_$TickInit _value, $Res Function(_$TickInit) _then)
      : super(_value, (v) => _then(v as _$TickInit));

  @override
  _$TickInit get _value => super._value as _$TickInit;
}

/// @nodoc

class _$TickInit implements TickInit {
  const _$TickInit();

  @override
  String toString() {
    return 'CountdownEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TickInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) tick,
    required TResult Function() reload,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? tick,
    TResult Function()? reload,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? tick,
    TResult Function()? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TickEvent value) tick,
    required TResult Function(TickInit value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TickEvent value)? tick,
    TResult Function(TickInit value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickEvent value)? tick,
    TResult Function(TickInit value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class TickInit implements CountdownEvent {
  const factory TickInit() = _$TickInit;
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
    required TResult Function(CountdownInitialState value) initial,
    required TResult Function(CountdownWorkingState value) working,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountdownInitialState value)? initial,
    TResult Function(CountdownWorkingState value)? working,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountdownInitialState value)? initial,
    TResult Function(CountdownWorkingState value)? working,
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
abstract class _$$CountdownInitialStateCopyWith<$Res> {
  factory _$$CountdownInitialStateCopyWith(_$CountdownInitialState value,
          $Res Function(_$CountdownInitialState) then) =
      __$$CountdownInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountdownInitialStateCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res>
    implements _$$CountdownInitialStateCopyWith<$Res> {
  __$$CountdownInitialStateCopyWithImpl(_$CountdownInitialState _value,
      $Res Function(_$CountdownInitialState) _then)
      : super(_value, (v) => _then(v as _$CountdownInitialState));

  @override
  _$CountdownInitialState get _value => super._value as _$CountdownInitialState;
}

/// @nodoc

class _$CountdownInitialState implements CountdownInitialState {
  const _$CountdownInitialState();

  @override
  String toString() {
    return 'CountdownState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountdownInitialState);
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
    required TResult Function(CountdownInitialState value) initial,
    required TResult Function(CountdownWorkingState value) working,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountdownInitialState value)? initial,
    TResult Function(CountdownWorkingState value)? working,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountdownInitialState value)? initial,
    TResult Function(CountdownWorkingState value)? working,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CountdownInitialState implements CountdownState {
  const factory CountdownInitialState() = _$CountdownInitialState;
}

/// @nodoc
abstract class _$$CountdownWorkingStateCopyWith<$Res> {
  factory _$$CountdownWorkingStateCopyWith(_$CountdownWorkingState value,
          $Res Function(_$CountdownWorkingState) then) =
      __$$CountdownWorkingStateCopyWithImpl<$Res>;
  $Res call({String text, String? nextStartTime});
}

/// @nodoc
class __$$CountdownWorkingStateCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res>
    implements _$$CountdownWorkingStateCopyWith<$Res> {
  __$$CountdownWorkingStateCopyWithImpl(_$CountdownWorkingState _value,
      $Res Function(_$CountdownWorkingState) _then)
      : super(_value, (v) => _then(v as _$CountdownWorkingState));

  @override
  _$CountdownWorkingState get _value => super._value as _$CountdownWorkingState;

  @override
  $Res call({
    Object? text = freezed,
    Object? nextStartTime = freezed,
  }) {
    return _then(_$CountdownWorkingState(
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

class _$CountdownWorkingState implements CountdownWorkingState {
  const _$CountdownWorkingState({required this.text, this.nextStartTime});

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
            other is _$CountdownWorkingState &&
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
  _$$CountdownWorkingStateCopyWith<_$CountdownWorkingState> get copyWith =>
      __$$CountdownWorkingStateCopyWithImpl<_$CountdownWorkingState>(
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
    required TResult Function(CountdownInitialState value) initial,
    required TResult Function(CountdownWorkingState value) working,
  }) {
    return working(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountdownInitialState value)? initial,
    TResult Function(CountdownWorkingState value)? working,
  }) {
    return working?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountdownInitialState value)? initial,
    TResult Function(CountdownWorkingState value)? working,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(this);
    }
    return orElse();
  }
}

abstract class CountdownWorkingState implements CountdownState {
  const factory CountdownWorkingState(
      {required final String text,
      final String? nextStartTime}) = _$CountdownWorkingState;

  String get text;
  String? get nextStartTime;
  @JsonKey(ignore: true)
  _$$CountdownWorkingStateCopyWith<_$CountdownWorkingState> get copyWith =>
      throw _privateConstructorUsedError;
}
