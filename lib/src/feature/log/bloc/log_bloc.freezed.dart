// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [LogEvent].
extension LogEventPatterns on LogEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EmitState value)?  emitState,TResult Function( _Add value)?  add,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmitState() when emitState != null:
return emitState(_that);case _Add() when add != null:
return add(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EmitState value)  emitState,required TResult Function( _Add value)  add,}){
final _that = this;
switch (_that) {
case _EmitState():
return emitState(_that);case _Add():
return add(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EmitState value)?  emitState,TResult? Function( _Add value)?  add,}){
final _that = this;
switch (_that) {
case _EmitState() when emitState != null:
return emitState(_that);case _Add() when add != null:
return add(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  emitState,TResult Function( LogLevel level,  LogSource source,  LogSourceDirection direction,  String rawData)?  add,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmitState() when emitState != null:
return emitState();case _Add() when add != null:
return add(_that.level,_that.source,_that.direction,_that.rawData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  emitState,required TResult Function( LogLevel level,  LogSource source,  LogSourceDirection direction,  String rawData)  add,}) {final _that = this;
switch (_that) {
case _EmitState():
return emitState();case _Add():
return add(_that.level,_that.source,_that.direction,_that.rawData);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  emitState,TResult? Function( LogLevel level,  LogSource source,  LogSourceDirection direction,  String rawData)?  add,}) {final _that = this;
switch (_that) {
case _EmitState() when emitState != null:
return emitState();case _Add() when add != null:
return add(_that.level,_that.source,_that.direction,_that.rawData);case _:
  return null;

}
}

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


/// Adds pattern-matching-related methods to [LogState].
extension LogStatePatterns on LogState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( LogStat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case LogStat() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( LogStat value)  $default,){
final _that = this;
switch (_that) {
case LogStat():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( LogStat value)?  $default,){
final _that = this;
switch (_that) {
case LogStat() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Log> log)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case LogStat() when $default != null:
return $default(_that.log);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Log> log)  $default,) {final _that = this;
switch (_that) {
case LogStat():
return $default(_that.log);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Log> log)?  $default,) {final _that = this;
switch (_that) {
case LogStat() when $default != null:
return $default(_that.log);case _:
  return null;

}
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
