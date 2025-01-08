// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String json) get,
    required TResult Function(ModuleSettingsProvider moduleSettings) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String json)? get,
    TResult? Function(ModuleSettingsProvider moduleSettings)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String json)? get,
    TResult Function(ModuleSettingsProvider moduleSettings)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetModuleSettings value) get,
    required TResult Function(UpdateModuleSettings value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetModuleSettings value)? get,
    TResult? Function(UpdateModuleSettings value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetModuleSettings value)? get,
    TResult Function(UpdateModuleSettings value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleSettingsEventCopyWith<$Res> {
  factory $ModuleSettingsEventCopyWith(
          ModuleSettingsEvent value, $Res Function(ModuleSettingsEvent) then) =
      _$ModuleSettingsEventCopyWithImpl<$Res, ModuleSettingsEvent>;
}

/// @nodoc
class _$ModuleSettingsEventCopyWithImpl<$Res, $Val extends ModuleSettingsEvent>
    implements $ModuleSettingsEventCopyWith<$Res> {
  _$ModuleSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetModuleSettingsImplCopyWith<$Res> {
  factory _$$GetModuleSettingsImplCopyWith(_$GetModuleSettingsImpl value,
          $Res Function(_$GetModuleSettingsImpl) then) =
      __$$GetModuleSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String json});
}

/// @nodoc
class __$$GetModuleSettingsImplCopyWithImpl<$Res>
    extends _$ModuleSettingsEventCopyWithImpl<$Res, _$GetModuleSettingsImpl>
    implements _$$GetModuleSettingsImplCopyWith<$Res> {
  __$$GetModuleSettingsImplCopyWithImpl(_$GetModuleSettingsImpl _value,
      $Res Function(_$GetModuleSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = null,
  }) {
    return _then(_$GetModuleSettingsImpl(
      null == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetModuleSettingsImpl implements GetModuleSettings {
  const _$GetModuleSettingsImpl(this.json);

  @override
  final String json;

  @override
  String toString() {
    return 'ModuleSettingsEvent.get(json: $json)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetModuleSettingsImpl &&
            (identical(other.json, json) || other.json == json));
  }

  @override
  int get hashCode => Object.hash(runtimeType, json);

  /// Create a copy of ModuleSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetModuleSettingsImplCopyWith<_$GetModuleSettingsImpl> get copyWith =>
      __$$GetModuleSettingsImplCopyWithImpl<_$GetModuleSettingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String json) get,
    required TResult Function(ModuleSettingsProvider moduleSettings) update,
  }) {
    return get(json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String json)? get,
    TResult? Function(ModuleSettingsProvider moduleSettings)? update,
  }) {
    return get?.call(json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String json)? get,
    TResult Function(ModuleSettingsProvider moduleSettings)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetModuleSettings value) get,
    required TResult Function(UpdateModuleSettings value) update,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetModuleSettings value)? get,
    TResult? Function(UpdateModuleSettings value)? update,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetModuleSettings value)? get,
    TResult Function(UpdateModuleSettings value)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GetModuleSettings implements ModuleSettingsEvent {
  const factory GetModuleSettings(final String json) = _$GetModuleSettingsImpl;

  String get json;

  /// Create a copy of ModuleSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetModuleSettingsImplCopyWith<_$GetModuleSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateModuleSettingsImplCopyWith<$Res> {
  factory _$$UpdateModuleSettingsImplCopyWith(_$UpdateModuleSettingsImpl value,
          $Res Function(_$UpdateModuleSettingsImpl) then) =
      __$$UpdateModuleSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModuleSettingsProvider moduleSettings});
}

/// @nodoc
class __$$UpdateModuleSettingsImplCopyWithImpl<$Res>
    extends _$ModuleSettingsEventCopyWithImpl<$Res, _$UpdateModuleSettingsImpl>
    implements _$$UpdateModuleSettingsImplCopyWith<$Res> {
  __$$UpdateModuleSettingsImplCopyWithImpl(_$UpdateModuleSettingsImpl _value,
      $Res Function(_$UpdateModuleSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleSettings = null,
  }) {
    return _then(_$UpdateModuleSettingsImpl(
      null == moduleSettings
          ? _value.moduleSettings
          : moduleSettings // ignore: cast_nullable_to_non_nullable
              as ModuleSettingsProvider,
    ));
  }
}

/// @nodoc

class _$UpdateModuleSettingsImpl implements UpdateModuleSettings {
  const _$UpdateModuleSettingsImpl(this.moduleSettings);

  @override
  final ModuleSettingsProvider moduleSettings;

