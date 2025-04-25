// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluetooth_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BluetoothMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothMessage()';
}


}

/// @nodoc
class $BluetoothMessageCopyWith<$Res>  {
$BluetoothMessageCopyWith(BluetoothMessage _, $Res Function(BluetoothMessage) __);
}


/// @nodoc


class BluetoothMessageAutomaticStart implements BluetoothMessage {
  const BluetoothMessageAutomaticStart({required this.automaticStart});
  

 final  AutomaticStart automaticStart;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothMessageAutomaticStartCopyWith<BluetoothMessageAutomaticStart> get copyWith => _$BluetoothMessageAutomaticStartCopyWithImpl<BluetoothMessageAutomaticStart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothMessageAutomaticStart&&(identical(other.automaticStart, automaticStart) || other.automaticStart == automaticStart));
}


@override
int get hashCode => Object.hash(runtimeType,automaticStart);

@override
String toString() {
  return 'BluetoothMessage.automaticStart(automaticStart: $automaticStart)';
}


}

/// @nodoc
abstract mixin class $BluetoothMessageAutomaticStartCopyWith<$Res> implements $BluetoothMessageCopyWith<$Res> {
  factory $BluetoothMessageAutomaticStartCopyWith(BluetoothMessageAutomaticStart value, $Res Function(BluetoothMessageAutomaticStart) _then) = _$BluetoothMessageAutomaticStartCopyWithImpl;
@useResult
$Res call({
 AutomaticStart automaticStart
});


$AutomaticStartCopyWith<$Res> get automaticStart;

}
/// @nodoc
class _$BluetoothMessageAutomaticStartCopyWithImpl<$Res>
    implements $BluetoothMessageAutomaticStartCopyWith<$Res> {
  _$BluetoothMessageAutomaticStartCopyWithImpl(this._self, this._then);

  final BluetoothMessageAutomaticStart _self;
  final $Res Function(BluetoothMessageAutomaticStart) _then;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? automaticStart = null,}) {
  return _then(BluetoothMessageAutomaticStart(
automaticStart: null == automaticStart ? _self.automaticStart : automaticStart // ignore: cast_nullable_to_non_nullable
as AutomaticStart,
  ));
}

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutomaticStartCopyWith<$Res> get automaticStart {
  
  return $AutomaticStartCopyWith<$Res>(_self.automaticStart, (value) {
    return _then(_self.copyWith(automaticStart: value));
  });
}
}

/// @nodoc


class BluetoothMessageFinish implements BluetoothMessage {
  const BluetoothMessageFinish({required this.time, required this.timestamp});
  

 final  String time;
 final  DateTime timestamp;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothMessageFinishCopyWith<BluetoothMessageFinish> get copyWith => _$BluetoothMessageFinishCopyWithImpl<BluetoothMessageFinish>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothMessageFinish&&(identical(other.time, time) || other.time == time)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,time,timestamp);

