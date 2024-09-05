// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartTime {
  String get time => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  /// Create a copy of StartTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartTimeCopyWith<StartTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTimeCopyWith<$Res> {
  factory $StartTimeCopyWith(StartTime value, $Res Function(StartTime) then) =
      _$StartTimeCopyWithImpl<$Res, StartTime>;
  @useResult
  $Res call({String time, int number});
}

/// @nodoc
class _$StartTimeCopyWithImpl<$Res, $Val extends StartTime>
    implements $StartTimeCopyWith<$Res> {
  _$StartTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartTimeImplCopyWith<$Res>
    implements $StartTimeCopyWith<$Res> {
  factory _$$StartTimeImplCopyWith(
          _$StartTimeImpl value, $Res Function(_$StartTimeImpl) then) =
      __$$StartTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time, int number});
}

/// @nodoc
class __$$StartTimeImplCopyWithImpl<$Res>
    extends _$StartTimeCopyWithImpl<$Res, _$StartTimeImpl>
    implements _$$StartTimeImplCopyWith<$Res> {
  __$$StartTimeImplCopyWithImpl(
      _$StartTimeImpl _value, $Res Function(_$StartTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? number = null,
  }) {
    return _then(_$StartTimeImpl(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartTimeImpl implements _StartTime {
  const _$StartTimeImpl(this.time, this.number);

  @override
  final String time;
  @override
  final int number;

  @override
  String toString() {
    return 'StartTime(time: $time, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTimeImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, number);

  /// Create a copy of StartTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTimeImplCopyWith<_$StartTimeImpl> get copyWith =>
      __$$StartTimeImplCopyWithImpl<_$StartTimeImpl>(this, _$identity);
}

abstract class _StartTime implements StartTime {
  const factory _StartTime(final String time, final int number) =
      _$StartTimeImpl;

  @override
  String get time;
  @override
  int get number;

  /// Create a copy of StartTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartTimeImplCopyWith<_$StartTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
