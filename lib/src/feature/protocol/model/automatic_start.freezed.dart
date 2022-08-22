// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'automatic_start.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AutomaticStart {
  String get time => throw _privateConstructorUsedError;
  int get correction => throw _privateConstructorUsedError;
  DateTime get timeStamp => throw _privateConstructorUsedError;
  bool get updating => throw _privateConstructorUsedError;
  set updating(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutomaticStartCopyWith<AutomaticStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutomaticStartCopyWith<$Res> {
  factory $AutomaticStartCopyWith(
          AutomaticStart value, $Res Function(AutomaticStart) then) =
      _$AutomaticStartCopyWithImpl<$Res>;
  $Res call({String time, int correction, DateTime timeStamp, bool updating});
}

/// @nodoc
class _$AutomaticStartCopyWithImpl<$Res>
    implements $AutomaticStartCopyWith<$Res> {
  _$AutomaticStartCopyWithImpl(this._value, this._then);

  final AutomaticStart _value;
  // ignore: unused_field
  final $Res Function(AutomaticStart) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? correction = freezed,
    Object? timeStamp = freezed,
    Object? updating = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      correction: correction == freezed
          ? _value.correction
          : correction // ignore: cast_nullable_to_non_nullable
              as int,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updating: updating == freezed
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AutomaticStartCopyWith<$Res>
    implements $AutomaticStartCopyWith<$Res> {
  factory _$$_AutomaticStartCopyWith(
          _$_AutomaticStart value, $Res Function(_$_AutomaticStart) then) =
      __$$_AutomaticStartCopyWithImpl<$Res>;
  @override
  $Res call({String time, int correction, DateTime timeStamp, bool updating});
}

/// @nodoc
class __$$_AutomaticStartCopyWithImpl<$Res>
    extends _$AutomaticStartCopyWithImpl<$Res>
    implements _$$_AutomaticStartCopyWith<$Res> {
  __$$_AutomaticStartCopyWithImpl(
      _$_AutomaticStart _value, $Res Function(_$_AutomaticStart) _then)
      : super(_value, (v) => _then(v as _$_AutomaticStart));

  @override
  _$_AutomaticStart get _value => super._value as _$_AutomaticStart;

  @override
  $Res call({
    Object? time = freezed,
    Object? correction = freezed,
    Object? timeStamp = freezed,
    Object? updating = freezed,
  }) {
    return _then(_$_AutomaticStart(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      correction == freezed
          ? _value.correction
          : correction // ignore: cast_nullable_to_non_nullable
              as int,
      timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updating: updating == freezed
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AutomaticStart implements _AutomaticStart {
  _$_AutomaticStart(this.time, this.correction, this.timeStamp,
      {this.updating = false});

  @override
  final String time;
  @override
  final int correction;
  @override
  final DateTime timeStamp;
  @override
  @JsonKey()
  bool updating;

  @override
  String toString() {
    return 'AutomaticStart(time: $time, correction: $correction, timeStamp: $timeStamp, updating: $updating)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_AutomaticStartCopyWith<_$_AutomaticStart> get copyWith =>
      __$$_AutomaticStartCopyWithImpl<_$_AutomaticStart>(this, _$identity);
}

abstract class _AutomaticStart implements AutomaticStart {
  factory _AutomaticStart(
      final String time, final int correction, final DateTime timeStamp,
      {bool updating}) = _$_AutomaticStart;

  @override
  String get time;
  @override
  int get correction;
  @override
  DateTime get timeStamp;
  @override
  bool get updating;
  set updating(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_AutomaticStartCopyWith<_$_AutomaticStart> get copyWith =>
      throw _privateConstructorUsedError;
}
