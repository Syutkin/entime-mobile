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
    required TResult Function(_BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(_BluetoothMessageFinish value) finish,
    required TResult Function(_BluetoothMessageCountdown value) countdown,
    required TResult Function(_BluetoothMessageVoice value) voice,
    required TResult Function(_BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(_BluetoothMessageEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
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
abstract class _$$_BluetoothMessageAutomaticStartCopyWith<$Res> {
  factory _$$_BluetoothMessageAutomaticStartCopyWith(
          _$_BluetoothMessageAutomaticStart value,
          $Res Function(_$_BluetoothMessageAutomaticStart) then) =
      __$$_BluetoothMessageAutomaticStartCopyWithImpl<$Res>;
  $Res call({AutomaticStart automaticStart});

  $AutomaticStartCopyWith<$Res> get automaticStart;
}

/// @nodoc
class __$$_BluetoothMessageAutomaticStartCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$_BluetoothMessageAutomaticStartCopyWith<$Res> {
  __$$_BluetoothMessageAutomaticStartCopyWithImpl(
      _$_BluetoothMessageAutomaticStart _value,
      $Res Function(_$_BluetoothMessageAutomaticStart) _then)
      : super(_value, (v) => _then(v as _$_BluetoothMessageAutomaticStart));

  @override
  _$_BluetoothMessageAutomaticStart get _value =>
      super._value as _$_BluetoothMessageAutomaticStart;

  @override
  $Res call({
    Object? automaticStart = freezed,
  }) {
    return _then(_$_BluetoothMessageAutomaticStart(
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

class _$_BluetoothMessageAutomaticStart
    implements _BluetoothMessageAutomaticStart {
  const _$_BluetoothMessageAutomaticStart({required this.automaticStart});

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
            other is _$_BluetoothMessageAutomaticStart &&
            const DeepCollectionEquality()
                .equals(other.automaticStart, automaticStart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(automaticStart));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothMessageAutomaticStartCopyWith<_$_BluetoothMessageAutomaticStart>
      get copyWith => __$$_BluetoothMessageAutomaticStartCopyWithImpl<
          _$_BluetoothMessageAutomaticStart>(this, _$identity);

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
    required TResult Function(_BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(_BluetoothMessageFinish value) finish,
    required TResult Function(_BluetoothMessageCountdown value) countdown,
    required TResult Function(_BluetoothMessageVoice value) voice,
    required TResult Function(_BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(_BluetoothMessageEmpty value) empty,
  }) {
    return automaticStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
  }) {
    return automaticStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (automaticStart != null) {
      return automaticStart(this);
    }
    return orElse();
  }
}

abstract class _BluetoothMessageAutomaticStart implements BluetoothMessage {
  const factory _BluetoothMessageAutomaticStart(
          {required final AutomaticStart automaticStart}) =
      _$_BluetoothMessageAutomaticStart;

  AutomaticStart get automaticStart;
  @JsonKey(ignore: true)
  _$$_BluetoothMessageAutomaticStartCopyWith<_$_BluetoothMessageAutomaticStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BluetoothMessageFinishCopyWith<$Res> {
  factory _$$_BluetoothMessageFinishCopyWith(_$_BluetoothMessageFinish value,
          $Res Function(_$_BluetoothMessageFinish) then) =
      __$$_BluetoothMessageFinishCopyWithImpl<$Res>;
  $Res call({String time, DateTime timeStamp});
}

/// @nodoc
class __$$_BluetoothMessageFinishCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$_BluetoothMessageFinishCopyWith<$Res> {
  __$$_BluetoothMessageFinishCopyWithImpl(_$_BluetoothMessageFinish _value,
      $Res Function(_$_BluetoothMessageFinish) _then)
      : super(_value, (v) => _then(v as _$_BluetoothMessageFinish));

  @override
  _$_BluetoothMessageFinish get _value =>
      super._value as _$_BluetoothMessageFinish;

  @override
  $Res call({
    Object? time = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_BluetoothMessageFinish(
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

class _$_BluetoothMessageFinish implements _BluetoothMessageFinish {
  const _$_BluetoothMessageFinish(
      {required this.time, required this.timeStamp});

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
            other is _$_BluetoothMessageFinish &&
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
  _$$_BluetoothMessageFinishCopyWith<_$_BluetoothMessageFinish> get copyWith =>
      __$$_BluetoothMessageFinishCopyWithImpl<_$_BluetoothMessageFinish>(
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
    required TResult Function(_BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(_BluetoothMessageFinish value) finish,
    required TResult Function(_BluetoothMessageCountdown value) countdown,
    required TResult Function(_BluetoothMessageVoice value) voice,
    required TResult Function(_BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(_BluetoothMessageEmpty value) empty,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _BluetoothMessageFinish implements BluetoothMessage {
  const factory _BluetoothMessageFinish(
      {required final String time,
      required final DateTime timeStamp}) = _$_BluetoothMessageFinish;

  String get time;
  DateTime get timeStamp;
  @JsonKey(ignore: true)
  _$$_BluetoothMessageFinishCopyWith<_$_BluetoothMessageFinish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BluetoothMessageCountdownCopyWith<$Res> {
  factory _$$_BluetoothMessageCountdownCopyWith(
          _$_BluetoothMessageCountdown value,
          $Res Function(_$_BluetoothMessageCountdown) then) =
      __$$_BluetoothMessageCountdownCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class __$$_BluetoothMessageCountdownCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$_BluetoothMessageCountdownCopyWith<$Res> {
  __$$_BluetoothMessageCountdownCopyWithImpl(
      _$_BluetoothMessageCountdown _value,
      $Res Function(_$_BluetoothMessageCountdown) _then)
      : super(_value, (v) => _then(v as _$_BluetoothMessageCountdown));

  @override
  _$_BluetoothMessageCountdown get _value =>
      super._value as _$_BluetoothMessageCountdown;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$_BluetoothMessageCountdown(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BluetoothMessageCountdown implements _BluetoothMessageCountdown {
  const _$_BluetoothMessageCountdown({required this.time});

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
            other is _$_BluetoothMessageCountdown &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothMessageCountdownCopyWith<_$_BluetoothMessageCountdown>
      get copyWith => __$$_BluetoothMessageCountdownCopyWithImpl<
          _$_BluetoothMessageCountdown>(this, _$identity);

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
    required TResult Function(_BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(_BluetoothMessageFinish value) finish,
    required TResult Function(_BluetoothMessageCountdown value) countdown,
    required TResult Function(_BluetoothMessageVoice value) voice,
    required TResult Function(_BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(_BluetoothMessageEmpty value) empty,
  }) {
    return countdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
  }) {
    return countdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (countdown != null) {
      return countdown(this);
    }
    return orElse();
  }
}

abstract class _BluetoothMessageCountdown implements BluetoothMessage {
  const factory _BluetoothMessageCountdown({required final String time}) =
      _$_BluetoothMessageCountdown;

  String get time;
  @JsonKey(ignore: true)
  _$$_BluetoothMessageCountdownCopyWith<_$_BluetoothMessageCountdown>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BluetoothMessageVoiceCopyWith<$Res> {
  factory _$$_BluetoothMessageVoiceCopyWith(_$_BluetoothMessageVoice value,
          $Res Function(_$_BluetoothMessageVoice) then) =
      __$$_BluetoothMessageVoiceCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class __$$_BluetoothMessageVoiceCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$_BluetoothMessageVoiceCopyWith<$Res> {
  __$$_BluetoothMessageVoiceCopyWithImpl(_$_BluetoothMessageVoice _value,
      $Res Function(_$_BluetoothMessageVoice) _then)
      : super(_value, (v) => _then(v as _$_BluetoothMessageVoice));

  @override
  _$_BluetoothMessageVoice get _value =>
      super._value as _$_BluetoothMessageVoice;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$_BluetoothMessageVoice(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BluetoothMessageVoice implements _BluetoothMessageVoice {
  const _$_BluetoothMessageVoice({required this.time});

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
            other is _$_BluetoothMessageVoice &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothMessageVoiceCopyWith<_$_BluetoothMessageVoice> get copyWith =>
      __$$_BluetoothMessageVoiceCopyWithImpl<_$_BluetoothMessageVoice>(
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
    required TResult Function(_BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(_BluetoothMessageFinish value) finish,
    required TResult Function(_BluetoothMessageCountdown value) countdown,
    required TResult Function(_BluetoothMessageVoice value) voice,
    required TResult Function(_BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(_BluetoothMessageEmpty value) empty,
  }) {
    return voice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
  }) {
    return voice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (voice != null) {
      return voice(this);
    }
    return orElse();
  }
}

abstract class _BluetoothMessageVoice implements BluetoothMessage {
  const factory _BluetoothMessageVoice({required final String time}) =
      _$_BluetoothMessageVoice;

  String get time;
  @JsonKey(ignore: true)
  _$$_BluetoothMessageVoiceCopyWith<_$_BluetoothMessageVoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BluetoothMessageModuleSettingsCopyWith<$Res> {
  factory _$$_BluetoothMessageModuleSettingsCopyWith(
          _$_BluetoothMessageModuleSettings value,
          $Res Function(_$_BluetoothMessageModuleSettings) then) =
      __$$_BluetoothMessageModuleSettingsCopyWithImpl<$Res>;
  $Res call({String json});
}

/// @nodoc
class __$$_BluetoothMessageModuleSettingsCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$_BluetoothMessageModuleSettingsCopyWith<$Res> {
  __$$_BluetoothMessageModuleSettingsCopyWithImpl(
      _$_BluetoothMessageModuleSettings _value,
      $Res Function(_$_BluetoothMessageModuleSettings) _then)
      : super(_value, (v) => _then(v as _$_BluetoothMessageModuleSettings));

  @override
  _$_BluetoothMessageModuleSettings get _value =>
      super._value as _$_BluetoothMessageModuleSettings;

  @override
  $Res call({
    Object? json = freezed,
  }) {
    return _then(_$_BluetoothMessageModuleSettings(
      json: json == freezed
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BluetoothMessageModuleSettings
    implements _BluetoothMessageModuleSettings {
  const _$_BluetoothMessageModuleSettings({required this.json});

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
            other is _$_BluetoothMessageModuleSettings &&
            const DeepCollectionEquality().equals(other.json, json));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(json));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothMessageModuleSettingsCopyWith<_$_BluetoothMessageModuleSettings>
      get copyWith => __$$_BluetoothMessageModuleSettingsCopyWithImpl<
          _$_BluetoothMessageModuleSettings>(this, _$identity);

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
    required TResult Function(_BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(_BluetoothMessageFinish value) finish,
    required TResult Function(_BluetoothMessageCountdown value) countdown,
    required TResult Function(_BluetoothMessageVoice value) voice,
    required TResult Function(_BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(_BluetoothMessageEmpty value) empty,
  }) {
    return moduleSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
  }) {
    return moduleSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (moduleSettings != null) {
      return moduleSettings(this);
    }
    return orElse();
  }
}

abstract class _BluetoothMessageModuleSettings implements BluetoothMessage {
  const factory _BluetoothMessageModuleSettings({required final String json}) =
      _$_BluetoothMessageModuleSettings;

  String get json;
  @JsonKey(ignore: true)
  _$$_BluetoothMessageModuleSettingsCopyWith<_$_BluetoothMessageModuleSettings>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BluetoothMessageEmptyCopyWith<$Res> {
  factory _$$_BluetoothMessageEmptyCopyWith(_$_BluetoothMessageEmpty value,
          $Res Function(_$_BluetoothMessageEmpty) then) =
      __$$_BluetoothMessageEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BluetoothMessageEmptyCopyWithImpl<$Res>
    extends _$BluetoothMessageCopyWithImpl<$Res>
    implements _$$_BluetoothMessageEmptyCopyWith<$Res> {
  __$$_BluetoothMessageEmptyCopyWithImpl(_$_BluetoothMessageEmpty _value,
      $Res Function(_$_BluetoothMessageEmpty) _then)
      : super(_value, (v) => _then(v as _$_BluetoothMessageEmpty));

  @override
  _$_BluetoothMessageEmpty get _value =>
      super._value as _$_BluetoothMessageEmpty;
}

/// @nodoc

class _$_BluetoothMessageEmpty implements _BluetoothMessageEmpty {
  const _$_BluetoothMessageEmpty();

  @override
  String toString() {
    return 'BluetoothMessage.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BluetoothMessageEmpty);
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
    required TResult Function(_BluetoothMessageAutomaticStart value)
        automaticStart,
    required TResult Function(_BluetoothMessageFinish value) finish,
    required TResult Function(_BluetoothMessageCountdown value) countdown,
    required TResult Function(_BluetoothMessageVoice value) voice,
    required TResult Function(_BluetoothMessageModuleSettings value)
        moduleSettings,
    required TResult Function(_BluetoothMessageEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BluetoothMessageAutomaticStart value)? automaticStart,
    TResult Function(_BluetoothMessageFinish value)? finish,
    TResult Function(_BluetoothMessageCountdown value)? countdown,
    TResult Function(_BluetoothMessageVoice value)? voice,
    TResult Function(_BluetoothMessageModuleSettings value)? moduleSettings,
    TResult Function(_BluetoothMessageEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _BluetoothMessageEmpty implements BluetoothMessage {
  const factory _BluetoothMessageEmpty() = _$_BluetoothMessageEmpty;
}
