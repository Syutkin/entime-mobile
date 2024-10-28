// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_item_csv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartItemCsv _$StartItemCsvFromJson(Map<String, dynamic> json) {
  return _StartItemCsv.fromJson(json);
}

/// @nodoc
mixin _$StartItemCsv {
  String? get category => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get team => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  Map<String, String>? get startTimes => throw _privateConstructorUsedError;

  /// Serializes this StartItemCsv to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StartItemCsv
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartItemCsvCopyWith<StartItemCsv> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartItemCsvCopyWith<$Res> {
  factory $StartItemCsvCopyWith(
          StartItemCsv value, $Res Function(StartItemCsv) then) =
      _$StartItemCsvCopyWithImpl<$Res, StartItemCsv>;
  @useResult
  $Res call(
      {String? category,
      int number,
      String name,
      String? nickname,
      String? age,
      String? team,
      String? city,
      Map<String, String>? startTimes});
}

/// @nodoc
class _$StartItemCsvCopyWithImpl<$Res, $Val extends StartItemCsv>
    implements $StartItemCsvCopyWith<$Res> {
  _$StartItemCsvCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartItemCsv
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? number = null,
    Object? name = null,
    Object? nickname = freezed,
    Object? age = freezed,
    Object? team = freezed,
    Object? city = freezed,
    Object? startTimes = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      startTimes: freezed == startTimes
          ? _value.startTimes
          : startTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartItemCsvImplCopyWith<$Res>
    implements $StartItemCsvCopyWith<$Res> {
  factory _$$StartItemCsvImplCopyWith(
          _$StartItemCsvImpl value, $Res Function(_$StartItemCsvImpl) then) =
      __$$StartItemCsvImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? category,
      int number,
      String name,
      String? nickname,
      String? age,
      String? team,
      String? city,
      Map<String, String>? startTimes});
}

/// @nodoc
class __$$StartItemCsvImplCopyWithImpl<$Res>
    extends _$StartItemCsvCopyWithImpl<$Res, _$StartItemCsvImpl>
    implements _$$StartItemCsvImplCopyWith<$Res> {
  __$$StartItemCsvImplCopyWithImpl(
      _$StartItemCsvImpl _value, $Res Function(_$StartItemCsvImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartItemCsv
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? number = null,
    Object? name = null,
    Object? nickname = freezed,
    Object? age = freezed,
    Object? team = freezed,
    Object? city = freezed,
    Object? startTimes = freezed,
  }) {
    return _then(_$StartItemCsvImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      startTimes: freezed == startTimes
          ? _value._startTimes
          : startTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartItemCsvImpl implements _StartItemCsv {
  const _$StartItemCsvImpl(
      {this.category,
      required this.number,
      required this.name,
      this.nickname,
      this.age,
      this.team,
      this.city,
      final Map<String, String>? startTimes})
      : _startTimes = startTimes;

  factory _$StartItemCsvImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartItemCsvImplFromJson(json);

  @override
  final String? category;
  @override
  final int number;
  @override
  final String name;
  @override
  final String? nickname;
  @override
  final String? age;
  @override
  final String? team;
  @override
  final String? city;
  final Map<String, String>? _startTimes;
  @override
  Map<String, String>? get startTimes {
    final value = _startTimes;
    if (value == null) return null;
    if (_startTimes is EqualUnmodifiableMapView) return _startTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StartItemCsv(category: $category, number: $number, name: $name, nickname: $nickname, age: $age, team: $team, city: $city, startTimes: $startTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartItemCsvImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality()
                .equals(other._startTimes, _startTimes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, number, name, nickname,
      age, team, city, const DeepCollectionEquality().hash(_startTimes));

  /// Create a copy of StartItemCsv
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartItemCsvImplCopyWith<_$StartItemCsvImpl> get copyWith =>
      __$$StartItemCsvImplCopyWithImpl<_$StartItemCsvImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartItemCsvImplToJson(
      this,
    );
  }
}

abstract class _StartItemCsv implements StartItemCsv {
  const factory _StartItemCsv(
      {final String? category,
      required final int number,
      required final String name,
      final String? nickname,
      final String? age,
      final String? team,
      final String? city,
      final Map<String, String>? startTimes}) = _$StartItemCsvImpl;

  factory _StartItemCsv.fromJson(Map<String, dynamic> json) =
      _$StartItemCsvImpl.fromJson;

  @override
  String? get category;
  @override
  int get number;
  @override
  String get name;
  @override
  String? get nickname;
  @override
  String? get age;
  @override
  String? get team;
  @override
  String? get city;
  @override
  Map<String, String>? get startTimes;

  /// Create a copy of StartItemCsv
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartItemCsvImplCopyWith<_$StartItemCsvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
