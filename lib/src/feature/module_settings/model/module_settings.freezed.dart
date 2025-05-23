// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModSettingsModelType {

@JsonKey(name: 'Type') String get type;
/// Create a copy of ModSettingsModelType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsModelTypeCopyWith<ModSettingsModelType> get copyWith => _$ModSettingsModelTypeCopyWithImpl<ModSettingsModelType>(this as ModSettingsModelType, _$identity);

  /// Serializes this ModSettingsModelType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsModelType&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ModSettingsModelType(type: $type)';
}


}

/// @nodoc
abstract mixin class $ModSettingsModelTypeCopyWith<$Res>  {
  factory $ModSettingsModelTypeCopyWith(ModSettingsModelType value, $Res Function(ModSettingsModelType) _then) = _$ModSettingsModelTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Type') String type
});




}
/// @nodoc
class _$ModSettingsModelTypeCopyWithImpl<$Res>
    implements $ModSettingsModelTypeCopyWith<$Res> {
  _$ModSettingsModelTypeCopyWithImpl(this._self, this._then);

  final ModSettingsModelType _self;
  final $Res Function(ModSettingsModelType) _then;

/// Create a copy of ModSettingsModelType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ModSettingsModelType implements ModSettingsModelType {
  const _ModSettingsModelType({@JsonKey(name: 'Type') required this.type});
  factory _ModSettingsModelType.fromJson(Map<String, dynamic> json) => _$ModSettingsModelTypeFromJson(json);

@override@JsonKey(name: 'Type') final  String type;

/// Create a copy of ModSettingsModelType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModSettingsModelTypeCopyWith<_ModSettingsModelType> get copyWith => __$ModSettingsModelTypeCopyWithImpl<_ModSettingsModelType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModSettingsModelTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModSettingsModelType&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ModSettingsModelType(type: $type)';
}


}

/// @nodoc
abstract mixin class _$ModSettingsModelTypeCopyWith<$Res> implements $ModSettingsModelTypeCopyWith<$Res> {
  factory _$ModSettingsModelTypeCopyWith(_ModSettingsModelType value, $Res Function(_ModSettingsModelType) _then) = __$ModSettingsModelTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Type') String type
});




}
/// @nodoc
class __$ModSettingsModelTypeCopyWithImpl<$Res>
    implements _$ModSettingsModelTypeCopyWith<$Res> {
  __$ModSettingsModelTypeCopyWithImpl(this._self, this._then);

  final _ModSettingsModelType _self;
  final $Res Function(_ModSettingsModelType) _then;

/// Create a copy of ModSettingsModelType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_ModSettingsModelType(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ModSettingsModelLed {

@JsonKey(name: 'Read') bool? get read;@JsonKey(name: 'Type') String get type;@JsonKey(name: 'Bluetooth') Bluetooth get bluetooth;@JsonKey(name: 'WiFi') WiFi get wiFi;@JsonKey(name: 'LedPanel') LedPanel get ledPanel;
/// Create a copy of ModSettingsModelLed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsModelLedCopyWith<ModSettingsModelLed> get copyWith => _$ModSettingsModelLedCopyWithImpl<ModSettingsModelLed>(this as ModSettingsModelLed, _$identity);

  /// Serializes this ModSettingsModelLed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsModelLed&&(identical(other.read, read) || other.read == read)&&(identical(other.type, type) || other.type == type)&&(identical(other.bluetooth, bluetooth) || other.bluetooth == bluetooth)&&(identical(other.wiFi, wiFi) || other.wiFi == wiFi)&&(identical(other.ledPanel, ledPanel) || other.ledPanel == ledPanel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,read,type,bluetooth,wiFi,ledPanel);

@override
String toString() {
  return 'ModSettingsModelLed(read: $read, type: $type, bluetooth: $bluetooth, wiFi: $wiFi, ledPanel: $ledPanel)';
}


}

/// @nodoc
abstract mixin class $ModSettingsModelLedCopyWith<$Res>  {
  factory $ModSettingsModelLedCopyWith(ModSettingsModelLed value, $Res Function(ModSettingsModelLed) _then) = _$ModSettingsModelLedCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Read') bool? read,@JsonKey(name: 'Type') String type,@JsonKey(name: 'Bluetooth') Bluetooth bluetooth,@JsonKey(name: 'WiFi') WiFi wiFi,@JsonKey(name: 'LedPanel') LedPanel ledPanel
});


