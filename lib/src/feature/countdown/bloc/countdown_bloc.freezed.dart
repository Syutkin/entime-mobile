// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countdown_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountdownEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountdownEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CountdownEvent()';
}


}

/// @nodoc
class $CountdownEventCopyWith<$Res>  {
$CountdownEventCopyWith(CountdownEvent _, $Res Function(CountdownEvent) __);
}


/// Adds pattern-matching-related methods to [CountdownEvent].
extension CountdownEventPatterns on CountdownEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Tick value)?  tick,TResult Function( _Start value)?  start,TResult Function( _Stop value)?  stop,TResult Function( _Beep value)?  beep,TResult Function( _CallParticipant value)?  callParticipant,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tick() when tick != null:
return tick(_that);case _Start() when start != null:
return start(_that);case _Stop() when stop != null:
return stop(_that);case _Beep() when beep != null:
return beep(_that);case _CallParticipant() when callParticipant != null:
return callParticipant(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Tick value)  tick,required TResult Function( _Start value)  start,required TResult Function( _Stop value)  stop,required TResult Function( _Beep value)  beep,required TResult Function( _CallParticipant value)  callParticipant,}){
final _that = this;
switch (_that) {
case _Tick():
return tick(_that);case _Start():
return start(_that);case _Stop():
return stop(_that);case _Beep():
return beep(_that);case _CallParticipant():
return callParticipant(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Tick value)?  tick,TResult? Function( _Start value)?  start,TResult? Function( _Stop value)?  stop,TResult? Function( _Beep value)?  beep,TResult? Function( _CallParticipant value)?  callParticipant,}){
final _that = this;
switch (_that) {
case _Tick() when tick != null:
return tick(_that);case _Start() when start != null:
return start(_that);case _Stop() when stop != null:
return stop(_that);case _Beep() when beep != null:
return beep(_that);case _CallParticipant() when callParticipant != null:
return callParticipant(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Tick tick)?  tick,TResult Function( int stageId)?  start,TResult Function()?  stop,TResult Function()?  beep,TResult Function( int stageId)?  callParticipant,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tick() when tick != null:
return tick(_that.tick);case _Start() when start != null:
return start(_that.stageId);case _Stop() when stop != null:
return stop();case _Beep() when beep != null:
return beep();case _CallParticipant() when callParticipant != null:
return callParticipant(_that.stageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Tick tick)  tick,required TResult Function( int stageId)  start,required TResult Function()  stop,required TResult Function()  beep,required TResult Function( int stageId)  callParticipant,}) {final _that = this;
switch (_that) {
case _Tick():
return tick(_that.tick);case _Start():
return start(_that.stageId);case _Stop():
return stop();case _Beep():
return beep();case _CallParticipant():
return callParticipant(_that.stageId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Tick tick)?  tick,TResult? Function( int stageId)?  start,TResult? Function()?  stop,TResult? Function()?  beep,TResult? Function( int stageId)?  callParticipant,}) {final _that = this;
switch (_that) {
case _Tick() when tick != null:
return tick(_that.tick);case _Start() when start != null:
return start(_that.stageId);case _Stop() when stop != null:
return stop();case _Beep() when beep != null:
return beep();case _CallParticipant() when callParticipant != null:
return callParticipant(_that.stageId);case _:
  return null;

}
}

}

/// @nodoc


class _Tick implements CountdownEvent {
  const _Tick(this.tick);
  

 final  Tick tick;

/// Create a copy of CountdownEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TickCopyWith<_Tick> get copyWith => __$TickCopyWithImpl<_Tick>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tick&&(identical(other.tick, tick) || other.tick == tick));
}


@override
int get hashCode => Object.hash(runtimeType,tick);

@override
String toString() {
  return 'CountdownEvent.tick(tick: $tick)';
}


}

/// @nodoc
abstract mixin class _$TickCopyWith<$Res> implements $CountdownEventCopyWith<$Res> {
  factory _$TickCopyWith(_Tick value, $Res Function(_Tick) _then) = __$TickCopyWithImpl;
@useResult
$Res call({
 Tick tick
});




}
/// @nodoc
class __$TickCopyWithImpl<$Res>
    implements _$TickCopyWith<$Res> {
  __$TickCopyWithImpl(this._self, this._then);

  final _Tick _self;
  final $Res Function(_Tick) _then;

/// Create a copy of CountdownEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tick = null,}) {
  return _then(_Tick(
null == tick ? _self.tick : tick // ignore: cast_nullable_to_non_nullable
as Tick,
  ));
}


}

/// @nodoc


class _Start implements CountdownEvent {
  const _Start({required this.stageId});
  

 final  int stageId;

/// Create a copy of CountdownEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartCopyWith<_Start> get copyWith => __$StartCopyWithImpl<_Start>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Start&&(identical(other.stageId, stageId) || other.stageId == stageId));
}


@override
int get hashCode => Object.hash(runtimeType,stageId);

@override
String toString() {
  return 'CountdownEvent.start(stageId: $stageId)';
}


}