@override
String toString() {
  return 'BluetoothMessage.finish(time: $time, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $BluetoothMessageFinishCopyWith<$Res> implements $BluetoothMessageCopyWith<$Res> {
  factory $BluetoothMessageFinishCopyWith(BluetoothMessageFinish value, $Res Function(BluetoothMessageFinish) _then) = _$BluetoothMessageFinishCopyWithImpl;
@useResult
$Res call({
 String time, DateTime timestamp
});




}
/// @nodoc
class _$BluetoothMessageFinishCopyWithImpl<$Res>
    implements $BluetoothMessageFinishCopyWith<$Res> {
  _$BluetoothMessageFinishCopyWithImpl(this._self, this._then);

  final BluetoothMessageFinish _self;
  final $Res Function(BluetoothMessageFinish) _then;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,Object? timestamp = null,}) {
  return _then(BluetoothMessageFinish(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class BluetoothMessageCountdown implements BluetoothMessage {
  const BluetoothMessageCountdown({required this.time});
  

 final  String time;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothMessageCountdownCopyWith<BluetoothMessageCountdown> get copyWith => _$BluetoothMessageCountdownCopyWithImpl<BluetoothMessageCountdown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothMessageCountdown&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,time);

@override
String toString() {
  return 'BluetoothMessage.countdown(time: $time)';
}


}

/// @nodoc
abstract mixin class $BluetoothMessageCountdownCopyWith<$Res> implements $BluetoothMessageCopyWith<$Res> {
  factory $BluetoothMessageCountdownCopyWith(BluetoothMessageCountdown value, $Res Function(BluetoothMessageCountdown) _then) = _$BluetoothMessageCountdownCopyWithImpl;
@useResult
$Res call({
 String time
});




}
/// @nodoc
class _$BluetoothMessageCountdownCopyWithImpl<$Res>
    implements $BluetoothMessageCountdownCopyWith<$Res> {
  _$BluetoothMessageCountdownCopyWithImpl(this._self, this._then);

  final BluetoothMessageCountdown _self;
  final $Res Function(BluetoothMessageCountdown) _then;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,}) {
  return _then(BluetoothMessageCountdown(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BluetoothMessageVoice implements BluetoothMessage {
  const BluetoothMessageVoice({required this.time});
  

 final  String time;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothMessageVoiceCopyWith<BluetoothMessageVoice> get copyWith => _$BluetoothMessageVoiceCopyWithImpl<BluetoothMessageVoice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothMessageVoice&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,time);

@override
String toString() {
  return 'BluetoothMessage.voice(time: $time)';
}


}

/// @nodoc
abstract mixin class $BluetoothMessageVoiceCopyWith<$Res> implements $BluetoothMessageCopyWith<$Res> {
  factory $BluetoothMessageVoiceCopyWith(BluetoothMessageVoice value, $Res Function(BluetoothMessageVoice) _then) = _$BluetoothMessageVoiceCopyWithImpl;
@useResult
$Res call({
 String time
});




}
/// @nodoc
class _$BluetoothMessageVoiceCopyWithImpl<$Res>
    implements $BluetoothMessageVoiceCopyWith<$Res> {
  _$BluetoothMessageVoiceCopyWithImpl(this._self, this._then);

  final BluetoothMessageVoice _self;
  final $Res Function(BluetoothMessageVoice) _then;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,}) {
  return _then(BluetoothMessageVoice(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BluetoothMessageModuleSettings implements BluetoothMessage {
  const BluetoothMessageModuleSettings({required this.json});
  

 final  String json;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothMessageModuleSettingsCopyWith<BluetoothMessageModuleSettings> get copyWith => _$BluetoothMessageModuleSettingsCopyWithImpl<BluetoothMessageModuleSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothMessageModuleSettings&&(identical(other.json, json) || other.json == json));
}


@override
int get hashCode => Object.hash(runtimeType,json);

@override
String toString() {
  return 'BluetoothMessage.moduleSettings(json: $json)';
}


}

/// @nodoc
abstract mixin class $BluetoothMessageModuleSettingsCopyWith<$Res> implements $BluetoothMessageCopyWith<$Res> {
  factory $BluetoothMessageModuleSettingsCopyWith(BluetoothMessageModuleSettings value, $Res Function(BluetoothMessageModuleSettings) _then) = _$BluetoothMessageModuleSettingsCopyWithImpl;
@useResult
$Res call({
 String json
});




}
/// @nodoc
class _$BluetoothMessageModuleSettingsCopyWithImpl<$Res>
    implements $BluetoothMessageModuleSettingsCopyWith<$Res> {
  _$BluetoothMessageModuleSettingsCopyWithImpl(this._self, this._then);

  final BluetoothMessageModuleSettings _self;
  final $Res Function(BluetoothMessageModuleSettings) _then;

/// Create a copy of BluetoothMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? json = null,}) {
  return _then(BluetoothMessageModuleSettings(
json: null == json ? _self.json : json // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BluetoothMessageEmpty implements BluetoothMessage {
  const BluetoothMessageEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothMessageEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothMessage.empty()';
}


}




// dart format on
