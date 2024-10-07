// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)
        show,
    required TResult Function() hide,
    required TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)
        add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult? Function()? hide,
    TResult? Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Show value) show,
    required TResult Function(_Hide value) hide,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Show value)? show,
    TResult? Function(_Hide value)? hide,
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Show value)? show,
    TResult Function(_Hide value)? hide,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEventCopyWith<$Res> {
  factory $LogEventCopyWith(LogEvent value, $Res Function(LogEvent) then) =
      _$LogEventCopyWithImpl<$Res, LogEvent>;
}

/// @nodoc
class _$LogEventCopyWithImpl<$Res, $Val extends LogEvent>
    implements $LogEventCopyWith<$Res> {
  _$LogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowImplCopyWith<$Res> {
  factory _$$ShowImplCopyWith(
          _$ShowImpl value, $Res Function(_$ShowImpl) then) =
      __$$ShowImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<LogLevel>? level,
      List<LogSource>? source,
      List<LogSourceDirection>? direction});
}

/// @nodoc
class __$$ShowImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$ShowImpl>
    implements _$$ShowImplCopyWith<$Res> {
  __$$ShowImplCopyWithImpl(_$ShowImpl _value, $Res Function(_$ShowImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? source = freezed,
    Object? direction = freezed,
  }) {
    return _then(_$ShowImpl(
      level: freezed == level
          ? _value._level
          : level // ignore: cast_nullable_to_non_nullable
              as List<LogLevel>?,
      source: freezed == source
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<LogSource>?,
      direction: freezed == direction
          ? _value._direction
          : direction // ignore: cast_nullable_to_non_nullable
              as List<LogSourceDirection>?,
    ));
  }
}

/// @nodoc

class _$ShowImpl implements _Show {
  const _$ShowImpl(
      {final List<LogLevel>? level,
      final List<LogSource>? source,
      final List<LogSourceDirection>? direction})
      : _level = level,
        _source = source,
        _direction = direction;

