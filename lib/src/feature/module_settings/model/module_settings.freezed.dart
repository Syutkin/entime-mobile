// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModSettingsModelType _$ModSettingsModelTypeFromJson(Map<String, dynamic> json) {
  return _ModSettingsModelType.fromJson(json);
}

/// @nodoc
mixin _$ModSettingsModelType {
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ModSettingsModelType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModSettingsModelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModSettingsModelTypeCopyWith<ModSettingsModelType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModSettingsModelTypeCopyWith<$Res> {
  factory $ModSettingsModelTypeCopyWith(ModSettingsModelType value,
          $Res Function(ModSettingsModelType) then) =
      _$ModSettingsModelTypeCopyWithImpl<$Res, ModSettingsModelType>;
  @useResult
  $Res call({@JsonKey(name: 'Type') String type});
}

/// @nodoc
class _$ModSettingsModelTypeCopyWithImpl<$Res,
        $Val extends ModSettingsModelType>
    implements $ModSettingsModelTypeCopyWith<$Res> {
  _$ModSettingsModelTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModSettingsModelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModSettingsModelTypeImplCopyWith<$Res>
    implements $ModSettingsModelTypeCopyWith<$Res> {
  factory _$$ModSettingsModelTypeImplCopyWith(_$ModSettingsModelTypeImpl value,
          $Res Function(_$ModSettingsModelTypeImpl) then) =
      __$$ModSettingsModelTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Type') String type});
}

/// @nodoc
class __$$ModSettingsModelTypeImplCopyWithImpl<$Res>
    extends _$ModSettingsModelTypeCopyWithImpl<$Res, _$ModSettingsModelTypeImpl>
    implements _$$ModSettingsModelTypeImplCopyWith<$Res> {
  __$$ModSettingsModelTypeImplCopyWithImpl(_$ModSettingsModelTypeImpl _value,
      $Res Function(_$ModSettingsModelTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModSettingsModelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ModSettingsModelTypeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModSettingsModelTypeImpl implements _ModSettingsModelType {
  const _$ModSettingsModelTypeImpl({@JsonKey(name: 'Type') required this.type});

  factory _$ModSettingsModelTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModSettingsModelTypeImplFromJson(json);

  @override
  @JsonKey(name: 'Type')
  final String type;

  @override
  String toString() {
    return 'ModSettingsModelType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModSettingsModelTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ModSettingsModelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModSettingsModelTypeImplCopyWith<_$ModSettingsModelTypeImpl>
      get copyWith =>
          __$$ModSettingsModelTypeImplCopyWithImpl<_$ModSettingsModelTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModSettingsModelTypeImplToJson(
      this,
    );
  }
}

abstract class _ModSettingsModelType implements ModSettingsModelType {
  const factory _ModSettingsModelType(
          {@JsonKey(name: 'Type') required final String type}) =
      _$ModSettingsModelTypeImpl;

  factory _ModSettingsModelType.fromJson(Map<String, dynamic> json) =
      _$ModSettingsModelTypeImpl.fromJson;

  @override
  @JsonKey(name: 'Type')
  String get type;

  /// Create a copy of ModSettingsModelType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModSettingsModelTypeImplCopyWith<_$ModSettingsModelTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModSettingsModelLed _$ModSettingsModelLedFromJson(Map<String, dynamic> json) {
  return _ModSettingsModelLed.fromJson(json);
}

/// @nodoc
mixin _$ModSettingsModelLed {
  @JsonKey(name: 'Read')
  bool? get read => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Bluetooth')
  Bluetooth get bluetooth => throw _privateConstructorUsedError;
  @JsonKey(name: 'WiFi')
  WiFi get wiFi => throw _privateConstructorUsedError;
  @JsonKey(name: 'LedPanel')
  LedPanel get ledPanel => throw _privateConstructorUsedError;

  /// Serializes this ModSettingsModelLed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModSettingsModelLedCopyWith<ModSettingsModelLed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModSettingsModelLedCopyWith<$Res> {
  factory $ModSettingsModelLedCopyWith(
          ModSettingsModelLed value, $Res Function(ModSettingsModelLed) then) =
      _$ModSettingsModelLedCopyWithImpl<$Res, ModSettingsModelLed>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Read') bool? read,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Bluetooth') Bluetooth bluetooth,
      @JsonKey(name: 'WiFi') WiFi wiFi,
      @JsonKey(name: 'LedPanel') LedPanel ledPanel});

  $BluetoothCopyWith<$Res> get bluetooth;
  $WiFiCopyWith<$Res> get wiFi;
  $LedPanelCopyWith<$Res> get ledPanel;
}

/// @nodoc
class _$ModSettingsModelLedCopyWithImpl<$Res, $Val extends ModSettingsModelLed>
    implements $ModSettingsModelLedCopyWith<$Res> {
  _$ModSettingsModelLedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
    Object? type = null,
    Object? bluetooth = null,
    Object? wiFi = null,
    Object? ledPanel = null,
  }) {
    return _then(_value.copyWith(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      wiFi: null == wiFi
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      ledPanel: null == ledPanel
          ? _value.ledPanel
          : ledPanel // ignore: cast_nullable_to_non_nullable
              as LedPanel,
    ) as $Val);
  }

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BluetoothCopyWith<$Res> get bluetooth {
    return $BluetoothCopyWith<$Res>(_value.bluetooth, (value) {
      return _then(_value.copyWith(bluetooth: value) as $Val);
    });
  }

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WiFiCopyWith<$Res> get wiFi {
    return $WiFiCopyWith<$Res>(_value.wiFi, (value) {
      return _then(_value.copyWith(wiFi: value) as $Val);
    });
  }

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedPanelCopyWith<$Res> get ledPanel {
    return $LedPanelCopyWith<$Res>(_value.ledPanel, (value) {
      return _then(_value.copyWith(ledPanel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModSettingsModelLedImplCopyWith<$Res>
    implements $ModSettingsModelLedCopyWith<$Res> {
  factory _$$ModSettingsModelLedImplCopyWith(_$ModSettingsModelLedImpl value,
          $Res Function(_$ModSettingsModelLedImpl) then) =
      __$$ModSettingsModelLedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Read') bool? read,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Bluetooth') Bluetooth bluetooth,
      @JsonKey(name: 'WiFi') WiFi wiFi,
      @JsonKey(name: 'LedPanel') LedPanel ledPanel});

  @override
  $BluetoothCopyWith<$Res> get bluetooth;
  @override
  $WiFiCopyWith<$Res> get wiFi;
  @override
  $LedPanelCopyWith<$Res> get ledPanel;
}

/// @nodoc
class __$$ModSettingsModelLedImplCopyWithImpl<$Res>
    extends _$ModSettingsModelLedCopyWithImpl<$Res, _$ModSettingsModelLedImpl>
    implements _$$ModSettingsModelLedImplCopyWith<$Res> {
  __$$ModSettingsModelLedImplCopyWithImpl(_$ModSettingsModelLedImpl _value,
      $Res Function(_$ModSettingsModelLedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
    Object? type = null,
    Object? bluetooth = null,
    Object? wiFi = null,
    Object? ledPanel = null,
  }) {
    return _then(_$ModSettingsModelLedImpl(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      wiFi: null == wiFi
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      ledPanel: null == ledPanel
          ? _value.ledPanel
          : ledPanel // ignore: cast_nullable_to_non_nullable
              as LedPanel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModSettingsModelLedImpl implements _ModSettingsModelLed {
  const _$ModSettingsModelLedImpl(
      {@JsonKey(name: 'Read') this.read,
      @JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'Bluetooth') required this.bluetooth,
      @JsonKey(name: 'WiFi') required this.wiFi,
      @JsonKey(name: 'LedPanel') required this.ledPanel});

  factory _$ModSettingsModelLedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModSettingsModelLedImplFromJson(json);

  @override
  @JsonKey(name: 'Read')
  final bool? read;
  @override
  @JsonKey(name: 'Type')
  final String type;
  @override
  @JsonKey(name: 'Bluetooth')
  final Bluetooth bluetooth;
  @override
  @JsonKey(name: 'WiFi')
  final WiFi wiFi;
  @override
  @JsonKey(name: 'LedPanel')
  final LedPanel ledPanel;

  @override
  String toString() {
    return 'ModSettingsModelLed(read: $read, type: $type, bluetooth: $bluetooth, wiFi: $wiFi, ledPanel: $ledPanel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModSettingsModelLedImpl &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bluetooth, bluetooth) ||
                other.bluetooth == bluetooth) &&
            (identical(other.wiFi, wiFi) || other.wiFi == wiFi) &&
            (identical(other.ledPanel, ledPanel) ||
                other.ledPanel == ledPanel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, read, type, bluetooth, wiFi, ledPanel);

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModSettingsModelLedImplCopyWith<_$ModSettingsModelLedImpl> get copyWith =>
      __$$ModSettingsModelLedImplCopyWithImpl<_$ModSettingsModelLedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModSettingsModelLedImplToJson(
      this,
    );
  }
}

abstract class _ModSettingsModelLed implements ModSettingsModelLed {
  const factory _ModSettingsModelLed(
          {@JsonKey(name: 'Read') final bool? read,
          @JsonKey(name: 'Type') required final String type,
          @JsonKey(name: 'Bluetooth') required final Bluetooth bluetooth,
          @JsonKey(name: 'WiFi') required final WiFi wiFi,
          @JsonKey(name: 'LedPanel') required final LedPanel ledPanel}) =
      _$ModSettingsModelLedImpl;

  factory _ModSettingsModelLed.fromJson(Map<String, dynamic> json) =
      _$ModSettingsModelLedImpl.fromJson;

  @override
  @JsonKey(name: 'Read')
  bool? get read;
  @override
  @JsonKey(name: 'Type')
  String get type;
  @override
  @JsonKey(name: 'Bluetooth')
  Bluetooth get bluetooth;
  @override
  @JsonKey(name: 'WiFi')
  WiFi get wiFi;
  @override
  @JsonKey(name: 'LedPanel')
  LedPanel get ledPanel;

  /// Create a copy of ModSettingsModelLed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModSettingsModelLedImplCopyWith<_$ModSettingsModelLedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModSettingsModel _$ModSettingsModelFromJson(Map<String, dynamic> json) {
  return _ModSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$ModSettingsModel {
  @JsonKey(name: 'Read')
  bool? get read => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Bluetooth')
  Bluetooth get bluetooth => throw _privateConstructorUsedError;
  @JsonKey(name: 'LoRa')
  LoRa get loRa => throw _privateConstructorUsedError;
  @JsonKey(name: 'WiFi')
  WiFi get wiFi => throw _privateConstructorUsedError;
  @JsonKey(name: 'TFT')
  Tft get tft => throw _privateConstructorUsedError;
  @JsonKey(name: 'Buzzer')
  Buzzer get buzzer => throw _privateConstructorUsedError;
  @JsonKey(name: 'VCC')
  Vcc get vcc => throw _privateConstructorUsedError;

  /// Serializes this ModSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModSettingsModelCopyWith<ModSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModSettingsModelCopyWith<$Res> {
  factory $ModSettingsModelCopyWith(
          ModSettingsModel value, $Res Function(ModSettingsModel) then) =
      _$ModSettingsModelCopyWithImpl<$Res, ModSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Read') bool? read,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Bluetooth') Bluetooth bluetooth,
      @JsonKey(name: 'LoRa') LoRa loRa,
      @JsonKey(name: 'WiFi') WiFi wiFi,
      @JsonKey(name: 'TFT') Tft tft,
      @JsonKey(name: 'Buzzer') Buzzer buzzer,
      @JsonKey(name: 'VCC') Vcc vcc});

  $BluetoothCopyWith<$Res> get bluetooth;
  $LoRaCopyWith<$Res> get loRa;
  $WiFiCopyWith<$Res> get wiFi;
  $TftCopyWith<$Res> get tft;
  $BuzzerCopyWith<$Res> get buzzer;
  $VccCopyWith<$Res> get vcc;
}

/// @nodoc
class _$ModSettingsModelCopyWithImpl<$Res, $Val extends ModSettingsModel>
    implements $ModSettingsModelCopyWith<$Res> {
  _$ModSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
    Object? type = null,
    Object? bluetooth = null,
    Object? loRa = null,
    Object? wiFi = null,
    Object? tft = null,
    Object? buzzer = null,
    Object? vcc = null,
  }) {
    return _then(_value.copyWith(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      loRa: null == loRa
          ? _value.loRa
          : loRa // ignore: cast_nullable_to_non_nullable
              as LoRa,
      wiFi: null == wiFi
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      tft: null == tft
          ? _value.tft
          : tft // ignore: cast_nullable_to_non_nullable
              as Tft,
      buzzer: null == buzzer
          ? _value.buzzer
          : buzzer // ignore: cast_nullable_to_non_nullable
              as Buzzer,
      vcc: null == vcc
          ? _value.vcc
          : vcc // ignore: cast_nullable_to_non_nullable
              as Vcc,
    ) as $Val);
  }

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BluetoothCopyWith<$Res> get bluetooth {
    return $BluetoothCopyWith<$Res>(_value.bluetooth, (value) {
      return _then(_value.copyWith(bluetooth: value) as $Val);
    });
  }

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoRaCopyWith<$Res> get loRa {
    return $LoRaCopyWith<$Res>(_value.loRa, (value) {
      return _then(_value.copyWith(loRa: value) as $Val);
    });
  }

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WiFiCopyWith<$Res> get wiFi {
    return $WiFiCopyWith<$Res>(_value.wiFi, (value) {
      return _then(_value.copyWith(wiFi: value) as $Val);
    });
  }

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TftCopyWith<$Res> get tft {
    return $TftCopyWith<$Res>(_value.tft, (value) {
      return _then(_value.copyWith(tft: value) as $Val);
    });
  }

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuzzerCopyWith<$Res> get buzzer {
    return $BuzzerCopyWith<$Res>(_value.buzzer, (value) {
      return _then(_value.copyWith(buzzer: value) as $Val);
    });
  }

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VccCopyWith<$Res> get vcc {
    return $VccCopyWith<$Res>(_value.vcc, (value) {
      return _then(_value.copyWith(vcc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModSettingsModelImplCopyWith<$Res>
    implements $ModSettingsModelCopyWith<$Res> {
  factory _$$ModSettingsModelImplCopyWith(_$ModSettingsModelImpl value,
          $Res Function(_$ModSettingsModelImpl) then) =
      __$$ModSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Read') bool? read,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Bluetooth') Bluetooth bluetooth,
      @JsonKey(name: 'LoRa') LoRa loRa,
      @JsonKey(name: 'WiFi') WiFi wiFi,
      @JsonKey(name: 'TFT') Tft tft,
      @JsonKey(name: 'Buzzer') Buzzer buzzer,
      @JsonKey(name: 'VCC') Vcc vcc});

  @override
  $BluetoothCopyWith<$Res> get bluetooth;
  @override
  $LoRaCopyWith<$Res> get loRa;
  @override
  $WiFiCopyWith<$Res> get wiFi;
  @override
  $TftCopyWith<$Res> get tft;
  @override
  $BuzzerCopyWith<$Res> get buzzer;
  @override
  $VccCopyWith<$Res> get vcc;
}

/// @nodoc
class __$$ModSettingsModelImplCopyWithImpl<$Res>
    extends _$ModSettingsModelCopyWithImpl<$Res, _$ModSettingsModelImpl>
    implements _$$ModSettingsModelImplCopyWith<$Res> {
  __$$ModSettingsModelImplCopyWithImpl(_$ModSettingsModelImpl _value,
      $Res Function(_$ModSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
    Object? type = null,
    Object? bluetooth = null,
    Object? loRa = null,
    Object? wiFi = null,
    Object? tft = null,
    Object? buzzer = null,
    Object? vcc = null,
  }) {
    return _then(_$ModSettingsModelImpl(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      loRa: null == loRa
          ? _value.loRa
          : loRa // ignore: cast_nullable_to_non_nullable
              as LoRa,
      wiFi: null == wiFi
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      tft: null == tft
          ? _value.tft
          : tft // ignore: cast_nullable_to_non_nullable
              as Tft,
      buzzer: null == buzzer
          ? _value.buzzer
          : buzzer // ignore: cast_nullable_to_non_nullable
              as Buzzer,
      vcc: null == vcc
          ? _value.vcc
          : vcc // ignore: cast_nullable_to_non_nullable
              as Vcc,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModSettingsModelImpl implements _ModSettingsModel {
  const _$ModSettingsModelImpl(
      {@JsonKey(name: 'Read') this.read,
      @JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'Bluetooth') required this.bluetooth,
      @JsonKey(name: 'LoRa') required this.loRa,
      @JsonKey(name: 'WiFi') required this.wiFi,
      @JsonKey(name: 'TFT') required this.tft,
      @JsonKey(name: 'Buzzer') required this.buzzer,
      @JsonKey(name: 'VCC') required this.vcc});

  factory _$ModSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModSettingsModelImplFromJson(json);

  @override
  @JsonKey(name: 'Read')
  final bool? read;
  @override
  @JsonKey(name: 'Type')
  final String type;
  @override
  @JsonKey(name: 'Bluetooth')
  final Bluetooth bluetooth;
  @override
  @JsonKey(name: 'LoRa')
  final LoRa loRa;
  @override
  @JsonKey(name: 'WiFi')
  final WiFi wiFi;
  @override
  @JsonKey(name: 'TFT')
  final Tft tft;
  @override
  @JsonKey(name: 'Buzzer')
  final Buzzer buzzer;
  @override
  @JsonKey(name: 'VCC')
  final Vcc vcc;

  @override
  String toString() {
    return 'ModSettingsModel(read: $read, type: $type, bluetooth: $bluetooth, loRa: $loRa, wiFi: $wiFi, tft: $tft, buzzer: $buzzer, vcc: $vcc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModSettingsModelImpl &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bluetooth, bluetooth) ||
                other.bluetooth == bluetooth) &&
            (identical(other.loRa, loRa) || other.loRa == loRa) &&
            (identical(other.wiFi, wiFi) || other.wiFi == wiFi) &&
            (identical(other.tft, tft) || other.tft == tft) &&
            (identical(other.buzzer, buzzer) || other.buzzer == buzzer) &&
            (identical(other.vcc, vcc) || other.vcc == vcc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, read, type, bluetooth, loRa, wiFi, tft, buzzer, vcc);

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModSettingsModelImplCopyWith<_$ModSettingsModelImpl> get copyWith =>
      __$$ModSettingsModelImplCopyWithImpl<_$ModSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _ModSettingsModel implements ModSettingsModel {
  const factory _ModSettingsModel(
      {@JsonKey(name: 'Read') final bool? read,
      @JsonKey(name: 'Type') required final String type,
      @JsonKey(name: 'Bluetooth') required final Bluetooth bluetooth,
      @JsonKey(name: 'LoRa') required final LoRa loRa,
      @JsonKey(name: 'WiFi') required final WiFi wiFi,
      @JsonKey(name: 'TFT') required final Tft tft,
      @JsonKey(name: 'Buzzer') required final Buzzer buzzer,
      @JsonKey(name: 'VCC') required final Vcc vcc}) = _$ModSettingsModelImpl;

  factory _ModSettingsModel.fromJson(Map<String, dynamic> json) =
      _$ModSettingsModelImpl.fromJson;

  @override
  @JsonKey(name: 'Read')
  bool? get read;
  @override
  @JsonKey(name: 'Type')
  String get type;
  @override
  @JsonKey(name: 'Bluetooth')
  Bluetooth get bluetooth;
  @override
  @JsonKey(name: 'LoRa')
  LoRa get loRa;
  @override
  @JsonKey(name: 'WiFi')
  WiFi get wiFi;
  @override
  @JsonKey(name: 'TFT')
  Tft get tft;
  @override
  @JsonKey(name: 'Buzzer')
  Buzzer get buzzer;
  @override
  @JsonKey(name: 'VCC')
  Vcc get vcc;

  /// Create a copy of ModSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModSettingsModelImplCopyWith<_$ModSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bluetooth _$BluetoothFromJson(Map<String, dynamic> json) {
  return _Bluetooth.fromJson(json);
}

/// @nodoc
mixin _$Bluetooth {
  bool get active => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  /// Serializes this Bluetooth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bluetooth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BluetoothCopyWith<Bluetooth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothCopyWith<$Res> {
  factory $BluetoothCopyWith(Bluetooth value, $Res Function(Bluetooth) then) =
      _$BluetoothCopyWithImpl<$Res, Bluetooth>;
  @useResult
  $Res call({bool active, String name, int number});
}

/// @nodoc
class _$BluetoothCopyWithImpl<$Res, $Val extends Bluetooth>
    implements $BluetoothCopyWith<$Res> {
  _$BluetoothCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bluetooth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BluetoothImplCopyWith<$Res>
    implements $BluetoothCopyWith<$Res> {
  factory _$$BluetoothImplCopyWith(
          _$BluetoothImpl value, $Res Function(_$BluetoothImpl) then) =
      __$$BluetoothImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool active, String name, int number});
}

/// @nodoc
class __$$BluetoothImplCopyWithImpl<$Res>
    extends _$BluetoothCopyWithImpl<$Res, _$BluetoothImpl>
    implements _$$BluetoothImplCopyWith<$Res> {
  __$$BluetoothImplCopyWithImpl(
      _$BluetoothImpl _value, $Res Function(_$BluetoothImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bluetooth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_$BluetoothImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BluetoothImpl implements _Bluetooth {
  const _$BluetoothImpl(
      {required this.active, required this.name, required this.number});

  factory _$BluetoothImpl.fromJson(Map<String, dynamic> json) =>
      _$$BluetoothImplFromJson(json);

  @override
  final bool active;
  @override
  final String name;
  @override
  final int number;

  @override
  String toString() {
    return 'Bluetooth(active: $active, name: $name, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, active, name, number);

  /// Create a copy of Bluetooth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothImplCopyWith<_$BluetoothImpl> get copyWith =>
      __$$BluetoothImplCopyWithImpl<_$BluetoothImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BluetoothImplToJson(
      this,
    );
  }
}

abstract class _Bluetooth implements Bluetooth {
  const factory _Bluetooth(
      {required final bool active,
      required final String name,
      required final int number}) = _$BluetoothImpl;

  factory _Bluetooth.fromJson(Map<String, dynamic> json) =
      _$BluetoothImpl.fromJson;

  @override
  bool get active;
  @override
  String get name;
  @override
  int get number;

  /// Create a copy of Bluetooth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothImplCopyWith<_$BluetoothImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Buzzer _$BuzzerFromJson(Map<String, dynamic> json) {
  return _Buzzer.fromJson(json);
}

/// @nodoc
mixin _$Buzzer {
  bool get active => throw _privateConstructorUsedError;
  int get shortFrequency => throw _privateConstructorUsedError;
  int get longFrequency => throw _privateConstructorUsedError;

  /// Serializes this Buzzer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Buzzer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuzzerCopyWith<Buzzer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuzzerCopyWith<$Res> {
  factory $BuzzerCopyWith(Buzzer value, $Res Function(Buzzer) then) =
      _$BuzzerCopyWithImpl<$Res, Buzzer>;
  @useResult
  $Res call({bool active, int shortFrequency, int longFrequency});
}

/// @nodoc
class _$BuzzerCopyWithImpl<$Res, $Val extends Buzzer>
    implements $BuzzerCopyWith<$Res> {
  _$BuzzerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Buzzer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? shortFrequency = null,
    Object? longFrequency = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      shortFrequency: null == shortFrequency
          ? _value.shortFrequency
          : shortFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      longFrequency: null == longFrequency
          ? _value.longFrequency
          : longFrequency // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuzzerImplCopyWith<$Res> implements $BuzzerCopyWith<$Res> {
  factory _$$BuzzerImplCopyWith(
          _$BuzzerImpl value, $Res Function(_$BuzzerImpl) then) =
      __$$BuzzerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool active, int shortFrequency, int longFrequency});
}

/// @nodoc
class __$$BuzzerImplCopyWithImpl<$Res>
    extends _$BuzzerCopyWithImpl<$Res, _$BuzzerImpl>
    implements _$$BuzzerImplCopyWith<$Res> {
  __$$BuzzerImplCopyWithImpl(
      _$BuzzerImpl _value, $Res Function(_$BuzzerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Buzzer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? shortFrequency = null,
    Object? longFrequency = null,
  }) {
    return _then(_$BuzzerImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      shortFrequency: null == shortFrequency
          ? _value.shortFrequency
          : shortFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      longFrequency: null == longFrequency
          ? _value.longFrequency
          : longFrequency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuzzerImpl implements _Buzzer {
  const _$BuzzerImpl(
      {required this.active,
      required this.shortFrequency,
      required this.longFrequency});

  factory _$BuzzerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuzzerImplFromJson(json);

  @override
  final bool active;
  @override
  final int shortFrequency;
  @override
  final int longFrequency;

  @override
  String toString() {
    return 'Buzzer(active: $active, shortFrequency: $shortFrequency, longFrequency: $longFrequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuzzerImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.shortFrequency, shortFrequency) ||
                other.shortFrequency == shortFrequency) &&
            (identical(other.longFrequency, longFrequency) ||
                other.longFrequency == longFrequency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, active, shortFrequency, longFrequency);

  /// Create a copy of Buzzer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuzzerImplCopyWith<_$BuzzerImpl> get copyWith =>
      __$$BuzzerImplCopyWithImpl<_$BuzzerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuzzerImplToJson(
      this,
    );
  }
}

abstract class _Buzzer implements Buzzer {
  const factory _Buzzer(
      {required final bool active,
      required final int shortFrequency,
      required final int longFrequency}) = _$BuzzerImpl;

  factory _Buzzer.fromJson(Map<String, dynamic> json) = _$BuzzerImpl.fromJson;

  @override
  bool get active;
  @override
  int get shortFrequency;
  @override
  int get longFrequency;

  /// Create a copy of Buzzer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuzzerImplCopyWith<_$BuzzerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoRa _$LoRaFromJson(Map<String, dynamic> json) {
  return _LoRa.fromJson(json);
}

/// @nodoc
mixin _$LoRa {
  bool get active => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  int get txPower => throw _privateConstructorUsedError;
  int get spreadingFactor => throw _privateConstructorUsedError;
  int get signalBandwidth => throw _privateConstructorUsedError;
  int get codingRateDenom => throw _privateConstructorUsedError;
  int get preambleLength => throw _privateConstructorUsedError;
  int get syncWord => throw _privateConstructorUsedError;
  bool get crc => throw _privateConstructorUsedError;

  /// Serializes this LoRa to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoRa
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoRaCopyWith<LoRa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoRaCopyWith<$Res> {
  factory $LoRaCopyWith(LoRa value, $Res Function(LoRa) then) =
      _$LoRaCopyWithImpl<$Res, LoRa>;
  @useResult
  $Res call(
      {bool active,
      int frequency,
      int txPower,
      int spreadingFactor,
      int signalBandwidth,
      int codingRateDenom,
      int preambleLength,
      int syncWord,
      bool crc});
}

/// @nodoc
class _$LoRaCopyWithImpl<$Res, $Val extends LoRa>
    implements $LoRaCopyWith<$Res> {
  _$LoRaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoRa
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? frequency = null,
    Object? txPower = null,
    Object? spreadingFactor = null,
    Object? signalBandwidth = null,
    Object? codingRateDenom = null,
    Object? preambleLength = null,
    Object? syncWord = null,
    Object? crc = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      txPower: null == txPower
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as int,
      spreadingFactor: null == spreadingFactor
          ? _value.spreadingFactor
          : spreadingFactor // ignore: cast_nullable_to_non_nullable
              as int,
      signalBandwidth: null == signalBandwidth
          ? _value.signalBandwidth
          : signalBandwidth // ignore: cast_nullable_to_non_nullable
              as int,
      codingRateDenom: null == codingRateDenom
          ? _value.codingRateDenom
          : codingRateDenom // ignore: cast_nullable_to_non_nullable
              as int,
      preambleLength: null == preambleLength
          ? _value.preambleLength
          : preambleLength // ignore: cast_nullable_to_non_nullable
              as int,
      syncWord: null == syncWord
          ? _value.syncWord
          : syncWord // ignore: cast_nullable_to_non_nullable
              as int,
      crc: null == crc
          ? _value.crc
          : crc // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoRaImplCopyWith<$Res> implements $LoRaCopyWith<$Res> {
  factory _$$LoRaImplCopyWith(
          _$LoRaImpl value, $Res Function(_$LoRaImpl) then) =
      __$$LoRaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool active,
      int frequency,
      int txPower,
      int spreadingFactor,
      int signalBandwidth,
      int codingRateDenom,
      int preambleLength,
      int syncWord,
      bool crc});
}

/// @nodoc
class __$$LoRaImplCopyWithImpl<$Res>
    extends _$LoRaCopyWithImpl<$Res, _$LoRaImpl>
    implements _$$LoRaImplCopyWith<$Res> {
  __$$LoRaImplCopyWithImpl(_$LoRaImpl _value, $Res Function(_$LoRaImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoRa
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? frequency = null,
    Object? txPower = null,
    Object? spreadingFactor = null,
    Object? signalBandwidth = null,
    Object? codingRateDenom = null,
    Object? preambleLength = null,
    Object? syncWord = null,
    Object? crc = null,
  }) {
    return _then(_$LoRaImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      txPower: null == txPower
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as int,
      spreadingFactor: null == spreadingFactor
          ? _value.spreadingFactor
          : spreadingFactor // ignore: cast_nullable_to_non_nullable
              as int,
      signalBandwidth: null == signalBandwidth
          ? _value.signalBandwidth
          : signalBandwidth // ignore: cast_nullable_to_non_nullable
              as int,
      codingRateDenom: null == codingRateDenom
          ? _value.codingRateDenom
          : codingRateDenom // ignore: cast_nullable_to_non_nullable
              as int,
      preambleLength: null == preambleLength
          ? _value.preambleLength
          : preambleLength // ignore: cast_nullable_to_non_nullable
              as int,
      syncWord: null == syncWord
          ? _value.syncWord
          : syncWord // ignore: cast_nullable_to_non_nullable
              as int,
      crc: null == crc
          ? _value.crc
          : crc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoRaImpl implements _LoRa {
  const _$LoRaImpl(
      {required this.active,
      required this.frequency,
      required this.txPower,
      required this.spreadingFactor,
      required this.signalBandwidth,
      required this.codingRateDenom,
      required this.preambleLength,
      required this.syncWord,
      required this.crc});

  factory _$LoRaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoRaImplFromJson(json);

  @override
  final bool active;
  @override
  final int frequency;
  @override
  final int txPower;
  @override
  final int spreadingFactor;
  @override
  final int signalBandwidth;
  @override
  final int codingRateDenom;
  @override
  final int preambleLength;
  @override
  final int syncWord;
  @override
  final bool crc;

  @override
  String toString() {
    return 'LoRa(active: $active, frequency: $frequency, txPower: $txPower, spreadingFactor: $spreadingFactor, signalBandwidth: $signalBandwidth, codingRateDenom: $codingRateDenom, preambleLength: $preambleLength, syncWord: $syncWord, crc: $crc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoRaImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.txPower, txPower) || other.txPower == txPower) &&
            (identical(other.spreadingFactor, spreadingFactor) ||
                other.spreadingFactor == spreadingFactor) &&
            (identical(other.signalBandwidth, signalBandwidth) ||
                other.signalBandwidth == signalBandwidth) &&
            (identical(other.codingRateDenom, codingRateDenom) ||
                other.codingRateDenom == codingRateDenom) &&
            (identical(other.preambleLength, preambleLength) ||
                other.preambleLength == preambleLength) &&
            (identical(other.syncWord, syncWord) ||
                other.syncWord == syncWord) &&
            (identical(other.crc, crc) || other.crc == crc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      active,
      frequency,
      txPower,
      spreadingFactor,
      signalBandwidth,
      codingRateDenom,
      preambleLength,
      syncWord,
      crc);

  /// Create a copy of LoRa
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoRaImplCopyWith<_$LoRaImpl> get copyWith =>
      __$$LoRaImplCopyWithImpl<_$LoRaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoRaImplToJson(
      this,
    );
  }
}

abstract class _LoRa implements LoRa {
  const factory _LoRa(
      {required final bool active,
      required final int frequency,
      required final int txPower,
      required final int spreadingFactor,
      required final int signalBandwidth,
      required final int codingRateDenom,
      required final int preambleLength,
      required final int syncWord,
      required final bool crc}) = _$LoRaImpl;

  factory _LoRa.fromJson(Map<String, dynamic> json) = _$LoRaImpl.fromJson;

  @override
  bool get active;
  @override
  int get frequency;
  @override
  int get txPower;
  @override
  int get spreadingFactor;
  @override
  int get signalBandwidth;
  @override
  int get codingRateDenom;
  @override
  int get preambleLength;
  @override
  int get syncWord;
  @override
  bool get crc;

  /// Create a copy of LoRa
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoRaImplCopyWith<_$LoRaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tft _$TftFromJson(Map<String, dynamic> json) {
  return _Tft.fromJson(json);
}

/// @nodoc
mixin _$Tft {
  bool get active => throw _privateConstructorUsedError;
  bool get timeout => throw _privateConstructorUsedError;
  int get timeoutDuration => throw _privateConstructorUsedError;
  bool get turnOnAtEvent => throw _privateConstructorUsedError;

  /// Serializes this Tft to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TftCopyWith<Tft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TftCopyWith<$Res> {
  factory $TftCopyWith(Tft value, $Res Function(Tft) then) =
      _$TftCopyWithImpl<$Res, Tft>;
  @useResult
  $Res call(
      {bool active, bool timeout, int timeoutDuration, bool turnOnAtEvent});
}

/// @nodoc
class _$TftCopyWithImpl<$Res, $Val extends Tft> implements $TftCopyWith<$Res> {
  _$TftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? timeout = null,
    Object? timeoutDuration = null,
    Object? turnOnAtEvent = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as bool,
      timeoutDuration: null == timeoutDuration
          ? _value.timeoutDuration
          : timeoutDuration // ignore: cast_nullable_to_non_nullable
              as int,
      turnOnAtEvent: null == turnOnAtEvent
          ? _value.turnOnAtEvent
          : turnOnAtEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TftImplCopyWith<$Res> implements $TftCopyWith<$Res> {
  factory _$$TftImplCopyWith(_$TftImpl value, $Res Function(_$TftImpl) then) =
      __$$TftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool active, bool timeout, int timeoutDuration, bool turnOnAtEvent});
}

/// @nodoc
class __$$TftImplCopyWithImpl<$Res> extends _$TftCopyWithImpl<$Res, _$TftImpl>
    implements _$$TftImplCopyWith<$Res> {
  __$$TftImplCopyWithImpl(_$TftImpl _value, $Res Function(_$TftImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? timeout = null,
    Object? timeoutDuration = null,
    Object? turnOnAtEvent = null,
  }) {
    return _then(_$TftImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as bool,
      timeoutDuration: null == timeoutDuration
          ? _value.timeoutDuration
          : timeoutDuration // ignore: cast_nullable_to_non_nullable
              as int,
      turnOnAtEvent: null == turnOnAtEvent
          ? _value.turnOnAtEvent
          : turnOnAtEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TftImpl implements _Tft {
  const _$TftImpl(
      {required this.active,
      required this.timeout,
      required this.timeoutDuration,
      required this.turnOnAtEvent});

  factory _$TftImpl.fromJson(Map<String, dynamic> json) =>
      _$$TftImplFromJson(json);

  @override
  final bool active;
  @override
  final bool timeout;
  @override
  final int timeoutDuration;
  @override
  final bool turnOnAtEvent;

  @override
  String toString() {
    return 'Tft(active: $active, timeout: $timeout, timeoutDuration: $timeoutDuration, turnOnAtEvent: $turnOnAtEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TftImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.timeoutDuration, timeoutDuration) ||
                other.timeoutDuration == timeoutDuration) &&
            (identical(other.turnOnAtEvent, turnOnAtEvent) ||
                other.turnOnAtEvent == turnOnAtEvent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, active, timeout, timeoutDuration, turnOnAtEvent);

  /// Create a copy of Tft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TftImplCopyWith<_$TftImpl> get copyWith =>
      __$$TftImplCopyWithImpl<_$TftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TftImplToJson(
      this,
    );
  }
}

abstract class _Tft implements Tft {
  const factory _Tft(
      {required final bool active,
      required final bool timeout,
      required final int timeoutDuration,
      required final bool turnOnAtEvent}) = _$TftImpl;

  factory _Tft.fromJson(Map<String, dynamic> json) = _$TftImpl.fromJson;

  @override
  bool get active;
  @override
  bool get timeout;
  @override
  int get timeoutDuration;
  @override
  bool get turnOnAtEvent;

  /// Create a copy of Tft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TftImplCopyWith<_$TftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vcc _$VccFromJson(Map<String, dynamic> json) {
  return _Vcc.fromJson(json);
}

/// @nodoc
mixin _$Vcc {
  int get r1 => throw _privateConstructorUsedError;
  int get r2 => throw _privateConstructorUsedError;
  int? get vbat => throw _privateConstructorUsedError;

  /// Serializes this Vcc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vcc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VccCopyWith<Vcc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VccCopyWith<$Res> {
  factory $VccCopyWith(Vcc value, $Res Function(Vcc) then) =
      _$VccCopyWithImpl<$Res, Vcc>;
  @useResult
  $Res call({int r1, int r2, int? vbat});
}

/// @nodoc
class _$VccCopyWithImpl<$Res, $Val extends Vcc> implements $VccCopyWith<$Res> {
  _$VccCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vcc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r1 = null,
    Object? r2 = null,
    Object? vbat = freezed,
  }) {
    return _then(_value.copyWith(
      r1: null == r1
          ? _value.r1
          : r1 // ignore: cast_nullable_to_non_nullable
              as int,
      r2: null == r2
          ? _value.r2
          : r2 // ignore: cast_nullable_to_non_nullable
              as int,
      vbat: freezed == vbat
          ? _value.vbat
          : vbat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VccImplCopyWith<$Res> implements $VccCopyWith<$Res> {
  factory _$$VccImplCopyWith(_$VccImpl value, $Res Function(_$VccImpl) then) =
      __$$VccImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int r1, int r2, int? vbat});
}

/// @nodoc
class __$$VccImplCopyWithImpl<$Res> extends _$VccCopyWithImpl<$Res, _$VccImpl>
    implements _$$VccImplCopyWith<$Res> {
  __$$VccImplCopyWithImpl(_$VccImpl _value, $Res Function(_$VccImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vcc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r1 = null,
    Object? r2 = null,
    Object? vbat = freezed,
  }) {
    return _then(_$VccImpl(
      r1: null == r1
          ? _value.r1
          : r1 // ignore: cast_nullable_to_non_nullable
              as int,
      r2: null == r2
          ? _value.r2
          : r2 // ignore: cast_nullable_to_non_nullable
              as int,
      vbat: freezed == vbat
          ? _value.vbat
          : vbat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VccImpl implements _Vcc {
  const _$VccImpl({required this.r1, required this.r2, this.vbat});

  factory _$VccImpl.fromJson(Map<String, dynamic> json) =>
      _$$VccImplFromJson(json);

  @override
  final int r1;
  @override
  final int r2;
  @override
  final int? vbat;

  @override
  String toString() {
    return 'Vcc(r1: $r1, r2: $r2, vbat: $vbat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VccImpl &&
            (identical(other.r1, r1) || other.r1 == r1) &&
            (identical(other.r2, r2) || other.r2 == r2) &&
            (identical(other.vbat, vbat) || other.vbat == vbat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r1, r2, vbat);

  /// Create a copy of Vcc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VccImplCopyWith<_$VccImpl> get copyWith =>
      __$$VccImplCopyWithImpl<_$VccImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VccImplToJson(
      this,
    );
  }
}

abstract class _Vcc implements Vcc {
  const factory _Vcc(
      {required final int r1,
      required final int r2,
      final int? vbat}) = _$VccImpl;

  factory _Vcc.fromJson(Map<String, dynamic> json) = _$VccImpl.fromJson;

  @override
  int get r1;
  @override
  int get r2;
  @override
  int? get vbat;

  /// Create a copy of Vcc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VccImplCopyWith<_$VccImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WiFi _$WiFiFromJson(Map<String, dynamic> json) {
  return _WiFi.fromJson(json);
}

/// @nodoc
mixin _$WiFi {
  bool get active => throw _privateConstructorUsedError;
  String get ssid => throw _privateConstructorUsedError;
  String get passwd => throw _privateConstructorUsedError;

  /// Serializes this WiFi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WiFi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WiFiCopyWith<WiFi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WiFiCopyWith<$Res> {
  factory $WiFiCopyWith(WiFi value, $Res Function(WiFi) then) =
      _$WiFiCopyWithImpl<$Res, WiFi>;
  @useResult
  $Res call({bool active, String ssid, String passwd});
}

/// @nodoc
class _$WiFiCopyWithImpl<$Res, $Val extends WiFi>
    implements $WiFiCopyWith<$Res> {
  _$WiFiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WiFi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? ssid = null,
    Object? passwd = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      passwd: null == passwd
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WiFiImplCopyWith<$Res> implements $WiFiCopyWith<$Res> {
  factory _$$WiFiImplCopyWith(
          _$WiFiImpl value, $Res Function(_$WiFiImpl) then) =
      __$$WiFiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool active, String ssid, String passwd});
}

/// @nodoc
class __$$WiFiImplCopyWithImpl<$Res>
    extends _$WiFiCopyWithImpl<$Res, _$WiFiImpl>
    implements _$$WiFiImplCopyWith<$Res> {
  __$$WiFiImplCopyWithImpl(_$WiFiImpl _value, $Res Function(_$WiFiImpl) _then)
      : super(_value, _then);

  /// Create a copy of WiFi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? ssid = null,
    Object? passwd = null,
  }) {
    return _then(_$WiFiImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      passwd: null == passwd
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WiFiImpl implements _WiFi {
  const _$WiFiImpl(
      {required this.active, required this.ssid, required this.passwd});

  factory _$WiFiImpl.fromJson(Map<String, dynamic> json) =>
      _$$WiFiImplFromJson(json);

  @override
  final bool active;
  @override
  final String ssid;
  @override
  final String passwd;

  @override
  String toString() {
    return 'WiFi(active: $active, ssid: $ssid, passwd: $passwd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WiFiImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.passwd, passwd) || other.passwd == passwd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, active, ssid, passwd);

  /// Create a copy of WiFi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WiFiImplCopyWith<_$WiFiImpl> get copyWith =>
      __$$WiFiImplCopyWithImpl<_$WiFiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WiFiImplToJson(
      this,
    );
  }
}

abstract class _WiFi implements WiFi {
  const factory _WiFi(
      {required final bool active,
      required final String ssid,
      required final String passwd}) = _$WiFiImpl;

  factory _WiFi.fromJson(Map<String, dynamic> json) = _$WiFiImpl.fromJson;

  @override
  bool get active;
  @override
  String get ssid;
  @override
  String get passwd;

  /// Create a copy of WiFi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WiFiImplCopyWith<_$WiFiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LedPanel _$LedPanelFromJson(Map<String, dynamic> json) {
  return _LedPanel.fromJson(json);
}

/// @nodoc
mixin _$LedPanel {
  int get brightness => throw _privateConstructorUsedError;

  /// Serializes this LedPanel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LedPanel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LedPanelCopyWith<LedPanel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedPanelCopyWith<$Res> {
  factory $LedPanelCopyWith(LedPanel value, $Res Function(LedPanel) then) =
      _$LedPanelCopyWithImpl<$Res, LedPanel>;
  @useResult
  $Res call({int brightness});
}

/// @nodoc
class _$LedPanelCopyWithImpl<$Res, $Val extends LedPanel>
    implements $LedPanelCopyWith<$Res> {
  _$LedPanelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LedPanel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_value.copyWith(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LedPanelImplCopyWith<$Res>
    implements $LedPanelCopyWith<$Res> {
  factory _$$LedPanelImplCopyWith(
          _$LedPanelImpl value, $Res Function(_$LedPanelImpl) then) =
      __$$LedPanelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int brightness});
}

/// @nodoc
class __$$LedPanelImplCopyWithImpl<$Res>
    extends _$LedPanelCopyWithImpl<$Res, _$LedPanelImpl>
    implements _$$LedPanelImplCopyWith<$Res> {
  __$$LedPanelImplCopyWithImpl(
      _$LedPanelImpl _value, $Res Function(_$LedPanelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LedPanel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_$LedPanelImpl(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LedPanelImpl implements _LedPanel {
  const _$LedPanelImpl({required this.brightness});

  factory _$LedPanelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedPanelImplFromJson(json);

  @override
  final int brightness;

  @override
  String toString() {
    return 'LedPanel(brightness: $brightness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedPanelImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  /// Create a copy of LedPanel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LedPanelImplCopyWith<_$LedPanelImpl> get copyWith =>
      __$$LedPanelImplCopyWithImpl<_$LedPanelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedPanelImplToJson(
      this,
    );
  }
}

abstract class _LedPanel implements LedPanel {
  const factory _LedPanel({required final int brightness}) = _$LedPanelImpl;

  factory _LedPanel.fromJson(Map<String, dynamic> json) =
      _$LedPanelImpl.fromJson;

  @override
  int get brightness;

  /// Create a copy of LedPanel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LedPanelImplCopyWith<_$LedPanelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
