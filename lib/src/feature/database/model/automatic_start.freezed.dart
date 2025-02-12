// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'automatic_start.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AutomaticStart {
  String get time => throw _privateConstructorUsedError;
  set time(String value) => throw _privateConstructorUsedError;
  int get correction => throw _privateConstructorUsedError;
  set correction(int value) => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  set timestamp(DateTime value) => throw _privateConstructorUsedError;
  bool get updating => throw _privateConstructorUsedError;
  set updating(bool value) => throw _privateConstructorUsedError;

  /// Create a copy of AutomaticStart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutomaticStartCopyWith<AutomaticStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutomaticStartCopyWith<$Res> {
  factory $AutomaticStartCopyWith(
    AutomaticStart value,
    $Res Function(AutomaticStart) then,
  ) = _$AutomaticStartCopyWithImpl<$Res, AutomaticStart>;
  @useResult
  $Res call({String time, int correction, DateTime timestamp, bool updating});
}

/// @nodoc
class _$AutomaticStartCopyWithImpl<$Res, $Val extends AutomaticStart>
    implements $AutomaticStartCopyWith<$Res> {
  _$AutomaticStartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutomaticStart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? correction = null,
    Object? timestamp = null,
    Object? updating = null,
  }) {
    return _then(
      _value.copyWith(
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as String,
            correction:
                null == correction
                    ? _value.correction
                    : correction // ignore: cast_nullable_to_non_nullable
                        as int,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updating:
                null == updating
                    ? _value.updating
                    : updating // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AutomaticStartImplCopyWith<$Res>
    implements $AutomaticStartCopyWith<$Res> {
  factory _$$AutomaticStartImplCopyWith(
    _$AutomaticStartImpl value,
    $Res Function(_$AutomaticStartImpl) then,
  ) = __$$AutomaticStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time, int correction, DateTime timestamp, bool updating});
}

/// @nodoc
class __$$AutomaticStartImplCopyWithImpl<$Res>
    extends _$AutomaticStartCopyWithImpl<$Res, _$AutomaticStartImpl>
    implements _$$AutomaticStartImplCopyWith<$Res> {
  __$$AutomaticStartImplCopyWithImpl(
    _$AutomaticStartImpl _value,
    $Res Function(_$AutomaticStartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutomaticStart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? correction = null,
    Object? timestamp = null,
    Object? updating = null,
  }) {
    return _then(
      _$AutomaticStartImpl(
        null == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                as String,
        null == correction
            ? _value.correction
            : correction // ignore: cast_nullable_to_non_nullable
                as int,
        null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                as DateTime,
        updating:
            null == updating
                ? _value.updating
                : updating // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$AutomaticStartImpl implements _AutomaticStart {
  _$AutomaticStartImpl(
    this.time,
    this.correction,
    this.timestamp, {
    this.updating = false,
  });

  @override
  String time;
  @override
  int correction;
  @override
  DateTime timestamp;
  @override
  @JsonKey()
  bool updating;

  @override
  String toString() {
    return 'AutomaticStart(time: $time, correction: $correction, timestamp: $timestamp, updating: $updating)';
  }

  /// Create a copy of AutomaticStart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutomaticStartImplCopyWith<_$AutomaticStartImpl> get copyWith =>
      __$$AutomaticStartImplCopyWithImpl<_$AutomaticStartImpl>(
        this,
        _$identity,
      );
}

abstract class _AutomaticStart implements AutomaticStart {
  factory _AutomaticStart(
    String time,
    int correction,
    DateTime timestamp, {
    bool updating,
  }) = _$AutomaticStartImpl;

  @override
  String get time;
  set time(String value);
  @override
  int get correction;
  set correction(int value);
  @override
  DateTime get timestamp;
  set timestamp(DateTime value);
  @override
  bool get updating;
  set updating(bool value);

  /// Create a copy of AutomaticStart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutomaticStartImplCopyWith<_$AutomaticStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