$BluetoothCopyWith<$Res> get bluetooth;$WiFiCopyWith<$Res> get wiFi;$LedPanelCopyWith<$Res> get ledPanel;

}
/// @nodoc
class _$ModSettingsModelLedCopyWithImpl<$Res>
    implements $ModSettingsModelLedCopyWith<$Res> {
  _$ModSettingsModelLedCopyWithImpl(this._self, this._then);

  final ModSettingsModelLed _self;
  final $Res Function(ModSettingsModelLed) _then;

/// Create a copy of ModSettingsModelLed
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
/// Create a copy of ModSettingsModelLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BluetoothCopyWith<$Res> get bluetooth {
  
  return $BluetoothCopyWith<$Res>(_self.bluetooth, (value) {
    return _then(_self.copyWith(bluetooth: value));
  });
}/// Create a copy of ModSettingsModelLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wiFi {
  
  return $WiFiCopyWith<$Res>(_self.wiFi, (value) {
    return _then(_self.copyWith(wiFi: value));
  });
}/// Create a copy of ModSettingsModelLed
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
@JsonSerializable()

class _ModSettingsModelLed implements ModSettingsModelLed {
  const _ModSettingsModelLed({@JsonKey(name: 'Read') this.read, @JsonKey(name: 'Type') required this.type, @JsonKey(name: 'Bluetooth') required this.bluetooth, @JsonKey(name: 'WiFi') required this.wiFi, @JsonKey(name: 'LedPanel') required this.ledPanel});
  factory _ModSettingsModelLed.fromJson(Map<String, dynamic> json) => _$ModSettingsModelLedFromJson(json);

@override@JsonKey(name: 'Read') final  bool? read;
@override@JsonKey(name: 'Type') final  String type;
@override@JsonKey(name: 'Bluetooth') final  Bluetooth bluetooth;
@override@JsonKey(name: 'WiFi') final  WiFi wiFi;
@override@JsonKey(name: 'LedPanel') final  LedPanel ledPanel;

/// Create a copy of ModSettingsModelLed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModSettingsModelLedCopyWith<_ModSettingsModelLed> get copyWith => __$ModSettingsModelLedCopyWithImpl<_ModSettingsModelLed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModSettingsModelLedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModSettingsModelLed&&(identical(other.read, read) || other.read == read)&&(identical(other.type, type) || other.type == type)&&(identical(other.bluetooth, bluetooth) || other.bluetooth == bluetooth)&&(identical(other.wiFi, wiFi) || other.wiFi == wiFi)&&(identical(other.ledPanel, ledPanel) || other.ledPanel == ledPanel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,read,type,bluetooth,wiFi,ledPanel);

@override
String toString() {
  return 'ModSettingsModelLed(read: $read, type: $type, bluetooth: $bluetooth, wiFi: $wiFi, ledPanel: $ledPanel)';
}


}

/// @nodoc
abstract mixin class _$ModSettingsModelLedCopyWith<$Res> implements $ModSettingsModelLedCopyWith<$Res> {
  factory _$ModSettingsModelLedCopyWith(_ModSettingsModelLed value, $Res Function(_ModSettingsModelLed) _then) = __$ModSettingsModelLedCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Read') bool? read,@JsonKey(name: 'Type') String type,@JsonKey(name: 'Bluetooth') Bluetooth bluetooth,@JsonKey(name: 'WiFi') WiFi wiFi,@JsonKey(name: 'LedPanel') LedPanel ledPanel
});


@override $BluetoothCopyWith<$Res> get bluetooth;@override $WiFiCopyWith<$Res> get wiFi;@override $LedPanelCopyWith<$Res> get ledPanel;

}
/// @nodoc
class __$ModSettingsModelLedCopyWithImpl<$Res>
    implements _$ModSettingsModelLedCopyWith<$Res> {
  __$ModSettingsModelLedCopyWithImpl(this._self, this._then);

  final _ModSettingsModelLed _self;
  final $Res Function(_ModSettingsModelLed) _then;

/// Create a copy of ModSettingsModelLed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? read = freezed,Object? type = null,Object? bluetooth = null,Object? wiFi = null,Object? ledPanel = null,}) {
  return _then(_ModSettingsModelLed(
read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,bluetooth: null == bluetooth ? _self.bluetooth : bluetooth // ignore: cast_nullable_to_non_nullable
as Bluetooth,wiFi: null == wiFi ? _self.wiFi : wiFi // ignore: cast_nullable_to_non_nullable
as WiFi,ledPanel: null == ledPanel ? _self.ledPanel : ledPanel // ignore: cast_nullable_to_non_nullable
as LedPanel,
  ));
}

