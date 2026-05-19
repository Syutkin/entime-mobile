// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ModSettingsModel {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModSettingsModel()';
}


}

/// @nodoc
class $ModSettingsModelCopyWith<$Res>  {
$ModSettingsModelCopyWith(ModSettingsModel _, $Res Function(ModSettingsModel) __);
}


/// Adds pattern-matching-related methods to [ModSettingsModel].
extension ModSettingsModelPatterns on ModSettingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ModSettingsModelEntime value)?  entime,TResult Function( ModSettingsModelLed value)?  led,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ModSettingsModelEntime() when entime != null:
return entime(_that);case ModSettingsModelLed() when led != null:
return led(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ModSettingsModelEntime value)  entime,required TResult Function( ModSettingsModelLed value)  led,}){
final _that = this;
switch (_that) {
case ModSettingsModelEntime():
return entime(_that);case ModSettingsModelLed():
return led(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ModSettingsModelEntime value)?  entime,TResult? Function( ModSettingsModelLed value)?  led,}){
final _that = this;
switch (_that) {
case ModSettingsModelEntime() when entime != null:
return entime(_that);case ModSettingsModelLed() when led != null:
return led(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ModSettingsEntime entime)?  entime,TResult Function( ModSettingsLed led)?  led,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ModSettingsModelEntime() when entime != null:
return entime(_that.entime);case ModSettingsModelLed() when led != null:
return led(_that.led);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ModSettingsEntime entime)  entime,required TResult Function( ModSettingsLed led)  led,}) {final _that = this;
switch (_that) {
case ModSettingsModelEntime():
return entime(_that.entime);case ModSettingsModelLed():
return led(_that.led);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ModSettingsEntime entime)?  entime,TResult? Function( ModSettingsLed led)?  led,}) {final _that = this;
switch (_that) {
case ModSettingsModelEntime() when entime != null:
return entime(_that.entime);case ModSettingsModelLed() when led != null:
return led(_that.led);case _:
  return null;

}
}

}

/// @nodoc


class ModSettingsModelEntime implements ModSettingsModel {
  const ModSettingsModelEntime(this.entime);
  

 final  ModSettingsEntime entime;

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsModelEntimeCopyWith<ModSettingsModelEntime> get copyWith => _$ModSettingsModelEntimeCopyWithImpl<ModSettingsModelEntime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsModelEntime&&(identical(other.entime, entime) || other.entime == entime));
}


@override
int get hashCode => Object.hash(runtimeType,entime);

@override
String toString() {
  return 'ModSettingsModel.entime(entime: $entime)';
}


}

/// @nodoc
abstract mixin class $ModSettingsModelEntimeCopyWith<$Res> implements $ModSettingsModelCopyWith<$Res> {
  factory $ModSettingsModelEntimeCopyWith(ModSettingsModelEntime value, $Res Function(ModSettingsModelEntime) _then) = _$ModSettingsModelEntimeCopyWithImpl;
@useResult
$Res call({
 ModSettingsEntime entime
});


$ModSettingsEntimeCopyWith<$Res> get entime;

}
/// @nodoc
class _$ModSettingsModelEntimeCopyWithImpl<$Res>
    implements $ModSettingsModelEntimeCopyWith<$Res> {
  _$ModSettingsModelEntimeCopyWithImpl(this._self, this._then);

  final ModSettingsModelEntime _self;
  final $Res Function(ModSettingsModelEntime) _then;

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entime = null,}) {
  return _then(ModSettingsModelEntime(
null == entime ? _self.entime : entime // ignore: cast_nullable_to_non_nullable
as ModSettingsEntime,
  ));
}

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModSettingsEntimeCopyWith<$Res> get entime {
  
  return $ModSettingsEntimeCopyWith<$Res>(_self.entime, (value) {
    return _then(_self.copyWith(entime: value));
  });
}
}

/// @nodoc


class ModSettingsModelLed implements ModSettingsModel {
  const ModSettingsModelLed(this.led);
  

 final  ModSettingsLed led;

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsModelLedCopyWith<ModSettingsModelLed> get copyWith => _$ModSettingsModelLedCopyWithImpl<ModSettingsModelLed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsModelLed&&(identical(other.led, led) || other.led == led));
}


@override
int get hashCode => Object.hash(runtimeType,led);

@override
String toString() {
  return 'ModSettingsModel.led(led: $led)';
}


}

/// @nodoc
abstract mixin class $ModSettingsModelLedCopyWith<$Res> implements $ModSettingsModelCopyWith<$Res> {
  factory $ModSettingsModelLedCopyWith(ModSettingsModelLed value, $Res Function(ModSettingsModelLed) _then) = _$ModSettingsModelLedCopyWithImpl;
@useResult
$Res call({
 ModSettingsLed led
});


$ModSettingsLedCopyWith<$Res> get led;

}
/// @nodoc
class _$ModSettingsModelLedCopyWithImpl<$Res>
    implements $ModSettingsModelLedCopyWith<$Res> {
  _$ModSettingsModelLedCopyWithImpl(this._self, this._then);

  final ModSettingsModelLed _self;
  final $Res Function(ModSettingsModelLed) _then;

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? led = null,}) {
  return _then(ModSettingsModelLed(
null == led ? _self.led : led // ignore: cast_nullable_to_non_nullable
as ModSettingsLed,
  ));
}

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModSettingsLedCopyWith<$Res> get led {
  
  return $ModSettingsLedCopyWith<$Res>(_self.led, (value) {
    return _then(_self.copyWith(led: value));
  });
}
}


/// @nodoc
mixin _$ModSettingsType {

@JsonKey(name: 'Type') String get type;
/// Create a copy of ModSettingsType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsTypeCopyWith<ModSettingsType> get copyWith => _$ModSettingsTypeCopyWithImpl<ModSettingsType>(this as ModSettingsType, _$identity);

  /// Serializes this ModSettingsType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsType&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ModSettingsType(type: $type)';
}


}

