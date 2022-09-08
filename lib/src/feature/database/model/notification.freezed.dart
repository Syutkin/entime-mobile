// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Notification {
  List<GetExistedStartingParticipantsResult> get existedStartingParticipants =>
      throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<GetExistedStartingParticipantsResult>
                existedStartingParticipants,
            int number,
            String startTime)
        updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<GetExistedStartingParticipantsResult>
                existedStartingParticipants,
            int number,
            String startTime)?
        updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<GetExistedStartingParticipantsResult>
                existedStartingParticipants,
            int number,
            String startTime)?
        updateNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateNumber value) updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateNumber value)? updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateNumber value)? updateNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {List<GetExistedStartingParticipantsResult> existedStartingParticipants,
      int number,
      String startTime});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? existedStartingParticipants = freezed,
    Object? number = freezed,
    Object? startTime = freezed,
  }) {
    return _then(_value.copyWith(
      existedStartingParticipants: existedStartingParticipants == freezed
          ? _value.existedStartingParticipants
          : existedStartingParticipants // ignore: cast_nullable_to_non_nullable
              as List<GetExistedStartingParticipantsResult>,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdateNumberCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$_UpdateNumberCopyWith(
          _$_UpdateNumber value, $Res Function(_$_UpdateNumber) then) =
      __$$_UpdateNumberCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GetExistedStartingParticipantsResult> existedStartingParticipants,
      int number,
      String startTime});
}

/// @nodoc
class __$$_UpdateNumberCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res>
    implements _$$_UpdateNumberCopyWith<$Res> {
  __$$_UpdateNumberCopyWithImpl(
      _$_UpdateNumber _value, $Res Function(_$_UpdateNumber) _then)
      : super(_value, (v) => _then(v as _$_UpdateNumber));

  @override
  _$_UpdateNumber get _value => super._value as _$_UpdateNumber;

  @override
  $Res call({
    Object? existedStartingParticipants = freezed,
    Object? number = freezed,
    Object? startTime = freezed,
  }) {
    return _then(_$_UpdateNumber(
      existedStartingParticipants: existedStartingParticipants == freezed
          ? _value._existedStartingParticipants
          : existedStartingParticipants // ignore: cast_nullable_to_non_nullable
              as List<GetExistedStartingParticipantsResult>,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateNumber implements _UpdateNumber {
  const _$_UpdateNumber(
      {required final List<GetExistedStartingParticipantsResult>
          existedStartingParticipants,
      required this.number,
      required this.startTime})
      : _existedStartingParticipants = existedStartingParticipants;

  final List<GetExistedStartingParticipantsResult> _existedStartingParticipants;
  @override
  List<GetExistedStartingParticipantsResult> get existedStartingParticipants {
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNumber &&
            const DeepCollectionEquality().equals(
                other._existedStartingParticipants,
                _existedStartingParticipants) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.startTime, startTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_existedStartingParticipants),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(startTime));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateNumberCopyWith<_$_UpdateNumber> get copyWith =>
      __$$_UpdateNumberCopyWithImpl<_$_UpdateNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<GetExistedStartingParticipantsResult>
                existedStartingParticipants,
            int number,
            String startTime)
        updateNumber,
  }) {
    return updateNumber(existedStartingParticipants, number, startTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<GetExistedStartingParticipantsResult>
                existedStartingParticipants,
            int number,
            String startTime)?
        updateNumber,
  }) {
    return updateNumber?.call(existedStartingParticipants, number, startTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<GetExistedStartingParticipantsResult>
                existedStartingParticipants,
            int number,
            String startTime)?
        updateNumber,
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
  }) {
    return updateNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateNumber value)? updateNumber,
  }) {
    return updateNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateNumber value)? updateNumber,
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
      {required final List<GetExistedStartingParticipantsResult>
          existedStartingParticipants,
      required final int number,
      required final String startTime}) = _$_UpdateNumber;

  @override
  List<GetExistedStartingParticipantsResult> get existedStartingParticipants;
  @override
  int get number;
  @override
  String get startTime;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateNumberCopyWith<_$_UpdateNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