/// @nodoc
abstract mixin class _$StartCopyWith<$Res> implements $CountdownEventCopyWith<$Res> {
  factory _$StartCopyWith(_Start value, $Res Function(_Start) _then) = __$StartCopyWithImpl;
@useResult
$Res call({
 int stageId
});




}
/// @nodoc
class __$StartCopyWithImpl<$Res>
    implements _$StartCopyWith<$Res> {
  __$StartCopyWithImpl(this._self, this._then);

  final _Start _self;
  final $Res Function(_Start) _then;

/// Create a copy of CountdownEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,}) {
  return _then(_Start(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Stop implements CountdownEvent {
  const _Stop();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stop);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CountdownEvent.stop()';
}


}




/// @nodoc


class _Beep implements CountdownEvent {
  const _Beep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Beep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CountdownEvent.beep()';
}


}




/// @nodoc


class _CallParticipant implements CountdownEvent {
  const _CallParticipant({required this.stageId});
  

 final  int stageId;

/// Create a copy of CountdownEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CallParticipantCopyWith<_CallParticipant> get copyWith => __$CallParticipantCopyWithImpl<_CallParticipant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CallParticipant&&(identical(other.stageId, stageId) || other.stageId == stageId));
}


@override
int get hashCode => Object.hash(runtimeType,stageId);

@override
String toString() {
  return 'CountdownEvent.callParticipant(stageId: $stageId)';
}


}

/// @nodoc
abstract mixin class _$CallParticipantCopyWith<$Res> implements $CountdownEventCopyWith<$Res> {
  factory _$CallParticipantCopyWith(_CallParticipant value, $Res Function(_CallParticipant) _then) = __$CallParticipantCopyWithImpl;
@useResult
$Res call({
 int stageId
});




}
/// @nodoc
class __$CallParticipantCopyWithImpl<$Res>
    implements _$CallParticipantCopyWith<$Res> {
  __$CallParticipantCopyWithImpl(this._self, this._then);

  final _CallParticipant _self;
  final $Res Function(_CallParticipant) _then;

/// Create a copy of CountdownEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,}) {
  return _then(_CallParticipant(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CountdownState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountdownState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CountdownState()';
}


}

/// @nodoc
class $CountdownStateCopyWith<$Res>  {
$CountdownStateCopyWith(CountdownState _, $Res Function(CountdownState) __);
}


/// Adds pattern-matching-related methods to [CountdownState].
extension CountdownStatePatterns on CountdownState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CountdownStateInitial value)?  initial,TResult Function( CountdownStateWorking value)?  working,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CountdownStateInitial() when initial != null:
return initial(_that);case CountdownStateWorking() when working != null:
return working(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CountdownStateInitial value)  initial,required TResult Function( CountdownStateWorking value)  working,}){
final _that = this;
switch (_that) {
case CountdownStateInitial():
return initial(_that);case CountdownStateWorking():
return working(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CountdownStateInitial value)?  initial,TResult? Function( CountdownStateWorking value)?  working,}){
final _that = this;
switch (_that) {
case CountdownStateInitial() when initial != null:
return initial(_that);case CountdownStateWorking() when working != null:
return working(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( Tick tick)?  working,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CountdownStateInitial() when initial != null:
return initial();case CountdownStateWorking() when working != null:
return working(_that.tick);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( Tick tick)  working,}) {final _that = this;
switch (_that) {
case CountdownStateInitial():
return initial();case CountdownStateWorking():
return working(_that.tick);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( Tick tick)?  working,}) {final _that = this;
switch (_that) {
case CountdownStateInitial() when initial != null:
return initial();case CountdownStateWorking() when working != null:
return working(_that.tick);case _:
  return null;

}
}

}

/// @nodoc


class CountdownStateInitial implements CountdownState {
  const CountdownStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountdownStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CountdownState.initial()';
}


}




/// @nodoc


class CountdownStateWorking implements CountdownState {
  const CountdownStateWorking({required this.tick});
  

 final  Tick tick;

/// Create a copy of CountdownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountdownStateWorkingCopyWith<CountdownStateWorking> get copyWith => _$CountdownStateWorkingCopyWithImpl<CountdownStateWorking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountdownStateWorking&&(identical(other.tick, tick) || other.tick == tick));
}


@override
int get hashCode => Object.hash(runtimeType,tick);

@override
String toString() {
  return 'CountdownState.working(tick: $tick)';
}


}

/// @nodoc
abstract mixin class $CountdownStateWorkingCopyWith<$Res> implements $CountdownStateCopyWith<$Res> {
  factory $CountdownStateWorkingCopyWith(CountdownStateWorking value, $Res Function(CountdownStateWorking) _then) = _$CountdownStateWorkingCopyWithImpl;
@useResult
$Res call({
 Tick tick
});




}
/// @nodoc
class _$CountdownStateWorkingCopyWithImpl<$Res>
    implements $CountdownStateWorkingCopyWith<$Res> {
  _$CountdownStateWorkingCopyWithImpl(this._self, this._then);

  final CountdownStateWorking _self;
  final $Res Function(CountdownStateWorking) _then;

/// Create a copy of CountdownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tick = null,}) {
  return _then(CountdownStateWorking(
tick: null == tick ? _self.tick : tick // ignore: cast_nullable_to_non_nullable
as Tick,
  ));
}


}

// dart format on