/// @nodoc
abstract mixin class $ModSettingsTypeCopyWith<$Res>  {
  factory $ModSettingsTypeCopyWith(ModSettingsType value, $Res Function(ModSettingsType) _then) = _$ModSettingsTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Type') String type
});




}
/// @nodoc
class _$ModSettingsTypeCopyWithImpl<$Res>
    implements $ModSettingsTypeCopyWith<$Res> {
  _$ModSettingsTypeCopyWithImpl(this._self, this._then);

  final ModSettingsType _self;
  final $Res Function(ModSettingsType) _then;

/// Create a copy of ModSettingsType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ModSettingsType].
extension ModSettingsTypePatterns on ModSettingsType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModSettingsType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModSettingsType() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModSettingsType value)  $default,){
final _that = this;
switch (_that) {
case _ModSettingsType():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModSettingsType value)?  $default,){
final _that = this;
switch (_that) {
case _ModSettingsType() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Type')  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModSettingsType() when $default != null:
return $default(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Type')  String type)  $default,) {final _that = this;
switch (_that) {
case _ModSettingsType():
return $default(_that.type);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Type')  String type)?  $default,) {final _that = this;
switch (_that) {
case _ModSettingsType() when $default != null:
return $default(_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModSettingsType implements ModSettingsType {
  const _ModSettingsType({@JsonKey(name: 'Type') required this.type});
  factory _ModSettingsType.fromJson(Map<String, dynamic> json) => _$ModSettingsTypeFromJson(json);

@override@JsonKey(name: 'Type') final  String type;

/// Create a copy of ModSettingsType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModSettingsTypeCopyWith<_ModSettingsType> get copyWith => __$ModSettingsTypeCopyWithImpl<_ModSettingsType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModSettingsTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModSettingsType&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ModSettingsType(type: $type)';
}


}

/// @nodoc
abstract mixin class _$ModSettingsTypeCopyWith<$Res> implements $ModSettingsTypeCopyWith<$Res> {
  factory _$ModSettingsTypeCopyWith(_ModSettingsType value, $Res Function(_ModSettingsType) _then) = __$ModSettingsTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Type') String type
});




}
/// @nodoc
class __$ModSettingsTypeCopyWithImpl<$Res>
    implements _$ModSettingsTypeCopyWith<$Res> {
  __$ModSettingsTypeCopyWithImpl(this._self, this._then);

  final _ModSettingsType _self;
  final $Res Function(_ModSettingsType) _then;

/// Create a copy of ModSettingsType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_ModSettingsType(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ModSettingsEntime {

@JsonKey(name: 'device') DeviceSettings get device;@JsonKey(name: 'sync') SyncSettings get sync;@JsonKey(name: 'wifi') WiFi get wifi;@JsonKey(name: 'gps') GpsSettings get gps;@JsonKey(name: 'touch') TouchSettings get touch;
/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsEntimeCopyWith<ModSettingsEntime> get copyWith => _$ModSettingsEntimeCopyWithImpl<ModSettingsEntime>(this as ModSettingsEntime, _$identity);

  /// Serializes this ModSettingsEntime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsEntime&&(identical(other.device, device) || other.device == device)&&(identical(other.sync, sync) || other.sync == sync)&&(identical(other.wifi, wifi) || other.wifi == wifi)&&(identical(other.gps, gps) || other.gps == gps)&&(identical(other.touch, touch) || other.touch == touch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,device,sync,wifi,gps,touch);

@override
String toString() {
  return 'ModSettingsEntime(device: $device, sync: $sync, wifi: $wifi, gps: $gps, touch: $touch)';
}


}

/// @nodoc
abstract mixin class $ModSettingsEntimeCopyWith<$Res>  {
  factory $ModSettingsEntimeCopyWith(ModSettingsEntime value, $Res Function(ModSettingsEntime) _then) = _$ModSettingsEntimeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device') DeviceSettings device,@JsonKey(name: 'sync') SyncSettings sync,@JsonKey(name: 'wifi') WiFi wifi,@JsonKey(name: 'gps') GpsSettings gps,@JsonKey(name: 'touch') TouchSettings touch
});


$DeviceSettingsCopyWith<$Res> get device;$SyncSettingsCopyWith<$Res> get sync;$WiFiCopyWith<$Res> get wifi;$GpsSettingsCopyWith<$Res> get gps;$TouchSettingsCopyWith<$Res> get touch;

}
/// @nodoc
class _$ModSettingsEntimeCopyWithImpl<$Res>
    implements $ModSettingsEntimeCopyWith<$Res> {
  _$ModSettingsEntimeCopyWithImpl(this._self, this._then);

  final ModSettingsEntime _self;
  final $Res Function(ModSettingsEntime) _then;

/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? device = null,Object? sync = null,Object? wifi = null,Object? gps = null,Object? touch = null,}) {
  return _then(_self.copyWith(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceSettings,sync: null == sync ? _self.sync : sync // ignore: cast_nullable_to_non_nullable
as SyncSettings,wifi: null == wifi ? _self.wifi : wifi // ignore: cast_nullable_to_non_nullable
as WiFi,gps: null == gps ? _self.gps : gps // ignore: cast_nullable_to_non_nullable
as GpsSettings,touch: null == touch ? _self.touch : touch // ignore: cast_nullable_to_non_nullable
as TouchSettings,
  ));
}
/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSettingsCopyWith<$Res> get device {
  
  return $DeviceSettingsCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SyncSettingsCopyWith<$Res> get sync {
  
  return $SyncSettingsCopyWith<$Res>(_self.sync, (value) {
    return _then(_self.copyWith(sync: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wifi {
  
  return $WiFiCopyWith<$Res>(_self.wifi, (value) {
    return _then(_self.copyWith(wifi: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GpsSettingsCopyWith<$Res> get gps {
  
  return $GpsSettingsCopyWith<$Res>(_self.gps, (value) {
    return _then(_self.copyWith(gps: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TouchSettingsCopyWith<$Res> get touch {
  
  return $TouchSettingsCopyWith<$Res>(_self.touch, (value) {
    return _then(_self.copyWith(touch: value));
  });
}
}


/// Adds pattern-matching-related methods to [ModSettingsEntime].
extension ModSettingsEntimePatterns on ModSettingsEntime {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModSettingsEntime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModSettingsEntime() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModSettingsEntime value)  $default,){
final _that = this;
switch (_that) {
case _ModSettingsEntime():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModSettingsEntime value)?  $default,){
final _that = this;
switch (_that) {
case _ModSettingsEntime() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device')  DeviceSettings device, @JsonKey(name: 'sync')  SyncSettings sync, @JsonKey(name: 'wifi')  WiFi wifi, @JsonKey(name: 'gps')  GpsSettings gps, @JsonKey(name: 'touch')  TouchSettings touch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModSettingsEntime() when $default != null:
return $default(_that.device,_that.sync,_that.wifi,_that.gps,_that.touch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device')  DeviceSettings device, @JsonKey(name: 'sync')  SyncSettings sync, @JsonKey(name: 'wifi')  WiFi wifi, @JsonKey(name: 'gps')  GpsSettings gps, @JsonKey(name: 'touch')  TouchSettings touch)  $default,) {final _that = this;
switch (_that) {
case _ModSettingsEntime():
return $default(_that.device,_that.sync,_that.wifi,_that.gps,_that.touch);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device')  DeviceSettings device, @JsonKey(name: 'sync')  SyncSettings sync, @JsonKey(name: 'wifi')  WiFi wifi, @JsonKey(name: 'gps')  GpsSettings gps, @JsonKey(name: 'touch')  TouchSettings touch)?  $default,) {final _that = this;
switch (_that) {
case _ModSettingsEntime() when $default != null:
return $default(_that.device,_that.sync,_that.wifi,_that.gps,_that.touch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModSettingsEntime implements ModSettingsEntime {
  const _ModSettingsEntime({@JsonKey(name: 'device') required this.device, @JsonKey(name: 'sync') required this.sync, @JsonKey(name: 'wifi') required this.wifi, @JsonKey(name: 'gps') required this.gps, @JsonKey(name: 'touch') required this.touch});
  factory _ModSettingsEntime.fromJson(Map<String, dynamic> json) => _$ModSettingsEntimeFromJson(json);

@override@JsonKey(name: 'device') final  DeviceSettings device;
@override@JsonKey(name: 'sync') final  SyncSettings sync;
@override@JsonKey(name: 'wifi') final  WiFi wifi;
@override@JsonKey(name: 'gps') final  GpsSettings gps;
@override@JsonKey(name: 'touch') final  TouchSettings touch;

/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModSettingsEntimeCopyWith<_ModSettingsEntime> get copyWith => __$ModSettingsEntimeCopyWithImpl<_ModSettingsEntime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModSettingsEntimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModSettingsEntime&&(identical(other.device, device) || other.device == device)&&(identical(other.sync, sync) || other.sync == sync)&&(identical(other.wifi, wifi) || other.wifi == wifi)&&(identical(other.gps, gps) || other.gps == gps)&&(identical(other.touch, touch) || other.touch == touch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,device,sync,wifi,gps,touch);

@override
String toString() {
  return 'ModSettingsEntime(device: $device, sync: $sync, wifi: $wifi, gps: $gps, touch: $touch)';
}


}

/// @nodoc
abstract mixin class _$ModSettingsEntimeCopyWith<$Res> implements $ModSettingsEntimeCopyWith<$Res> {
  factory _$ModSettingsEntimeCopyWith(_ModSettingsEntime value, $Res Function(_ModSettingsEntime) _then) = __$ModSettingsEntimeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device') DeviceSettings device,@JsonKey(name: 'sync') SyncSettings sync,@JsonKey(name: 'wifi') WiFi wifi,@JsonKey(name: 'gps') GpsSettings gps,@JsonKey(name: 'touch') TouchSettings touch
});


@override $DeviceSettingsCopyWith<$Res> get device;@override $SyncSettingsCopyWith<$Res> get sync;@override $WiFiCopyWith<$Res> get wifi;@override $GpsSettingsCopyWith<$Res> get gps;@override $TouchSettingsCopyWith<$Res> get touch;

}
/// @nodoc
class __$ModSettingsEntimeCopyWithImpl<$Res>
    implements _$ModSettingsEntimeCopyWith<$Res> {
  __$ModSettingsEntimeCopyWithImpl(this._self, this._then);

  final _ModSettingsEntime _self;
  final $Res Function(_ModSettingsEntime) _then;

/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? device = null,Object? sync = null,Object? wifi = null,Object? gps = null,Object? touch = null,}) {
  return _then(_ModSettingsEntime(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceSettings,sync: null == sync ? _self.sync : sync // ignore: cast_nullable_to_non_nullable
as SyncSettings,wifi: null == wifi ? _self.wifi : wifi // ignore: cast_nullable_to_non_nullable
as WiFi,gps: null == gps ? _self.gps : gps // ignore: cast_nullable_to_non_nullable
as GpsSettings,touch: null == touch ? _self.touch : touch // ignore: cast_nullable_to_non_nullable
as TouchSettings,
  ));
}

/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSettingsCopyWith<$Res> get device {
  
  return $DeviceSettingsCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SyncSettingsCopyWith<$Res> get sync {
  
  return $SyncSettingsCopyWith<$Res>(_self.sync, (value) {
    return _then(_self.copyWith(sync: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wifi {
  
  return $WiFiCopyWith<$Res>(_self.wifi, (value) {
    return _then(_self.copyWith(wifi: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GpsSettingsCopyWith<$Res> get gps {
  
  return $GpsSettingsCopyWith<$Res>(_self.gps, (value) {
    return _then(_self.copyWith(gps: value));
  });
}/// Create a copy of ModSettingsEntime
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TouchSettingsCopyWith<$Res> get touch {
  
  return $TouchSettingsCopyWith<$Res>(_self.touch, (value) {
    return _then(_self.copyWith(touch: value));
  });
}
}


/// @nodoc
mixin _$DeviceSettings {

 String get name; int get number; int get type;@JsonKey(name: 'timezone_offset_min') int get timezoneOffsetMin;
/// Create a copy of DeviceSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceSettingsCopyWith<DeviceSettings> get copyWith => _$DeviceSettingsCopyWithImpl<DeviceSettings>(this as DeviceSettings, _$identity);

  /// Serializes this DeviceSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceSettings&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.timezoneOffsetMin, timezoneOffsetMin) || other.timezoneOffsetMin == timezoneOffsetMin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number,type,timezoneOffsetMin);

@override
String toString() {
  return 'DeviceSettings(name: $name, number: $number, type: $type, timezoneOffsetMin: $timezoneOffsetMin)';
}


}

/// @nodoc
abstract mixin class $DeviceSettingsCopyWith<$Res>  {
  factory $DeviceSettingsCopyWith(DeviceSettings value, $Res Function(DeviceSettings) _then) = _$DeviceSettingsCopyWithImpl;
@useResult
$Res call({
 String name, int number, int type,@JsonKey(name: 'timezone_offset_min') int timezoneOffsetMin
});




}
/// @nodoc
class _$DeviceSettingsCopyWithImpl<$Res>
    implements $DeviceSettingsCopyWith<$Res> {
  _$DeviceSettingsCopyWithImpl(this._self, this._then);

  final DeviceSettings _self;
  final $Res Function(DeviceSettings) _then;

/// Create a copy of DeviceSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? number = null,Object? type = null,Object? timezoneOffsetMin = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,timezoneOffsetMin: null == timezoneOffsetMin ? _self.timezoneOffsetMin : timezoneOffsetMin // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceSettings].
extension DeviceSettingsPatterns on DeviceSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceSettings value)  $default,){
final _that = this;
switch (_that) {
case _DeviceSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceSettings value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int number,  int type, @JsonKey(name: 'timezone_offset_min')  int timezoneOffsetMin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceSettings() when $default != null:
return $default(_that.name,_that.number,_that.type,_that.timezoneOffsetMin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int number,  int type, @JsonKey(name: 'timezone_offset_min')  int timezoneOffsetMin)  $default,) {final _that = this;
switch (_that) {
case _DeviceSettings():
return $default(_that.name,_that.number,_that.type,_that.timezoneOffsetMin);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int number,  int type, @JsonKey(name: 'timezone_offset_min')  int timezoneOffsetMin)?  $default,) {final _that = this;
switch (_that) {
case _DeviceSettings() when $default != null:
return $default(_that.name,_that.number,_that.type,_that.timezoneOffsetMin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceSettings implements DeviceSettings {
  const _DeviceSettings({required this.name, required this.number, required this.type, @JsonKey(name: 'timezone_offset_min') required this.timezoneOffsetMin});
  factory _DeviceSettings.fromJson(Map<String, dynamic> json) => _$DeviceSettingsFromJson(json);

@override final  String name;
@override final  int number;
@override final  int type;
@override@JsonKey(name: 'timezone_offset_min') final  int timezoneOffsetMin;

/// Create a copy of DeviceSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceSettingsCopyWith<_DeviceSettings> get copyWith => __$DeviceSettingsCopyWithImpl<_DeviceSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceSettings&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.timezoneOffsetMin, timezoneOffsetMin) || other.timezoneOffsetMin == timezoneOffsetMin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number,type,timezoneOffsetMin);

@override
String toString() {
  return 'DeviceSettings(name: $name, number: $number, type: $type, timezoneOffsetMin: $timezoneOffsetMin)';
}


}

/// @nodoc
abstract mixin class _$DeviceSettingsCopyWith<$Res> implements $DeviceSettingsCopyWith<$Res> {
  factory _$DeviceSettingsCopyWith(_DeviceSettings value, $Res Function(_DeviceSettings) _then) = __$DeviceSettingsCopyWithImpl;
@override @useResult
$Res call({
 String name, int number, int type,@JsonKey(name: 'timezone_offset_min') int timezoneOffsetMin
});




}
/// @nodoc
class __$DeviceSettingsCopyWithImpl<$Res>
    implements _$DeviceSettingsCopyWith<$Res> {
  __$DeviceSettingsCopyWithImpl(this._self, this._then);

  final _DeviceSettings _self;
  final $Res Function(_DeviceSettings) _then;

/// Create a copy of DeviceSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? number = null,Object? type = null,Object? timezoneOffsetMin = null,}) {
  return _then(_DeviceSettings(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,timezoneOffsetMin: null == timezoneOffsetMin ? _self.timezoneOffsetMin : timezoneOffsetMin // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SyncSettings {

 bool get auto; int get source; String get ntp1; String get ntp2; String get ntp3;
/// Create a copy of SyncSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncSettingsCopyWith<SyncSettings> get copyWith => _$SyncSettingsCopyWithImpl<SyncSettings>(this as SyncSettings, _$identity);

  /// Serializes this SyncSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncSettings&&(identical(other.auto, auto) || other.auto == auto)&&(identical(other.source, source) || other.source == source)&&(identical(other.ntp1, ntp1) || other.ntp1 == ntp1)&&(identical(other.ntp2, ntp2) || other.ntp2 == ntp2)&&(identical(other.ntp3, ntp3) || other.ntp3 == ntp3));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auto,source,ntp1,ntp2,ntp3);

@override
String toString() {
  return 'SyncSettings(auto: $auto, source: $source, ntp1: $ntp1, ntp2: $ntp2, ntp3: $ntp3)';
}


}

/// @nodoc
abstract mixin class $SyncSettingsCopyWith<$Res>  {
  factory $SyncSettingsCopyWith(SyncSettings value, $Res Function(SyncSettings) _then) = _$SyncSettingsCopyWithImpl;
@useResult
$Res call({
 bool auto, int source, String ntp1, String ntp2, String ntp3
});




}
/// @nodoc
class _$SyncSettingsCopyWithImpl<$Res>
    implements $SyncSettingsCopyWith<$Res> {
  _$SyncSettingsCopyWithImpl(this._self, this._then);

  final SyncSettings _self;
  final $Res Function(SyncSettings) _then;

/// Create a copy of SyncSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auto = null,Object? source = null,Object? ntp1 = null,Object? ntp2 = null,Object? ntp3 = null,}) {
  return _then(_self.copyWith(
auto: null == auto ? _self.auto : auto // ignore: cast_nullable_to_non_nullable
as bool,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as int,ntp1: null == ntp1 ? _self.ntp1 : ntp1 // ignore: cast_nullable_to_non_nullable
as String,ntp2: null == ntp2 ? _self.ntp2 : ntp2 // ignore: cast_nullable_to_non_nullable
as String,ntp3: null == ntp3 ? _self.ntp3 : ntp3 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncSettings].
extension SyncSettingsPatterns on SyncSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncSettings value)  $default,){
final _that = this;
switch (_that) {
case _SyncSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncSettings value)?  $default,){
final _that = this;
switch (_that) {
case _SyncSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool auto,  int source,  String ntp1,  String ntp2,  String ntp3)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncSettings() when $default != null:
return $default(_that.auto,_that.source,_that.ntp1,_that.ntp2,_that.ntp3);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool auto,  int source,  String ntp1,  String ntp2,  String ntp3)  $default,) {final _that = this;
switch (_that) {
case _SyncSettings():
return $default(_that.auto,_that.source,_that.ntp1,_that.ntp2,_that.ntp3);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool auto,  int source,  String ntp1,  String ntp2,  String ntp3)?  $default,) {final _that = this;
switch (_that) {
case _SyncSettings() when $default != null:
return $default(_that.auto,_that.source,_that.ntp1,_that.ntp2,_that.ntp3);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncSettings implements SyncSettings {
  const _SyncSettings({required this.auto, required this.source, required this.ntp1, required this.ntp2, required this.ntp3});
  factory _SyncSettings.fromJson(Map<String, dynamic> json) => _$SyncSettingsFromJson(json);

@override final  bool auto;
@override final  int source;
@override final  String ntp1;
@override final  String ntp2;
@override final  String ntp3;

/// Create a copy of SyncSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncSettingsCopyWith<_SyncSettings> get copyWith => __$SyncSettingsCopyWithImpl<_SyncSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncSettings&&(identical(other.auto, auto) || other.auto == auto)&&(identical(other.source, source) || other.source == source)&&(identical(other.ntp1, ntp1) || other.ntp1 == ntp1)&&(identical(other.ntp2, ntp2) || other.ntp2 == ntp2)&&(identical(other.ntp3, ntp3) || other.ntp3 == ntp3));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auto,source,ntp1,ntp2,ntp3);

@override
String toString() {
  return 'SyncSettings(auto: $auto, source: $source, ntp1: $ntp1, ntp2: $ntp2, ntp3: $ntp3)';
}


}

/// @nodoc
abstract mixin class _$SyncSettingsCopyWith<$Res> implements $SyncSettingsCopyWith<$Res> {
  factory _$SyncSettingsCopyWith(_SyncSettings value, $Res Function(_SyncSettings) _then) = __$SyncSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool auto, int source, String ntp1, String ntp2, String ntp3
});




}
/// @nodoc
class __$SyncSettingsCopyWithImpl<$Res>
    implements _$SyncSettingsCopyWith<$Res> {
  __$SyncSettingsCopyWithImpl(this._self, this._then);

  final _SyncSettings _self;
  final $Res Function(_SyncSettings) _then;

/// Create a copy of SyncSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auto = null,Object? source = null,Object? ntp1 = null,Object? ntp2 = null,Object? ntp3 = null,}) {
  return _then(_SyncSettings(
auto: null == auto ? _self.auto : auto // ignore: cast_nullable_to_non_nullable
as bool,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as int,ntp1: null == ntp1 ? _self.ntp1 : ntp1 // ignore: cast_nullable_to_non_nullable
as String,ntp2: null == ntp2 ? _self.ntp2 : ntp2 // ignore: cast_nullable_to_non_nullable
as String,ntp3: null == ntp3 ? _self.ntp3 : ntp3 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ModSettingsLed {

@JsonKey(name: 'Read') bool? get read;@JsonKey(name: 'Type') String get type;@JsonKey(name: 'Bluetooth') Bluetooth get bluetooth;@JsonKey(name: 'WiFi') WiFi get wiFi;@JsonKey(name: 'LedPanel') LedPanel get ledPanel;
/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsLedCopyWith<ModSettingsLed> get copyWith => _$ModSettingsLedCopyWithImpl<ModSettingsLed>(this as ModSettingsLed, _$identity);

  /// Serializes this ModSettingsLed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsLed&&(identical(other.read, read) || other.read == read)&&(identical(other.type, type) || other.type == type)&&(identical(other.bluetooth, bluetooth) || other.bluetooth == bluetooth)&&(identical(other.wiFi, wiFi) || other.wiFi == wiFi)&&(identical(other.ledPanel, ledPanel) || other.ledPanel == ledPanel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,read,type,bluetooth,wiFi,ledPanel);

@override
String toString() {
  return 'ModSettingsLed(read: $read, type: $type, bluetooth: $bluetooth, wiFi: $wiFi, ledPanel: $ledPanel)';
}


}

/// @nodoc
abstract mixin class $ModSettingsLedCopyWith<$Res>  {
  factory $ModSettingsLedCopyWith(ModSettingsLed value, $Res Function(ModSettingsLed) _then) = _$ModSettingsLedCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Read') bool? read,@JsonKey(name: 'Type') String type,@JsonKey(name: 'Bluetooth') Bluetooth bluetooth,@JsonKey(name: 'WiFi') WiFi wiFi,@JsonKey(name: 'LedPanel') LedPanel ledPanel
});


$BluetoothCopyWith<$Res> get bluetooth;$WiFiCopyWith<$Res> get wiFi;$LedPanelCopyWith<$Res> get ledPanel;

}
/// @nodoc
class _$ModSettingsLedCopyWithImpl<$Res>
    implements $ModSettingsLedCopyWith<$Res> {
  _$ModSettingsLedCopyWithImpl(this._self, this._then);

  final ModSettingsLed _self;
  final $Res Function(ModSettingsLed) _then;

/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? read = freezed,Object? type = null,Object? bluetooth = null,Object? wiFi = null,Object? ledPanel = null,}) {
  return _then(_self.copyWith(
read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,bluetooth: null == bluetooth ? _self.bluetooth : bluetooth // ignore: cast_nullable_to_non_nullable
as Bluetooth,wiFi: null == wiFi ? _self.wiFi : wiFi // ignore: cast_nullable_to_non_nullable
as WiFi,ledPanel: null == ledPanel ? _self.ledPanel : ledPanel // ignore: cast_nullable_to_non_nullable
as LedPanel,
  ));
}
/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BluetoothCopyWith<$Res> get bluetooth {
  
  return $BluetoothCopyWith<$Res>(_self.bluetooth, (value) {
    return _then(_self.copyWith(bluetooth: value));
  });
}/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wiFi {
  
  return $WiFiCopyWith<$Res>(_self.wiFi, (value) {
    return _then(_self.copyWith(wiFi: value));
  });
}/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedPanelCopyWith<$Res> get ledPanel {
  
  return $LedPanelCopyWith<$Res>(_self.ledPanel, (value) {
    return _then(_self.copyWith(ledPanel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ModSettingsLed].
extension ModSettingsLedPatterns on ModSettingsLed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModSettingsLed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModSettingsLed() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModSettingsLed value)  $default,){
final _that = this;
switch (_that) {
case _ModSettingsLed():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModSettingsLed value)?  $default,){
final _that = this;
switch (_that) {
case _ModSettingsLed() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Read')  bool? read, @JsonKey(name: 'Type')  String type, @JsonKey(name: 'Bluetooth')  Bluetooth bluetooth, @JsonKey(name: 'WiFi')  WiFi wiFi, @JsonKey(name: 'LedPanel')  LedPanel ledPanel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModSettingsLed() when $default != null:
return $default(_that.read,_that.type,_that.bluetooth,_that.wiFi,_that.ledPanel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Read')  bool? read, @JsonKey(name: 'Type')  String type, @JsonKey(name: 'Bluetooth')  Bluetooth bluetooth, @JsonKey(name: 'WiFi')  WiFi wiFi, @JsonKey(name: 'LedPanel')  LedPanel ledPanel)  $default,) {final _that = this;
switch (_that) {
case _ModSettingsLed():
return $default(_that.read,_that.type,_that.bluetooth,_that.wiFi,_that.ledPanel);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Read')  bool? read, @JsonKey(name: 'Type')  String type, @JsonKey(name: 'Bluetooth')  Bluetooth bluetooth, @JsonKey(name: 'WiFi')  WiFi wiFi, @JsonKey(name: 'LedPanel')  LedPanel ledPanel)?  $default,) {final _that = this;
switch (_that) {
case _ModSettingsLed() when $default != null:
return $default(_that.read,_that.type,_that.bluetooth,_that.wiFi,_that.ledPanel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModSettingsLed implements ModSettingsLed {
  const _ModSettingsLed({@JsonKey(name: 'Read') this.read, @JsonKey(name: 'Type') required this.type, @JsonKey(name: 'Bluetooth') required this.bluetooth, @JsonKey(name: 'WiFi') required this.wiFi, @JsonKey(name: 'LedPanel') required this.ledPanel});
  factory _ModSettingsLed.fromJson(Map<String, dynamic> json) => _$ModSettingsLedFromJson(json);

@override@JsonKey(name: 'Read') final  bool? read;
@override@JsonKey(name: 'Type') final  String type;
@override@JsonKey(name: 'Bluetooth') final  Bluetooth bluetooth;
@override@JsonKey(name: 'WiFi') final  WiFi wiFi;
@override@JsonKey(name: 'LedPanel') final  LedPanel ledPanel;

/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModSettingsLedCopyWith<_ModSettingsLed> get copyWith => __$ModSettingsLedCopyWithImpl<_ModSettingsLed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModSettingsLedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModSettingsLed&&(identical(other.read, read) || other.read == read)&&(identical(other.type, type) || other.type == type)&&(identical(other.bluetooth, bluetooth) || other.bluetooth == bluetooth)&&(identical(other.wiFi, wiFi) || other.wiFi == wiFi)&&(identical(other.ledPanel, ledPanel) || other.ledPanel == ledPanel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,read,type,bluetooth,wiFi,ledPanel);

@override
String toString() {
  return 'ModSettingsLed(read: $read, type: $type, bluetooth: $bluetooth, wiFi: $wiFi, ledPanel: $ledPanel)';
}


}

/// @nodoc
abstract mixin class _$ModSettingsLedCopyWith<$Res> implements $ModSettingsLedCopyWith<$Res> {
  factory _$ModSettingsLedCopyWith(_ModSettingsLed value, $Res Function(_ModSettingsLed) _then) = __$ModSettingsLedCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Read') bool? read,@JsonKey(name: 'Type') String type,@JsonKey(name: 'Bluetooth') Bluetooth bluetooth,@JsonKey(name: 'WiFi') WiFi wiFi,@JsonKey(name: 'LedPanel') LedPanel ledPanel
});


@override $BluetoothCopyWith<$Res> get bluetooth;@override $WiFiCopyWith<$Res> get wiFi;@override $LedPanelCopyWith<$Res> get ledPanel;

}
/// @nodoc
class __$ModSettingsLedCopyWithImpl<$Res>
    implements _$ModSettingsLedCopyWith<$Res> {
  __$ModSettingsLedCopyWithImpl(this._self, this._then);

  final _ModSettingsLed _self;
  final $Res Function(_ModSettingsLed) _then;

/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? read = freezed,Object? type = null,Object? bluetooth = null,Object? wiFi = null,Object? ledPanel = null,}) {
  return _then(_ModSettingsLed(
read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,bluetooth: null == bluetooth ? _self.bluetooth : bluetooth // ignore: cast_nullable_to_non_nullable
as Bluetooth,wiFi: null == wiFi ? _self.wiFi : wiFi // ignore: cast_nullable_to_non_nullable
as WiFi,ledPanel: null == ledPanel ? _self.ledPanel : ledPanel // ignore: cast_nullable_to_non_nullable
as LedPanel,
  ));
}

/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BluetoothCopyWith<$Res> get bluetooth {
  
  return $BluetoothCopyWith<$Res>(_self.bluetooth, (value) {
    return _then(_self.copyWith(bluetooth: value));
  });
}/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wiFi {
  
  return $WiFiCopyWith<$Res>(_self.wiFi, (value) {
    return _then(_self.copyWith(wiFi: value));
  });
}/// Create a copy of ModSettingsLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedPanelCopyWith<$Res> get ledPanel {
  
  return $LedPanelCopyWith<$Res>(_self.ledPanel, (value) {
    return _then(_self.copyWith(ledPanel: value));
  });
}
}


/// @nodoc
mixin _$Bluetooth {

 bool get active; String get name; int get number;
/// Create a copy of Bluetooth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothCopyWith<Bluetooth> get copyWith => _$BluetoothCopyWithImpl<Bluetooth>(this as Bluetooth, _$identity);

  /// Serializes this Bluetooth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bluetooth&&(identical(other.active, active) || other.active == active)&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,name,number);

@override
String toString() {
  return 'Bluetooth(active: $active, name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class $BluetoothCopyWith<$Res>  {
  factory $BluetoothCopyWith(Bluetooth value, $Res Function(Bluetooth) _then) = _$BluetoothCopyWithImpl;
@useResult
$Res call({
 bool active, String name, int number
});




}
/// @nodoc
class _$BluetoothCopyWithImpl<$Res>
    implements $BluetoothCopyWith<$Res> {
  _$BluetoothCopyWithImpl(this._self, this._then);

  final Bluetooth _self;
  final $Res Function(Bluetooth) _then;

/// Create a copy of Bluetooth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? name = null,Object? number = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Bluetooth].
extension BluetoothPatterns on Bluetooth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bluetooth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bluetooth() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bluetooth value)  $default,){
final _that = this;
switch (_that) {
case _Bluetooth():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bluetooth value)?  $default,){
final _that = this;
switch (_that) {
case _Bluetooth() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  String name,  int number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bluetooth() when $default != null:
return $default(_that.active,_that.name,_that.number);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  String name,  int number)  $default,) {final _that = this;
switch (_that) {
case _Bluetooth():
return $default(_that.active,_that.name,_that.number);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  String name,  int number)?  $default,) {final _that = this;
switch (_that) {
case _Bluetooth() when $default != null:
return $default(_that.active,_that.name,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bluetooth implements Bluetooth {
  const _Bluetooth({required this.active, required this.name, required this.number});
  factory _Bluetooth.fromJson(Map<String, dynamic> json) => _$BluetoothFromJson(json);

@override final  bool active;
@override final  String name;
@override final  int number;

/// Create a copy of Bluetooth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BluetoothCopyWith<_Bluetooth> get copyWith => __$BluetoothCopyWithImpl<_Bluetooth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BluetoothToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bluetooth&&(identical(other.active, active) || other.active == active)&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,name,number);

@override
String toString() {
  return 'Bluetooth(active: $active, name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class _$BluetoothCopyWith<$Res> implements $BluetoothCopyWith<$Res> {
  factory _$BluetoothCopyWith(_Bluetooth value, $Res Function(_Bluetooth) _then) = __$BluetoothCopyWithImpl;
@override @useResult
$Res call({
 bool active, String name, int number
});




}
/// @nodoc
class __$BluetoothCopyWithImpl<$Res>
    implements _$BluetoothCopyWith<$Res> {
  __$BluetoothCopyWithImpl(this._self, this._then);

  final _Bluetooth _self;
  final $Res Function(_Bluetooth) _then;

/// Create a copy of Bluetooth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? name = null,Object? number = null,}) {
  return _then(_Bluetooth(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WiFi {

 bool get active; String get ssid;@JsonKey(includeIfNull: false) String? get passwd;
/// Create a copy of WiFi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WiFiCopyWith<WiFi> get copyWith => _$WiFiCopyWithImpl<WiFi>(this as WiFi, _$identity);

  /// Serializes this WiFi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WiFi&&(identical(other.active, active) || other.active == active)&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.passwd, passwd) || other.passwd == passwd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,ssid,passwd);

@override
String toString() {
  return 'WiFi(active: $active, ssid: $ssid, passwd: $passwd)';
}


}

/// @nodoc
abstract mixin class $WiFiCopyWith<$Res>  {
  factory $WiFiCopyWith(WiFi value, $Res Function(WiFi) _then) = _$WiFiCopyWithImpl;
@useResult
$Res call({
 bool active, String ssid,@JsonKey(includeIfNull: false) String? passwd
});




}
/// @nodoc
class _$WiFiCopyWithImpl<$Res>
    implements $WiFiCopyWith<$Res> {
  _$WiFiCopyWithImpl(this._self, this._then);

  final WiFi _self;
  final $Res Function(WiFi) _then;

/// Create a copy of WiFi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? ssid = null,Object? passwd = freezed,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,passwd: freezed == passwd ? _self.passwd : passwd // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WiFi].
extension WiFiPatterns on WiFi {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WiFi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WiFi() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WiFi value)  $default,){
final _that = this;
switch (_that) {
case _WiFi():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WiFi value)?  $default,){
final _that = this;
switch (_that) {
case _WiFi() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  String ssid, @JsonKey(includeIfNull: false)  String? passwd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WiFi() when $default != null:
return $default(_that.active,_that.ssid,_that.passwd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  String ssid, @JsonKey(includeIfNull: false)  String? passwd)  $default,) {final _that = this;
switch (_that) {
case _WiFi():
return $default(_that.active,_that.ssid,_that.passwd);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  String ssid, @JsonKey(includeIfNull: false)  String? passwd)?  $default,) {final _that = this;
switch (_that) {
case _WiFi() when $default != null:
return $default(_that.active,_that.ssid,_that.passwd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WiFi implements WiFi {
  const _WiFi({required this.active, required this.ssid, @JsonKey(includeIfNull: false) required this.passwd});
  factory _WiFi.fromJson(Map<String, dynamic> json) => _$WiFiFromJson(json);

@override final  bool active;
@override final  String ssid;
@override@JsonKey(includeIfNull: false) final  String? passwd;

/// Create a copy of WiFi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WiFiCopyWith<_WiFi> get copyWith => __$WiFiCopyWithImpl<_WiFi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WiFiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WiFi&&(identical(other.active, active) || other.active == active)&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.passwd, passwd) || other.passwd == passwd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,ssid,passwd);

@override
String toString() {
  return 'WiFi(active: $active, ssid: $ssid, passwd: $passwd)';
}


}

/// @nodoc
abstract mixin class _$WiFiCopyWith<$Res> implements $WiFiCopyWith<$Res> {
  factory _$WiFiCopyWith(_WiFi value, $Res Function(_WiFi) _then) = __$WiFiCopyWithImpl;
@override @useResult
$Res call({
 bool active, String ssid,@JsonKey(includeIfNull: false) String? passwd
});




}
/// @nodoc
class __$WiFiCopyWithImpl<$Res>
    implements _$WiFiCopyWith<$Res> {
  __$WiFiCopyWithImpl(this._self, this._then);

  final _WiFi _self;
  final $Res Function(_WiFi) _then;

/// Create a copy of WiFi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? ssid = null,Object? passwd = freezed,}) {
  return _then(_WiFi(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,passwd: freezed == passwd ? _self.passwd : passwd // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GpsSettings {

 bool get enabled;
/// Create a copy of GpsSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GpsSettingsCopyWith<GpsSettings> get copyWith => _$GpsSettingsCopyWithImpl<GpsSettings>(this as GpsSettings, _$identity);

  /// Serializes this GpsSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GpsSettings&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'GpsSettings(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $GpsSettingsCopyWith<$Res>  {
  factory $GpsSettingsCopyWith(GpsSettings value, $Res Function(GpsSettings) _then) = _$GpsSettingsCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class _$GpsSettingsCopyWithImpl<$Res>
    implements $GpsSettingsCopyWith<$Res> {
  _$GpsSettingsCopyWithImpl(this._self, this._then);

  final GpsSettings _self;
  final $Res Function(GpsSettings) _then;

/// Create a copy of GpsSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GpsSettings].
extension GpsSettingsPatterns on GpsSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GpsSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GpsSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GpsSettings value)  $default,){
final _that = this;
switch (_that) {
case _GpsSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GpsSettings value)?  $default,){
final _that = this;
switch (_that) {
case _GpsSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GpsSettings() when $default != null:
return $default(_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled)  $default,) {final _that = this;
switch (_that) {
case _GpsSettings():
return $default(_that.enabled);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _GpsSettings() when $default != null:
return $default(_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GpsSettings implements GpsSettings {
  const _GpsSettings({required this.enabled});
  factory _GpsSettings.fromJson(Map<String, dynamic> json) => _$GpsSettingsFromJson(json);

@override final  bool enabled;

/// Create a copy of GpsSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GpsSettingsCopyWith<_GpsSettings> get copyWith => __$GpsSettingsCopyWithImpl<_GpsSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GpsSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GpsSettings&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'GpsSettings(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$GpsSettingsCopyWith<$Res> implements $GpsSettingsCopyWith<$Res> {
  factory _$GpsSettingsCopyWith(_GpsSettings value, $Res Function(_GpsSettings) _then) = __$GpsSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$GpsSettingsCopyWithImpl<$Res>
    implements _$GpsSettingsCopyWith<$Res> {
  __$GpsSettingsCopyWithImpl(this._self, this._then);

  final _GpsSettings _self;
  final $Res Function(_GpsSettings) _then;

/// Create a copy of GpsSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_GpsSettings(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$TouchSettings {

 bool get enabled;@JsonKey(name: 'cal_valid') bool get calValid; List<int> get calibration;
/// Create a copy of TouchSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TouchSettingsCopyWith<TouchSettings> get copyWith => _$TouchSettingsCopyWithImpl<TouchSettings>(this as TouchSettings, _$identity);

  /// Serializes this TouchSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TouchSettings&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.calValid, calValid) || other.calValid == calValid)&&const DeepCollectionEquality().equals(other.calibration, calibration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,calValid,const DeepCollectionEquality().hash(calibration));

@override
String toString() {
  return 'TouchSettings(enabled: $enabled, calValid: $calValid, calibration: $calibration)';
}


}

/// @nodoc
abstract mixin class $TouchSettingsCopyWith<$Res>  {
  factory $TouchSettingsCopyWith(TouchSettings value, $Res Function(TouchSettings) _then) = _$TouchSettingsCopyWithImpl;
@useResult
$Res call({
 bool enabled,@JsonKey(name: 'cal_valid') bool calValid, List<int> calibration
});




}
/// @nodoc
class _$TouchSettingsCopyWithImpl<$Res>
    implements $TouchSettingsCopyWith<$Res> {
  _$TouchSettingsCopyWithImpl(this._self, this._then);

  final TouchSettings _self;
  final $Res Function(TouchSettings) _then;

/// Create a copy of TouchSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? calValid = null,Object? calibration = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,calValid: null == calValid ? _self.calValid : calValid // ignore: cast_nullable_to_non_nullable
as bool,calibration: null == calibration ? _self.calibration : calibration // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [TouchSettings].
extension TouchSettingsPatterns on TouchSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TouchSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TouchSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TouchSettings value)  $default,){
final _that = this;
switch (_that) {
case _TouchSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TouchSettings value)?  $default,){
final _that = this;
switch (_that) {
case _TouchSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled, @JsonKey(name: 'cal_valid')  bool calValid,  List<int> calibration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TouchSettings() when $default != null:
return $default(_that.enabled,_that.calValid,_that.calibration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled, @JsonKey(name: 'cal_valid')  bool calValid,  List<int> calibration)  $default,) {final _that = this;
switch (_that) {
case _TouchSettings():
return $default(_that.enabled,_that.calValid,_that.calibration);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled, @JsonKey(name: 'cal_valid')  bool calValid,  List<int> calibration)?  $default,) {final _that = this;
switch (_that) {
case _TouchSettings() when $default != null:
return $default(_that.enabled,_that.calValid,_that.calibration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TouchSettings implements TouchSettings {
  const _TouchSettings({required this.enabled, @JsonKey(name: 'cal_valid') required this.calValid, required final  List<int> calibration}): _calibration = calibration;
  factory _TouchSettings.fromJson(Map<String, dynamic> json) => _$TouchSettingsFromJson(json);

@override final  bool enabled;
@override@JsonKey(name: 'cal_valid') final  bool calValid;
 final  List<int> _calibration;
@override List<int> get calibration {
  if (_calibration is EqualUnmodifiableListView) return _calibration;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_calibration);
}


/// Create a copy of TouchSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TouchSettingsCopyWith<_TouchSettings> get copyWith => __$TouchSettingsCopyWithImpl<_TouchSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TouchSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TouchSettings&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.calValid, calValid) || other.calValid == calValid)&&const DeepCollectionEquality().equals(other._calibration, _calibration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,calValid,const DeepCollectionEquality().hash(_calibration));

@override
String toString() {
  return 'TouchSettings(enabled: $enabled, calValid: $calValid, calibration: $calibration)';
}


}

/// @nodoc
abstract mixin class _$TouchSettingsCopyWith<$Res> implements $TouchSettingsCopyWith<$Res> {
  factory _$TouchSettingsCopyWith(_TouchSettings value, $Res Function(_TouchSettings) _then) = __$TouchSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool enabled,@JsonKey(name: 'cal_valid') bool calValid, List<int> calibration
});




}
/// @nodoc
class __$TouchSettingsCopyWithImpl<$Res>
    implements _$TouchSettingsCopyWith<$Res> {
  __$TouchSettingsCopyWithImpl(this._self, this._then);

  final _TouchSettings _self;
  final $Res Function(_TouchSettings) _then;

/// Create a copy of TouchSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? calValid = null,Object? calibration = null,}) {
  return _then(_TouchSettings(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,calValid: null == calValid ? _self.calValid : calValid // ignore: cast_nullable_to_non_nullable
as bool,calibration: null == calibration ? _self._calibration : calibration // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$LedPanel {

 int get brightness;
/// Create a copy of LedPanel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedPanelCopyWith<LedPanel> get copyWith => _$LedPanelCopyWithImpl<LedPanel>(this as LedPanel, _$identity);

  /// Serializes this LedPanel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedPanel&&(identical(other.brightness, brightness) || other.brightness == brightness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brightness);

@override
String toString() {
  return 'LedPanel(brightness: $brightness)';
}


}

/// @nodoc
abstract mixin class $LedPanelCopyWith<$Res>  {
  factory $LedPanelCopyWith(LedPanel value, $Res Function(LedPanel) _then) = _$LedPanelCopyWithImpl;
@useResult
$Res call({
 int brightness
});




}
/// @nodoc
class _$LedPanelCopyWithImpl<$Res>
    implements $LedPanelCopyWith<$Res> {
  _$LedPanelCopyWithImpl(this._self, this._then);

  final LedPanel _self;
  final $Res Function(LedPanel) _then;

/// Create a copy of LedPanel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brightness = null,}) {
  return _then(_self.copyWith(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LedPanel].
extension LedPanelPatterns on LedPanel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedPanel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedPanel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedPanel value)  $default,){
final _that = this;
switch (_that) {
case _LedPanel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedPanel value)?  $default,){
final _that = this;
switch (_that) {
case _LedPanel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int brightness)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedPanel() when $default != null:
return $default(_that.brightness);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int brightness)  $default,) {final _that = this;
switch (_that) {
case _LedPanel():
return $default(_that.brightness);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int brightness)?  $default,) {final _that = this;
switch (_that) {
case _LedPanel() when $default != null:
return $default(_that.brightness);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LedPanel implements LedPanel {
  const _LedPanel({required this.brightness});
  factory _LedPanel.fromJson(Map<String, dynamic> json) => _$LedPanelFromJson(json);

@override final  int brightness;

/// Create a copy of LedPanel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedPanelCopyWith<_LedPanel> get copyWith => __$LedPanelCopyWithImpl<_LedPanel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedPanelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedPanel&&(identical(other.brightness, brightness) || other.brightness == brightness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brightness);

@override
String toString() {
  return 'LedPanel(brightness: $brightness)';
}


}

/// @nodoc
abstract mixin class _$LedPanelCopyWith<$Res> implements $LedPanelCopyWith<$Res> {
  factory _$LedPanelCopyWith(_LedPanel value, $Res Function(_LedPanel) _then) = __$LedPanelCopyWithImpl;
@override @useResult
$Res call({
 int brightness
});




}
/// @nodoc
class __$LedPanelCopyWithImpl<$Res>
    implements _$LedPanelCopyWith<$Res> {
  __$LedPanelCopyWithImpl(this._self, this._then);

  final _LedPanel _self;
  final $Res Function(_LedPanel) _then;

/// Create a copy of LedPanel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brightness = null,}) {
  return _then(_LedPanel(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
