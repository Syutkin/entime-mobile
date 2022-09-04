// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bluetooth_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BluetoothMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timeStamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
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
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
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
      _$BluetoothMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$BluetoothMessageCopyWithImpl<$Res>
    implements $BluetoothMessageCopyWith<$Res> {
  _$BluetoothMessageCopyWithImpl(this._value, this._then);

  final BluetoothMessage _value;
  // ignore: unused_field
  final $Res Function(BluetoothMessage) _then;
}

/// @nodoc
abstract class _$$BluetoothMessageAutomaticStartCopyWith<$Res> {
  factory _$$BluetoothMessageAutomaticStartCopyWith(
          _$BluetoothMessageAutomaticStart value,
          $Res Function(_$BluetoothMessageAutomaticStart) then) =
      __$$BluetoothMessageAutomaticStartCopyWithImpl<$Res>;
  $Res call({AutomaticStart automaticStart});

  $AutomaticStartCopyWith<$Res> get automaticStart;
}

/// @nodoc
class __$$BluetoothMessageAutomaticStartCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$BluetoothMessageAutomaticStartCopyWith<$Res> {
  __$$BluetoothMessageAutomaticStartCopyWithImpl(
      _$BluetoothMessageAutomaticStart _value,
      $Res Function(_$BluetoothMessageAutomaticStart) _then)
      : super(_value, (v) => _then(v as _$BluetoothMessageAutomaticStart));

  @override
  _$BluetoothMessageAutomaticStart get _value =>
      super._value as _$BluetoothMessageAutomaticStart;

  @override
  $Res call({
    Object? automaticStart = freezed,
  }) {
    return _then(_$BluetoothMessageAutomaticStart(
      automaticStart: automaticStart == freezed
          ? _value.automaticStart
          : automaticStart // ignore: cast_nullable_to_non_nullable
              as AutomaticStart,
    ));
  }

  @override
  $AutomaticStartCopyWith<$Res> get automaticStart {
    return $AutomaticStartCopyWith<$Res>(_value.automaticStart, (value) {
      return _then(_value.copyWith(automaticStart: value));
    });
  }
}

/// @nodoc