  @override
  String toString() {
    return 'ModuleSettingsEvent.update(moduleSettings: $moduleSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateModuleSettingsImpl &&
            (identical(other.moduleSettings, moduleSettings) ||
                other.moduleSettings == moduleSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moduleSettings);

  /// Create a copy of ModuleSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateModuleSettingsImplCopyWith<_$UpdateModuleSettingsImpl>
      get copyWith =>
          __$$UpdateModuleSettingsImplCopyWithImpl<_$UpdateModuleSettingsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String json) get,
    required TResult Function(ModuleSettingsProvider moduleSettings) update,
  }) {
    return update(moduleSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String json)? get,
    TResult? Function(ModuleSettingsProvider moduleSettings)? update,
  }) {
    return update?.call(moduleSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String json)? get,
    TResult Function(ModuleSettingsProvider moduleSettings)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(moduleSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetModuleSettings value) get,
    required TResult Function(UpdateModuleSettings value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetModuleSettings value)? get,
    TResult? Function(UpdateModuleSettings value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetModuleSettings value)? get,
    TResult Function(UpdateModuleSettings value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateModuleSettings implements ModuleSettingsEvent {
  const factory UpdateModuleSettings(
      final ModuleSettingsProvider moduleSettings) = _$UpdateModuleSettingsImpl;

  ModuleSettingsProvider get moduleSettings;

  /// Create a copy of ModuleSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateModuleSettingsImplCopyWith<_$UpdateModuleSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModuleSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(ModuleSettingsProvider moduleSettings) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSettingsUninitialized value) uninitialized,
    required TResult Function(ModuleSettingsLoading value) loading,
    required TResult Function(ModuleSettingsLoaded value) loaded,
    required TResult Function(ModuleSettingsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult? Function(ModuleSettingsLoading value)? loading,
    TResult? Function(ModuleSettingsLoaded value)? loaded,
    TResult? Function(ModuleSettingsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleSettingsStateCopyWith<$Res> {
  factory $ModuleSettingsStateCopyWith(
          ModuleSettingsState value, $Res Function(ModuleSettingsState) then) =
      _$ModuleSettingsStateCopyWithImpl<$Res, ModuleSettingsState>;
}

/// @nodoc
class _$ModuleSettingsStateCopyWithImpl<$Res, $Val extends ModuleSettingsState>
    implements $ModuleSettingsStateCopyWith<$Res> {
  _$ModuleSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ModuleSettingsUninitializedImplCopyWith<$Res> {
  factory _$$ModuleSettingsUninitializedImplCopyWith(
          _$ModuleSettingsUninitializedImpl value,
          $Res Function(_$ModuleSettingsUninitializedImpl) then) =
      __$$ModuleSettingsUninitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModuleSettingsUninitializedImplCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res,
        _$ModuleSettingsUninitializedImpl>
    implements _$$ModuleSettingsUninitializedImplCopyWith<$Res> {
  __$$ModuleSettingsUninitializedImplCopyWithImpl(
      _$ModuleSettingsUninitializedImpl _value,
      $Res Function(_$ModuleSettingsUninitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ModuleSettingsUninitializedImpl implements ModuleSettingsUninitialized {
  const _$ModuleSettingsUninitializedImpl();

  @override
  String toString() {
    return 'ModuleSettingsState.uninitialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleSettingsUninitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(ModuleSettingsProvider moduleSettings) loaded,
    required TResult Function() error,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult? Function()? error,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSettingsUninitialized value) uninitialized,
    required TResult Function(ModuleSettingsLoading value) loading,
    required TResult Function(ModuleSettingsLoaded value) loaded,
    required TResult Function(ModuleSettingsError value) error,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult? Function(ModuleSettingsLoading value)? loading,
    TResult? Function(ModuleSettingsLoaded value)? loaded,
    TResult? Function(ModuleSettingsError value)? error,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class ModuleSettingsUninitialized implements ModuleSettingsState {
  const factory ModuleSettingsUninitialized() =
      _$ModuleSettingsUninitializedImpl;
}

/// @nodoc
abstract class _$$ModuleSettingsLoadingImplCopyWith<$Res> {
  factory _$$ModuleSettingsLoadingImplCopyWith(
          _$ModuleSettingsLoadingImpl value,
          $Res Function(_$ModuleSettingsLoadingImpl) then) =
      __$$ModuleSettingsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModuleSettingsLoadingImplCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res, _$ModuleSettingsLoadingImpl>
    implements _$$ModuleSettingsLoadingImplCopyWith<$Res> {
  __$$ModuleSettingsLoadingImplCopyWithImpl(_$ModuleSettingsLoadingImpl _value,
      $Res Function(_$ModuleSettingsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ModuleSettingsLoadingImpl implements ModuleSettingsLoading {
  const _$ModuleSettingsLoadingImpl();

  @override
  String toString() {
    return 'ModuleSettingsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleSettingsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(ModuleSettingsProvider moduleSettings) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSettingsUninitialized value) uninitialized,
    required TResult Function(ModuleSettingsLoading value) loading,
    required TResult Function(ModuleSettingsLoaded value) loaded,
    required TResult Function(ModuleSettingsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult? Function(ModuleSettingsLoading value)? loading,
    TResult? Function(ModuleSettingsLoaded value)? loaded,
    TResult? Function(ModuleSettingsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ModuleSettingsLoading implements ModuleSettingsState {
  const factory ModuleSettingsLoading() = _$ModuleSettingsLoadingImpl;
}

/// @nodoc
abstract class _$$ModuleSettingsLoadedImplCopyWith<$Res> {
  factory _$$ModuleSettingsLoadedImplCopyWith(_$ModuleSettingsLoadedImpl value,
          $Res Function(_$ModuleSettingsLoadedImpl) then) =
      __$$ModuleSettingsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModuleSettingsProvider moduleSettings});
}

/// @nodoc
class __$$ModuleSettingsLoadedImplCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res, _$ModuleSettingsLoadedImpl>
    implements _$$ModuleSettingsLoadedImplCopyWith<$Res> {
  __$$ModuleSettingsLoadedImplCopyWithImpl(_$ModuleSettingsLoadedImpl _value,
      $Res Function(_$ModuleSettingsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleSettings = null,
  }) {
    return _then(_$ModuleSettingsLoadedImpl(
      null == moduleSettings
          ? _value.moduleSettings
          : moduleSettings // ignore: cast_nullable_to_non_nullable
              as ModuleSettingsProvider,
    ));
  }
}

/// @nodoc

class _$ModuleSettingsLoadedImpl implements ModuleSettingsLoaded {
  const _$ModuleSettingsLoadedImpl(this.moduleSettings);

  @override
  final ModuleSettingsProvider moduleSettings;

  @override
  String toString() {
    return 'ModuleSettingsState.loaded(moduleSettings: $moduleSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleSettingsLoadedImpl &&
            (identical(other.moduleSettings, moduleSettings) ||
                other.moduleSettings == moduleSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moduleSettings);

  /// Create a copy of ModuleSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleSettingsLoadedImplCopyWith<_$ModuleSettingsLoadedImpl>
      get copyWith =>
          __$$ModuleSettingsLoadedImplCopyWithImpl<_$ModuleSettingsLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(ModuleSettingsProvider moduleSettings) loaded,
    required TResult Function() error,
  }) {
    return loaded(moduleSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(moduleSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(moduleSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSettingsUninitialized value) uninitialized,
    required TResult Function(ModuleSettingsLoading value) loading,
    required TResult Function(ModuleSettingsLoaded value) loaded,
    required TResult Function(ModuleSettingsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult? Function(ModuleSettingsLoading value)? loading,
    TResult? Function(ModuleSettingsLoaded value)? loaded,
    TResult? Function(ModuleSettingsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ModuleSettingsLoaded implements ModuleSettingsState {
  const factory ModuleSettingsLoaded(
      final ModuleSettingsProvider moduleSettings) = _$ModuleSettingsLoadedImpl;

  ModuleSettingsProvider get moduleSettings;

  /// Create a copy of ModuleSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleSettingsLoadedImplCopyWith<_$ModuleSettingsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModuleSettingsErrorImplCopyWith<$Res> {
  factory _$$ModuleSettingsErrorImplCopyWith(_$ModuleSettingsErrorImpl value,
          $Res Function(_$ModuleSettingsErrorImpl) then) =
      __$$ModuleSettingsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModuleSettingsErrorImplCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res, _$ModuleSettingsErrorImpl>
    implements _$$ModuleSettingsErrorImplCopyWith<$Res> {
  __$$ModuleSettingsErrorImplCopyWithImpl(_$ModuleSettingsErrorImpl _value,
      $Res Function(_$ModuleSettingsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ModuleSettingsErrorImpl implements ModuleSettingsError {
  const _$ModuleSettingsErrorImpl();

  @override
  String toString() {
    return 'ModuleSettingsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleSettingsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(ModuleSettingsProvider moduleSettings) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSettingsUninitialized value) uninitialized,
    required TResult Function(ModuleSettingsLoading value) loading,
    required TResult Function(ModuleSettingsLoaded value) loaded,
    required TResult Function(ModuleSettingsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult? Function(ModuleSettingsLoading value)? loading,
    TResult? Function(ModuleSettingsLoaded value)? loaded,
    TResult? Function(ModuleSettingsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ModuleSettingsError implements ModuleSettingsState {
  const factory ModuleSettingsError() = _$ModuleSettingsErrorImpl;
}