/// Create a copy of ModSettingsModelLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BluetoothCopyWith<$Res> get bluetooth {
  
  return $BluetoothCopyWith<$Res>(_self.bluetooth, (value) {
    return _then(_self.copyWith(bluetooth: value));
  });
}/// Create a copy of ModSettingsModelLed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wiFi {
  
  return $WiFiCopyWith<$Res>(_self.wiFi, (value) {
    return _then(_self.copyWith(wiFi: value));
  });
}/// Create a copy of ModSettingsModelLed
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
mixin _$ModSettingsModel {

@JsonKey(name: 'Read') bool? get read;@JsonKey(name: 'Type') String get type;@JsonKey(name: 'Bluetooth') Bluetooth get bluetooth;@JsonKey(name: 'LoRa') LoRa get loRa;@JsonKey(name: 'WiFi') WiFi get wiFi;@JsonKey(name: 'TFT') Tft get tft;@JsonKey(name: 'Buzzer') Buzzer get buzzer;@JsonKey(name: 'VCC') Vcc get vcc;
/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModSettingsModelCopyWith<ModSettingsModel> get copyWith => _$ModSettingsModelCopyWithImpl<ModSettingsModel>(this as ModSettingsModel, _$identity);

  /// Serializes this ModSettingsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModSettingsModel&&(identical(other.read, read) || other.read == read)&&(identical(other.type, type) || other.type == type)&&(identical(other.bluetooth, bluetooth) || other.bluetooth == bluetooth)&&(identical(other.loRa, loRa) || other.loRa == loRa)&&(identical(other.wiFi, wiFi) || other.wiFi == wiFi)&&(identical(other.tft, tft) || other.tft == tft)&&(identical(other.buzzer, buzzer) || other.buzzer == buzzer)&&(identical(other.vcc, vcc) || other.vcc == vcc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,read,type,bluetooth,loRa,wiFi,tft,buzzer,vcc);

@override
String toString() {
  return 'ModSettingsModel(read: $read, type: $type, bluetooth: $bluetooth, loRa: $loRa, wiFi: $wiFi, tft: $tft, buzzer: $buzzer, vcc: $vcc)';
}


}

/// @nodoc
abstract mixin class $ModSettingsModelCopyWith<$Res>  {
  factory $ModSettingsModelCopyWith(ModSettingsModel value, $Res Function(ModSettingsModel) _then) = _$ModSettingsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Read') bool? read,@JsonKey(name: 'Type') String type,@JsonKey(name: 'Bluetooth') Bluetooth bluetooth,@JsonKey(name: 'LoRa') LoRa loRa,@JsonKey(name: 'WiFi') WiFi wiFi,@JsonKey(name: 'TFT') Tft tft,@JsonKey(name: 'Buzzer') Buzzer buzzer,@JsonKey(name: 'VCC') Vcc vcc
});


