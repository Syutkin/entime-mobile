// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_item_csv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StartItemCsv {

 int get number; String get name; String? get category; String? get nickname; String? get birthday; String? get team; String? get city; String? get phone; String? get email; String? get comment; Map<String, String>? get startTimes;
/// Create a copy of StartItemCsv
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartItemCsvCopyWith<StartItemCsv> get copyWith => _$StartItemCsvCopyWithImpl<StartItemCsv>(this as StartItemCsv, _$identity);

  /// Serializes this StartItemCsv to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartItemCsv&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.team, team) || other.team == team)&&(identical(other.city, city) || other.city == city)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.startTimes, startTimes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,category,nickname,birthday,team,city,phone,email,comment,const DeepCollectionEquality().hash(startTimes));

@override
String toString() {
  return 'StartItemCsv(number: $number, name: $name, category: $category, nickname: $nickname, birthday: $birthday, team: $team, city: $city, phone: $phone, email: $email, comment: $comment, startTimes: $startTimes)';
}


}

/// @nodoc
abstract mixin class $StartItemCsvCopyWith<$Res>  {
  factory $StartItemCsvCopyWith(StartItemCsv value, $Res Function(StartItemCsv) _then) = _$StartItemCsvCopyWithImpl;
@useResult
$Res call({
 int number, String name, String? category, String? nickname, String? birthday, String? team, String? city, String? phone, String? email, String? comment, Map<String, String>? startTimes
});




}
/// @nodoc
class _$StartItemCsvCopyWithImpl<$Res>
    implements $StartItemCsvCopyWith<$Res> {
  _$StartItemCsvCopyWithImpl(this._self, this._then);

  final StartItemCsv _self;
  final $Res Function(StartItemCsv) _then;

/// Create a copy of StartItemCsv
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? name = null,Object? category = freezed,Object? nickname = freezed,Object? birthday = freezed,Object? team = freezed,Object? city = freezed,Object? phone = freezed,Object? email = freezed,Object? comment = freezed,Object? startTimes = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,team: freezed == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,startTimes: freezed == startTimes ? _self.startTimes : startTimes // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [StartItemCsv].
extension StartItemCsvPatterns on StartItemCsv {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartItemCsv value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartItemCsv() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartItemCsv value)  $default,){
final _that = this;
switch (_that) {
case _StartItemCsv():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartItemCsv value)?  $default,){
final _that = this;
switch (_that) {
case _StartItemCsv() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  String name,  String? category,  String? nickname,  String? birthday,  String? team,  String? city,  String? phone,  String? email,  String? comment,  Map<String, String>? startTimes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartItemCsv() when $default != null:
return $default(_that.number,_that.name,_that.category,_that.nickname,_that.birthday,_that.team,_that.city,_that.phone,_that.email,_that.comment,_that.startTimes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  String name,  String? category,  String? nickname,  String? birthday,  String? team,  String? city,  String? phone,  String? email,  String? comment,  Map<String, String>? startTimes)  $default,) {final _that = this;
switch (_that) {
case _StartItemCsv():
return $default(_that.number,_that.name,_that.category,_that.nickname,_that.birthday,_that.team,_that.city,_that.phone,_that.email,_that.comment,_that.startTimes);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  String name,  String? category,  String? nickname,  String? birthday,  String? team,  String? city,  String? phone,  String? email,  String? comment,  Map<String, String>? startTimes)?  $default,) {final _that = this;
switch (_that) {
case _StartItemCsv() when $default != null:
return $default(_that.number,_that.name,_that.category,_that.nickname,_that.birthday,_that.team,_that.city,_that.phone,_that.email,_that.comment,_that.startTimes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StartItemCsv implements StartItemCsv {
  const _StartItemCsv({required this.number, required this.name, this.category, this.nickname, this.birthday, this.team, this.city, this.phone, this.email, this.comment, final  Map<String, String>? startTimes}): _startTimes = startTimes;
  factory _StartItemCsv.fromJson(Map<String, dynamic> json) => _$StartItemCsvFromJson(json);

@override final  int number;
@override final  String name;
@override final  String? category;
@override final  String? nickname;
@override final  String? birthday;
@override final  String? team;
@override final  String? city;
@override final  String? phone;
@override final  String? email;
@override final  String? comment;
 final  Map<String, String>? _startTimes;
@override Map<String, String>? get startTimes {
  final value = _startTimes;
  if (value == null) return null;
  if (_startTimes is EqualUnmodifiableMapView) return _startTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of StartItemCsv
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartItemCsvCopyWith<_StartItemCsv> get copyWith => __$StartItemCsvCopyWithImpl<_StartItemCsv>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StartItemCsvToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartItemCsv&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.team, team) || other.team == team)&&(identical(other.city, city) || other.city == city)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other._startTimes, _startTimes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,category,nickname,birthday,team,city,phone,email,comment,const DeepCollectionEquality().hash(_startTimes));

@override
String toString() {
  return 'StartItemCsv(number: $number, name: $name, category: $category, nickname: $nickname, birthday: $birthday, team: $team, city: $city, phone: $phone, email: $email, comment: $comment, startTimes: $startTimes)';
}


}

/// @nodoc
abstract mixin class _$StartItemCsvCopyWith<$Res> implements $StartItemCsvCopyWith<$Res> {
  factory _$StartItemCsvCopyWith(_StartItemCsv value, $Res Function(_StartItemCsv) _then) = __$StartItemCsvCopyWithImpl;
@override @useResult
$Res call({
 int number, String name, String? category, String? nickname, String? birthday, String? team, String? city, String? phone, String? email, String? comment, Map<String, String>? startTimes
});




}
/// @nodoc
class __$StartItemCsvCopyWithImpl<$Res>
    implements _$StartItemCsvCopyWith<$Res> {
  __$StartItemCsvCopyWithImpl(this._self, this._then);

  final _StartItemCsv _self;
  final $Res Function(_StartItemCsv) _then;

/// Create a copy of StartItemCsv
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? name = null,Object? category = freezed,Object? nickname = freezed,Object? birthday = freezed,Object? team = freezed,Object? city = freezed,Object? phone = freezed,Object? email = freezed,Object? comment = freezed,Object? startTimes = freezed,}) {
  return _then(_StartItemCsv(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,team: freezed == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,startTimes: freezed == startTimes ? _self._startTimes : startTimes // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

// dart format on
