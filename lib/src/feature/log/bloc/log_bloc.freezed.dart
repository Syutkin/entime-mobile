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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emitState,
    required TResult Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )
    add,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emitState,
    TResult? Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )?
    add,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emitState,
    TResult Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )?
    add,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddLog value) add,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddLog value)? add,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddLog value)? add,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
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
abstract class _$$EmitStateImplCopyWith<$Res> {
  factory _$$EmitStateImplCopyWith(
    _$EmitStateImpl value,
    $Res Function(_$EmitStateImpl) then,
  ) = __$$EmitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmitStateImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$EmitStateImpl>
    implements _$$EmitStateImplCopyWith<$Res> {
  __$$EmitStateImplCopyWithImpl(
    _$EmitStateImpl _value,
    $Res Function(_$EmitStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmitStateImpl implements _EmitState {
  const _$EmitStateImpl();

  @override
  String toString() {
    return 'LogEvent.emitState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmitStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emitState,
    required TResult Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )
    add,
  }) {
    return emitState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emitState,
    TResult? Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )?
    add,
  }) {
    return emitState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emitState,
    TResult Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )?
    add,
    required TResult orElse(),
  }) {
    if (emitState != null) {
      return emitState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddLog value) add,
  }) {
    return emitState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddLog value)? add,
  }) {
    return emitState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddLog value)? add,
    required TResult orElse(),
  }) {
    if (emitState != null) {
      return emitState(this);
    }
    return orElse();
  }
}

abstract class _EmitState implements LogEvent {
  const factory _EmitState() = _$EmitStateImpl;
}

/// @nodoc
abstract class _$$AddLogImplCopyWith<$Res> {
  factory _$$AddLogImplCopyWith(
    _$AddLogImpl value,
    $Res Function(_$AddLogImpl) then,
  ) = __$$AddLogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    LogLevel level,
    LogSource source,
    LogSourceDirection direction,
    String rawData,
  });
}

/// @nodoc
class __$$AddLogImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$AddLogImpl>
    implements _$$AddLogImplCopyWith<$Res> {
  __$$AddLogImplCopyWithImpl(
    _$AddLogImpl _value,
    $Res Function(_$AddLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? source = null,
    Object? direction = null,
    Object? rawData = null,
  }) {
    return _then(
      _$AddLogImpl(
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as LogLevel,
        source:
            null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                    as LogSource,
        direction:
            null == direction
                ? _value.direction
                : direction // ignore: cast_nullable_to_non_nullable
                    as LogSourceDirection,
        rawData:
            null == rawData
                ? _value.rawData
                : rawData // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$AddLogImpl implements _AddLog {
  const _$AddLogImpl({
    required this.level,
    required this.source,
    required this.direction,
    required this.rawData,
  });

  @override
  final LogLevel level;
  @override
  final LogSource source;
  @override
  final LogSourceDirection direction;
  @override
  final String rawData;

  @override
  String toString() {
    return 'LogEvent.add(level: $level, source: $source, direction: $direction, rawData: $rawData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLogImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.rawData, rawData) || other.rawData == rawData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, level, source, direction, rawData);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLogImplCopyWith<_$AddLogImpl> get copyWith =>
      __$$AddLogImplCopyWithImpl<_$AddLogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emitState,
    required TResult Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )
    add,
  }) {
    return add(level, source, direction, rawData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emitState,
    TResult? Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )?
    add,
  }) {
    return add?.call(level, source, direction, rawData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emitState,
    TResult Function(
      LogLevel level,
      LogSource source,
      LogSourceDirection direction,
      String rawData,
    )?
    add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(level, source, direction, rawData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitState value) emitState,
    required TResult Function(_AddLog value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmitState value)? emitState,
    TResult? Function(_AddLog value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitState value)? emitState,
    TResult Function(_AddLog value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddLog implements LogEvent {
  const factory _AddLog({
    required final LogLevel level,
    required final LogSource source,
    required final LogSourceDirection direction,
    required final String rawData,
  }) = _$AddLogImpl;

  LogLevel get level;
  LogSource get source;
  LogSourceDirection get direction;
  String get rawData;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddLogImplCopyWith<_$AddLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LogState {
  List<Log> get log => throw _privateConstructorUsedError;

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogStateCopyWith<LogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogStateCopyWith<$Res> {
  factory $LogStateCopyWith(LogState value, $Res Function(LogState) then) =
      _$LogStateCopyWithImpl<$Res, LogState>;
  @useResult
  $Res call({List<Log> log});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? log = null}) {
    return _then(
      _value.copyWith(
            log:
                null == log
                    ? _value.log
                    : log // ignore: cast_nullable_to_non_nullable
                        as List<Log>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LogStateImplCopyWith<$Res>
    implements $LogStateCopyWith<$Res> {
  factory _$$LogStateImplCopyWith(
    _$LogStateImpl value,
    $Res Function(_$LogStateImpl) then,
  ) = __$$LogStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Log> log});
}

/// @nodoc
class __$$LogStateImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$LogStateImpl>
    implements _$$LogStateImplCopyWith<$Res> {
  __$$LogStateImplCopyWithImpl(
    _$LogStateImpl _value,
    $Res Function(_$LogStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? log = null}) {
    return _then(
      _$LogStateImpl(
        log:
            null == log
                ? _value._log
                : log // ignore: cast_nullable_to_non_nullable
                    as List<Log>,
      ),
    );
  }
}

/// @nodoc

class _$LogStateImpl implements _LogState {
  const _$LogStateImpl({required final List<Log> log}) : _log = log;

  final List<Log> _log;
  @override
  List<Log> get log {
    if (_log is EqualUnmodifiableListView) return _log;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_log);
  }

  @override
  String toString() {
    return 'LogState(log: $log)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogStateImpl &&
            const DeepCollectionEquality().equals(other._log, _log));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_log));

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogStateImplCopyWith<_$LogStateImpl> get copyWith =>
      __$$LogStateImplCopyWithImpl<_$LogStateImpl>(this, _$identity);
}

abstract class _LogState implements LogState {
  const factory _LogState({required final List<Log> log}) = _$LogStateImpl;

  @override
  List<Log> get log;

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogStateImplCopyWith<_$LogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
