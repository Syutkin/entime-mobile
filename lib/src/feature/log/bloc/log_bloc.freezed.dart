// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'log_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
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
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
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
      _$LogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogEventCopyWithImpl<$Res> implements $LogEventCopyWith<$Res> {
  _$LogEventCopyWithImpl(this._value, this._then);

  final LogEvent _value;
  // ignore: unused_field
  final $Res Function(LogEvent) _then;
}

/// @nodoc
abstract class _$$ShowLogCopyWith<$Res> {
  factory _$$ShowLogCopyWith(_$ShowLog value, $Res Function(_$ShowLog) then) =
      __$$ShowLogCopyWithImpl<$Res>;
  $Res call(
      {List<LogLevel>? level,
      List<LogSource>? source,
      List<LogSourceDirection>? direction});
}

/// @nodoc
class __$$ShowLogCopyWithImpl<$Res> extends _$LogEventCopyWithImpl<$Res>
    implements _$$ShowLogCopyWith<$Res> {
  __$$ShowLogCopyWithImpl(_$ShowLog _value, $Res Function(_$ShowLog) _then)
      : super(_value, (v) => _then(v as _$ShowLog));

  @override
  _$ShowLog get _value => super._value as _$ShowLog;

  @override
  $Res call({
    Object? level = freezed,
    Object? source = freezed,
    Object? direction = freezed,
  }) {
    return _then(_$ShowLog(
      level: level == freezed
          ? _value._level
          : level // ignore: cast_nullable_to_non_nullable
              as List<LogLevel>?,
      source: source == freezed
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<LogSource>?,
      direction: direction == freezed
          ? _value._direction
          : direction // ignore: cast_nullable_to_non_nullable
              as List<LogSourceDirection>?,
    ));
  }
}

/// @nodoc

