// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [ModuleSettingsEvent].
extension ModuleSettingsEventPatterns on ModuleSettingsEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Get value)?  get,TResult Function( _Update value)?  update,TResult Function( _Unload value)?  unload,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _Update() when update != null:
return update(_that);case _Unload() when unload != null:
return unload(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Get value)  get,required TResult Function( _Update value)  update,required TResult Function( _Unload value)  unload,}){
final _that = this;
switch (_that) {
case _Get():
return get(_that);case _Update():
return update(_that);case _Unload():
return unload(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Get value)?  get,TResult? Function( _Update value)?  update,TResult? Function( _Unload value)?  unload,}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _Update() when update != null:
return update(_that);case _Unload() when unload != null:
return unload(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String json)?  get,TResult Function( ModSettingsModel moduleSettings)?  update,TResult Function()?  unload,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that.json);case _Update() when update != null:
return update(_that.moduleSettings);case _Unload() when unload != null:
return unload();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String json)  get,required TResult Function( ModSettingsModel moduleSettings)  update,required TResult Function()  unload,}) {final _that = this;
switch (_that) {
case _Get():
return get(_that.json);case _Update():
return update(_that.moduleSettings);case _Unload():
return unload();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String json)?  get,TResult? Function( ModSettingsModel moduleSettings)?  update,TResult? Function()?  unload,}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that.json);case _Update() when update != null:
return update(_that.moduleSettings);case _Unload() when unload != null:
return unload();case _:
  return null;

}
}

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
  

 final  ModSettingsModel moduleSettings;

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
 ModSettingsModel moduleSettings
});


$ModSettingsModelCopyWith<$Res> get moduleSettings;

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
as ModSettingsModel,
  ));
}

/// Create a copy of ModuleSettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModSettingsModelCopyWith<$Res> get moduleSettings {
  
  return $ModSettingsModelCopyWith<$Res>(_self.moduleSettings, (value) {
    return _then(_self.copyWith(moduleSettings: value));
  });
}
}

/// @nodoc


class _Unload implements ModuleSettingsEvent {
  const _Unload();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unload);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModuleSettingsEvent.unload()';
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


/// Adds pattern-matching-related methods to [ModuleSettingsState].
extension ModuleSettingsStatePatterns on ModuleSettingsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ModuleSettingsUninitialized value)?  uninitialized,TResult Function( ModuleSettingsLoading value)?  loading,TResult Function( ModuleSettingsLoaded value)?  loaded,TResult Function( ModuleSettingsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ModuleSettingsUninitialized() when uninitialized != null:
return uninitialized(_that);case ModuleSettingsLoading() when loading != null:
return loading(_that);case ModuleSettingsLoaded() when loaded != null:
return loaded(_that);case ModuleSettingsError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ModuleSettingsUninitialized value)  uninitialized,required TResult Function( ModuleSettingsLoading value)  loading,required TResult Function( ModuleSettingsLoaded value)  loaded,required TResult Function( ModuleSettingsError value)  error,}){
final _that = this;
switch (_that) {
case ModuleSettingsUninitialized():
return uninitialized(_that);case ModuleSettingsLoading():
return loading(_that);case ModuleSettingsLoaded():
return loaded(_that);case ModuleSettingsError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ModuleSettingsUninitialized value)?  uninitialized,TResult? Function( ModuleSettingsLoading value)?  loading,TResult? Function( ModuleSettingsLoaded value)?  loaded,TResult? Function( ModuleSettingsError value)?  error,}){
final _that = this;
switch (_that) {
case ModuleSettingsUninitialized() when uninitialized != null:
return uninitialized(_that);case ModuleSettingsLoading() when loading != null:
return loading(_that);case ModuleSettingsLoaded() when loaded != null:
return loaded(_that);case ModuleSettingsError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  uninitialized,TResult Function()?  loading,TResult Function( ModSettingsModel moduleSettings)?  loaded,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ModuleSettingsUninitialized() when uninitialized != null:
return uninitialized();case ModuleSettingsLoading() when loading != null:
return loading();case ModuleSettingsLoaded() when loaded != null:
return loaded(_that.moduleSettings);case ModuleSettingsError() when error != null:
return error();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  uninitialized,required TResult Function()  loading,required TResult Function( ModSettingsModel moduleSettings)  loaded,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case ModuleSettingsUninitialized():
return uninitialized();case ModuleSettingsLoading():
return loading();case ModuleSettingsLoaded():
return loaded(_that.moduleSettings);case ModuleSettingsError():
return error();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  uninitialized,TResult? Function()?  loading,TResult? Function( ModSettingsModel moduleSettings)?  loaded,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case ModuleSettingsUninitialized() when uninitialized != null:
return uninitialized();case ModuleSettingsLoading() when loading != null:
return loading();case ModuleSettingsLoaded() when loaded != null:
return loaded(_that.moduleSettings);case ModuleSettingsError() when error != null:
return error();case _:
  return null;

}
}

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
  

 final  ModSettingsModel moduleSettings;

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
 ModSettingsModel moduleSettings
});


$ModSettingsModelCopyWith<$Res> get moduleSettings;

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
as ModSettingsModel,
  ));
}

/// Create a copy of ModuleSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModSettingsModelCopyWith<$Res> get moduleSettings {
  
  return $ModSettingsModelCopyWith<$Res>(_self.moduleSettings, (value) {
    return _then(_self.copyWith(moduleSettings: value));
  });
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
