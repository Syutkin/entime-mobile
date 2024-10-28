// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Notification {
  int get number => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<StartingParticipant> existedStartingParticipants,
            int number,
            String startTime)
        updateNumber,
    required TResult Function(List<StartingParticipant> previousStarts,
            int number, String startTime, DateTime timestamp, int correction)
        updateAutomaticCorrection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StartingParticipant> existedStartingParticipants,
            int number, String startTime)?
        updateNumber,
    TResult? Function(List<StartingParticipant> previousStarts, int number,
            String startTime, DateTime timestamp, int correction)?
        updateAutomaticCorrection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StartingParticipant> existedStartingParticipants,
            int number, String startTime)?
        updateNumber,
    TResult Function(List<StartingParticipant> previousStarts, int number,
            String startTime, DateTime timestamp, int correction)?
        updateAutomaticCorrection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateNumber value)? updateNumber,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
  @useResult
  $Res call({int number, String startTime});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? startTime = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateNumberImplCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$UpdateNumberImplCopyWith(
          _$UpdateNumberImpl value, $Res Function(_$UpdateNumberImpl) then) =
      __$$UpdateNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StartingParticipant> existedStartingParticipants,
      int number,
      String startTime});
}

/// @nodoc
class __$$UpdateNumberImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$UpdateNumberImpl>
    implements _$$UpdateNumberImplCopyWith<$Res> {
  __$$UpdateNumberImplCopyWithImpl(
      _$UpdateNumberImpl _value, $Res Function(_$UpdateNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existedStartingParticipants = null,
    Object? number = null,
    Object? startTime = null,
  }) {
    return _then(_$UpdateNumberImpl(
      existedStartingParticipants: null == existedStartingParticipants
          ? _value._existedStartingParticipants
          : existedStartingParticipants // ignore: cast_nullable_to_non_nullable
              as List<StartingParticipant>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNumberImpl implements _UpdateNumber {
  const _$UpdateNumberImpl(
      {required final List<StartingParticipant> existedStartingParticipants,
      required this.number,
      required this.startTime})
      : _existedStartingParticipants = existedStartingParticipants;

  final List<StartingParticipant> _existedStartingParticipants;
  @override
  List<StartingParticipant> get existedStartingParticipants {
    if (_existedStartingParticipants is EqualUnmodifiableListView)
      return _existedStartingParticipants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existedStartingParticipants);
  }

  @override
  final int number;
  @override
  final String startTime;

  @override
  String toString() {
    return 'Notification.updateNumber(existedStartingParticipants: $existedStartingParticipants, number: $number, startTime: $startTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNumberImpl &&
            const DeepCollectionEquality().equals(
                other._existedStartingParticipants,
                _existedStartingParticipants) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_existedStartingParticipants),
      number,
      startTime);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNumberImplCopyWith<_$UpdateNumberImpl> get copyWith =>
      __$$UpdateNumberImplCopyWithImpl<_$UpdateNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<StartingParticipant> existedStartingParticipants,
            int number,
            String startTime)
        updateNumber,
    required TResult Function(List<StartingParticipant> previousStarts,
            int number, String startTime, DateTime timestamp, int correction)
        updateAutomaticCorrection,
  }) {
    return updateNumber(existedStartingParticipants, number, startTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StartingParticipant> existedStartingParticipants,
            int number, String startTime)?
        updateNumber,
    TResult? Function(List<StartingParticipant> previousStarts, int number,
            String startTime, DateTime timestamp, int correction)?
        updateAutomaticCorrection,
  }) {
    return updateNumber?.call(existedStartingParticipants, number, startTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StartingParticipant> existedStartingParticipants,
            int number, String startTime)?
        updateNumber,
    TResult Function(List<StartingParticipant> previousStarts, int number,
            String startTime, DateTime timestamp, int correction)?
        updateAutomaticCorrection,
    required TResult orElse(),
  }) {
    if (updateNumber != null) {
      return updateNumber(existedStartingParticipants, number, startTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
  }) {
    return updateNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateNumber value)? updateNumber,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
  }) {
    return updateNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    required TResult orElse(),
  }) {
    if (updateNumber != null) {
      return updateNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdateNumber implements Notification {
  const factory _UpdateNumber(
      {required final List<StartingParticipant> existedStartingParticipants,
      required final int number,
      required final String startTime}) = _$UpdateNumberImpl;

  List<StartingParticipant> get existedStartingParticipants;
  @override
  int get number;
  @override
  String get startTime;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNumberImplCopyWith<_$UpdateNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAutomaticCorrectionImplCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$UpdateAutomaticCorrectionImplCopyWith(
          _$UpdateAutomaticCorrectionImpl value,
          $Res Function(_$UpdateAutomaticCorrectionImpl) then) =
      __$$UpdateAutomaticCorrectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StartingParticipant> previousStarts,
      int number,
      String startTime,
      DateTime timestamp,
      int correction});
}

