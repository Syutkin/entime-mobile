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
    required TResult Function(ShowLog value) show,
    required TResult Function(HideLog value) hide,
    required TResult Function(LogAdd value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLog value)? show,
    TResult? Function(HideLog value)? hide,
    TResult? Function(LogAdd value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
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
abstract class _$$ShowLogImplCopyWith<$Res> {
  factory _$$ShowLogImplCopyWith(
          _$ShowLogImpl value, $Res Function(_$ShowLogImpl) then) =
      __$$ShowLogImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<LogLevel>? level,
      List<LogSource>? source,
      List<LogSourceDirection>? direction});
}

/// @nodoc
class __$$ShowLogImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$ShowLogImpl>
    implements _$$ShowLogImplCopyWith<$Res> {
  __$$ShowLogImplCopyWithImpl(
      _$ShowLogImpl _value, $Res Function(_$ShowLogImpl) _then)
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
    return _then(_$ShowLogImpl(
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

class _$ShowLogImpl implements ShowLog {
  const _$ShowLogImpl(
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
            other is _$ShowLogImpl &&
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
  _$$ShowLogImplCopyWith<_$ShowLogImpl> get copyWith =>
      __$$ShowLogImplCopyWithImpl<_$ShowLogImpl>(this, _$identity);

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
    required TResult Function(ShowLog value) show,
    required TResult Function(HideLog value) hide,
    required TResult Function(LogAdd value) add,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLog value)? show,
    TResult? Function(HideLog value)? hide,
    TResult? Function(LogAdd value)? add,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ShowLog implements LogEvent {
  const factory ShowLog(
      {final List<LogLevel>? level,
      final List<LogSource>? source,
      final List<LogSourceDirection>? direction}) = _$ShowLogImpl;

  List<LogLevel>? get level;
  List<LogSource>? get source;
  List<LogSourceDirection>? get direction;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowLogImplCopyWith<_$ShowLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideLogImplCopyWith<$Res> {
  factory _$$HideLogImplCopyWith(
          _$HideLogImpl value, $Res Function(_$HideLogImpl) then) =
      __$$HideLogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideLogImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$HideLogImpl>
    implements _$$HideLogImplCopyWith<$Res> {
  __$$HideLogImplCopyWithImpl(
      _$HideLogImpl _value, $Res Function(_$HideLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideLogImpl implements HideLog {
  const _$HideLogImpl();

  @override
  String toString() {
    return 'LogEvent.hide()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideLogImpl);
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
    required TResult Function(ShowLog value) show,
    required TResult Function(HideLog value) hide,
    required TResult Function(LogAdd value) add,
  }) {
    return hide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLog value)? show,
    TResult? Function(HideLog value)? hide,
    TResult? Function(LogAdd value)? add,
  }) {
    return hide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class HideLog implements LogEvent {
  const factory HideLog() = _$HideLogImpl;
}

/// @nodoc
abstract class _$$LogAddImplCopyWith<$Res> {
  factory _$$LogAddImplCopyWith(
          _$LogAddImpl value, $Res Function(_$LogAddImpl) then) =
      __$$LogAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {LogLevel level,
      LogSource source,
      String rawData,
      LogSourceDirection? direction});
}

/// @nodoc
class __$$LogAddImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$LogAddImpl>
    implements _$$LogAddImplCopyWith<$Res> {
  __$$LogAddImplCopyWithImpl(
      _$LogAddImpl _value, $Res Function(_$LogAddImpl) _then)
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
    return _then(_$LogAddImpl(
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

class _$LogAddImpl implements LogAdd {
  const _$LogAddImpl(
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
            other is _$LogAddImpl &&
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
  _$$LogAddImplCopyWith<_$LogAddImpl> get copyWith =>
      __$$LogAddImplCopyWithImpl<_$LogAddImpl>(this, _$identity);

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
    required TResult Function(ShowLog value) show,
    required TResult Function(HideLog value) hide,
    required TResult Function(LogAdd value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLog value)? show,
    TResult? Function(HideLog value)? hide,
    TResult? Function(LogAdd value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class LogAdd implements LogEvent {
  const factory LogAdd(
      {required final LogLevel level,
      required final LogSource source,
      required final String rawData,
      final LogSourceDirection? direction}) = _$LogAddImpl;

  LogLevel get level;
  LogSource get source;
  String get rawData;
  LogSourceDirection? get direction;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogAddImplCopyWith<_$LogAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Log>? log, bool? updateLogScreen) open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Log>? log, bool? updateLogScreen)? open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? open,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInitial value) initial,
    required TResult Function(LogOpen value) open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInitial value)? initial,
    TResult? Function(LogOpen value)? open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInitial value)? initial,
    TResult Function(LogOpen value)? open,
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
abstract class _$$LogInitialImplCopyWith<$Res> {
  factory _$$LogInitialImplCopyWith(
          _$LogInitialImpl value, $Res Function(_$LogInitialImpl) then) =
      __$$LogInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInitialImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$LogInitialImpl>
    implements _$$LogInitialImplCopyWith<$Res> {
  __$$LogInitialImplCopyWithImpl(
      _$LogInitialImpl _value, $Res Function(_$LogInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogInitialImpl implements LogInitial {
  const _$LogInitialImpl();

  @override
  String toString() {
    return 'LogState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Log>? log, bool? updateLogScreen) open,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Log>? log, bool? updateLogScreen)? open,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? open,
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
    required TResult Function(LogInitial value) initial,
    required TResult Function(LogOpen value) open,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInitial value)? initial,
    TResult? Function(LogOpen value)? open,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInitial value)? initial,
    TResult Function(LogOpen value)? open,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LogInitial implements LogState {
  const factory LogInitial() = _$LogInitialImpl;
}

/// @nodoc
abstract class _$$LogOpenImplCopyWith<$Res> {
  factory _$$LogOpenImplCopyWith(
          _$LogOpenImpl value, $Res Function(_$LogOpenImpl) then) =
      __$$LogOpenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Log>? log, bool? updateLogScreen});
}

/// @nodoc
class __$$LogOpenImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$LogOpenImpl>
    implements _$$LogOpenImplCopyWith<$Res> {
  __$$LogOpenImplCopyWithImpl(
      _$LogOpenImpl _value, $Res Function(_$LogOpenImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? log = freezed,
    Object? updateLogScreen = freezed,
  }) {
    return _then(_$LogOpenImpl(
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

class _$LogOpenImpl implements LogOpen {
  const _$LogOpenImpl({final List<Log>? log, this.updateLogScreen})
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
    return 'LogState.open(log: $log, updateLogScreen: $updateLogScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOpenImpl &&
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
  _$$LogOpenImplCopyWith<_$LogOpenImpl> get copyWith =>
      __$$LogOpenImplCopyWithImpl<_$LogOpenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Log>? log, bool? updateLogScreen) open,
  }) {
    return open(log, updateLogScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Log>? log, bool? updateLogScreen)? open,
  }) {
    return open?.call(log, updateLogScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? open,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(log, updateLogScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInitial value) initial,
    required TResult Function(LogOpen value) open,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInitial value)? initial,
    TResult? Function(LogOpen value)? open,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInitial value)? initial,
    TResult Function(LogOpen value)? open,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class LogOpen implements LogState {
  const factory LogOpen({final List<Log>? log, final bool? updateLogScreen}) =
      _$LogOpenImpl;

  List<Log>? get log;
  bool? get updateLogScreen;

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogOpenImplCopyWith<_$LogOpenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
