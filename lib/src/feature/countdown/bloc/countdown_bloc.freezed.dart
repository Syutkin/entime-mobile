// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