/// @nodoc
class __$$UpdateAutomaticCorrectionImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$UpdateAutomaticCorrectionImpl>
    implements _$$UpdateAutomaticCorrectionImplCopyWith<$Res> {
  __$$UpdateAutomaticCorrectionImplCopyWithImpl(
      _$UpdateAutomaticCorrectionImpl _value,
      $Res Function(_$UpdateAutomaticCorrectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousStarts = null,
    Object? number = null,
    Object? startTime = null,
    Object? timestamp = null,
    Object? correction = null,
  }) {
    return _then(_$UpdateAutomaticCorrectionImpl(
      previousStarts: null == previousStarts
          ? _value._previousStarts
          : previousStarts // ignore: cast_nullable_to_non_nullable
              as List<StartingParticipant>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      correction: null == correction
          ? _value.correction
          : correction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateAutomaticCorrectionImpl implements _UpdateAutomaticCorrection {
  const _$UpdateAutomaticCorrectionImpl(
      {required final List<StartingParticipant> previousStarts,
      required this.number,
      required this.startTime,
      required this.timestamp,
      required this.correction})
      : _previousStarts = previousStarts;

  final List<StartingParticipant> _previousStarts;
  @override
  List<StartingParticipant> get previousStarts {
    if (_previousStarts is EqualUnmodifiableListView) return _previousStarts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousStarts);
  }

  @override
  final int number;
  @override
  final String startTime;
  @override
  final DateTime timestamp;
  @override
  final int correction;

  @override
  String toString() {
    return 'Notification.updateAutomaticCorrection(previousStarts: $previousStarts, number: $number, startTime: $startTime, timestamp: $timestamp, correction: $correction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAutomaticCorrectionImpl &&
            const DeepCollectionEquality()
                .equals(other._previousStarts, _previousStarts) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.correction, correction) ||
                other.correction == correction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_previousStarts),
      number,
      startTime,
      timestamp,
      correction);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAutomaticCorrectionImplCopyWith<_$UpdateAutomaticCorrectionImpl>
      get copyWith => __$$UpdateAutomaticCorrectionImplCopyWithImpl<
          _$UpdateAutomaticCorrectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<StartingParticipant> existedStartingParticipants,
            int number,
            String startTime)
        updateNumber,
    required TResult Function(List<StartingParticipant> previousStarts,
            int number, String startTime, DateTime timestamp, int correction)
        updateAutomaticCorrection,
  }) {
    return updateAutomaticCorrection(
        previousStarts, number, startTime, timestamp, correction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<StartingParticipant> existedStartingParticipants,
            int number, String startTime)?
        updateNumber,
    TResult? Function(List<StartingParticipant> previousStarts, int number,
            String startTime, DateTime timestamp, int correction)?
        updateAutomaticCorrection,
  }) {
    return updateAutomaticCorrection?.call(
        previousStarts, number, startTime, timestamp, correction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<StartingParticipant> existedStartingParticipants,
            int number, String startTime)?
        updateNumber,
    TResult Function(List<StartingParticipant> previousStarts, int number,
            String startTime, DateTime timestamp, int correction)?
        updateAutomaticCorrection,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(
          previousStarts, number, startTime, timestamp, correction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_UpdateAutomaticCorrection value)
        updateAutomaticCorrection,
  }) {
    return updateAutomaticCorrection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateNumber value)? updateNumber,
    TResult? Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
  }) {
    return updateAutomaticCorrection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_UpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(this);
    }
    return orElse();
  }
}

abstract class _UpdateAutomaticCorrection implements Notification {
  const factory _UpdateAutomaticCorrection(
      {required final List<StartingParticipant> previousStarts,
      required final int number,
      required final String startTime,
      required final DateTime timestamp,
      required final int correction}) = _$UpdateAutomaticCorrectionImpl;

  List<StartingParticipant> get previousStarts;
  @override
  int get number;
  @override
  String get startTime;
  DateTime get timestamp;
  int get correction;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAutomaticCorrectionImplCopyWith<_$UpdateAutomaticCorrectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
