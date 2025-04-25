// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogEvent()';
}


}

/// @nodoc
class $LogEventCopyWith<$Res>  {
$LogEventCopyWith(LogEvent _, $Res Function(LogEvent) __);
}


/// @nodoc


class _EmitState implements LogEvent {
  const _EmitState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogEvent.emitState()';
}


}




/// @nodoc


class _Add implements LogEvent {
  const _Add({required this.level, required this.source, required this.direction, required this.rawData});
  

 final  LogLevel level;
 final  LogSource source;
 final  LogSourceDirection direction;
 final  String rawData;

/// Create a copy of LogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCopyWith<_Add> get copyWith => __$AddCopyWithImpl<_Add>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Add&&(identical(other.level, level) || other.level == level)&&(identical(other.source, source) || other.source == source)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.rawData, rawData) || other.rawData == rawData));
}


@override
int get hashCode => Object.hash(runtimeType,level,source,direction,rawData);

@override
String toString() {
  return 'LogEvent.add(level: $level, source: $source, direction: $direction, rawData: $rawData)';
}


}

/// @nodoc
abstract mixin class _$AddCopyWith<$Res> implements $LogEventCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) _then) = __$AddCopyWithImpl;
@useResult
$Res call({
 LogLevel level, LogSource source, LogSourceDirection direction, String rawData
});




}
/// @nodoc
class __$AddCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(this._self, this._then);

  final _Add _self;
  final $Res Function(_Add) _then;

/// Create a copy of LogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? level = null,Object? source = null,Object? direction = null,Object? rawData = null,}) {
  return _then(_Add(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as LogLevel,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as LogSource,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as LogSourceDirection,rawData: null == rawData ? _self.rawData : rawData // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LogState {

 List<Log> get log;
/// Create a copy of LogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogStateCopyWith<LogState> get copyWith => _$LogStateCopyWithImpl<LogState>(this as LogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogState&&const DeepCollectionEquality().equals(other.log, log));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(log));

@override
String toString() {
  return 'LogState(log: $log)';
}


}

/// @nodoc
abstract mixin class $LogStateCopyWith<$Res>  {
  factory $LogStateCopyWith(LogState value, $Res Function(LogState) _then) = _$LogStateCopyWithImpl;
@useResult
$Res call({
 List<Log> log
});




}
/// @nodoc
class _$LogStateCopyWithImpl<$Res>
    implements $LogStateCopyWith<$Res> {
  _$LogStateCopyWithImpl(this._self, this._then);

  final LogState _self;
  final $Res Function(LogState) _then;

/// Create a copy of LogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? log = null,}) {
  return _then(_self.copyWith(
log: null == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as List<Log>,
  ));
}

}


/// @nodoc


class LogStat implements LogState {
  const LogStat({required final  List<Log> log}): _log = log;
  

 final  List<Log> _log;
@override List<Log> get log {
  if (_log is EqualUnmodifiableListView) return _log;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_log);
}


/// Create a copy of LogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogStatCopyWith<LogStat> get copyWith => _$LogStatCopyWithImpl<LogStat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogStat&&const DeepCollectionEquality().equals(other._log, _log));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_log));

@override
String toString() {
  return 'LogState(log: $log)';
}


}

/// @nodoc
abstract mixin class $LogStatCopyWith<$Res> implements $LogStateCopyWith<$Res> {
  factory $LogStatCopyWith(LogStat value, $Res Function(LogStat) _then) = _$LogStatCopyWithImpl;
@override @useResult
$Res call({
 List<Log> log
});




}
/// @nodoc
class _$LogStatCopyWithImpl<$Res>
    implements $LogStatCopyWith<$Res> {
  _$LogStatCopyWithImpl(this._self, this._then);

  final LogStat _self;
  final $Res Function(LogStat) _then;

/// Create a copy of LogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? log = null,}) {
  return _then(LogStat(
log: null == log ? _self._log : log // ignore: cast_nullable_to_non_nullable
as List<Log>,
  ));
}


}

// dart format on
