// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AudioEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioEvent()';
}


}

/// @nodoc
class $AudioEventCopyWith<$Res>  {
$AudioEventCopyWith(AudioEvent _, $Res Function(AudioEvent) __);
}


/// @nodoc


class _Init implements AudioEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioEvent.init()';
}


}




/// @nodoc
mixin _$AudioState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioState()';
}


}

/// @nodoc
class $AudioStateCopyWith<$Res>  {
$AudioStateCopyWith(AudioState _, $Res Function(AudioState) __);
}


/// @nodoc


class AudioStateInitial implements AudioState {
  const AudioStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioState.initial()';
}


}




/// @nodoc


class AudioStateInitialized implements AudioState {
  const AudioStateInitialized({this.engine, this.voice});
  

 final  String? engine;
 final  String? voice;

/// Create a copy of AudioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioStateInitializedCopyWith<AudioStateInitialized> get copyWith => _$AudioStateInitializedCopyWithImpl<AudioStateInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioStateInitialized&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.voice, voice) || other.voice == voice));
}


@override
int get hashCode => Object.hash(runtimeType,engine,voice);

@override
String toString() {
  return 'AudioState.initialized(engine: $engine, voice: $voice)';
}


}

/// @nodoc
abstract mixin class $AudioStateInitializedCopyWith<$Res> implements $AudioStateCopyWith<$Res> {
  factory $AudioStateInitializedCopyWith(AudioStateInitialized value, $Res Function(AudioStateInitialized) _then) = _$AudioStateInitializedCopyWithImpl;
@useResult
$Res call({
 String? engine, String? voice
});




}
/// @nodoc
class _$AudioStateInitializedCopyWithImpl<$Res>
    implements $AudioStateInitializedCopyWith<$Res> {
  _$AudioStateInitializedCopyWithImpl(this._self, this._then);

  final AudioStateInitialized _self;
  final $Res Function(AudioStateInitialized) _then;

/// Create a copy of AudioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? engine = freezed,Object? voice = freezed,}) {
  return _then(AudioStateInitialized(
engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as String?,voice: freezed == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