class _$BluetoothMessageAutomaticStart
    implements BluetoothMessageAutomaticStart {
  const _$BluetoothMessageAutomaticStart({required this.automaticStart});

  @override
  final AutomaticStart automaticStart;

  @override
  String toString() {
    return 'BluetoothMessage.automaticStart(automaticStart: $automaticStart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageAutomaticStart &&
            const DeepCollectionEquality()
                .equals(other.automaticStart, automaticStart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(automaticStart));

  @JsonKey(ignore: true)
  @override
  _$$BluetoothMessageAutomaticStartCopyWith<_$BluetoothMessageAutomaticStart>
      get copyWith => __$$BluetoothMessageAutomaticStartCopyWithImpl<
          _$BluetoothMessageAutomaticStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timeStamp) finish,
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
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
  }) {
    return automaticStart?.call(this.automaticStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
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
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
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
      _$BluetoothMessageAutomaticStart;

  AutomaticStart get automaticStart;
  @JsonKey(ignore: true)
  _$$BluetoothMessageAutomaticStartCopyWith<_$BluetoothMessageAutomaticStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageFinishCopyWith<$Res> {
  factory _$$BluetoothMessageFinishCopyWith(_$BluetoothMessageFinish value,
          $Res Function(_$BluetoothMessageFinish) then) =
      __$$BluetoothMessageFinishCopyWithImpl<$Res>;
  $Res call({String time, DateTime timeStamp});
}

/// @nodoc
class __$$BluetoothMessageFinishCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$BluetoothMessageFinishCopyWith<$Res> {
  __$$BluetoothMessageFinishCopyWithImpl(_$BluetoothMessageFinish _value,
      $Res Function(_$BluetoothMessageFinish) _then)
      : super(_value, (v) => _then(v as _$BluetoothMessageFinish));

  @override
  _$BluetoothMessageFinish get _value =>
      super._value as _$BluetoothMessageFinish;

  @override
  $Res call({
    Object? time = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$BluetoothMessageFinish(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageFinish implements BluetoothMessageFinish {
  const _$BluetoothMessageFinish({required this.time, required this.timeStamp});

  @override
  final String time;
  @override
  final DateTime timeStamp;

  @override
  String toString() {
    return 'BluetoothMessage.finish(time: $time, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageFinish &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(timeStamp));

  @JsonKey(ignore: true)
  @override
  _$$BluetoothMessageFinishCopyWith<_$BluetoothMessageFinish> get copyWith =>
      __$$BluetoothMessageFinishCopyWithImpl<_$BluetoothMessageFinish>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timeStamp) finish,
    required TResult Function(String time) countdown,
    required TResult Function(String time) voice,
    required TResult Function(String json) moduleSettings,
    required TResult Function() empty,
  }) {
    return finish(time, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
  }) {
    return finish?.call(time, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(time, timeStamp);
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
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
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
      required final DateTime timeStamp}) = _$BluetoothMessageFinish;

  String get time;
  DateTime get timeStamp;
  @JsonKey(ignore: true)
  _$$BluetoothMessageFinishCopyWith<_$BluetoothMessageFinish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageCountdownCopyWith<$Res> {
  factory _$$BluetoothMessageCountdownCopyWith(
          _$BluetoothMessageCountdown value,
          $Res Function(_$BluetoothMessageCountdown) then) =
      __$$BluetoothMessageCountdownCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class __$$BluetoothMessageCountdownCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$BluetoothMessageCountdownCopyWith<$Res> {
  __$$BluetoothMessageCountdownCopyWithImpl(_$BluetoothMessageCountdown _value,
      $Res Function(_$BluetoothMessageCountdown) _then)
      : super(_value, (v) => _then(v as _$BluetoothMessageCountdown));

  @override
  _$BluetoothMessageCountdown get _value =>
      super._value as _$BluetoothMessageCountdown;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$BluetoothMessageCountdown(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageCountdown implements BluetoothMessageCountdown {
  const _$BluetoothMessageCountdown({required this.time});

  @override
  final String time;

  @override
  String toString() {
    return 'BluetoothMessage.countdown(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageCountdown &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$BluetoothMessageCountdownCopyWith<_$BluetoothMessageCountdown>
      get copyWith => __$$BluetoothMessageCountdownCopyWithImpl<
          _$BluetoothMessageCountdown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timeStamp) finish,
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
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
  }) {
    return countdown?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
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
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
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
      _$BluetoothMessageCountdown;

  String get time;
  @JsonKey(ignore: true)
  _$$BluetoothMessageCountdownCopyWith<_$BluetoothMessageCountdown>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageVoiceCopyWith<$Res> {
  factory _$$BluetoothMessageVoiceCopyWith(_$BluetoothMessageVoice value,
          $Res Function(_$BluetoothMessageVoice) then) =
      __$$BluetoothMessageVoiceCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class __$$BluetoothMessageVoiceCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$BluetoothMessageVoiceCopyWith<$Res> {
  __$$BluetoothMessageVoiceCopyWithImpl(_$BluetoothMessageVoice _value,
      $Res Function(_$BluetoothMessageVoice) _then)
      : super(_value, (v) => _then(v as _$BluetoothMessageVoice));

  @override
  _$BluetoothMessageVoice get _value => super._value as _$BluetoothMessageVoice;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$BluetoothMessageVoice(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageVoice implements BluetoothMessageVoice {
  const _$BluetoothMessageVoice({required this.time});

  @override
  final String time;

  @override
  String toString() {
    return 'BluetoothMessage.voice(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageVoice &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$BluetoothMessageVoiceCopyWith<_$BluetoothMessageVoice> get copyWith =>
      __$$BluetoothMessageVoiceCopyWithImpl<_$BluetoothMessageVoice>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timeStamp) finish,
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
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
  }) {
    return voice?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
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
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
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
      _$BluetoothMessageVoice;

  String get time;
  @JsonKey(ignore: true)
  _$$BluetoothMessageVoiceCopyWith<_$BluetoothMessageVoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageModuleSettingsCopyWith<$Res> {
  factory _$$BluetoothMessageModuleSettingsCopyWith(
          _$BluetoothMessageModuleSettings value,
          $Res Function(_$BluetoothMessageModuleSettings) then) =
      __$$BluetoothMessageModuleSettingsCopyWithImpl<$Res>;
  $Res call({String json});
}

/// @nodoc
class __$$BluetoothMessageModuleSettingsCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$BluetoothMessageModuleSettingsCopyWith<$Res> {
  __$$BluetoothMessageModuleSettingsCopyWithImpl(
      _$BluetoothMessageModuleSettings _value,
      $Res Function(_$BluetoothMessageModuleSettings) _then)
      : super(_value, (v) => _then(v as _$BluetoothMessageModuleSettings));

  @override
  _$BluetoothMessageModuleSettings get _value =>
      super._value as _$BluetoothMessageModuleSettings;

  @override
  $Res call({
    Object? json = freezed,
  }) {
    return _then(_$BluetoothMessageModuleSettings(
      json: json == freezed
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BluetoothMessageModuleSettings
    implements BluetoothMessageModuleSettings {
  const _$BluetoothMessageModuleSettings({required this.json});

  @override
  final String json;

  @override
  String toString() {
    return 'BluetoothMessage.moduleSettings(json: $json)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothMessageModuleSettings &&
            const DeepCollectionEquality().equals(other.json, json));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(json));

  @JsonKey(ignore: true)
  @override
  _$$BluetoothMessageModuleSettingsCopyWith<_$BluetoothMessageModuleSettings>
      get copyWith => __$$BluetoothMessageModuleSettingsCopyWithImpl<
          _$BluetoothMessageModuleSettings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timeStamp) finish,
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
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
  }) {
    return moduleSettings?.call(json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
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
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
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
      _$BluetoothMessageModuleSettings;

  String get json;
  @JsonKey(ignore: true)
  _$$BluetoothMessageModuleSettingsCopyWith<_$BluetoothMessageModuleSettings>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothMessageEmptyCopyWith<$Res> {
  factory _$$BluetoothMessageEmptyCopyWith(_$BluetoothMessageEmpty value,
          $Res Function(_$BluetoothMessageEmpty) then) =
      __$$BluetoothMessageEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothMessageEmptyCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$BluetoothMessageEmptyCopyWith<$Res> {
  __$$BluetoothMessageEmptyCopyWithImpl(_$BluetoothMessageEmpty _value,
      $Res Function(_$BluetoothMessageEmpty) _then)
      : super(_value, (v) => _then(v as _$BluetoothMessageEmpty));

  @override
  _$BluetoothMessageEmpty get _value => super._value as _$BluetoothMessageEmpty;
}

/// @nodoc

class _$BluetoothMessageEmpty implements BluetoothMessageEmpty {
  const _$BluetoothMessageEmpty();

  @override
  String toString() {
    return 'BluetoothMessage.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BluetoothMessageEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutomaticStart automaticStart) automaticStart,
    required TResult Function(String time, DateTime timeStamp) finish,
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
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
    TResult Function(String time)? countdown,
    TResult Function(String time)? voice,
    TResult Function(String json)? moduleSettings,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutomaticStart automaticStart)? automaticStart,
    TResult Function(String time, DateTime timeStamp)? finish,
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
    TResult Function(BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(BluetoothMessageFinish value)? finish,
    TResult Function(BluetoothMessageCountdown value)? countdown,
    TResult Function(BluetoothMessageVoice value)? voice,
    TResult Function(BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(BluetoothMessageEmpty value)? empty,
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
  const factory BluetoothMessageEmpty() = _$BluetoothMessageEmpty;
}
