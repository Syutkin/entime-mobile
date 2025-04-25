// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'automatic_start.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AutomaticStart {

 String get time; set time(String value); int get correction; set correction(int value); DateTime get timestamp; set timestamp(DateTime value); bool get updating; set updating(bool value);
/// Create a copy of AutomaticStart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutomaticStartCopyWith<AutomaticStart> get copyWith => _$AutomaticStartCopyWithImpl<AutomaticStart>(this as AutomaticStart, _$identity);





@override
String toString() {
  return 'AutomaticStart(time: $time, correction: $correction, timestamp: $timestamp, updating: $updating)';
}


}

/// @nodoc
abstract mixin class $AutomaticStartCopyWith<$Res>  {
  factory $AutomaticStartCopyWith(AutomaticStart value, $Res Function(AutomaticStart) _then) = _$AutomaticStartCopyWithImpl;
@useResult
$Res call({
 String time, int correction, DateTime timestamp, bool updating
});




}
/// @nodoc
class _$AutomaticStartCopyWithImpl<$Res>
    implements $AutomaticStartCopyWith<$Res> {
  _$AutomaticStartCopyWithImpl(this._self, this._then);

  final AutomaticStart _self;
  final $Res Function(AutomaticStart) _then;

/// Create a copy of AutomaticStart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? correction = null,Object? timestamp = null,Object? updating = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,updating: null == updating ? _self.updating : updating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AutomaticStart implements AutomaticStart {
   _AutomaticStart(this.time, this.correction, this.timestamp, {this.updating = false});
  

@override  String time;
@override  int correction;
@override  DateTime timestamp;
@override@JsonKey()  bool updating;

/// Create a copy of AutomaticStart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutomaticStartCopyWith<_AutomaticStart> get copyWith => __$AutomaticStartCopyWithImpl<_AutomaticStart>(this, _$identity);





@override
String toString() {
  return 'AutomaticStart(time: $time, correction: $correction, timestamp: $timestamp, updating: $updating)';
}


}

/// @nodoc
abstract mixin class _$AutomaticStartCopyWith<$Res> implements $AutomaticStartCopyWith<$Res> {
  factory _$AutomaticStartCopyWith(_AutomaticStart value, $Res Function(_AutomaticStart) _then) = __$AutomaticStartCopyWithImpl;
@override @useResult
$Res call({
 String time, int correction, DateTime timestamp, bool updating
});




}
/// @nodoc
class __$AutomaticStartCopyWithImpl<$Res>
    implements _$AutomaticStartCopyWith<$Res> {
  __$AutomaticStartCopyWithImpl(this._self, this._then);

  final _AutomaticStart _self;
  final $Res Function(_AutomaticStart) _then;

/// Create a copy of AutomaticStart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? correction = null,Object? timestamp = null,Object? updating = null,}) {
  return _then(_AutomaticStart(
null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as int,null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,updating: null == updating ? _self.updating : updating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
