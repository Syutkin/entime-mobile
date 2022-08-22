// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'start_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartTime {
  String get time => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartTimeCopyWith<StartTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTimeCopyWith<$Res> {
  factory $StartTimeCopyWith(StartTime value, $Res Function(StartTime) then) =
      _$StartTimeCopyWithImpl<$Res>;
  $Res call({String time, int number});
}

/// @nodoc
class _$StartTimeCopyWithImpl<$Res> implements $StartTimeCopyWith<$Res> {
  _$StartTimeCopyWithImpl(this._value, this._then);

  final StartTime _value;
  // ignore: unused_field
  final $Res Function(StartTime) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_StartTimeCopyWith<$Res> implements $StartTimeCopyWith<$Res> {
  factory _$$_StartTimeCopyWith(
          _$_StartTime value, $Res Function(_$_StartTime) then) =
      __$$_StartTimeCopyWithImpl<$Res>;
  @override
  $Res call({String time, int number});
}

/// @nodoc
class __$$_StartTimeCopyWithImpl<$Res> extends _$StartTimeCopyWithImpl<$Res>
    implements _$$_StartTimeCopyWith<$Res> {
  __$$_StartTimeCopyWithImpl(
      _$_StartTime _value, $Res Function(_$_StartTime) _then)
      : super(_value, (v) => _then(v as _$_StartTime));

  @override
  _$_StartTime get _value => super._value as _$_StartTime;

  @override
  $Res call({
    Object? time = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_StartTime(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StartTime implements _StartTime {
  const _$_StartTime(this.time, this.number);

  @override
  final String time;
  @override
  final int number;

  @override
  String toString() {
    return 'StartTime(time: $time, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartTime &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_StartTimeCopyWith<_$_StartTime> get copyWith =>
      __$$_StartTimeCopyWithImpl<_$_StartTime>(this, _$identity);
}

abstract class _StartTime implements StartTime {
  const factory _StartTime(final String time, final int number) = _$_StartTime;

  @override
  String get time;
  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$_StartTimeCopyWith<_$_StartTime> get copyWith =>
      throw _privateConstructorUsedError;
}
