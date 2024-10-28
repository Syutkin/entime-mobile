// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ntp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NtpEvent {
  String? get lookUpAddress => throw _privateConstructorUsedError;
  int? get port => throw _privateConstructorUsedError;
  Duration? get timeout => throw _privateConstructorUsedError;
  Duration? get cacheDuration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lookUpAddress, int? port,
            Duration? timeout, Duration? cacheDuration)
        getNtpOffset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lookUpAddress, int? port, Duration? timeout,
            Duration? cacheDuration)?
        getNtpOffset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lookUpAddress, int? port, Duration? timeout,
            Duration? cacheDuration)?
        getNtpOffset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNtpOffset value) getNtpOffset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNtpOffset value)? getNtpOffset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNtpOffset value)? getNtpOffset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NtpEventCopyWith<NtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NtpEventCopyWith<$Res> {
  factory $NtpEventCopyWith(NtpEvent value, $Res Function(NtpEvent) then) =
      _$NtpEventCopyWithImpl<$Res, NtpEvent>;
  @useResult
  $Res call(
      {String? lookUpAddress,
      int? port,
      Duration? timeout,
      Duration? cacheDuration});
}

/// @nodoc
class _$NtpEventCopyWithImpl<$Res, $Val extends NtpEvent>
    implements $NtpEventCopyWith<$Res> {
  _$NtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lookUpAddress = freezed,
    Object? port = freezed,
    Object? timeout = freezed,
    Object? cacheDuration = freezed,
  }) {
    return _then(_value.copyWith(
      lookUpAddress: freezed == lookUpAddress
          ? _value.lookUpAddress
          : lookUpAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      timeout: freezed == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      cacheDuration: freezed == cacheDuration
          ? _value.cacheDuration
          : cacheDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNtpOffsetImplCopyWith<$Res>
    implements $NtpEventCopyWith<$Res> {
  factory _$$GetNtpOffsetImplCopyWith(
          _$GetNtpOffsetImpl value, $Res Function(_$GetNtpOffsetImpl) then) =
      __$$GetNtpOffsetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? lookUpAddress,
      int? port,
      Duration? timeout,
      Duration? cacheDuration});
}

/// @nodoc
class __$$GetNtpOffsetImplCopyWithImpl<$Res>
    extends _$NtpEventCopyWithImpl<$Res, _$GetNtpOffsetImpl>
    implements _$$GetNtpOffsetImplCopyWith<$Res> {
  __$$GetNtpOffsetImplCopyWithImpl(
      _$GetNtpOffsetImpl _value, $Res Function(_$GetNtpOffsetImpl) _then)
      : super(_value, _then);

  /// Create a copy of NtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lookUpAddress = freezed,
    Object? port = freezed,
    Object? timeout = freezed,
    Object? cacheDuration = freezed,
  }) {
    return _then(_$GetNtpOffsetImpl(
      lookUpAddress: freezed == lookUpAddress
          ? _value.lookUpAddress
          : lookUpAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      timeout: freezed == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      cacheDuration: freezed == cacheDuration
          ? _value.cacheDuration
          : cacheDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$GetNtpOffsetImpl implements _GetNtpOffset {
  const _$GetNtpOffsetImpl(
      {this.lookUpAddress, this.port, this.timeout, this.cacheDuration});

  @override
  final String? lookUpAddress;
  @override
  final int? port;
  @override
  final Duration? timeout;
  @override
  final Duration? cacheDuration;

  @override
  String toString() {
    return 'NtpEvent.getNtpOffset(lookUpAddress: $lookUpAddress, port: $port, timeout: $timeout, cacheDuration: $cacheDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNtpOffsetImpl &&
            (identical(other.lookUpAddress, lookUpAddress) ||
                other.lookUpAddress == lookUpAddress) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.cacheDuration, cacheDuration) ||
                other.cacheDuration == cacheDuration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, lookUpAddress, port, timeout, cacheDuration);

  /// Create a copy of NtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNtpOffsetImplCopyWith<_$GetNtpOffsetImpl> get copyWith =>
      __$$GetNtpOffsetImplCopyWithImpl<_$GetNtpOffsetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lookUpAddress, int? port,
            Duration? timeout, Duration? cacheDuration)
        getNtpOffset,
  }) {
    return getNtpOffset(lookUpAddress, port, timeout, cacheDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lookUpAddress, int? port, Duration? timeout,
            Duration? cacheDuration)?
        getNtpOffset,
  }) {
    return getNtpOffset?.call(lookUpAddress, port, timeout, cacheDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lookUpAddress, int? port, Duration? timeout,
            Duration? cacheDuration)?
        getNtpOffset,
    required TResult orElse(),
  }) {
    if (getNtpOffset != null) {
      return getNtpOffset(lookUpAddress, port, timeout, cacheDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNtpOffset value) getNtpOffset,
  }) {
    return getNtpOffset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNtpOffset value)? getNtpOffset,
  }) {
    return getNtpOffset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNtpOffset value)? getNtpOffset,
    required TResult orElse(),
  }) {
    if (getNtpOffset != null) {
      return getNtpOffset(this);
    }
    return orElse();
  }
}

