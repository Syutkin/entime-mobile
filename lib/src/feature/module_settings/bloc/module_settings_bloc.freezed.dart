// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ModuleSettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleSettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModuleSettingsEvent()';
}


}

/// @nodoc
class $ModuleSettingsEventCopyWith<$Res>  {
$ModuleSettingsEventCopyWith(ModuleSettingsEvent _, $Res Function(ModuleSettingsEvent) __);
}


/// @nodoc


class _Get implements ModuleSettingsEvent {
  const _Get(this.json);
  

 final  String json;

/// Create a copy of ModuleSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCopyWith<_Get> get copyWith => __$GetCopyWithImpl<_Get>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Get&&(identical(other.json, json) || other.json == json));
}


@override
int get hashCode => Object.hash(runtimeType,json);

@override
String toString() {
  return 'ModuleSettingsEvent.get(json: $json)';
}


}

/// @nodoc
abstract mixin class _$GetCopyWith<$Res> implements $ModuleSettingsEventCopyWith<$Res> {
  factory _$GetCopyWith(_Get value, $Res Function(_Get) _then) = __$GetCopyWithImpl;
@useResult
$Res call({
 String json
});




}
/// @nodoc
class __$GetCopyWithImpl<$Res>
    implements _$GetCopyWith<$Res> {
  __$GetCopyWithImpl(this._self, this._then);

  final _Get _self;
  final $Res Function(_Get) _then;

/// Create a copy of ModuleSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? json = null,}) {
  return _then(_Get(
null == json ? _self.json : json // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Update implements ModuleSettingsEvent {
  const _Update(this.moduleSettings);
  

 final  ModuleSettingsProvider moduleSettings;

/// Create a copy of ModuleSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCopyWith<_Update> get copyWith => __$UpdateCopyWithImpl<_Update>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update&&(identical(other.moduleSettings, moduleSettings) || other.moduleSettings == moduleSettings));
}


@override
int get hashCode => Object.hash(runtimeType,moduleSettings);

@override
String toString() {
  return 'ModuleSettingsEvent.update(moduleSettings: $moduleSettings)';
}


}

/// @nodoc
abstract mixin class _$UpdateCopyWith<$Res> implements $ModuleSettingsEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) _then) = __$UpdateCopyWithImpl;
@useResult
$Res call({
 ModuleSettingsProvider moduleSettings
});




}
/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(this._self, this._then);

  final _Update _self;
  final $Res Function(_Update) _then;

/// Create a copy of ModuleSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? moduleSettings = null,}) {
  return _then(_Update(
null == moduleSettings ? _self.moduleSettings : moduleSettings // ignore: cast_nullable_to_non_nullable
as ModuleSettingsProvider,
  ));
}


}

/// @nodoc
mixin _$ModuleSettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleSettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModuleSettingsState()';
}


}

/// @nodoc
class $ModuleSettingsStateCopyWith<$Res>  {
$ModuleSettingsStateCopyWith(ModuleSettingsState _, $Res Function(ModuleSettingsState) __);
}


/// @nodoc


class ModuleSettingsUninitialized implements ModuleSettingsState {
  const ModuleSettingsUninitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleSettingsUninitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModuleSettingsState.uninitialized()';
}


}




/// @nodoc


class ModuleSettingsLoading implements ModuleSettingsState {
  const ModuleSettingsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleSettingsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModuleSettingsState.loading()';
}


}




/// @nodoc


class ModuleSettingsLoaded implements ModuleSettingsState {
  const ModuleSettingsLoaded(this.moduleSettings);
  

 final  ModuleSettingsProvider moduleSettings;

/// Create a copy of ModuleSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleSettingsLoadedCopyWith<ModuleSettingsLoaded> get copyWith => _$ModuleSettingsLoadedCopyWithImpl<ModuleSettingsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleSettingsLoaded&&(identical(other.moduleSettings, moduleSettings) || other.moduleSettings == moduleSettings));
}


@override
int get hashCode => Object.hash(runtimeType,moduleSettings);

@override
String toString() {
  return 'ModuleSettingsState.loaded(moduleSettings: $moduleSettings)';
}


}

/// @nodoc
abstract mixin class $ModuleSettingsLoadedCopyWith<$Res> implements $ModuleSettingsStateCopyWith<$Res> {
  factory $ModuleSettingsLoadedCopyWith(ModuleSettingsLoaded value, $Res Function(ModuleSettingsLoaded) _then) = _$ModuleSettingsLoadedCopyWithImpl;
@useResult
$Res call({
 ModuleSettingsProvider moduleSettings
});




}
/// @nodoc
class _$ModuleSettingsLoadedCopyWithImpl<$Res>
    implements $ModuleSettingsLoadedCopyWith<$Res> {
  _$ModuleSettingsLoadedCopyWithImpl(this._self, this._then);

  final ModuleSettingsLoaded _self;
  final $Res Function(ModuleSettingsLoaded) _then;

/// Create a copy of ModuleSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? moduleSettings = null,}) {
  return _then(ModuleSettingsLoaded(
null == moduleSettings ? _self.moduleSettings : moduleSettings // ignore: cast_nullable_to_non_nullable
as ModuleSettingsProvider,
  ));
}


}

/// @nodoc


class ModuleSettingsError implements ModuleSettingsState {
  const ModuleSettingsError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleSettingsError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModuleSettingsState.error()';
}


}




// dart format on
