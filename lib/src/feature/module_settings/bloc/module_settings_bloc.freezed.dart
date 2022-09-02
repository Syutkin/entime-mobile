// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'module_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function(String json)? get,
    TResult Function(ModuleSettingsProvider moduleSettings)? update,
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
    TResult Function(GetModuleSettings value)? get,
    TResult Function(UpdateModuleSettings value)? update,
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
      _$ModuleSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleSettingsEventCopyWithImpl<$Res>
    implements $ModuleSettingsEventCopyWith<$Res> {
  _$ModuleSettingsEventCopyWithImpl(this._value, this._then);

  final ModuleSettingsEvent _value;
  // ignore: unused_field
  final $Res Function(ModuleSettingsEvent) _then;
}

/// @nodoc
abstract class _$$GetModuleSettingsCopyWith<$Res> {
  factory _$$GetModuleSettingsCopyWith(
          _$GetModuleSettings value, $Res Function(_$GetModuleSettings) then) =
      __$$GetModuleSettingsCopyWithImpl<$Res>;
  $Res call({String json});
}

/// @nodoc
class __$$GetModuleSettingsCopyWithImpl<$Res>
    extends _$ModuleSettingsEventCopyWithImpl<$Res>
    implements _$$GetModuleSettingsCopyWith<$Res> {
  __$$GetModuleSettingsCopyWithImpl(
      _$GetModuleSettings _value, $Res Function(_$GetModuleSettings) _then)
      : super(_value, (v) => _then(v as _$GetModuleSettings));

  @override
  _$GetModuleSettings get _value => super._value as _$GetModuleSettings;

  @override
  $Res call({
    Object? json = freezed,
  }) {
    return _then(_$GetModuleSettings(
      json == freezed
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetModuleSettings implements GetModuleSettings {
  const _$GetModuleSettings(this.json);

  @override
  final String json;

  @override
  String toString() {
    return 'ModuleSettingsEvent.get(json: $json)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetModuleSettings &&
            const DeepCollectionEquality().equals(other.json, json));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(json));

  @JsonKey(ignore: true)
  @override
  _$$GetModuleSettingsCopyWith<_$GetModuleSettings> get copyWith =>
      __$$GetModuleSettingsCopyWithImpl<_$GetModuleSettings>(this, _$identity);

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
    TResult Function(String json)? get,
    TResult Function(ModuleSettingsProvider moduleSettings)? update,
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
    TResult Function(GetModuleSettings value)? get,
    TResult Function(UpdateModuleSettings value)? update,
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
  const factory GetModuleSettings(final String json) = _$GetModuleSettings;

  String get json;
  @JsonKey(ignore: true)
  _$$GetModuleSettingsCopyWith<_$GetModuleSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateModuleSettingsCopyWith<$Res> {
  factory _$$UpdateModuleSettingsCopyWith(_$UpdateModuleSettings value,
          $Res Function(_$UpdateModuleSettings) then) =
      __$$UpdateModuleSettingsCopyWithImpl<$Res>;
  $Res call({ModuleSettingsProvider moduleSettings});
}

/// @nodoc
class __$$UpdateModuleSettingsCopyWithImpl<$Res>
    extends _$ModuleSettingsEventCopyWithImpl<$Res>
    implements _$$UpdateModuleSettingsCopyWith<$Res> {
  __$$UpdateModuleSettingsCopyWithImpl(_$UpdateModuleSettings _value,
      $Res Function(_$UpdateModuleSettings) _then)
      : super(_value, (v) => _then(v as _$UpdateModuleSettings));

  @override
  _$UpdateModuleSettings get _value => super._value as _$UpdateModuleSettings;

  @override
  $Res call({
    Object? moduleSettings = freezed,
  }) {
    return _then(_$UpdateModuleSettings(
      moduleSettings == freezed
          ? _value.moduleSettings
          : moduleSettings // ignore: cast_nullable_to_non_nullable
              as ModuleSettingsProvider,
    ));
  }
}

/// @nodoc

class _$UpdateModuleSettings implements UpdateModuleSettings {
  const _$UpdateModuleSettings(this.moduleSettings);

  @override
  final ModuleSettingsProvider moduleSettings;

  @override
  String toString() {
    return 'ModuleSettingsEvent.update(moduleSettings: $moduleSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateModuleSettings &&
            const DeepCollectionEquality()
                .equals(other.moduleSettings, moduleSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(moduleSettings));

  @JsonKey(ignore: true)
  @override
  _$$UpdateModuleSettingsCopyWith<_$UpdateModuleSettings> get copyWith =>
      __$$UpdateModuleSettingsCopyWithImpl<_$UpdateModuleSettings>(
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
    TResult Function(String json)? get,
    TResult Function(ModuleSettingsProvider moduleSettings)? update,
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
    TResult Function(GetModuleSettings value)? get,
    TResult Function(UpdateModuleSettings value)? update,
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
      final ModuleSettingsProvider moduleSettings) = _$UpdateModuleSettings;

  ModuleSettingsProvider get moduleSettings;
  @JsonKey(ignore: true)
  _$$UpdateModuleSettingsCopyWith<_$UpdateModuleSettings> get copyWith =>
      throw _privateConstructorUsedError;
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
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
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
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
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
      _$ModuleSettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModuleSettingsStateCopyWithImpl<$Res>
    implements $ModuleSettingsStateCopyWith<$Res> {
  _$ModuleSettingsStateCopyWithImpl(this._value, this._then);

  final ModuleSettingsState _value;
  // ignore: unused_field
  final $Res Function(ModuleSettingsState) _then;
}

/// @nodoc
abstract class _$$ModuleSettingsUninitializedCopyWith<$Res> {
  factory _$$ModuleSettingsUninitializedCopyWith(
          _$ModuleSettingsUninitialized value,
          $Res Function(_$ModuleSettingsUninitialized) then) =
      __$$ModuleSettingsUninitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModuleSettingsUninitializedCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res>
    implements _$$ModuleSettingsUninitializedCopyWith<$Res> {
  __$$ModuleSettingsUninitializedCopyWithImpl(
      _$ModuleSettingsUninitialized _value,
      $Res Function(_$ModuleSettingsUninitialized) _then)
      : super(_value, (v) => _then(v as _$ModuleSettingsUninitialized));

  @override
  _$ModuleSettingsUninitialized get _value =>
      super._value as _$ModuleSettingsUninitialized;
}

/// @nodoc

class _$ModuleSettingsUninitialized implements ModuleSettingsUninitialized {
  const _$ModuleSettingsUninitialized();

  @override
  String toString() {
    return 'ModuleSettingsState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleSettingsUninitialized);
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
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
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
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
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
  const factory ModuleSettingsUninitialized() = _$ModuleSettingsUninitialized;
}

/// @nodoc
abstract class _$$ModuleSettingsLoadingCopyWith<$Res> {
  factory _$$ModuleSettingsLoadingCopyWith(_$ModuleSettingsLoading value,
          $Res Function(_$ModuleSettingsLoading) then) =
      __$$ModuleSettingsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModuleSettingsLoadingCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res>
    implements _$$ModuleSettingsLoadingCopyWith<$Res> {
  __$$ModuleSettingsLoadingCopyWithImpl(_$ModuleSettingsLoading _value,
      $Res Function(_$ModuleSettingsLoading) _then)
      : super(_value, (v) => _then(v as _$ModuleSettingsLoading));

  @override
  _$ModuleSettingsLoading get _value => super._value as _$ModuleSettingsLoading;
}

/// @nodoc

class _$ModuleSettingsLoading implements ModuleSettingsLoading {
  const _$ModuleSettingsLoading();

  @override
  String toString() {
    return 'ModuleSettingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ModuleSettingsLoading);
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
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
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
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
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
  const factory ModuleSettingsLoading() = _$ModuleSettingsLoading;
}

/// @nodoc
abstract class _$$ModuleSettingsLoadedCopyWith<$Res> {
  factory _$$ModuleSettingsLoadedCopyWith(_$ModuleSettingsLoaded value,
          $Res Function(_$ModuleSettingsLoaded) then) =
      __$$ModuleSettingsLoadedCopyWithImpl<$Res>;
  $Res call({ModuleSettingsProvider moduleSettings});
}

/// @nodoc
class __$$ModuleSettingsLoadedCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res>
    implements _$$ModuleSettingsLoadedCopyWith<$Res> {
  __$$ModuleSettingsLoadedCopyWithImpl(_$ModuleSettingsLoaded _value,
      $Res Function(_$ModuleSettingsLoaded) _then)
      : super(_value, (v) => _then(v as _$ModuleSettingsLoaded));

  @override
  _$ModuleSettingsLoaded get _value => super._value as _$ModuleSettingsLoaded;

  @override
  $Res call({
    Object? moduleSettings = freezed,
  }) {
    return _then(_$ModuleSettingsLoaded(
      moduleSettings == freezed
          ? _value.moduleSettings
          : moduleSettings // ignore: cast_nullable_to_non_nullable
              as ModuleSettingsProvider,
    ));
  }
}

/// @nodoc

class _$ModuleSettingsLoaded implements ModuleSettingsLoaded {
  const _$ModuleSettingsLoaded(this.moduleSettings);

  @override
  final ModuleSettingsProvider moduleSettings;

  @override
  String toString() {
    return 'ModuleSettingsState.loaded(moduleSettings: $moduleSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleSettingsLoaded &&
            const DeepCollectionEquality()
                .equals(other.moduleSettings, moduleSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(moduleSettings));

  @JsonKey(ignore: true)
  @override
  _$$ModuleSettingsLoadedCopyWith<_$ModuleSettingsLoaded> get copyWith =>
      __$$ModuleSettingsLoadedCopyWithImpl<_$ModuleSettingsLoaded>(
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
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
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
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
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
      final ModuleSettingsProvider moduleSettings) = _$ModuleSettingsLoaded;

  ModuleSettingsProvider get moduleSettings;
  @JsonKey(ignore: true)
  _$$ModuleSettingsLoadedCopyWith<_$ModuleSettingsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModuleSettingsErrorCopyWith<$Res> {
  factory _$$ModuleSettingsErrorCopyWith(_$ModuleSettingsError value,
          $Res Function(_$ModuleSettingsError) then) =
      __$$ModuleSettingsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModuleSettingsErrorCopyWithImpl<$Res>
    extends _$ModuleSettingsStateCopyWithImpl<$Res>
    implements _$$ModuleSettingsErrorCopyWith<$Res> {
  __$$ModuleSettingsErrorCopyWithImpl(
      _$ModuleSettingsError _value, $Res Function(_$ModuleSettingsError) _then)
      : super(_value, (v) => _then(v as _$ModuleSettingsError));

  @override
  _$ModuleSettingsError get _value => super._value as _$ModuleSettingsError;
}

/// @nodoc

class _$ModuleSettingsError implements ModuleSettingsError {
  const _$ModuleSettingsError();

  @override
  String toString() {
    return 'ModuleSettingsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ModuleSettingsError);
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
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(ModuleSettingsProvider moduleSettings)? loaded,
    TResult Function()? error,
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
    TResult Function(ModuleSettingsUninitialized value)? uninitialized,
    TResult Function(ModuleSettingsLoading value)? loading,
    TResult Function(ModuleSettingsLoaded value)? loaded,
    TResult Function(ModuleSettingsError value)? error,
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
  const factory ModuleSettingsError() = _$ModuleSettingsError;
}