abstract class _GetNtpOffset implements NtpEvent {
  const factory _GetNtpOffset(
      {final String? lookUpAddress,
      final int? port,
      final Duration? timeout,
      final Duration? cacheDuration}) = _$GetNtpOffsetImpl;

  @override
  String? get lookUpAddress;
  @override
  int? get port;
  @override
  Duration? get timeout;
  @override
  Duration? get cacheDuration;

  /// Create a copy of NtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNtpOffsetImplCopyWith<_$GetNtpOffsetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NtpState {
  int get offset => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) initial,
    required TResult Function(int offset) loading,
    required TResult Function(int offset) success,
    required TResult Function(int offset) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset)? initial,
    TResult? Function(int offset)? loading,
    TResult? Function(int offset)? success,
    TResult? Function(int offset)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? initial,
    TResult Function(int offset)? loading,
    TResult Function(int offset)? success,
    TResult Function(int offset)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NtpStateCopyWith<NtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NtpStateCopyWith<$Res> {
  factory $NtpStateCopyWith(NtpState value, $Res Function(NtpState) then) =
      _$NtpStateCopyWithImpl<$Res, NtpState>;
  @useResult
  $Res call({int offset});
}

/// @nodoc
class _$NtpStateCopyWithImpl<$Res, $Val extends NtpState>
    implements $NtpStateCopyWith<$Res> {
  _$NtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res>
    implements $NtpStateCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset});
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$NtpStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
  }) {
    return _then(_$InitialStateImpl(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl(this.offset);

  @override
  final int offset;

  @override
  String toString() {
    return 'NtpState.initial(offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialStateImpl &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      __$$InitialStateImplCopyWithImpl<_$InitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) initial,
    required TResult Function(int offset) loading,
    required TResult Function(int offset) success,
    required TResult Function(int offset) failure,
  }) {
    return initial(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset)? initial,
    TResult? Function(int offset)? loading,
    TResult? Function(int offset)? success,
    TResult? Function(int offset)? failure,
  }) {
    return initial?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? initial,
    TResult Function(int offset)? loading,
    TResult Function(int offset)? success,
    TResult Function(int offset)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements NtpState {
  const factory _InitialState(final int offset) = _$InitialStateImpl;

  @override
  int get offset;

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $NtpStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$NtpStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
  }) {
    return _then(_$LoadingStateImpl(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl(this.offset);

  @override
  final int offset;

  @override
  String toString() {
    return 'NtpState.loading(offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) initial,
    required TResult Function(int offset) loading,
    required TResult Function(int offset) success,
    required TResult Function(int offset) failure,
  }) {
    return loading(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset)? initial,
    TResult? Function(int offset)? loading,
    TResult? Function(int offset)? success,
    TResult? Function(int offset)? failure,
  }) {
    return loading?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? initial,
    TResult Function(int offset)? loading,
    TResult Function(int offset)? success,
    TResult Function(int offset)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements NtpState {
  const factory _LoadingState(final int offset) = _$LoadingStateImpl;

  @override
  int get offset;

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res>
    implements $NtpStateCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$NtpStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
  }) {
    return _then(_$SuccessStateImpl(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl(this.offset);

  @override
  final int offset;

  @override
  String toString() {
    return 'NtpState.success(offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) initial,
    required TResult Function(int offset) loading,
    required TResult Function(int offset) success,
    required TResult Function(int offset) failure,
  }) {
    return success(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset)? initial,
    TResult? Function(int offset)? loading,
    TResult? Function(int offset)? success,
    TResult? Function(int offset)? failure,
  }) {
    return success?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? initial,
    TResult Function(int offset)? loading,
    TResult Function(int offset)? success,
    TResult Function(int offset)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements NtpState {
  const factory _SuccessState(final int offset) = _$SuccessStateImpl;

  @override
  int get offset;

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res>
    implements $NtpStateCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset});
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$NtpStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
  }) {
    return _then(_$FailureStateImpl(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl implements _FailureState {
  const _$FailureStateImpl(this.offset);

  @override
  final int offset;

  @override
  String toString() {
    return 'NtpState.failure(offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset);

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      __$$FailureStateImplCopyWithImpl<_$FailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) initial,
    required TResult Function(int offset) loading,
    required TResult Function(int offset) success,
    required TResult Function(int offset) failure,
  }) {
    return failure(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset)? initial,
    TResult? Function(int offset)? loading,
    TResult? Function(int offset)? success,
    TResult? Function(int offset)? failure,
  }) {
    return failure?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? initial,
    TResult Function(int offset)? loading,
    TResult Function(int offset)? success,
    TResult Function(int offset)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements NtpState {
  const factory _FailureState(final int offset) = _$FailureStateImpl;

  @override
  int get offset;

  /// Create a copy of NtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
