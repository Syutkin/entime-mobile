// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setDefault,
    required TResult Function(AppSettings settings) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setDefault,
    TResult? Function(AppSettings settings)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setDefault,
    TResult Function(AppSettings settings)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsEventInitialize value) initialize,
    required TResult Function(SettingsEventSetDefault value) setDefault,
    required TResult Function(SettingsEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsEventInitialize value)? initialize,
    TResult? Function(SettingsEventSetDefault value)? setDefault,
    TResult? Function(SettingsEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsEventInitialize value)? initialize,
    TResult Function(SettingsEventSetDefault value)? setDefault,
    TResult Function(SettingsEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsEventInitializeImplCopyWith<$Res> {
  factory _$$SettingsEventInitializeImplCopyWith(
          _$SettingsEventInitializeImpl value,
          $Res Function(_$SettingsEventInitializeImpl) then) =
      __$$SettingsEventInitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsEventInitializeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventInitializeImpl>
    implements _$$SettingsEventInitializeImplCopyWith<$Res> {
  __$$SettingsEventInitializeImplCopyWithImpl(
      _$SettingsEventInitializeImpl _value,
      $Res Function(_$SettingsEventInitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsEventInitializeImpl implements SettingsEventInitialize {
  const _$SettingsEventInitializeImpl();

  @override
  String toString() {
    return 'SettingsEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventInitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setDefault,
    required TResult Function(AppSettings settings) update,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setDefault,
    TResult? Function(AppSettings settings)? update,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setDefault,
    TResult Function(AppSettings settings)? update,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsEventInitialize value) initialize,
    required TResult Function(SettingsEventSetDefault value) setDefault,
    required TResult Function(SettingsEventUpdate value) update,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsEventInitialize value)? initialize,
    TResult? Function(SettingsEventSetDefault value)? setDefault,
    TResult? Function(SettingsEventUpdate value)? update,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsEventInitialize value)? initialize,
    TResult Function(SettingsEventSetDefault value)? setDefault,
    TResult Function(SettingsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class SettingsEventInitialize implements SettingsEvent {
  const factory SettingsEventInitialize() = _$SettingsEventInitializeImpl;
}

/// @nodoc
abstract class _$$SettingsEventSetDefaultImplCopyWith<$Res> {
  factory _$$SettingsEventSetDefaultImplCopyWith(
          _$SettingsEventSetDefaultImpl value,
          $Res Function(_$SettingsEventSetDefaultImpl) then) =
      __$$SettingsEventSetDefaultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsEventSetDefaultImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventSetDefaultImpl>
    implements _$$SettingsEventSetDefaultImplCopyWith<$Res> {
  __$$SettingsEventSetDefaultImplCopyWithImpl(
      _$SettingsEventSetDefaultImpl _value,
      $Res Function(_$SettingsEventSetDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsEventSetDefaultImpl implements SettingsEventSetDefault {
  const _$SettingsEventSetDefaultImpl();

  @override
  String toString() {
    return 'SettingsEvent.setDefault()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventSetDefaultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setDefault,
    required TResult Function(AppSettings settings) update,
  }) {
    return setDefault();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setDefault,
    TResult? Function(AppSettings settings)? update,
  }) {
    return setDefault?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setDefault,
    TResult Function(AppSettings settings)? update,
    required TResult orElse(),
  }) {
    if (setDefault != null) {
      return setDefault();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsEventInitialize value) initialize,
    required TResult Function(SettingsEventSetDefault value) setDefault,
    required TResult Function(SettingsEventUpdate value) update,
  }) {
    return setDefault(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsEventInitialize value)? initialize,
    TResult? Function(SettingsEventSetDefault value)? setDefault,
    TResult? Function(SettingsEventUpdate value)? update,
  }) {
    return setDefault?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsEventInitialize value)? initialize,
    TResult Function(SettingsEventSetDefault value)? setDefault,
    TResult Function(SettingsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (setDefault != null) {
      return setDefault(this);
    }
    return orElse();
  }
}

abstract class SettingsEventSetDefault implements SettingsEvent {
  const factory SettingsEventSetDefault() = _$SettingsEventSetDefaultImpl;
}

/// @nodoc
abstract class _$$SettingsEventUpdateImplCopyWith<$Res> {
  factory _$$SettingsEventUpdateImplCopyWith(_$SettingsEventUpdateImpl value,
          $Res Function(_$SettingsEventUpdateImpl) then) =
      __$$SettingsEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppSettings settings});

  $AppSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SettingsEventUpdateImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventUpdateImpl>
    implements _$$SettingsEventUpdateImplCopyWith<$Res> {
  __$$SettingsEventUpdateImplCopyWithImpl(_$SettingsEventUpdateImpl _value,
      $Res Function(_$SettingsEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$SettingsEventUpdateImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AppSettings,
    ));
  }

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsCopyWith<$Res> get settings {
    return $AppSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$SettingsEventUpdateImpl implements SettingsEventUpdate {
  const _$SettingsEventUpdateImpl({required this.settings});

  @override
  final AppSettings settings;

  @override
  String toString() {
    return 'SettingsEvent.update(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventUpdateImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventUpdateImplCopyWith<_$SettingsEventUpdateImpl> get copyWith =>
      __$$SettingsEventUpdateImplCopyWithImpl<_$SettingsEventUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() setDefault,
    required TResult Function(AppSettings settings) update,
  }) {
    return update(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? setDefault,
    TResult? Function(AppSettings settings)? update,
  }) {
    return update?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? setDefault,
    TResult Function(AppSettings settings)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsEventInitialize value) initialize,
    required TResult Function(SettingsEventSetDefault value) setDefault,
    required TResult Function(SettingsEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsEventInitialize value)? initialize,
    TResult? Function(SettingsEventSetDefault value)? setDefault,
    TResult? Function(SettingsEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsEventInitialize value)? initialize,
    TResult Function(SettingsEventSetDefault value)? setDefault,
    TResult Function(SettingsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class SettingsEventUpdate implements SettingsEvent {
  const factory SettingsEventUpdate({required final AppSettings settings}) =
      _$SettingsEventUpdateImpl;

  AppSettings get settings;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsEventUpdateImplCopyWith<_$SettingsEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  AppSettings get settings => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({AppSettings settings});

  $AppSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AppSettings,
    ) as $Val);
  }

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsCopyWith<$Res> get settings {
    return $AppSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettings settings});

  @override
  $AppSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$SettingsStateImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AppSettings,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl({required this.settings});

  @override
  final AppSettings settings;

  @override
  String toString() {
    return 'SettingsState(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState({required final AppSettings settings}) =
      _$SettingsStateImpl;

  @override
  AppSettings get settings;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