class _$ShowLog implements ShowLog {
  const _$ShowLog(
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LogSource>? _source;
  @override
  List<LogSource>? get source {
    final value = _source;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LogSourceDirection>? _direction;
  @override
  List<LogSourceDirection>? get direction {
    final value = _direction;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LogEvent.show(level: $level, source: $source, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLog &&
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

  @JsonKey(ignore: true)
  @override
  _$$ShowLogCopyWith<_$ShowLog> get copyWith =>
      __$$ShowLogCopyWithImpl<_$ShowLog>(this, _$identity);

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
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
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
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
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
      final List<LogSourceDirection>? direction}) = _$ShowLog;

  List<LogLevel>? get level;
  List<LogSource>? get source;
  List<LogSourceDirection>? get direction;
  @JsonKey(ignore: true)
  _$$ShowLogCopyWith<_$ShowLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideLogCopyWith<$Res> {
  factory _$$HideLogCopyWith(_$HideLog value, $Res Function(_$HideLog) then) =
      __$$HideLogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideLogCopyWithImpl<$Res> extends _$LogEventCopyWithImpl<$Res>
    implements _$$HideLogCopyWith<$Res> {
  __$$HideLogCopyWithImpl(_$HideLog _value, $Res Function(_$HideLog) _then)
      : super(_value, (v) => _then(v as _$HideLog));

  @override
  _$HideLog get _value => super._value as _$HideLog;
}

/// @nodoc

class _$HideLog implements HideLog {
  const _$HideLog();

  @override
  String toString() {
    return 'LogEvent.hide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideLog);
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
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
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
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
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
  const factory HideLog() = _$HideLog;
}

/// @nodoc
abstract class _$$LogAddCopyWith<$Res> {
  factory _$$LogAddCopyWith(_$LogAdd value, $Res Function(_$LogAdd) then) =
      __$$LogAddCopyWithImpl<$Res>;
  $Res call(
      {LogLevel level,
      LogSource source,
      String rawData,
      LogSourceDirection? direction});
}

/// @nodoc
class __$$LogAddCopyWithImpl<$Res> extends _$LogEventCopyWithImpl<$Res>
    implements _$$LogAddCopyWith<$Res> {
  __$$LogAddCopyWithImpl(_$LogAdd _value, $Res Function(_$LogAdd) _then)
      : super(_value, (v) => _then(v as _$LogAdd));

  @override
  _$LogAdd get _value => super._value as _$LogAdd;

  @override
  $Res call({
    Object? level = freezed,
    Object? source = freezed,
    Object? rawData = freezed,
    Object? direction = freezed,
  }) {
    return _then(_$LogAdd(
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as LogSource,
      rawData: rawData == freezed
          ? _value.rawData
          : rawData // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as LogSourceDirection?,
    ));
  }
}

/// @nodoc

class _$LogAdd implements LogAdd {
  const _$LogAdd(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogAdd &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.rawData, rawData) &&
            const DeepCollectionEquality().equals(other.direction, direction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(rawData),
      const DeepCollectionEquality().hash(direction));

  @JsonKey(ignore: true)
  @override
  _$$LogAddCopyWith<_$LogAdd> get copyWith =>
      __$$LogAddCopyWithImpl<_$LogAdd>(this, _$identity);

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
    TResult Function(List<LogLevel>? level, List<LogSource>? source,
            List<LogSourceDirection>? direction)?
        show,
    TResult Function()? hide,
    TResult Function(LogLevel level, LogSource source, String rawData,
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
    TResult Function(ShowLog value)? show,
    TResult Function(HideLog value)? hide,
    TResult Function(LogAdd value)? add,
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
      final LogSourceDirection? direction}) = _$LogAdd;

  LogLevel get level;
  LogSource get source;
  String get rawData;
  LogSourceDirection? get direction;
  @JsonKey(ignore: true)
  _$$LogAddCopyWith<_$LogAdd> get copyWith =>
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
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? open,
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
    TResult Function(LogInitial value)? initial,
    TResult Function(LogOpen value)? open,
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
      _$LogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogStateCopyWithImpl<$Res> implements $LogStateCopyWith<$Res> {
  _$LogStateCopyWithImpl(this._value, this._then);

  final LogState _value;
  // ignore: unused_field
  final $Res Function(LogState) _then;
}

/// @nodoc
abstract class _$$LogInitialCopyWith<$Res> {
  factory _$$LogInitialCopyWith(
          _$LogInitial value, $Res Function(_$LogInitial) then) =
      __$$LogInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInitialCopyWithImpl<$Res> extends _$LogStateCopyWithImpl<$Res>
    implements _$$LogInitialCopyWith<$Res> {
  __$$LogInitialCopyWithImpl(
      _$LogInitial _value, $Res Function(_$LogInitial) _then)
      : super(_value, (v) => _then(v as _$LogInitial));

  @override
  _$LogInitial get _value => super._value as _$LogInitial;
}

/// @nodoc

class _$LogInitial implements LogInitial {
  const _$LogInitial();

  @override
  String toString() {
    return 'LogState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogInitial);
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
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? open,
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
    TResult Function(LogInitial value)? initial,
    TResult Function(LogOpen value)? open,
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
  const factory LogInitial() = _$LogInitial;
}

/// @nodoc
abstract class _$$LogOpenCopyWith<$Res> {
  factory _$$LogOpenCopyWith(_$LogOpen value, $Res Function(_$LogOpen) then) =
      __$$LogOpenCopyWithImpl<$Res>;
  $Res call({List<Log>? log, bool? updateLogScreen});
}

/// @nodoc
class __$$LogOpenCopyWithImpl<$Res> extends _$LogStateCopyWithImpl<$Res>
    implements _$$LogOpenCopyWith<$Res> {
  __$$LogOpenCopyWithImpl(_$LogOpen _value, $Res Function(_$LogOpen) _then)
      : super(_value, (v) => _then(v as _$LogOpen));

  @override
  _$LogOpen get _value => super._value as _$LogOpen;

  @override
  $Res call({
    Object? log = freezed,
    Object? updateLogScreen = freezed,
  }) {
    return _then(_$LogOpen(
      log: log == freezed
          ? _value._log
          : log // ignore: cast_nullable_to_non_nullable
              as List<Log>?,
      updateLogScreen: updateLogScreen == freezed
          ? _value.updateLogScreen
          : updateLogScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LogOpen implements LogOpen {
  const _$LogOpen({final List<Log>? log, this.updateLogScreen}) : _log = log;

  final List<Log>? _log;
  @override
  List<Log>? get log {
    final value = _log;
    if (value == null) return null;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOpen &&
            const DeepCollectionEquality().equals(other._log, _log) &&
            const DeepCollectionEquality()
                .equals(other.updateLogScreen, updateLogScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_log),
      const DeepCollectionEquality().hash(updateLogScreen));

  @JsonKey(ignore: true)
  @override
  _$$LogOpenCopyWith<_$LogOpen> get copyWith =>
      __$$LogOpenCopyWithImpl<_$LogOpen>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function(List<Log>? log, bool? updateLogScreen)? open,
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
    TResult Function(LogInitial value)? initial,
    TResult Function(LogOpen value)? open,
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
      _$LogOpen;

  List<Log>? get log;
  bool? get updateLogScreen;
  @JsonKey(ignore: true)
  _$$LogOpenCopyWith<_$LogOpen> get copyWith =>
      throw _privateConstructorUsedError;
}
