// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'start_protocol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartItemCsv _$StartItemCsvFromJson(Map<String, dynamic> json) {
  return _StartItemCsv.fromJson(json);
}

/// @nodoc
mixin _$StartItemCsv {
  String? get category => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get team => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get starttime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartItemCsvCopyWith<StartItemCsv> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartItemCsvCopyWith<$Res> {
  factory $StartItemCsvCopyWith(
          StartItemCsv value, $Res Function(StartItemCsv) then) =
      _$StartItemCsvCopyWithImpl<$Res>;
  $Res call(
      {String? category,
      int number,
      String? name,
      String? nickname,
      String? age,
      String? team,
      String? city,
      String? starttime});
}

/// @nodoc
class _$StartItemCsvCopyWithImpl<$Res> implements $StartItemCsvCopyWith<$Res> {
  _$StartItemCsvCopyWithImpl(this._value, this._then);

  final StartItemCsv _value;
  // ignore: unused_field
  final $Res Function(StartItemCsv) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? number = freezed,
    Object? name = freezed,
    Object? nickname = freezed,
    Object? age = freezed,
    Object? team = freezed,
    Object? city = freezed,
    Object? starttime = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      team: team == freezed
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      starttime: starttime == freezed
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StartItemCsvCopyWith<$Res>
    implements $StartItemCsvCopyWith<$Res> {
  factory _$$_StartItemCsvCopyWith(
          _$_StartItemCsv value, $Res Function(_$_StartItemCsv) then) =
      __$$_StartItemCsvCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? category,
      int number,
      String? name,
      String? nickname,
      String? age,
      String? team,
      String? city,
      String? starttime});
}

/// @nodoc
class __$$_StartItemCsvCopyWithImpl<$Res>
    extends _$StartItemCsvCopyWithImpl<$Res>
    implements _$$_StartItemCsvCopyWith<$Res> {
  __$$_StartItemCsvCopyWithImpl(
      _$_StartItemCsv _value, $Res Function(_$_StartItemCsv) _then)
      : super(_value, (v) => _then(v as _$_StartItemCsv));

  @override
  _$_StartItemCsv get _value => super._value as _$_StartItemCsv;

  @override
  $Res call({
    Object? category = freezed,
    Object? number = freezed,
    Object? name = freezed,
    Object? nickname = freezed,
    Object? age = freezed,
    Object? team = freezed,
    Object? city = freezed,
    Object? starttime = freezed,
  }) {
    return _then(_$_StartItemCsv(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      team: team == freezed
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      starttime: starttime == freezed
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartItemCsv implements _StartItemCsv {
  const _$_StartItemCsv(
      {this.category,
      required this.number,
      this.name,
      this.nickname,
      this.age,
      this.team,
      this.city,
      this.starttime});

  factory _$_StartItemCsv.fromJson(Map<String, dynamic> json) =>
      _$$_StartItemCsvFromJson(json);

  @override
  final String? category;
  @override
  final int number;
  @override
  final String? name;
  @override
  final String? nickname;
  @override
  final String? age;
  @override
  final String? team;
  @override
  final String? city;
  @override
  final String? starttime;

  @override
  String toString() {
    return 'StartItemCsv(category: $category, number: $number, name: $name, nickname: $nickname, age: $age, team: $team, city: $city, starttime: $starttime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartItemCsv &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.team, team) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.starttime, starttime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(team),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(starttime));

  @JsonKey(ignore: true)
  @override
  _$$_StartItemCsvCopyWith<_$_StartItemCsv> get copyWith =>
      __$$_StartItemCsvCopyWithImpl<_$_StartItemCsv>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartItemCsvToJson(
      this,
    );
  }
}

abstract class _StartItemCsv implements StartItemCsv {
  const factory _StartItemCsv(
      {final String? category,
      required final int number,
      final String? name,
      final String? nickname,
      final String? age,
      final String? team,
      final String? city,
      final String? starttime}) = _$_StartItemCsv;

  factory _StartItemCsv.fromJson(Map<String, dynamic> json) =
      _$_StartItemCsv.fromJson;

  @override
  String? get category;
  @override
  int get number;
  @override
  String? get name;
  @override
  String? get nickname;
  @override
  String? get age;
  @override
  String? get team;
  @override
  String? get city;
  @override
  String? get starttime;
  @override
  @JsonKey(ignore: true)
  _$$_StartItemCsvCopyWith<_$_StartItemCsv> get copyWith =>
      throw _privateConstructorUsedError;
}
