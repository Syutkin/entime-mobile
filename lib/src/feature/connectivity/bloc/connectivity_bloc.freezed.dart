// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectivityEvent {

 bool get isConnected;
/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectivityEventCopyWith<ConnectivityEvent> get copyWith => _$ConnectivityEventCopyWithImpl<ConnectivityEvent>(this as ConnectivityEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityEvent&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectivityEvent(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class $ConnectivityEventCopyWith<$Res>  {
  factory $ConnectivityEventCopyWith(ConnectivityEvent value, $Res Function(ConnectivityEvent) _then) = _$ConnectivityEventCopyWithImpl;
@useResult
$Res call({
 bool isConnected
});




}
/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._self, this._then);

  final ConnectivityEvent _self;
  final $Res Function(ConnectivityEvent) _then;

/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isConnected = null,}) {
  return _then(_self.copyWith(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Emit implements ConnectivityEvent {
  const _Emit({required this.isConnected});
  

@override final  bool isConnected;

/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitCopyWith<_Emit> get copyWith => __$EmitCopyWithImpl<_Emit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Emit&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectivityEvent.emit(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class _$EmitCopyWith<$Res> implements $ConnectivityEventCopyWith<$Res> {
  factory _$EmitCopyWith(_Emit value, $Res Function(_Emit) _then) = __$EmitCopyWithImpl;
@override @useResult
$Res call({
 bool isConnected
});




}
/// @nodoc
class __$EmitCopyWithImpl<$Res>
    implements _$EmitCopyWith<$Res> {
  __$EmitCopyWithImpl(this._self, this._then);

  final _Emit _self;
  final $Res Function(_Emit) _then;

/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isConnected = null,}) {
  return _then(_Emit(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ConnectivityState {

 bool get isConnected;
/// Create a copy of ConnectivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectivityStateCopyWith<ConnectivityState> get copyWith => _$ConnectivityStateCopyWithImpl<ConnectivityState>(this as ConnectivityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityState&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectivityState(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class $ConnectivityStateCopyWith<$Res>  {
  factory $ConnectivityStateCopyWith(ConnectivityState value, $Res Function(ConnectivityState) _then) = _$ConnectivityStateCopyWithImpl;
@useResult
$Res call({
 bool isConnected
});




}
/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._self, this._then);

  final ConnectivityState _self;
  final $Res Function(ConnectivityState) _then;

/// Create a copy of ConnectivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isConnected = null,}) {
  return _then(_self.copyWith(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class State implements ConnectivityState {
  const State({required this.isConnected});
  

@override final  bool isConnected;

/// Create a copy of ConnectivityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateCopyWith<State> get copyWith => _$StateCopyWithImpl<State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is State&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectivityState.state(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class $StateCopyWith<$Res> implements $ConnectivityStateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) _then) = _$StateCopyWithImpl;
@override @useResult
$Res call({
 bool isConnected
});




}
/// @nodoc
class _$StateCopyWithImpl<$Res>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._self, this._then);

  final State _self;
  final $Res Function(State) _then;

/// Create a copy of ConnectivityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isConnected = null,}) {
  return _then(State(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