$BluetoothCopyWith<$Res> get bluetooth;$LoRaCopyWith<$Res> get loRa;$WiFiCopyWith<$Res> get wiFi;$TftCopyWith<$Res> get tft;$BuzzerCopyWith<$Res> get buzzer;$VccCopyWith<$Res> get vcc;

}
/// @nodoc
class _$ModSettingsModelCopyWithImpl<$Res>
    implements $ModSettingsModelCopyWith<$Res> {
  _$ModSettingsModelCopyWithImpl(this._self, this._then);

  final ModSettingsModel _self;
  final $Res Function(ModSettingsModel) _then;

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? read = freezed,Object? type = null,Object? bluetooth = null,Object? loRa = null,Object? wiFi = null,Object? tft = null,Object? buzzer = null,Object? vcc = null,}) {
  return _then(_self.copyWith(
read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,bluetooth: null == bluetooth ? _self.bluetooth : bluetooth // ignore: cast_nullable_to_non_nullable
as Bluetooth,loRa: null == loRa ? _self.loRa : loRa // ignore: cast_nullable_to_non_nullable
as LoRa,wiFi: null == wiFi ? _self.wiFi : wiFi // ignore: cast_nullable_to_non_nullable
as WiFi,tft: null == tft ? _self.tft : tft // ignore: cast_nullable_to_non_nullable
as Tft,buzzer: null == buzzer ? _self.buzzer : buzzer // ignore: cast_nullable_to_non_nullable
as Buzzer,vcc: null == vcc ? _self.vcc : vcc // ignore: cast_nullable_to_non_nullable
as Vcc,
  ));
}
/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BluetoothCopyWith<$Res> get bluetooth {
  
  return $BluetoothCopyWith<$Res>(_self.bluetooth, (value) {
    return _then(_self.copyWith(bluetooth: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoRaCopyWith<$Res> get loRa {
  
  return $LoRaCopyWith<$Res>(_self.loRa, (value) {
    return _then(_self.copyWith(loRa: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wiFi {
  
  return $WiFiCopyWith<$Res>(_self.wiFi, (value) {
    return _then(_self.copyWith(wiFi: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TftCopyWith<$Res> get tft {
  
  return $TftCopyWith<$Res>(_self.tft, (value) {
    return _then(_self.copyWith(tft: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BuzzerCopyWith<$Res> get buzzer {
  
  return $BuzzerCopyWith<$Res>(_self.buzzer, (value) {
    return _then(_self.copyWith(buzzer: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VccCopyWith<$Res> get vcc {
  
  return $VccCopyWith<$Res>(_self.vcc, (value) {
    return _then(_self.copyWith(vcc: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ModSettingsModel implements ModSettingsModel {
  const _ModSettingsModel({@JsonKey(name: 'Read') this.read, @JsonKey(name: 'Type') required this.type, @JsonKey(name: 'Bluetooth') required this.bluetooth, @JsonKey(name: 'LoRa') required this.loRa, @JsonKey(name: 'WiFi') required this.wiFi, @JsonKey(name: 'TFT') required this.tft, @JsonKey(name: 'Buzzer') required this.buzzer, @JsonKey(name: 'VCC') required this.vcc});
  factory _ModSettingsModel.fromJson(Map<String, dynamic> json) => _$ModSettingsModelFromJson(json);

@override@JsonKey(name: 'Read') final  bool? read;
@override@JsonKey(name: 'Type') final  String type;
@override@JsonKey(name: 'Bluetooth') final  Bluetooth bluetooth;
@override@JsonKey(name: 'LoRa') final  LoRa loRa;
@override@JsonKey(name: 'WiFi') final  WiFi wiFi;
@override@JsonKey(name: 'TFT') final  Tft tft;
@override@JsonKey(name: 'Buzzer') final  Buzzer buzzer;
@override@JsonKey(name: 'VCC') final  Vcc vcc;

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModSettingsModelCopyWith<_ModSettingsModel> get copyWith => __$ModSettingsModelCopyWithImpl<_ModSettingsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModSettingsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModSettingsModel&&(identical(other.read, read) || other.read == read)&&(identical(other.type, type) || other.type == type)&&(identical(other.bluetooth, bluetooth) || other.bluetooth == bluetooth)&&(identical(other.loRa, loRa) || other.loRa == loRa)&&(identical(other.wiFi, wiFi) || other.wiFi == wiFi)&&(identical(other.tft, tft) || other.tft == tft)&&(identical(other.buzzer, buzzer) || other.buzzer == buzzer)&&(identical(other.vcc, vcc) || other.vcc == vcc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,read,type,bluetooth,loRa,wiFi,tft,buzzer,vcc);

@override
String toString() {
  return 'ModSettingsModel(read: $read, type: $type, bluetooth: $bluetooth, loRa: $loRa, wiFi: $wiFi, tft: $tft, buzzer: $buzzer, vcc: $vcc)';
}


}

/// @nodoc
abstract mixin class _$ModSettingsModelCopyWith<$Res> implements $ModSettingsModelCopyWith<$Res> {
  factory _$ModSettingsModelCopyWith(_ModSettingsModel value, $Res Function(_ModSettingsModel) _then) = __$ModSettingsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Read') bool? read,@JsonKey(name: 'Type') String type,@JsonKey(name: 'Bluetooth') Bluetooth bluetooth,@JsonKey(name: 'LoRa') LoRa loRa,@JsonKey(name: 'WiFi') WiFi wiFi,@JsonKey(name: 'TFT') Tft tft,@JsonKey(name: 'Buzzer') Buzzer buzzer,@JsonKey(name: 'VCC') Vcc vcc
});


@override $BluetoothCopyWith<$Res> get bluetooth;@override $LoRaCopyWith<$Res> get loRa;@override $WiFiCopyWith<$Res> get wiFi;@override $TftCopyWith<$Res> get tft;@override $BuzzerCopyWith<$Res> get buzzer;@override $VccCopyWith<$Res> get vcc;

}
/// @nodoc
class __$ModSettingsModelCopyWithImpl<$Res>
    implements _$ModSettingsModelCopyWith<$Res> {
  __$ModSettingsModelCopyWithImpl(this._self, this._then);

  final _ModSettingsModel _self;
  final $Res Function(_ModSettingsModel) _then;

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? read = freezed,Object? type = null,Object? bluetooth = null,Object? loRa = null,Object? wiFi = null,Object? tft = null,Object? buzzer = null,Object? vcc = null,}) {
  return _then(_ModSettingsModel(
read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,bluetooth: null == bluetooth ? _self.bluetooth : bluetooth // ignore: cast_nullable_to_non_nullable
as Bluetooth,loRa: null == loRa ? _self.loRa : loRa // ignore: cast_nullable_to_non_nullable
as LoRa,wiFi: null == wiFi ? _self.wiFi : wiFi // ignore: cast_nullable_to_non_nullable
as WiFi,tft: null == tft ? _self.tft : tft // ignore: cast_nullable_to_non_nullable
as Tft,buzzer: null == buzzer ? _self.buzzer : buzzer // ignore: cast_nullable_to_non_nullable
as Buzzer,vcc: null == vcc ? _self.vcc : vcc // ignore: cast_nullable_to_non_nullable
as Vcc,
  ));
}

/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BluetoothCopyWith<$Res> get bluetooth {
  
  return $BluetoothCopyWith<$Res>(_self.bluetooth, (value) {
    return _then(_self.copyWith(bluetooth: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoRaCopyWith<$Res> get loRa {
  
  return $LoRaCopyWith<$Res>(_self.loRa, (value) {
    return _then(_self.copyWith(loRa: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WiFiCopyWith<$Res> get wiFi {
  
  return $WiFiCopyWith<$Res>(_self.wiFi, (value) {
    return _then(_self.copyWith(wiFi: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TftCopyWith<$Res> get tft {
  
  return $TftCopyWith<$Res>(_self.tft, (value) {
    return _then(_self.copyWith(tft: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BuzzerCopyWith<$Res> get buzzer {
  
  return $BuzzerCopyWith<$Res>(_self.buzzer, (value) {
    return _then(_self.copyWith(buzzer: value));
  });
}/// Create a copy of ModSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VccCopyWith<$Res> get vcc {
  
  return $VccCopyWith<$Res>(_self.vcc, (value) {
    return _then(_self.copyWith(vcc: value));
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
mixin _$Buzzer {

 bool get active; int get shortFrequency; int get longFrequency;
/// Create a copy of Buzzer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuzzerCopyWith<Buzzer> get copyWith => _$BuzzerCopyWithImpl<Buzzer>(this as Buzzer, _$identity);

  /// Serializes this Buzzer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Buzzer&&(identical(other.active, active) || other.active == active)&&(identical(other.shortFrequency, shortFrequency) || other.shortFrequency == shortFrequency)&&(identical(other.longFrequency, longFrequency) || other.longFrequency == longFrequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,shortFrequency,longFrequency);

@override
String toString() {
  return 'Buzzer(active: $active, shortFrequency: $shortFrequency, longFrequency: $longFrequency)';
}


}

/// @nodoc
abstract mixin class $BuzzerCopyWith<$Res>  {
  factory $BuzzerCopyWith(Buzzer value, $Res Function(Buzzer) _then) = _$BuzzerCopyWithImpl;
@useResult
$Res call({
 bool active, int shortFrequency, int longFrequency
});




}
/// @nodoc
class _$BuzzerCopyWithImpl<$Res>
    implements $BuzzerCopyWith<$Res> {
  _$BuzzerCopyWithImpl(this._self, this._then);

  final Buzzer _self;
  final $Res Function(Buzzer) _then;

/// Create a copy of Buzzer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? shortFrequency = null,Object? longFrequency = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,shortFrequency: null == shortFrequency ? _self.shortFrequency : shortFrequency // ignore: cast_nullable_to_non_nullable
as int,longFrequency: null == longFrequency ? _self.longFrequency : longFrequency // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Buzzer implements Buzzer {
  const _Buzzer({required this.active, required this.shortFrequency, required this.longFrequency});
  factory _Buzzer.fromJson(Map<String, dynamic> json) => _$BuzzerFromJson(json);

@override final  bool active;
@override final  int shortFrequency;
@override final  int longFrequency;

/// Create a copy of Buzzer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuzzerCopyWith<_Buzzer> get copyWith => __$BuzzerCopyWithImpl<_Buzzer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BuzzerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Buzzer&&(identical(other.active, active) || other.active == active)&&(identical(other.shortFrequency, shortFrequency) || other.shortFrequency == shortFrequency)&&(identical(other.longFrequency, longFrequency) || other.longFrequency == longFrequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,shortFrequency,longFrequency);

@override
String toString() {
  return 'Buzzer(active: $active, shortFrequency: $shortFrequency, longFrequency: $longFrequency)';
}


}

/// @nodoc
abstract mixin class _$BuzzerCopyWith<$Res> implements $BuzzerCopyWith<$Res> {
  factory _$BuzzerCopyWith(_Buzzer value, $Res Function(_Buzzer) _then) = __$BuzzerCopyWithImpl;
@override @useResult
$Res call({
 bool active, int shortFrequency, int longFrequency
});




}
/// @nodoc
class __$BuzzerCopyWithImpl<$Res>
    implements _$BuzzerCopyWith<$Res> {
  __$BuzzerCopyWithImpl(this._self, this._then);

  final _Buzzer _self;
  final $Res Function(_Buzzer) _then;

/// Create a copy of Buzzer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? shortFrequency = null,Object? longFrequency = null,}) {
  return _then(_Buzzer(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,shortFrequency: null == shortFrequency ? _self.shortFrequency : shortFrequency // ignore: cast_nullable_to_non_nullable
as int,longFrequency: null == longFrequency ? _self.longFrequency : longFrequency // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LoRa {

 bool get active; int get frequency; int get txPower; int get spreadingFactor; int get signalBandwidth; int get codingRateDenom; int get preambleLength; int get syncWord; bool get crc;
/// Create a copy of LoRa
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoRaCopyWith<LoRa> get copyWith => _$LoRaCopyWithImpl<LoRa>(this as LoRa, _$identity);

  /// Serializes this LoRa to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoRa&&(identical(other.active, active) || other.active == active)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.txPower, txPower) || other.txPower == txPower)&&(identical(other.spreadingFactor, spreadingFactor) || other.spreadingFactor == spreadingFactor)&&(identical(other.signalBandwidth, signalBandwidth) || other.signalBandwidth == signalBandwidth)&&(identical(other.codingRateDenom, codingRateDenom) || other.codingRateDenom == codingRateDenom)&&(identical(other.preambleLength, preambleLength) || other.preambleLength == preambleLength)&&(identical(other.syncWord, syncWord) || other.syncWord == syncWord)&&(identical(other.crc, crc) || other.crc == crc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,frequency,txPower,spreadingFactor,signalBandwidth,codingRateDenom,preambleLength,syncWord,crc);

@override
String toString() {
  return 'LoRa(active: $active, frequency: $frequency, txPower: $txPower, spreadingFactor: $spreadingFactor, signalBandwidth: $signalBandwidth, codingRateDenom: $codingRateDenom, preambleLength: $preambleLength, syncWord: $syncWord, crc: $crc)';
}


}

/// @nodoc
abstract mixin class $LoRaCopyWith<$Res>  {
  factory $LoRaCopyWith(LoRa value, $Res Function(LoRa) _then) = _$LoRaCopyWithImpl;
@useResult
$Res call({
 bool active, int frequency, int txPower, int spreadingFactor, int signalBandwidth, int codingRateDenom, int preambleLength, int syncWord, bool crc
});




}
/// @nodoc
class _$LoRaCopyWithImpl<$Res>
    implements $LoRaCopyWith<$Res> {
  _$LoRaCopyWithImpl(this._self, this._then);

  final LoRa _self;
  final $Res Function(LoRa) _then;

/// Create a copy of LoRa
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? frequency = null,Object? txPower = null,Object? spreadingFactor = null,Object? signalBandwidth = null,Object? codingRateDenom = null,Object? preambleLength = null,Object? syncWord = null,Object? crc = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as int,txPower: null == txPower ? _self.txPower : txPower // ignore: cast_nullable_to_non_nullable
as int,spreadingFactor: null == spreadingFactor ? _self.spreadingFactor : spreadingFactor // ignore: cast_nullable_to_non_nullable
as int,signalBandwidth: null == signalBandwidth ? _self.signalBandwidth : signalBandwidth // ignore: cast_nullable_to_non_nullable
as int,codingRateDenom: null == codingRateDenom ? _self.codingRateDenom : codingRateDenom // ignore: cast_nullable_to_non_nullable
as int,preambleLength: null == preambleLength ? _self.preambleLength : preambleLength // ignore: cast_nullable_to_non_nullable
as int,syncWord: null == syncWord ? _self.syncWord : syncWord // ignore: cast_nullable_to_non_nullable
as int,crc: null == crc ? _self.crc : crc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LoRa implements LoRa {
  const _LoRa({required this.active, required this.frequency, required this.txPower, required this.spreadingFactor, required this.signalBandwidth, required this.codingRateDenom, required this.preambleLength, required this.syncWord, required this.crc});
  factory _LoRa.fromJson(Map<String, dynamic> json) => _$LoRaFromJson(json);

@override final  bool active;
@override final  int frequency;
@override final  int txPower;
@override final  int spreadingFactor;
@override final  int signalBandwidth;
@override final  int codingRateDenom;
@override final  int preambleLength;
@override final  int syncWord;
@override final  bool crc;

/// Create a copy of LoRa
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoRaCopyWith<_LoRa> get copyWith => __$LoRaCopyWithImpl<_LoRa>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoRaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoRa&&(identical(other.active, active) || other.active == active)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.txPower, txPower) || other.txPower == txPower)&&(identical(other.spreadingFactor, spreadingFactor) || other.spreadingFactor == spreadingFactor)&&(identical(other.signalBandwidth, signalBandwidth) || other.signalBandwidth == signalBandwidth)&&(identical(other.codingRateDenom, codingRateDenom) || other.codingRateDenom == codingRateDenom)&&(identical(other.preambleLength, preambleLength) || other.preambleLength == preambleLength)&&(identical(other.syncWord, syncWord) || other.syncWord == syncWord)&&(identical(other.crc, crc) || other.crc == crc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,frequency,txPower,spreadingFactor,signalBandwidth,codingRateDenom,preambleLength,syncWord,crc);

@override
String toString() {
  return 'LoRa(active: $active, frequency: $frequency, txPower: $txPower, spreadingFactor: $spreadingFactor, signalBandwidth: $signalBandwidth, codingRateDenom: $codingRateDenom, preambleLength: $preambleLength, syncWord: $syncWord, crc: $crc)';
}


}

/// @nodoc
abstract mixin class _$LoRaCopyWith<$Res> implements $LoRaCopyWith<$Res> {
  factory _$LoRaCopyWith(_LoRa value, $Res Function(_LoRa) _then) = __$LoRaCopyWithImpl;
@override @useResult
$Res call({
 bool active, int frequency, int txPower, int spreadingFactor, int signalBandwidth, int codingRateDenom, int preambleLength, int syncWord, bool crc
});




}
/// @nodoc
class __$LoRaCopyWithImpl<$Res>
    implements _$LoRaCopyWith<$Res> {
  __$LoRaCopyWithImpl(this._self, this._then);

  final _LoRa _self;
  final $Res Function(_LoRa) _then;

/// Create a copy of LoRa
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? frequency = null,Object? txPower = null,Object? spreadingFactor = null,Object? signalBandwidth = null,Object? codingRateDenom = null,Object? preambleLength = null,Object? syncWord = null,Object? crc = null,}) {
  return _then(_LoRa(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as int,txPower: null == txPower ? _self.txPower : txPower // ignore: cast_nullable_to_non_nullable
as int,spreadingFactor: null == spreadingFactor ? _self.spreadingFactor : spreadingFactor // ignore: cast_nullable_to_non_nullable
as int,signalBandwidth: null == signalBandwidth ? _self.signalBandwidth : signalBandwidth // ignore: cast_nullable_to_non_nullable
as int,codingRateDenom: null == codingRateDenom ? _self.codingRateDenom : codingRateDenom // ignore: cast_nullable_to_non_nullable
as int,preambleLength: null == preambleLength ? _self.preambleLength : preambleLength // ignore: cast_nullable_to_non_nullable
as int,syncWord: null == syncWord ? _self.syncWord : syncWord // ignore: cast_nullable_to_non_nullable
as int,crc: null == crc ? _self.crc : crc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Tft {

 bool get active; bool get timeout; int get timeoutDuration; bool get turnOnAtEvent;
/// Create a copy of Tft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TftCopyWith<Tft> get copyWith => _$TftCopyWithImpl<Tft>(this as Tft, _$identity);

  /// Serializes this Tft to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tft&&(identical(other.active, active) || other.active == active)&&(identical(other.timeout, timeout) || other.timeout == timeout)&&(identical(other.timeoutDuration, timeoutDuration) || other.timeoutDuration == timeoutDuration)&&(identical(other.turnOnAtEvent, turnOnAtEvent) || other.turnOnAtEvent == turnOnAtEvent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,timeout,timeoutDuration,turnOnAtEvent);

@override
String toString() {
  return 'Tft(active: $active, timeout: $timeout, timeoutDuration: $timeoutDuration, turnOnAtEvent: $turnOnAtEvent)';
}


}

/// @nodoc
abstract mixin class $TftCopyWith<$Res>  {
  factory $TftCopyWith(Tft value, $Res Function(Tft) _then) = _$TftCopyWithImpl;
@useResult
$Res call({
 bool active, bool timeout, int timeoutDuration, bool turnOnAtEvent
});




}
/// @nodoc
class _$TftCopyWithImpl<$Res>
    implements $TftCopyWith<$Res> {
  _$TftCopyWithImpl(this._self, this._then);

  final Tft _self;
  final $Res Function(Tft) _then;

/// Create a copy of Tft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? timeout = null,Object? timeoutDuration = null,Object? turnOnAtEvent = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,timeout: null == timeout ? _self.timeout : timeout // ignore: cast_nullable_to_non_nullable
as bool,timeoutDuration: null == timeoutDuration ? _self.timeoutDuration : timeoutDuration // ignore: cast_nullable_to_non_nullable
as int,turnOnAtEvent: null == turnOnAtEvent ? _self.turnOnAtEvent : turnOnAtEvent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Tft implements Tft {
  const _Tft({required this.active, required this.timeout, required this.timeoutDuration, required this.turnOnAtEvent});
  factory _Tft.fromJson(Map<String, dynamic> json) => _$TftFromJson(json);

@override final  bool active;
@override final  bool timeout;
@override final  int timeoutDuration;
@override final  bool turnOnAtEvent;

/// Create a copy of Tft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TftCopyWith<_Tft> get copyWith => __$TftCopyWithImpl<_Tft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tft&&(identical(other.active, active) || other.active == active)&&(identical(other.timeout, timeout) || other.timeout == timeout)&&(identical(other.timeoutDuration, timeoutDuration) || other.timeoutDuration == timeoutDuration)&&(identical(other.turnOnAtEvent, turnOnAtEvent) || other.turnOnAtEvent == turnOnAtEvent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,active,timeout,timeoutDuration,turnOnAtEvent);

@override
String toString() {
  return 'Tft(active: $active, timeout: $timeout, timeoutDuration: $timeoutDuration, turnOnAtEvent: $turnOnAtEvent)';
}


}

/// @nodoc
abstract mixin class _$TftCopyWith<$Res> implements $TftCopyWith<$Res> {
  factory _$TftCopyWith(_Tft value, $Res Function(_Tft) _then) = __$TftCopyWithImpl;
@override @useResult
$Res call({
 bool active, bool timeout, int timeoutDuration, bool turnOnAtEvent
});




}
/// @nodoc
class __$TftCopyWithImpl<$Res>
    implements _$TftCopyWith<$Res> {
  __$TftCopyWithImpl(this._self, this._then);

  final _Tft _self;
  final $Res Function(_Tft) _then;

/// Create a copy of Tft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? timeout = null,Object? timeoutDuration = null,Object? turnOnAtEvent = null,}) {
  return _then(_Tft(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,timeout: null == timeout ? _self.timeout : timeout // ignore: cast_nullable_to_non_nullable
as bool,timeoutDuration: null == timeoutDuration ? _self.timeoutDuration : timeoutDuration // ignore: cast_nullable_to_non_nullable
as int,turnOnAtEvent: null == turnOnAtEvent ? _self.turnOnAtEvent : turnOnAtEvent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Vcc {

 int get r1; int get r2; int? get vbat;
/// Create a copy of Vcc
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VccCopyWith<Vcc> get copyWith => _$VccCopyWithImpl<Vcc>(this as Vcc, _$identity);

  /// Serializes this Vcc to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Vcc&&(identical(other.r1, r1) || other.r1 == r1)&&(identical(other.r2, r2) || other.r2 == r2)&&(identical(other.vbat, vbat) || other.vbat == vbat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,r1,r2,vbat);

@override
String toString() {
  return 'Vcc(r1: $r1, r2: $r2, vbat: $vbat)';
}


}

/// @nodoc
abstract mixin class $VccCopyWith<$Res>  {
  factory $VccCopyWith(Vcc value, $Res Function(Vcc) _then) = _$VccCopyWithImpl;
@useResult
$Res call({
 int r1, int r2, int? vbat
});




}
/// @nodoc
class _$VccCopyWithImpl<$Res>
    implements $VccCopyWith<$Res> {
  _$VccCopyWithImpl(this._self, this._then);

  final Vcc _self;
  final $Res Function(Vcc) _then;

/// Create a copy of Vcc
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? r1 = null,Object? r2 = null,Object? vbat = freezed,}) {
  return _then(_self.copyWith(
r1: null == r1 ? _self.r1 : r1 // ignore: cast_nullable_to_non_nullable
as int,r2: null == r2 ? _self.r2 : r2 // ignore: cast_nullable_to_non_nullable
as int,vbat: freezed == vbat ? _self.vbat : vbat // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Vcc implements Vcc {
  const _Vcc({required this.r1, required this.r2, this.vbat});
  factory _Vcc.fromJson(Map<String, dynamic> json) => _$VccFromJson(json);

@override final  int r1;
@override final  int r2;
@override final  int? vbat;

/// Create a copy of Vcc
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VccCopyWith<_Vcc> get copyWith => __$VccCopyWithImpl<_Vcc>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VccToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vcc&&(identical(other.r1, r1) || other.r1 == r1)&&(identical(other.r2, r2) || other.r2 == r2)&&(identical(other.vbat, vbat) || other.vbat == vbat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,r1,r2,vbat);

@override
String toString() {
  return 'Vcc(r1: $r1, r2: $r2, vbat: $vbat)';
}


}

/// @nodoc
abstract mixin class _$VccCopyWith<$Res> implements $VccCopyWith<$Res> {
  factory _$VccCopyWith(_Vcc value, $Res Function(_Vcc) _then) = __$VccCopyWithImpl;
@override @useResult
$Res call({
 int r1, int r2, int? vbat
});




}
/// @nodoc
class __$VccCopyWithImpl<$Res>
    implements _$VccCopyWith<$Res> {
  __$VccCopyWithImpl(this._self, this._then);

  final _Vcc _self;
  final $Res Function(_Vcc) _then;

/// Create a copy of Vcc
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? r1 = null,Object? r2 = null,Object? vbat = freezed,}) {
  return _then(_Vcc(
r1: null == r1 ? _self.r1 : r1 // ignore: cast_nullable_to_non_nullable
as int,r2: null == r2 ? _self.r2 : r2 // ignore: cast_nullable_to_non_nullable
as int,vbat: freezed == vbat ? _self.vbat : vbat // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WiFi {

 bool get active; String get ssid; String get passwd;
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
 bool active, String ssid, String passwd
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
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? ssid = null,Object? passwd = null,}) {
  return _then(_self.copyWith(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,passwd: null == passwd ? _self.passwd : passwd // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WiFi implements WiFi {
  const _WiFi({required this.active, required this.ssid, required this.passwd});
  factory _WiFi.fromJson(Map<String, dynamic> json) => _$WiFiFromJson(json);

@override final  bool active;
@override final  String ssid;
@override final  String passwd;

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
 bool active, String ssid, String passwd
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
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? ssid = null,Object? passwd = null,}) {
  return _then(_WiFi(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,passwd: null == passwd ? _self.passwd : passwd // ignore: cast_nullable_to_non_nullable
as String,
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