  final List<LogLevel>? _level;
  @override
  List<LogLevel>? get level {
    final value = _level;
    if (value == null) return null;
    if (_level is EqualUnmodifiableListView) return _level;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LogSource>? _source;
  @override
  List<LogSource>? get source {
    final value = _source;
    if (value == null) return null;
    if (_source is EqualUnmodifiableListView) return _source;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LogSourceDirection>? _direction;
  @override
  List<LogSourceDirection>? get direction {
    final value = _direction;
    if (value == null) return null;
    if (_direction is EqualUnmodifiableListView) return _direction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LogEvent.show(level: $level, source: $source, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowImpl &&
            const DeepCollectionEquality().equals(other._level, _level) &&
            const DeepCollectionEquality().equals(other._source, _source) &&
            const DeepCollectionEquality()
                .equals(other._direction, _direction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_level),
      const DeepCollectionEquality().hash(_source),
      const DeepCollectionEquality().hash(_direction));

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowImplCopyWith<_$ShowImpl> get copyWith =>
      __$$ShowImplCopyWithImpl<_$ShowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)
        show,
    required TResult Function() hide,
    required TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)
        add,
  }) {
    return show(level, source, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult? Function()? hide,
    TResult? Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
  }) {
    return show?.call(level, source, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(level, source, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Show value) show,
    required TResult Function(_Hide value) hide,
    required TResult Function(_Add value) add,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Show value)? show,
    TResult? Function(_Hide value)? hide,
    TResult? Function(_Add value)? add,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Show value)? show,
    TResult Function(_Hide value)? hide,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _Show implements LogEvent {
  const factory _Show(
      {final List<LogLevel>? level,
      final List<LogSource>? source,
      final List<LogSourceDirection>? direction}) = _$ShowImpl;

  List<LogLevel>? get level;
  List<LogSource>? get source;
  List<LogSourceDirection>? get direction;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowImplCopyWith<_$ShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideImplCopyWith<$Res> {
  factory _$$HideImplCopyWith(
          _$HideImpl value, $Res Function(_$HideImpl) then) =
      __$$HideImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$HideImpl>
    implements _$$HideImplCopyWith<$Res> {
  __$$HideImplCopyWithImpl(_$HideImpl _value, $Res Function(_$HideImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideImpl implements _Hide {
  const _$HideImpl();

  @override
  String toString() {
    return 'LogEvent.hide()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)
        show,
    required TResult Function() hide,
    required TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)
        add,
  }) {
    return hide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult? Function()? hide,
    TResult? Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
  }) {
    return hide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Show value) show,
    required TResult Function(_Hide value) hide,
    required TResult Function(_Add value) add,
  }) {
    return hide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Show value)? show,
    TResult? Function(_Hide value)? hide,
    TResult? Function(_Add value)? add,
  }) {
    return hide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Show value)? show,
    TResult Function(_Hide value)? hide,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class _Hide implements LogEvent {
  const factory _Hide() = _$HideImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {LogLevel level,
      LogSource source,
      String rawData,
      LogSourceDirection? direction});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? source = null,
    Object? rawData = null,
    Object? direction = freezed,
  }) {
    return _then(_$AddImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as LogSource,
      rawData: null == rawData
          ? _value.rawData
          : rawData // ignore: cast_nullable_to_non_nullable
              as String,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as LogSourceDirection?,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(
      {required this.level,
      required this.source,
      required this.rawData,
      this.direction});

  @override
  final LogLevel level;
  @override
  final LogSource source;
  @override
  final String rawData;
  @override
  final LogSourceDirection? direction;

  @override
  String toString() {
    return 'LogEvent.add(level: $level, source: $source, rawData: $rawData, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.rawData, rawData) || other.rawData == rawData) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, level, source, rawData, direction);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)
        show,
    required TResult Function() hide,
    required TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)
        add,
  }) {
    return add(level, source, rawData, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult? Function()? hide,
    TResult? Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
  }) {
    return add?.call(level, source, rawData, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
            LogSourceDirection? direction)?
        add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(level, source, rawData, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Show value) show,
    required TResult Function(_Hide value) hide,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Show value)? show,
    TResult? Function(_Hide value)? hide,
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Show value)? show,
    TResult Function(_Hide value)? hide,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements LogEvent {
  const factory _Add(
      {required final LogLevel level,
      required final LogSource source,
      required final String rawData,
      final LogSourceDirection? direction}) = _$AddImpl;

  LogLevel get level;
  LogSource get source;
  String get rawData;
  LogSourceDirection? get direction;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Log>? log, bool? updateLogScreen)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Log>? log, bool? updateLogScreen)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? initialized,
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
abstract class $LogStateCopyWith<$Res> {
  factory $LogStateCopyWith(LogState value, $Res Function(LogState) then) =
      _$LogStateCopyWithImpl<$Res, LogState>;
}

/// @nodoc
class _$LogStateCopyWithImpl<$Res, $Val extends LogState>
    implements $LogStateCopyWith<$Res> {
  _$LogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogState
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
    extends _$LogStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LogState.initial()';
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
    required TResult Function(List<Log>? log, bool? updateLogScreen)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Log>? log, bool? updateLogScreen)? initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? initialized,
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

abstract class _Initial implements LogState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Log>? log, bool? updateLogScreen});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? log = freezed,
    Object? updateLogScreen = freezed,
  }) {
    return _then(_$InitializedImpl(
      log: freezed == log
          ? _value._log
          : log // ignore: cast_nullable_to_non_nullable
              as List<Log>?,
      updateLogScreen: freezed == updateLogScreen
          ? _value.updateLogScreen
          : updateLogScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl({final List<Log>? log, this.updateLogScreen})
      : _log = log;

  final List<Log>? _log;
  @override
  List<Log>? get log {
    final value = _log;
    if (value == null) return null;
    if (_log is EqualUnmodifiableListView) return _log;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? updateLogScreen;

  @override
  String toString() {
    return 'LogState.initialized(log: $log, updateLogScreen: $updateLogScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            const DeepCollectionEquality().equals(other._log, _log) &&
            (identical(other.updateLogScreen, updateLogScreen) ||
                other.updateLogScreen == updateLogScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_log), updateLogScreen);

  /// Create a copy of LogState
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
    required TResult Function(List<Log>? log, bool? updateLogScreen)
        initialized,
  }) {
    return initialized(log, updateLogScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Log>? log, bool? updateLogScreen)? initialized,
  }) {
    return initialized?.call(log, updateLogScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(log, updateLogScreen);
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

abstract class _Initialized implements LogState {
  const factory _Initialized(
      {final List<Log>? log, final bool? updateLogScreen}) = _$InitializedImpl;

  List<Log>? get log;
  bool? get updateLogScreen;

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
