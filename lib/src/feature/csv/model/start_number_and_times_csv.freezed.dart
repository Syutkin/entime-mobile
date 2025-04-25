// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_number_and_times_csv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StartNumberAndTimesCsv {

 int get number; Map<String, String>? get startTimes;
/// Create a copy of StartNumberAndTimesCsv
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartNumberAndTimesCsvCopyWith<StartNumberAndTimesCsv> get copyWith => _$StartNumberAndTimesCsvCopyWithImpl<StartNumberAndTimesCsv>(this as StartNumberAndTimesCsv, _$identity);

  /// Serializes this StartNumberAndTimesCsv to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartNumberAndTimesCsv&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other.startTimes, startTimes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,const DeepCollectionEquality().hash(startTimes));

@override
String toString() {
  return 'StartNumberAndTimesCsv(number: $number, startTimes: $startTimes)';
}


}

/// @nodoc
abstract mixin class $StartNumberAndTimesCsvCopyWith<$Res>  {
  factory $StartNumberAndTimesCsvCopyWith(StartNumberAndTimesCsv value, $Res Function(StartNumberAndTimesCsv) _then) = _$StartNumberAndTimesCsvCopyWithImpl;
@useResult
$Res call({
 int number, Map<String, String>? startTimes
});




}
/// @nodoc
class _$StartNumberAndTimesCsvCopyWithImpl<$Res>
    implements $StartNumberAndTimesCsvCopyWith<$Res> {
  _$StartNumberAndTimesCsvCopyWithImpl(this._self, this._then);

  final StartNumberAndTimesCsv _self;
  final $Res Function(StartNumberAndTimesCsv) _then;

/// Create a copy of StartNumberAndTimesCsv
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? startTimes = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,startTimes: freezed == startTimes ? _self.startTimes : startTimes // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StartNumberAndTimesCsv implements StartNumberAndTimesCsv {
  const _StartNumberAndTimesCsv({required this.number, final  Map<String, String>? startTimes}): _startTimes = startTimes;
  factory _StartNumberAndTimesCsv.fromJson(Map<String, dynamic> json) => _$StartNumberAndTimesCsvFromJson(json);

@override final  int number;
 final  Map<String, String>? _startTimes;
@override Map<String, String>? get startTimes {
  final value = _startTimes;
  if (value == null) return null;
  if (_startTimes is EqualUnmodifiableMapView) return _startTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of StartNumberAndTimesCsv
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartNumberAndTimesCsvCopyWith<_StartNumberAndTimesCsv> get copyWith => __$StartNumberAndTimesCsvCopyWithImpl<_StartNumberAndTimesCsv>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StartNumberAndTimesCsvToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartNumberAndTimesCsv&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other._startTimes, _startTimes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,const DeepCollectionEquality().hash(_startTimes));

@override
String toString() {
  return 'StartNumberAndTimesCsv(number: $number, startTimes: $startTimes)';
}


}

/// @nodoc
abstract mixin class _$StartNumberAndTimesCsvCopyWith<$Res> implements $StartNumberAndTimesCsvCopyWith<$Res> {
  factory _$StartNumberAndTimesCsvCopyWith(_StartNumberAndTimesCsv value, $Res Function(_StartNumberAndTimesCsv) _then) = __$StartNumberAndTimesCsvCopyWithImpl;
@override @useResult
$Res call({
 int number, Map<String, String>? startTimes
});




}
/// @nodoc
class __$StartNumberAndTimesCsvCopyWithImpl<$Res>
    implements _$StartNumberAndTimesCsvCopyWith<$Res> {
  __$StartNumberAndTimesCsvCopyWithImpl(this._self, this._then);

  final _StartNumberAndTimesCsv _self;
  final $Res Function(_StartNumberAndTimesCsv) _then;

/// Create a copy of StartNumberAndTimesCsv
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? startTimes = freezed,}) {
  return _then(_StartNumberAndTimesCsv(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,startTimes: freezed == startTimes ? _self._startTimes : startTimes // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

// dart format on
