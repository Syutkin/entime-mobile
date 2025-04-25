// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ntp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NtpEvent {

 String? get lookUpAddress; int? get port; Duration? get timeout; Duration? get cacheDuration;
/// Create a copy of NtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NtpEventCopyWith<NtpEvent> get copyWith => _$NtpEventCopyWithImpl<NtpEvent>(this as NtpEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NtpEvent&&(identical(other.lookUpAddress, lookUpAddress) || other.lookUpAddress == lookUpAddress)&&(identical(other.port, port) || other.port == port)&&(identical(other.timeout, timeout) || other.timeout == timeout)&&(identical(other.cacheDuration, cacheDuration) || other.cacheDuration == cacheDuration));
}


@override
int get hashCode => Object.hash(runtimeType,lookUpAddress,port,timeout,cacheDuration);

@override
String toString() {
  return 'NtpEvent(lookUpAddress: $lookUpAddress, port: $port, timeout: $timeout, cacheDuration: $cacheDuration)';
}


}

/// @nodoc
abstract mixin class $NtpEventCopyWith<$Res>  {
  factory $NtpEventCopyWith(NtpEvent value, $Res Function(NtpEvent) _then) = _$NtpEventCopyWithImpl;
@useResult
$Res call({
 String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration
});




}
/// @nodoc
class _$NtpEventCopyWithImpl<$Res>
    implements $NtpEventCopyWith<$Res> {
  _$NtpEventCopyWithImpl(this._self, this._then);

  final NtpEvent _self;
  final $Res Function(NtpEvent) _then;

/// Create a copy of NtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lookUpAddress = freezed,Object? port = freezed,Object? timeout = freezed,Object? cacheDuration = freezed,}) {
  return _then(_self.copyWith(
lookUpAddress: freezed == lookUpAddress ? _self.lookUpAddress : lookUpAddress // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,timeout: freezed == timeout ? _self.timeout : timeout // ignore: cast_nullable_to_non_nullable
as Duration?,cacheDuration: freezed == cacheDuration ? _self.cacheDuration : cacheDuration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}

}


/// @nodoc


class _GetNtpOffset implements NtpEvent {
  const _GetNtpOffset({this.lookUpAddress, this.port, this.timeout, this.cacheDuration});
  

@override final  String? lookUpAddress;
@override final  int? port;
@override final  Duration? timeout;
@override final  Duration? cacheDuration;

/// Create a copy of NtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetNtpOffsetCopyWith<_GetNtpOffset> get copyWith => __$GetNtpOffsetCopyWithImpl<_GetNtpOffset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetNtpOffset&&(identical(other.lookUpAddress, lookUpAddress) || other.lookUpAddress == lookUpAddress)&&(identical(other.port, port) || other.port == port)&&(identical(other.timeout, timeout) || other.timeout == timeout)&&(identical(other.cacheDuration, cacheDuration) || other.cacheDuration == cacheDuration));
}


@override
int get hashCode => Object.hash(runtimeType,lookUpAddress,port,timeout,cacheDuration);

@override
String toString() {
  return 'NtpEvent.getNtpOffset(lookUpAddress: $lookUpAddress, port: $port, timeout: $timeout, cacheDuration: $cacheDuration)';
}


}

/// @nodoc
abstract mixin class _$GetNtpOffsetCopyWith<$Res> implements $NtpEventCopyWith<$Res> {
  factory _$GetNtpOffsetCopyWith(_GetNtpOffset value, $Res Function(_GetNtpOffset) _then) = __$GetNtpOffsetCopyWithImpl;
@override @useResult
$Res call({
 String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration
});




}
/// @nodoc
class __$GetNtpOffsetCopyWithImpl<$Res>
    implements _$GetNtpOffsetCopyWith<$Res> {
  __$GetNtpOffsetCopyWithImpl(this._self, this._then);

  final _GetNtpOffset _self;
  final $Res Function(_GetNtpOffset) _then;

/// Create a copy of NtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lookUpAddress = freezed,Object? port = freezed,Object? timeout = freezed,Object? cacheDuration = freezed,}) {
  return _then(_GetNtpOffset(
lookUpAddress: freezed == lookUpAddress ? _self.lookUpAddress : lookUpAddress // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,timeout: freezed == timeout ? _self.timeout : timeout // ignore: cast_nullable_to_non_nullable
as Duration?,cacheDuration: freezed == cacheDuration ? _self.cacheDuration : cacheDuration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}


}

/// @nodoc
mixin _$NtpState {

 int get offset;
/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NtpStateCopyWith<NtpState> get copyWith => _$NtpStateCopyWithImpl<NtpState>(this as NtpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NtpState&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'NtpState(offset: $offset)';
}


}

/// @nodoc
abstract mixin class $NtpStateCopyWith<$Res>  {
  factory $NtpStateCopyWith(NtpState value, $Res Function(NtpState) _then) = _$NtpStateCopyWithImpl;
@useResult
$Res call({
 int offset
});




}
/// @nodoc
class _$NtpStateCopyWithImpl<$Res>
    implements $NtpStateCopyWith<$Res> {
  _$NtpStateCopyWithImpl(this._self, this._then);

  final NtpState _self;
  final $Res Function(NtpState) _then;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class Initial implements NtpState {
  const Initial(this.offset);
  

@override final  int offset;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitialCopyWith<Initial> get copyWith => _$InitialCopyWithImpl<Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'NtpState.initial(offset: $offset)';
}


}

/// @nodoc
abstract mixin class $InitialCopyWith<$Res> implements $NtpStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) _then) = _$InitialCopyWithImpl;
@override @useResult
$Res call({
 int offset
});




}
/// @nodoc
class _$InitialCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(this._self, this._then);

  final Initial _self;
  final $Res Function(Initial) _then;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(Initial(
null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Loading implements NtpState {
  const Loading(this.offset);
  

@override final  int offset;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<Loading> get copyWith => _$LoadingCopyWithImpl<Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'NtpState.loading(offset: $offset)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<$Res> implements $NtpStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 int offset
});




}
/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading _self;
  final $Res Function(Loading) _then;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(Loading(
null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Success implements NtpState {
  const Success(this.offset);
  

@override final  int offset;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'NtpState.success(offset: $offset)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $NtpStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@override @useResult
$Res call({
 int offset
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(Success(
null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Failure implements NtpState {
  const Failure(this.offset);
  

@override final  int offset;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,offset);

@override
String toString() {
  return 'NtpState.failure(offset: $offset)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $NtpStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 int offset
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of NtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,}) {
  return _then(Failure(
null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
