// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluetooth_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BluetoothMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timestamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutomaticStart automaticStart)? automaticStart,
    TResult? Function(String time, DateTime timestamp)? finish,
    TResult? Function(String time)? countdown,
    TResult? Function(String time)? voice,
    TResult? Function(String json)? moduleSettings,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timestamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(BluetoothMessageFinish value) finish,
    required TResult Function(BluetoothMessageCountdown value) countdown,
    required TResult Function(BluetoothMessageVoice value) voice,
    required TResult Function(BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(BluetoothMessageEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult? Function(BluetoothMessageFinish value)? finish,
    TResult? Function(BluetoothMessageCountdown value)? countdown,
    TResult? Function(BluetoothMessageVoice value)? voice,
    TResult? Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult? Function(BluetoothMessageEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothMessageCopyWith<$Res> {
  factory $BluetoothMessageCopyWith(
          BluetoothMessage value, $Res Function(BluetoothMessage) then) =
      _$BluetoothMessageCopyWithImpl<$Res, BluetoothMessage>;
}

/// @nodoc
class _$BluetoothMessageCopyWithImpl<$Res, $Val extends BluetoothMessage>
    implements $BluetoothMessageCopyWith<$Res> {
  _$BluetoothMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BluetoothMessageAutomaticStartImplCopyWith<$Res> {
  factory _$$BluetoothMessageAutomaticStartImplCopyWith(
          _$BluetoothMessageAutomaticStartImpl value,
          $Res Function(_$BluetoothMessageAutomaticStartImpl) then) =
      __$$BluetoothMessageAutomaticStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AutomaticStart automaticStart});

  $AutomaticStartCopyWith<$Res> get automaticStart;
}

/// @nodoc
class __$$BluetoothMessageAutomaticStartImplCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res,
        _$BluetoothMessageAutomaticStartImpl>
    implements _$$BluetoothMessageAutomaticStartImplCopyWith<$Res> {
  __$$BluetoothMessageAutomaticStartImplCopyWithImpl(
      _$BluetoothMessageAutomaticStartImpl _value,
      $Res Function(_$BluetoothMessageAutomaticStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? automaticStart = null,
  }) {
    return _then(_$BluetoothMessageAutomaticStartImpl(
      automaticStart: null == automaticStart
          ? _value.automaticStart
          : automaticStart // ignore: cast_nullable_to_non_nullable
              as AutomaticStart,
    ));
  }

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutomaticStartCopyWith<$Res> get automaticStart {
    return $AutomaticStartCopyWith<$Res>(_value.automaticStart, (value) {
      return _then(_value.copyWith(automaticStart: value));
    });
  }
}

/// @nodoc

class _$BluetoothMessageAutomaticStartImpl
    implements BluetoothMessageAutomaticStart {
  const _$BluetoothMessageAutomaticStartImpl({required this.automaticStart});

  @override
  final AutomaticStart automaticStart;

  @override
  String toString() {
    return 'BluetoothMessage.automaticStart(automaticStart: $automaticStart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageAutomaticStartImpl &&
            (identical(other.automaticStart, automaticStart) ||
                other.automaticStart == automaticStart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, automaticStart);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothMessageAutomaticStartImplCopyWith<
          _$BluetoothMessageAutomaticStartImpl>
      get copyWith => __$$BluetoothMessageAutomaticStartImplCopyWithImpl<
          _$BluetoothMessageAutomaticStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timestamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) {
    return automaticStart(this.automaticStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutomaticStart automaticStart)? automaticStart,
    TResult? Function(String time, DateTime timestamp)? finish,
    TResult? Function(String time)? countdown,
    TResult? Function(String time)? voice,
    TResult? Function(String json)? moduleSettings,
    TResult? Function()? empty,
  }) {
    return automaticStart?.call(this.automaticStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timestamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (automaticStart != null) {
      return automaticStart(this.automaticStart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(BluetoothMessageFinish value) finish,
    required TResult Function(BluetoothMessageCountdown value) countdown,
    required TResult Function(BluetoothMessageVoice value) voice,
    required TResult Function(BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(BluetoothMessageEmpty value) empty,
  }) {
    return automaticStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult? Function(BluetoothMessageFinish value)? finish,
    TResult? Function(BluetoothMessageCountdown value)? countdown,
    TResult? Function(BluetoothMessageVoice value)? voice,
    TResult? Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult? Function(BluetoothMessageEmpty value)? empty,
  }) {
    return automaticStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (automaticStart != null) {
      return automaticStart(this);
    }
    return orElse();
  }
}

abstract class BluetoothMessageAutomaticStart implements BluetoothMessage {
  const factory BluetoothMessageAutomaticStart(
          {required final AutomaticStart automaticStart}) =
      _$BluetoothMessageAutomaticStartImpl;

  AutomaticStart get automaticStart;

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothMessageAutomaticStartImplCopyWith<
          _$BluetoothMessageAutomaticStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageFinishImplCopyWith<$Res> {
  factory _$$BluetoothMessageFinishImplCopyWith(
          _$BluetoothMessageFinishImpl value,
          $Res Function(_$BluetoothMessageFinishImpl) then) =
      __$$BluetoothMessageFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String time, DateTime timestamp});
}

/// @nodoc
class __$$BluetoothMessageFinishImplCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res, _$BluetoothMessageFinishImpl>
    implements _$$BluetoothMessageFinishImplCopyWith<$Res> {
  __$$BluetoothMessageFinishImplCopyWithImpl(
      _$BluetoothMessageFinishImpl _value,
      $Res Function(_$BluetoothMessageFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? timestamp = null,
  }) {
    return _then(_$BluetoothMessageFinishImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageFinishImpl implements BluetoothMessageFinish {
  const _$BluetoothMessageFinishImpl(
      {required this.time, required this.timestamp});

  @override
  final String time;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'BluetoothMessage.finish(time: $time, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageFinishImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, timestamp);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothMessageFinishImplCopyWith<_$BluetoothMessageFinishImpl>
      get copyWith => __$$BluetoothMessageFinishImplCopyWithImpl<
          _$BluetoothMessageFinishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timestamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) {
    return finish(time, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutomaticStart automaticStart)? automaticStart,
    TResult? Function(String time, DateTime timestamp)? finish,
    TResult? Function(String time)? countdown,
    TResult? Function(String time)? voice,
    TResult? Function(String json)? moduleSettings,
    TResult? Function()? empty,
  }) {
    return finish?.call(time, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timestamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(time, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(BluetoothMessageFinish value) finish,
    required TResult Function(BluetoothMessageCountdown value) countdown,
    required TResult Function(BluetoothMessageVoice value) voice,
    required TResult Function(BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(BluetoothMessageEmpty value) empty,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult? Function(BluetoothMessageFinish value)? finish,
    TResult? Function(BluetoothMessageCountdown value)? countdown,
    TResult? Function(BluetoothMessageVoice value)? voice,
    TResult? Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult? Function(BluetoothMessageEmpty value)? empty,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class BluetoothMessageFinish implements BluetoothMessage {
  const factory BluetoothMessageFinish(
      {required final String time,
      required final DateTime timestamp}) = _$BluetoothMessageFinishImpl;

  String get time;
  DateTime get timestamp;

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothMessageFinishImplCopyWith<_$BluetoothMessageFinishImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageCountdownImplCopyWith<$Res> {
  factory _$$BluetoothMessageCountdownImplCopyWith(
          _$BluetoothMessageCountdownImpl value,
          $Res Function(_$BluetoothMessageCountdownImpl) then) =
      __$$BluetoothMessageCountdownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String time});
}

/// @nodoc
class __$$BluetoothMessageCountdownImplCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res,
        _$BluetoothMessageCountdownImpl>
    implements _$$BluetoothMessageCountdownImplCopyWith<$Res> {
  __$$BluetoothMessageCountdownImplCopyWithImpl(
      _$BluetoothMessageCountdownImpl _value,
      $Res Function(_$BluetoothMessageCountdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$BluetoothMessageCountdownImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageCountdownImpl implements BluetoothMessageCountdown {
  const _$BluetoothMessageCountdownImpl({required this.time});

  @override
  final String time;

  @override
  String toString() {
    return 'BluetoothMessage.countdown(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageCountdownImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothMessageCountdownImplCopyWith<_$BluetoothMessageCountdownImpl>
      get copyWith => __$$BluetoothMessageCountdownImplCopyWithImpl<
          _$BluetoothMessageCountdownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timestamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) {
    return countdown(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutomaticStart automaticStart)? automaticStart,
    TResult? Function(String time, DateTime timestamp)? finish,
    TResult? Function(String time)? countdown,
    TResult? Function(String time)? voice,
    TResult? Function(String json)? moduleSettings,
    TResult? Function()? empty,
  }) {
    return countdown?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timestamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (countdown != null) {
      return countdown(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(BluetoothMessageFinish value) finish,
    required TResult Function(BluetoothMessageCountdown value) countdown,
    required TResult Function(BluetoothMessageVoice value) voice,
    required TResult Function(BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(BluetoothMessageEmpty value) empty,
  }) {
    return countdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult? Function(BluetoothMessageFinish value)? finish,
    TResult? Function(BluetoothMessageCountdown value)? countdown,
    TResult? Function(BluetoothMessageVoice value)? voice,
    TResult? Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult? Function(BluetoothMessageEmpty value)? empty,
  }) {
    return countdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (countdown != null) {
      return countdown(this);
    }
    return orElse();
  }
}

abstract class BluetoothMessageCountdown implements BluetoothMessage {
  const factory BluetoothMessageCountdown({required final String time}) =
      _$BluetoothMessageCountdownImpl;

  String get time;

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothMessageCountdownImplCopyWith<_$BluetoothMessageCountdownImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageVoiceImplCopyWith<$Res> {
  factory _$$BluetoothMessageVoiceImplCopyWith(
          _$BluetoothMessageVoiceImpl value,
          $Res Function(_$BluetoothMessageVoiceImpl) then) =
      __$$BluetoothMessageVoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String time});
}

/// @nodoc
class __$$BluetoothMessageVoiceImplCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res, _$BluetoothMessageVoiceImpl>
    implements _$$BluetoothMessageVoiceImplCopyWith<$Res> {
  __$$BluetoothMessageVoiceImplCopyWithImpl(_$BluetoothMessageVoiceImpl _value,
      $Res Function(_$BluetoothMessageVoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$BluetoothMessageVoiceImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageVoiceImpl implements BluetoothMessageVoice {
  const _$BluetoothMessageVoiceImpl({required this.time});

  @override
  final String time;

  @override
  String toString() {
    return 'BluetoothMessage.voice(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageVoiceImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothMessageVoiceImplCopyWith<_$BluetoothMessageVoiceImpl>
      get copyWith => __$$BluetoothMessageVoiceImplCopyWithImpl<
          _$BluetoothMessageVoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timestamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) {
    return voice(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutomaticStart automaticStart)? automaticStart,
    TResult? Function(String time, DateTime timestamp)? finish,
    TResult? Function(String time)? countdown,
    TResult? Function(String time)? voice,
    TResult? Function(String json)? moduleSettings,
    TResult? Function()? empty,
  }) {
    return voice?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timestamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (voice != null) {
      return voice(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(BluetoothMessageFinish value) finish,
    required TResult Function(BluetoothMessageCountdown value) countdown,
    required TResult Function(BluetoothMessageVoice value) voice,
    required TResult Function(BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(BluetoothMessageEmpty value) empty,
  }) {
    return voice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult? Function(BluetoothMessageFinish value)? finish,
    TResult? Function(BluetoothMessageCountdown value)? countdown,
    TResult? Function(BluetoothMessageVoice value)? voice,
    TResult? Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult? Function(BluetoothMessageEmpty value)? empty,
  }) {
    return voice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (voice != null) {
      return voice(this);
    }
    return orElse();
  }
}

abstract class BluetoothMessageVoice implements BluetoothMessage {
  const factory BluetoothMessageVoice({required final String time}) =
      _$BluetoothMessageVoiceImpl;

  String get time;

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothMessageVoiceImplCopyWith<_$BluetoothMessageVoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageModuleSettingsImplCopyWith<$Res> {
  factory _$$BluetoothMessageModuleSettingsImplCopyWith(
          _$BluetoothMessageModuleSettingsImpl value,
          $Res Function(_$BluetoothMessageModuleSettingsImpl) then) =
      __$$BluetoothMessageModuleSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String json});
}

/// @nodoc
class __$$BluetoothMessageModuleSettingsImplCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res,
        _$BluetoothMessageModuleSettingsImpl>
    implements _$$BluetoothMessageModuleSettingsImplCopyWith<$Res> {
  __$$BluetoothMessageModuleSettingsImplCopyWithImpl(
      _$BluetoothMessageModuleSettingsImpl _value,
      $Res Function(_$BluetoothMessageModuleSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = null,
  }) {
    return _then(_$BluetoothMessageModuleSettingsImpl(
      json: null == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageModuleSettingsImpl
    implements BluetoothMessageModuleSettings {
  const _$BluetoothMessageModuleSettingsImpl({required this.json});

  @override
  final String json;

  @override
  String toString() {
    return 'BluetoothMessage.moduleSettings(json: $json)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageModuleSettingsImpl &&
            (identical(other.json, json) || other.json == json));
  }

  @override
  int get hashCode => Object.hash(runtimeType, json);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothMessageModuleSettingsImplCopyWith<
          _$BluetoothMessageModuleSettingsImpl>
      get copyWith => __$$BluetoothMessageModuleSettingsImplCopyWithImpl<
          _$BluetoothMessageModuleSettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timestamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) {
    return moduleSettings(json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutomaticStart automaticStart)? automaticStart,
    TResult? Function(String time, DateTime timestamp)? finish,
    TResult? Function(String time)? countdown,
    TResult? Function(String time)? voice,
    TResult? Function(String json)? moduleSettings,
    TResult? Function()? empty,
  }) {
    return moduleSettings?.call(json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timestamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (moduleSettings != null) {
      return moduleSettings(json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(BluetoothMessageFinish value) finish,
    required TResult Function(BluetoothMessageCountdown value) countdown,
    required TResult Function(BluetoothMessageVoice value) voice,
    required TResult Function(BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(BluetoothMessageEmpty value) empty,
  }) {
    return moduleSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult? Function(BluetoothMessageFinish value)? finish,
    TResult? Function(BluetoothMessageCountdown value)? countdown,
    TResult? Function(BluetoothMessageVoice value)? voice,
    TResult? Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult? Function(BluetoothMessageEmpty value)? empty,
  }) {
    return moduleSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (moduleSettings != null) {
      return moduleSettings(this);
    }
    return orElse();
  }
}

abstract class BluetoothMessageModuleSettings implements BluetoothMessage {
  const factory BluetoothMessageModuleSettings({required final String json}) =
      _$BluetoothMessageModuleSettingsImpl;

  String get json;

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothMessageModuleSettingsImplCopyWith<
          _$BluetoothMessageModuleSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageEmptyImplCopyWith<$Res> {
  factory _$$BluetoothMessageEmptyImplCopyWith(
          _$BluetoothMessageEmptyImpl value,
          $Res Function(_$BluetoothMessageEmptyImpl) then) =
      __$$BluetoothMessageEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothMessageEmptyImplCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res, _$BluetoothMessageEmptyImpl>
    implements _$$BluetoothMessageEmptyImplCopyWith<$Res> {
  __$$BluetoothMessageEmptyImplCopyWithImpl(_$BluetoothMessageEmptyImpl _value,
      $Res Function(_$BluetoothMessageEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BluetoothMessageEmptyImpl implements BluetoothMessageEmpty {
  const _$BluetoothMessageEmptyImpl();

  @override
  String toString() {
    return 'BluetoothMessage.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timestamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutomaticStart automaticStart)? automaticStart,
    TResult? Function(String time, DateTime timestamp)? finish,
    TResult? Function(String time)? countdown,
    TResult? Function(String time)? voice,
    TResult? Function(String json)? moduleSettings,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timestamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(BluetoothMessageFinish value) finish,
    required TResult Function(BluetoothMessageCountdown value) countdown,
    required TResult Function(BluetoothMessageVoice value) voice,
    required TResult Function(BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(BluetoothMessageEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult? Function(BluetoothMessageFinish value)? finish,
    TResult? Function(BluetoothMessageCountdown value)? countdown,
    TResult? Function(BluetoothMessageVoice value)? voice,
    TResult? Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult? Function(BluetoothMessageEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class BluetoothMessageEmpty implements BluetoothMessage {
  const factory BluetoothMessageEmpty() = _$BluetoothMessageEmptyImpl;
}
