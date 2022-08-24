// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'module_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModSettingsModelType _$ModSettingsModelTypeFromJson(Map<String, dynamic> json) {
  return _ModSettingsModelType.fromJson(json);
}

/// @nodoc
mixin _$ModSettingsModelType {
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModSettingsModelTypeCopyWith<ModSettingsModelType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModSettingsModelTypeCopyWith<$Res> {
  factory $ModSettingsModelTypeCopyWith(ModSettingsModelType value,
          $Res Function(ModSettingsModelType) then) =
      _$ModSettingsModelTypeCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class _$ModSettingsModelTypeCopyWithImpl<$Res>
    implements $ModSettingsModelTypeCopyWith<$Res> {
  _$ModSettingsModelTypeCopyWithImpl(this._value, this._then);

  final ModSettingsModelType _value;
  // ignore: unused_field
  final $Res Function(ModSettingsModelType) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ModSettingsModelTypeCopyWith<$Res>
    implements $ModSettingsModelTypeCopyWith<$Res> {
  factory _$$_ModSettingsModelTypeCopyWith(_$_ModSettingsModelType value,
          $Res Function(_$_ModSettingsModelType) then) =
      __$$_ModSettingsModelTypeCopyWithImpl<$Res>;
  @override
  $Res call({String type});
}

/// @nodoc
class __$$_ModSettingsModelTypeCopyWithImpl<$Res>
    extends _$ModSettingsModelTypeCopyWithImpl<$Res>
    implements _$$_ModSettingsModelTypeCopyWith<$Res> {
  __$$_ModSettingsModelTypeCopyWithImpl(_$_ModSettingsModelType _value,
      $Res Function(_$_ModSettingsModelType) _then)
      : super(_value, (v) => _then(v as _$_ModSettingsModelType));

  @override
  _$_ModSettingsModelType get _value => super._value as _$_ModSettingsModelType;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_ModSettingsModelType(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModSettingsModelType implements _ModSettingsModelType {
  const _$_ModSettingsModelType({required this.type});

  factory _$_ModSettingsModelType.fromJson(Map<String, dynamic> json) =>
      _$$_ModSettingsModelTypeFromJson(json);

  @override
  final String type;

  @override
  String toString() {
    return 'ModSettingsModelType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModSettingsModelType &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_ModSettingsModelTypeCopyWith<_$_ModSettingsModelType> get copyWith =>
      __$$_ModSettingsModelTypeCopyWithImpl<_$_ModSettingsModelType>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModSettingsModelTypeToJson(
      this,
    );
  }
}

abstract class _ModSettingsModelType implements ModSettingsModelType {
  const factory _ModSettingsModelType({required final String type}) =
      _$_ModSettingsModelType;

  factory _ModSettingsModelType.fromJson(Map<String, dynamic> json) =
      _$_ModSettingsModelType.fromJson;

  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_ModSettingsModelTypeCopyWith<_$_ModSettingsModelType> get copyWith =>
      throw _privateConstructorUsedError;
}

ModSettingsModelLed _$ModSettingsModelLedFromJson(Map<String, dynamic> json) {
  return _ModSettingsModelLed.fromJson(json);
}

/// @nodoc
mixin _$ModSettingsModelLed {
  bool get read => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Bluetooth get bluetooth => throw _privateConstructorUsedError;
  WiFi get wiFi => throw _privateConstructorUsedError;
  LedPanel get ledPanel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModSettingsModelLedCopyWith<ModSettingsModelLed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModSettingsModelLedCopyWith<$Res> {
  factory $ModSettingsModelLedCopyWith(
          ModSettingsModelLed value, $Res Function(ModSettingsModelLed) then) =
      _$ModSettingsModelLedCopyWithImpl<$Res>;
  $Res call(
      {bool read,
      String type,
      Bluetooth bluetooth,
      WiFi wiFi,
      LedPanel ledPanel});

  $BluetoothCopyWith<$Res> get bluetooth;
  $WiFiCopyWith<$Res> get wiFi;
  $LedPanelCopyWith<$Res> get ledPanel;
}

/// @nodoc
class _$ModSettingsModelLedCopyWithImpl<$Res>
    implements $ModSettingsModelLedCopyWith<$Res> {
  _$ModSettingsModelLedCopyWithImpl(this._value, this._then);

  final ModSettingsModelLed _value;
  // ignore: unused_field
  final $Res Function(ModSettingsModelLed) _then;

  @override
  $Res call({
    Object? read = freezed,
    Object? type = freezed,
    Object? bluetooth = freezed,
    Object? wiFi = freezed,
    Object? ledPanel = freezed,
  }) {
    return _then(_value.copyWith(
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: bluetooth == freezed
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      wiFi: wiFi == freezed
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      ledPanel: ledPanel == freezed
          ? _value.ledPanel
          : ledPanel // ignore: cast_nullable_to_non_nullable
              as LedPanel,
    ));
  }

  @override
  $BluetoothCopyWith<$Res> get bluetooth {
    return $BluetoothCopyWith<$Res>(_value.bluetooth, (value) {
      return _then(_value.copyWith(bluetooth: value));
    });
  }

  @override
  $WiFiCopyWith<$Res> get wiFi {
    return $WiFiCopyWith<$Res>(_value.wiFi, (value) {
      return _then(_value.copyWith(wiFi: value));
    });
  }

  @override
  $LedPanelCopyWith<$Res> get ledPanel {
    return $LedPanelCopyWith<$Res>(_value.ledPanel, (value) {
      return _then(_value.copyWith(ledPanel: value));
    });
  }
}

/// @nodoc
abstract class _$$_ModSettingsModelLedCopyWith<$Res>
    implements $ModSettingsModelLedCopyWith<$Res> {
  factory _$$_ModSettingsModelLedCopyWith(_$_ModSettingsModelLed value,
          $Res Function(_$_ModSettingsModelLed) then) =
      __$$_ModSettingsModelLedCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool read,
      String type,
      Bluetooth bluetooth,
      WiFi wiFi,
      LedPanel ledPanel});

  @override
  $BluetoothCopyWith<$Res> get bluetooth;
  @override
  $WiFiCopyWith<$Res> get wiFi;
  @override
  $LedPanelCopyWith<$Res> get ledPanel;
}

/// @nodoc
class __$$_ModSettingsModelLedCopyWithImpl<$Res>
    extends _$ModSettingsModelLedCopyWithImpl<$Res>
    implements _$$_ModSettingsModelLedCopyWith<$Res> {
  __$$_ModSettingsModelLedCopyWithImpl(_$_ModSettingsModelLed _value,
      $Res Function(_$_ModSettingsModelLed) _then)
      : super(_value, (v) => _then(v as _$_ModSettingsModelLed));

  @override
  _$_ModSettingsModelLed get _value => super._value as _$_ModSettingsModelLed;

  @override
  $Res call({
    Object? read = freezed,
    Object? type = freezed,
    Object? bluetooth = freezed,
    Object? wiFi = freezed,
    Object? ledPanel = freezed,
  }) {
    return _then(_$_ModSettingsModelLed(
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: bluetooth == freezed
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      wiFi: wiFi == freezed
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      ledPanel: ledPanel == freezed
          ? _value.ledPanel
          : ledPanel // ignore: cast_nullable_to_non_nullable
              as LedPanel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModSettingsModelLed implements _ModSettingsModelLed {
  const _$_ModSettingsModelLed(
      {required this.read,
      required this.type,
      required this.bluetooth,
      required this.wiFi,
      required this.ledPanel});

  factory _$_ModSettingsModelLed.fromJson(Map<String, dynamic> json) =>
      _$$_ModSettingsModelLedFromJson(json);

  @override
  final bool read;
  @override
  final String type;
  @override
  final Bluetooth bluetooth;
  @override
  final WiFi wiFi;
  @override
  final LedPanel ledPanel;

  @override
  String toString() {
    return 'ModSettingsModelLed(read: $read, type: $type, bluetooth: $bluetooth, wiFi: $wiFi, ledPanel: $ledPanel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModSettingsModelLed &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.bluetooth, bluetooth) &&
            const DeepCollectionEquality().equals(other.wiFi, wiFi) &&
            const DeepCollectionEquality().equals(other.ledPanel, ledPanel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(bluetooth),
      const DeepCollectionEquality().hash(wiFi),
      const DeepCollectionEquality().hash(ledPanel));

  @JsonKey(ignore: true)
  @override
  _$$_ModSettingsModelLedCopyWith<_$_ModSettingsModelLed> get copyWith =>
      __$$_ModSettingsModelLedCopyWithImpl<_$_ModSettingsModelLed>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModSettingsModelLedToJson(
      this,
    );
  }
}

abstract class _ModSettingsModelLed implements ModSettingsModelLed {
  const factory _ModSettingsModelLed(
      {required final bool read,
      required final String type,
      required final Bluetooth bluetooth,
      required final WiFi wiFi,
      required final LedPanel ledPanel}) = _$_ModSettingsModelLed;

  factory _ModSettingsModelLed.fromJson(Map<String, dynamic> json) =
      _$_ModSettingsModelLed.fromJson;

  @override
  bool get read;
  @override
  String get type;
  @override
  Bluetooth get bluetooth;
  @override
  WiFi get wiFi;
  @override
  LedPanel get ledPanel;
  @override
  @JsonKey(ignore: true)
  _$$_ModSettingsModelLedCopyWith<_$_ModSettingsModelLed> get copyWith =>
      throw _privateConstructorUsedError;
}

ModSettingsModel _$ModSettingsModelFromJson(Map<String, dynamic> json) {
  return _ModSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$ModSettingsModel {
  bool get read => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Bluetooth get bluetooth => throw _privateConstructorUsedError;
  LoRa get loRa => throw _privateConstructorUsedError;
  WiFi get wiFi => throw _privateConstructorUsedError;
  Tft get tft => throw _privateConstructorUsedError;
  Buzzer get buzzer => throw _privateConstructorUsedError;
  Vcc get vcc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModSettingsModelCopyWith<ModSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModSettingsModelCopyWith<$Res> {
  factory $ModSettingsModelCopyWith(
          ModSettingsModel value, $Res Function(ModSettingsModel) then) =
      _$ModSettingsModelCopyWithImpl<$Res>;
  $Res call(
      {bool read,
      String type,
      Bluetooth bluetooth,
      LoRa loRa,
      WiFi wiFi,
      Tft tft,
      Buzzer buzzer,
      Vcc vcc});

  $BluetoothCopyWith<$Res> get bluetooth;
  $LoRaCopyWith<$Res> get loRa;
  $WiFiCopyWith<$Res> get wiFi;
  $TftCopyWith<$Res> get tft;
  $BuzzerCopyWith<$Res> get buzzer;
  $VccCopyWith<$Res> get vcc;
}

/// @nodoc
class _$ModSettingsModelCopyWithImpl<$Res>
    implements $ModSettingsModelCopyWith<$Res> {
  _$ModSettingsModelCopyWithImpl(this._value, this._then);

  final ModSettingsModel _value;
  // ignore: unused_field
  final $Res Function(ModSettingsModel) _then;

  @override
  $Res call({
    Object? read = freezed,
    Object? type = freezed,
    Object? bluetooth = freezed,
    Object? loRa = freezed,
    Object? wiFi = freezed,
    Object? tft = freezed,
    Object? buzzer = freezed,
    Object? vcc = freezed,
  }) {
    return _then(_value.copyWith(
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: bluetooth == freezed
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      loRa: loRa == freezed
          ? _value.loRa
          : loRa // ignore: cast_nullable_to_non_nullable
              as LoRa,
      wiFi: wiFi == freezed
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      tft: tft == freezed
          ? _value.tft
          : tft // ignore: cast_nullable_to_non_nullable
              as Tft,
      buzzer: buzzer == freezed
          ? _value.buzzer
          : buzzer // ignore: cast_nullable_to_non_nullable
              as Buzzer,
      vcc: vcc == freezed
          ? _value.vcc
          : vcc // ignore: cast_nullable_to_non_nullable
              as Vcc,
    ));
  }

  @override
  $BluetoothCopyWith<$Res> get bluetooth {
    return $BluetoothCopyWith<$Res>(_value.bluetooth, (value) {
      return _then(_value.copyWith(bluetooth: value));
    });
  }

  @override
  $LoRaCopyWith<$Res> get loRa {
    return $LoRaCopyWith<$Res>(_value.loRa, (value) {
      return _then(_value.copyWith(loRa: value));
    });
  }

  @override
  $WiFiCopyWith<$Res> get wiFi {
    return $WiFiCopyWith<$Res>(_value.wiFi, (value) {
      return _then(_value.copyWith(wiFi: value));
    });
  }

  @override
  $TftCopyWith<$Res> get tft {
    return $TftCopyWith<$Res>(_value.tft, (value) {
      return _then(_value.copyWith(tft: value));
    });
  }

  @override
  $BuzzerCopyWith<$Res> get buzzer {
    return $BuzzerCopyWith<$Res>(_value.buzzer, (value) {
      return _then(_value.copyWith(buzzer: value));
    });
  }

  @override
  $VccCopyWith<$Res> get vcc {
    return $VccCopyWith<$Res>(_value.vcc, (value) {
      return _then(_value.copyWith(vcc: value));
    });
  }
}

/// @nodoc
abstract class _$$_ModSettingsModelCopyWith<$Res>
    implements $ModSettingsModelCopyWith<$Res> {
  factory _$$_ModSettingsModelCopyWith(
          _$_ModSettingsModel value, $Res Function(_$_ModSettingsModel) then) =
      __$$_ModSettingsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool read,
      String type,
      Bluetooth bluetooth,
      LoRa loRa,
      WiFi wiFi,
      Tft tft,
      Buzzer buzzer,
      Vcc vcc});

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
class __$$_ModSettingsModelCopyWithImpl<$Res>
    extends _$ModSettingsModelCopyWithImpl<$Res>
    implements _$$_ModSettingsModelCopyWith<$Res> {
  __$$_ModSettingsModelCopyWithImpl(
      _$_ModSettingsModel _value, $Res Function(_$_ModSettingsModel) _then)
      : super(_value, (v) => _then(v as _$_ModSettingsModel));

  @override
  _$_ModSettingsModel get _value => super._value as _$_ModSettingsModel;

  @override
  $Res call({
    Object? read = freezed,
    Object? type = freezed,
    Object? bluetooth = freezed,
    Object? loRa = freezed,
    Object? wiFi = freezed,
    Object? tft = freezed,
    Object? buzzer = freezed,
    Object? vcc = freezed,
  }) {
    return _then(_$_ModSettingsModel(
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bluetooth: bluetooth == freezed
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as Bluetooth,
      loRa: loRa == freezed
          ? _value.loRa
          : loRa // ignore: cast_nullable_to_non_nullable
              as LoRa,
      wiFi: wiFi == freezed
          ? _value.wiFi
          : wiFi // ignore: cast_nullable_to_non_nullable
              as WiFi,
      tft: tft == freezed
          ? _value.tft
          : tft // ignore: cast_nullable_to_non_nullable
              as Tft,
      buzzer: buzzer == freezed
          ? _value.buzzer
          : buzzer // ignore: cast_nullable_to_non_nullable
              as Buzzer,
      vcc: vcc == freezed
          ? _value.vcc
          : vcc // ignore: cast_nullable_to_non_nullable
              as Vcc,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModSettingsModel implements _ModSettingsModel {
  const _$_ModSettingsModel(
      {required this.read,
      required this.type,
      required this.bluetooth,
      required this.loRa,
      required this.wiFi,
      required this.tft,
      required this.buzzer,
      required this.vcc});

  factory _$_ModSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ModSettingsModelFromJson(json);

  @override
  final bool read;
  @override
  final String type;
  @override
  final Bluetooth bluetooth;
  @override
  final LoRa loRa;
  @override
  final WiFi wiFi;
  @override
  final Tft tft;
  @override
  final Buzzer buzzer;
  @override
  final Vcc vcc;

  @override
  String toString() {
    return 'ModSettingsModel(read: $read, type: $type, bluetooth: $bluetooth, loRa: $loRa, wiFi: $wiFi, tft: $tft, buzzer: $buzzer, vcc: $vcc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModSettingsModel &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.bluetooth, bluetooth) &&
            const DeepCollectionEquality().equals(other.loRa, loRa) &&
            const DeepCollectionEquality().equals(other.wiFi, wiFi) &&
            const DeepCollectionEquality().equals(other.tft, tft) &&
            const DeepCollectionEquality().equals(other.buzzer, buzzer) &&
            const DeepCollectionEquality().equals(other.vcc, vcc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(bluetooth),
      const DeepCollectionEquality().hash(loRa),
      const DeepCollectionEquality().hash(wiFi),
      const DeepCollectionEquality().hash(tft),
      const DeepCollectionEquality().hash(buzzer),
      const DeepCollectionEquality().hash(vcc));

  @JsonKey(ignore: true)
  @override
  _$$_ModSettingsModelCopyWith<_$_ModSettingsModel> get copyWith =>
      __$$_ModSettingsModelCopyWithImpl<_$_ModSettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModSettingsModelToJson(
      this,
    );
  }
}

abstract class _ModSettingsModel implements ModSettingsModel {
  const factory _ModSettingsModel(
      {required final bool read,
      required final String type,
      required final Bluetooth bluetooth,
      required final LoRa loRa,
      required final WiFi wiFi,
      required final Tft tft,
      required final Buzzer buzzer,
      required final Vcc vcc}) = _$_ModSettingsModel;

  factory _ModSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_ModSettingsModel.fromJson;

  @override
  bool get read;
  @override
  String get type;
  @override
  Bluetooth get bluetooth;
  @override
  LoRa get loRa;
  @override
  WiFi get wiFi;
  @override
  Tft get tft;
  @override
  Buzzer get buzzer;
  @override
  Vcc get vcc;
  @override
  @JsonKey(ignore: true)
  _$$_ModSettingsModelCopyWith<_$_ModSettingsModel> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BluetoothCopyWith<Bluetooth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothCopyWith<$Res> {
  factory $BluetoothCopyWith(Bluetooth value, $Res Function(Bluetooth) then) =
      _$BluetoothCopyWithImpl<$Res>;
  $Res call({bool active, String name, int number});
}

/// @nodoc
class _$BluetoothCopyWithImpl<$Res> implements $BluetoothCopyWith<$Res> {
  _$BluetoothCopyWithImpl(this._value, this._then);

  final Bluetooth _value;
  // ignore: unused_field
  final $Res Function(Bluetooth) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BluetoothCopyWith<$Res> implements $BluetoothCopyWith<$Res> {
  factory _$$_BluetoothCopyWith(
          _$_Bluetooth value, $Res Function(_$_Bluetooth) then) =
      __$$_BluetoothCopyWithImpl<$Res>;
  @override
  $Res call({bool active, String name, int number});
}

/// @nodoc
class __$$_BluetoothCopyWithImpl<$Res> extends _$BluetoothCopyWithImpl<$Res>
    implements _$$_BluetoothCopyWith<$Res> {
  __$$_BluetoothCopyWithImpl(
      _$_Bluetooth _value, $Res Function(_$_Bluetooth) _then)
      : super(_value, (v) => _then(v as _$_Bluetooth));

  @override
  _$_Bluetooth get _value => super._value as _$_Bluetooth;

  @override
  $Res call({
    Object? active = freezed,
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_Bluetooth(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bluetooth implements _Bluetooth {
  const _$_Bluetooth(
      {required this.active, required this.name, required this.number});

  factory _$_Bluetooth.fromJson(Map<String, dynamic> json) =>
      _$$_BluetoothFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bluetooth &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothCopyWith<_$_Bluetooth> get copyWith =>
      __$$_BluetoothCopyWithImpl<_$_Bluetooth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BluetoothToJson(
      this,
    );
  }
}

abstract class _Bluetooth implements Bluetooth {
  const factory _Bluetooth(
      {required final bool active,
      required final String name,
      required final int number}) = _$_Bluetooth;

  factory _Bluetooth.fromJson(Map<String, dynamic> json) =
      _$_Bluetooth.fromJson;

  @override
  bool get active;
  @override
  String get name;
  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$_BluetoothCopyWith<_$_Bluetooth> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuzzerCopyWith<Buzzer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuzzerCopyWith<$Res> {
  factory $BuzzerCopyWith(Buzzer value, $Res Function(Buzzer) then) =
      _$BuzzerCopyWithImpl<$Res>;
  $Res call({bool active, int shortFrequency, int longFrequency});
}

/// @nodoc
class _$BuzzerCopyWithImpl<$Res> implements $BuzzerCopyWith<$Res> {
  _$BuzzerCopyWithImpl(this._value, this._then);

  final Buzzer _value;
  // ignore: unused_field
  final $Res Function(Buzzer) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? shortFrequency = freezed,
    Object? longFrequency = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      shortFrequency: shortFrequency == freezed
          ? _value.shortFrequency
          : shortFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      longFrequency: longFrequency == freezed
          ? _value.longFrequency
          : longFrequency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BuzzerCopyWith<$Res> implements $BuzzerCopyWith<$Res> {
  factory _$$_BuzzerCopyWith(_$_Buzzer value, $Res Function(_$_Buzzer) then) =
      __$$_BuzzerCopyWithImpl<$Res>;
  @override
  $Res call({bool active, int shortFrequency, int longFrequency});
}

/// @nodoc
class __$$_BuzzerCopyWithImpl<$Res> extends _$BuzzerCopyWithImpl<$Res>
    implements _$$_BuzzerCopyWith<$Res> {
  __$$_BuzzerCopyWithImpl(_$_Buzzer _value, $Res Function(_$_Buzzer) _then)
      : super(_value, (v) => _then(v as _$_Buzzer));

  @override
  _$_Buzzer get _value => super._value as _$_Buzzer;

  @override
  $Res call({
    Object? active = freezed,
    Object? shortFrequency = freezed,
    Object? longFrequency = freezed,
  }) {
    return _then(_$_Buzzer(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      shortFrequency: shortFrequency == freezed
          ? _value.shortFrequency
          : shortFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      longFrequency: longFrequency == freezed
          ? _value.longFrequency
          : longFrequency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Buzzer implements _Buzzer {
  const _$_Buzzer(
      {required this.active,
      required this.shortFrequency,
      required this.longFrequency});

  factory _$_Buzzer.fromJson(Map<String, dynamic> json) =>
      _$$_BuzzerFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Buzzer &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.shortFrequency, shortFrequency) &&
            const DeepCollectionEquality()
                .equals(other.longFrequency, longFrequency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(shortFrequency),
      const DeepCollectionEquality().hash(longFrequency));

  @JsonKey(ignore: true)
  @override
  _$$_BuzzerCopyWith<_$_Buzzer> get copyWith =>
      __$$_BuzzerCopyWithImpl<_$_Buzzer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuzzerToJson(
      this,
    );
  }
}

abstract class _Buzzer implements Buzzer {
  const factory _Buzzer(
      {required final bool active,
      required final int shortFrequency,
      required final int longFrequency}) = _$_Buzzer;

  factory _Buzzer.fromJson(Map<String, dynamic> json) = _$_Buzzer.fromJson;

  @override
  bool get active;
  @override
  int get shortFrequency;
  @override
  int get longFrequency;
  @override
  @JsonKey(ignore: true)
  _$$_BuzzerCopyWith<_$_Buzzer> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoRaCopyWith<LoRa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoRaCopyWith<$Res> {
  factory $LoRaCopyWith(LoRa value, $Res Function(LoRa) then) =
      _$LoRaCopyWithImpl<$Res>;
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
class _$LoRaCopyWithImpl<$Res> implements $LoRaCopyWith<$Res> {
  _$LoRaCopyWithImpl(this._value, this._then);

  final LoRa _value;
  // ignore: unused_field
  final $Res Function(LoRa) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? frequency = freezed,
    Object? txPower = freezed,
    Object? spreadingFactor = freezed,
    Object? signalBandwidth = freezed,
    Object? codingRateDenom = freezed,
    Object? preambleLength = freezed,
    Object? syncWord = freezed,
    Object? crc = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      txPower: txPower == freezed
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as int,
      spreadingFactor: spreadingFactor == freezed
          ? _value.spreadingFactor
          : spreadingFactor // ignore: cast_nullable_to_non_nullable
              as int,
      signalBandwidth: signalBandwidth == freezed
          ? _value.signalBandwidth
          : signalBandwidth // ignore: cast_nullable_to_non_nullable
              as int,
      codingRateDenom: codingRateDenom == freezed
          ? _value.codingRateDenom
          : codingRateDenom // ignore: cast_nullable_to_non_nullable
              as int,
      preambleLength: preambleLength == freezed
          ? _value.preambleLength
          : preambleLength // ignore: cast_nullable_to_non_nullable
              as int,
      syncWord: syncWord == freezed
          ? _value.syncWord
          : syncWord // ignore: cast_nullable_to_non_nullable
              as int,
      crc: crc == freezed
          ? _value.crc
          : crc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LoRaCopyWith<$Res> implements $LoRaCopyWith<$Res> {
  factory _$$_LoRaCopyWith(_$_LoRa value, $Res Function(_$_LoRa) then) =
      __$$_LoRaCopyWithImpl<$Res>;
  @override
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
class __$$_LoRaCopyWithImpl<$Res> extends _$LoRaCopyWithImpl<$Res>
    implements _$$_LoRaCopyWith<$Res> {
  __$$_LoRaCopyWithImpl(_$_LoRa _value, $Res Function(_$_LoRa) _then)
      : super(_value, (v) => _then(v as _$_LoRa));

  @override
  _$_LoRa get _value => super._value as _$_LoRa;

  @override
  $Res call({
    Object? active = freezed,
    Object? frequency = freezed,
    Object? txPower = freezed,
    Object? spreadingFactor = freezed,
    Object? signalBandwidth = freezed,
    Object? codingRateDenom = freezed,
    Object? preambleLength = freezed,
    Object? syncWord = freezed,
    Object? crc = freezed,
  }) {
    return _then(_$_LoRa(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      txPower: txPower == freezed
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as int,
      spreadingFactor: spreadingFactor == freezed
          ? _value.spreadingFactor
          : spreadingFactor // ignore: cast_nullable_to_non_nullable
              as int,
      signalBandwidth: signalBandwidth == freezed
          ? _value.signalBandwidth
          : signalBandwidth // ignore: cast_nullable_to_non_nullable
              as int,
      codingRateDenom: codingRateDenom == freezed
          ? _value.codingRateDenom
          : codingRateDenom // ignore: cast_nullable_to_non_nullable
              as int,
      preambleLength: preambleLength == freezed
          ? _value.preambleLength
          : preambleLength // ignore: cast_nullable_to_non_nullable
              as int,
      syncWord: syncWord == freezed
          ? _value.syncWord
          : syncWord // ignore: cast_nullable_to_non_nullable
              as int,
      crc: crc == freezed
          ? _value.crc
          : crc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoRa implements _LoRa {
  const _$_LoRa(
      {required this.active,
      required this.frequency,
      required this.txPower,
      required this.spreadingFactor,
      required this.signalBandwidth,
      required this.codingRateDenom,
      required this.preambleLength,
      required this.syncWord,
      required this.crc});

  factory _$_LoRa.fromJson(Map<String, dynamic> json) => _$$_LoRaFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoRa &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.frequency, frequency) &&
            const DeepCollectionEquality().equals(other.txPower, txPower) &&
            const DeepCollectionEquality()
                .equals(other.spreadingFactor, spreadingFactor) &&
            const DeepCollectionEquality()
                .equals(other.signalBandwidth, signalBandwidth) &&
            const DeepCollectionEquality()
                .equals(other.codingRateDenom, codingRateDenom) &&
            const DeepCollectionEquality()
                .equals(other.preambleLength, preambleLength) &&
            const DeepCollectionEquality().equals(other.syncWord, syncWord) &&
            const DeepCollectionEquality().equals(other.crc, crc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(frequency),
      const DeepCollectionEquality().hash(txPower),
      const DeepCollectionEquality().hash(spreadingFactor),
      const DeepCollectionEquality().hash(signalBandwidth),
      const DeepCollectionEquality().hash(codingRateDenom),
      const DeepCollectionEquality().hash(preambleLength),
      const DeepCollectionEquality().hash(syncWord),
      const DeepCollectionEquality().hash(crc));

  @JsonKey(ignore: true)
  @override
  _$$_LoRaCopyWith<_$_LoRa> get copyWith =>
      __$$_LoRaCopyWithImpl<_$_LoRa>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoRaToJson(
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
      required final bool crc}) = _$_LoRa;

  factory _LoRa.fromJson(Map<String, dynamic> json) = _$_LoRa.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_LoRaCopyWith<_$_LoRa> get copyWith => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TftCopyWith<Tft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TftCopyWith<$Res> {
  factory $TftCopyWith(Tft value, $Res Function(Tft) then) =
      _$TftCopyWithImpl<$Res>;
  $Res call(
      {bool active, bool timeout, int timeoutDuration, bool turnOnAtEvent});
}

/// @nodoc
class _$TftCopyWithImpl<$Res> implements $TftCopyWith<$Res> {
  _$TftCopyWithImpl(this._value, this._then);

  final Tft _value;
  // ignore: unused_field
  final $Res Function(Tft) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? timeout = freezed,
    Object? timeoutDuration = freezed,
    Object? turnOnAtEvent = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      timeout: timeout == freezed
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as bool,
      timeoutDuration: timeoutDuration == freezed
          ? _value.timeoutDuration
          : timeoutDuration // ignore: cast_nullable_to_non_nullable
              as int,
      turnOnAtEvent: turnOnAtEvent == freezed
          ? _value.turnOnAtEvent
          : turnOnAtEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TftCopyWith<$Res> implements $TftCopyWith<$Res> {
  factory _$$_TftCopyWith(_$_Tft value, $Res Function(_$_Tft) then) =
      __$$_TftCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool active, bool timeout, int timeoutDuration, bool turnOnAtEvent});
}

/// @nodoc
class __$$_TftCopyWithImpl<$Res> extends _$TftCopyWithImpl<$Res>
    implements _$$_TftCopyWith<$Res> {
  __$$_TftCopyWithImpl(_$_Tft _value, $Res Function(_$_Tft) _then)
      : super(_value, (v) => _then(v as _$_Tft));

  @override
  _$_Tft get _value => super._value as _$_Tft;

  @override
  $Res call({
    Object? active = freezed,
    Object? timeout = freezed,
    Object? timeoutDuration = freezed,
    Object? turnOnAtEvent = freezed,
  }) {
    return _then(_$_Tft(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      timeout: timeout == freezed
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as bool,
      timeoutDuration: timeoutDuration == freezed
          ? _value.timeoutDuration
          : timeoutDuration // ignore: cast_nullable_to_non_nullable
              as int,
      turnOnAtEvent: turnOnAtEvent == freezed
          ? _value.turnOnAtEvent
          : turnOnAtEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tft implements _Tft {
  const _$_Tft(
      {required this.active,
      required this.timeout,
      required this.timeoutDuration,
      required this.turnOnAtEvent});

  factory _$_Tft.fromJson(Map<String, dynamic> json) => _$$_TftFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tft &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.timeout, timeout) &&
            const DeepCollectionEquality()
                .equals(other.timeoutDuration, timeoutDuration) &&
            const DeepCollectionEquality()
                .equals(other.turnOnAtEvent, turnOnAtEvent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(timeout),
      const DeepCollectionEquality().hash(timeoutDuration),
      const DeepCollectionEquality().hash(turnOnAtEvent));

  @JsonKey(ignore: true)
  @override
  _$$_TftCopyWith<_$_Tft> get copyWith =>
      __$$_TftCopyWithImpl<_$_Tft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TftToJson(
      this,
    );
  }
}

abstract class _Tft implements Tft {
  const factory _Tft(
      {required final bool active,
      required final bool timeout,
      required final int timeoutDuration,
      required final bool turnOnAtEvent}) = _$_Tft;

  factory _Tft.fromJson(Map<String, dynamic> json) = _$_Tft.fromJson;

  @override
  bool get active;
  @override
  bool get timeout;
  @override
  int get timeoutDuration;
  @override
  bool get turnOnAtEvent;
  @override
  @JsonKey(ignore: true)
  _$$_TftCopyWith<_$_Tft> get copyWith => throw _privateConstructorUsedError;
}

Vcc _$VccFromJson(Map<String, dynamic> json) {
  return _Vcc.fromJson(json);
}

/// @nodoc
mixin _$Vcc {
  int get r1 => throw _privateConstructorUsedError;
  int get r2 => throw _privateConstructorUsedError;
  int? get vbat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VccCopyWith<Vcc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VccCopyWith<$Res> {
  factory $VccCopyWith(Vcc value, $Res Function(Vcc) then) =
      _$VccCopyWithImpl<$Res>;
  $Res call({int r1, int r2, int? vbat});
}

/// @nodoc
class _$VccCopyWithImpl<$Res> implements $VccCopyWith<$Res> {
  _$VccCopyWithImpl(this._value, this._then);

  final Vcc _value;
  // ignore: unused_field
  final $Res Function(Vcc) _then;

  @override
  $Res call({
    Object? r1 = freezed,
    Object? r2 = freezed,
    Object? vbat = freezed,
  }) {
    return _then(_value.copyWith(
      r1: r1 == freezed
          ? _value.r1
          : r1 // ignore: cast_nullable_to_non_nullable
              as int,
      r2: r2 == freezed
          ? _value.r2
          : r2 // ignore: cast_nullable_to_non_nullable
              as int,
      vbat: vbat == freezed
          ? _value.vbat
          : vbat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_VccCopyWith<$Res> implements $VccCopyWith<$Res> {
  factory _$$_VccCopyWith(_$_Vcc value, $Res Function(_$_Vcc) then) =
      __$$_VccCopyWithImpl<$Res>;
  @override
  $Res call({int r1, int r2, int? vbat});
}

/// @nodoc
class __$$_VccCopyWithImpl<$Res> extends _$VccCopyWithImpl<$Res>
    implements _$$_VccCopyWith<$Res> {
  __$$_VccCopyWithImpl(_$_Vcc _value, $Res Function(_$_Vcc) _then)
      : super(_value, (v) => _then(v as _$_Vcc));

  @override
  _$_Vcc get _value => super._value as _$_Vcc;

  @override
  $Res call({
    Object? r1 = freezed,
    Object? r2 = freezed,
    Object? vbat = freezed,
  }) {
    return _then(_$_Vcc(
      r1: r1 == freezed
          ? _value.r1
          : r1 // ignore: cast_nullable_to_non_nullable
              as int,
      r2: r2 == freezed
          ? _value.r2
          : r2 // ignore: cast_nullable_to_non_nullable
              as int,
      vbat: vbat == freezed
          ? _value.vbat
          : vbat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vcc implements _Vcc {
  const _$_Vcc({required this.r1, required this.r2, this.vbat});

  factory _$_Vcc.fromJson(Map<String, dynamic> json) => _$$_VccFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vcc &&
            const DeepCollectionEquality().equals(other.r1, r1) &&
            const DeepCollectionEquality().equals(other.r2, r2) &&
            const DeepCollectionEquality().equals(other.vbat, vbat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(r1),
      const DeepCollectionEquality().hash(r2),
      const DeepCollectionEquality().hash(vbat));

  @JsonKey(ignore: true)
  @override
  _$$_VccCopyWith<_$_Vcc> get copyWith =>
      __$$_VccCopyWithImpl<_$_Vcc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VccToJson(
      this,
    );
  }
}

abstract class _Vcc implements Vcc {
  const factory _Vcc(
      {required final int r1, required final int r2, final int? vbat}) = _$_Vcc;

  factory _Vcc.fromJson(Map<String, dynamic> json) = _$_Vcc.fromJson;

  @override
  int get r1;
  @override
  int get r2;
  @override
  int? get vbat;
  @override
  @JsonKey(ignore: true)
  _$$_VccCopyWith<_$_Vcc> get copyWith => throw _privateConstructorUsedError;
}

WiFi _$WiFiFromJson(Map<String, dynamic> json) {
  return _WiFi.fromJson(json);
}

/// @nodoc
mixin _$WiFi {
  bool get active => throw _privateConstructorUsedError;
  String get ssid => throw _privateConstructorUsedError;
  String get passwd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WiFiCopyWith<WiFi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WiFiCopyWith<$Res> {
  factory $WiFiCopyWith(WiFi value, $Res Function(WiFi) then) =
      _$WiFiCopyWithImpl<$Res>;
  $Res call({bool active, String ssid, String passwd});
}

/// @nodoc
class _$WiFiCopyWithImpl<$Res> implements $WiFiCopyWith<$Res> {
  _$WiFiCopyWithImpl(this._value, this._then);

  final WiFi _value;
  // ignore: unused_field
  final $Res Function(WiFi) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? ssid = freezed,
    Object? passwd = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      ssid: ssid == freezed
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      passwd: passwd == freezed
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WiFiCopyWith<$Res> implements $WiFiCopyWith<$Res> {
  factory _$$_WiFiCopyWith(_$_WiFi value, $Res Function(_$_WiFi) then) =
      __$$_WiFiCopyWithImpl<$Res>;
  @override
  $Res call({bool active, String ssid, String passwd});
}

/// @nodoc
class __$$_WiFiCopyWithImpl<$Res> extends _$WiFiCopyWithImpl<$Res>
    implements _$$_WiFiCopyWith<$Res> {
  __$$_WiFiCopyWithImpl(_$_WiFi _value, $Res Function(_$_WiFi) _then)
      : super(_value, (v) => _then(v as _$_WiFi));

  @override
  _$_WiFi get _value => super._value as _$_WiFi;

  @override
  $Res call({
    Object? active = freezed,
    Object? ssid = freezed,
    Object? passwd = freezed,
  }) {
    return _then(_$_WiFi(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      ssid: ssid == freezed
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      passwd: passwd == freezed
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WiFi implements _WiFi {
  const _$_WiFi(
      {required this.active, required this.ssid, required this.passwd});

  factory _$_WiFi.fromJson(Map<String, dynamic> json) => _$$_WiFiFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WiFi &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.ssid, ssid) &&
            const DeepCollectionEquality().equals(other.passwd, passwd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(ssid),
      const DeepCollectionEquality().hash(passwd));

  @JsonKey(ignore: true)
  @override
  _$$_WiFiCopyWith<_$_WiFi> get copyWith =>
      __$$_WiFiCopyWithImpl<_$_WiFi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WiFiToJson(
      this,
    );
  }
}

abstract class _WiFi implements WiFi {
  const factory _WiFi(
      {required final bool active,
      required final String ssid,
      required final String passwd}) = _$_WiFi;

  factory _WiFi.fromJson(Map<String, dynamic> json) = _$_WiFi.fromJson;

  @override
  bool get active;
  @override
  String get ssid;
  @override
  String get passwd;
  @override
  @JsonKey(ignore: true)
  _$$_WiFiCopyWith<_$_WiFi> get copyWith => throw _privateConstructorUsedError;
}

LedPanel _$LedPanelFromJson(Map<String, dynamic> json) {
  return _LedPanel.fromJson(json);
}

/// @nodoc
mixin _$LedPanel {
  int get brightness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedPanelCopyWith<LedPanel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedPanelCopyWith<$Res> {
  factory $LedPanelCopyWith(LedPanel value, $Res Function(LedPanel) then) =
      _$LedPanelCopyWithImpl<$Res>;
  $Res call({int brightness});
}

/// @nodoc
class _$LedPanelCopyWithImpl<$Res> implements $LedPanelCopyWith<$Res> {
  _$LedPanelCopyWithImpl(this._value, this._then);

  final LedPanel _value;
  // ignore: unused_field
  final $Res Function(LedPanel) _then;

  @override
  $Res call({
    Object? brightness = freezed,
  }) {
    return _then(_value.copyWith(
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LedPanelCopyWith<$Res> implements $LedPanelCopyWith<$Res> {
  factory _$$_LedPanelCopyWith(
          _$_LedPanel value, $Res Function(_$_LedPanel) then) =
      __$$_LedPanelCopyWithImpl<$Res>;
  @override
  $Res call({int brightness});
}

/// @nodoc
class __$$_LedPanelCopyWithImpl<$Res> extends _$LedPanelCopyWithImpl<$Res>
    implements _$$_LedPanelCopyWith<$Res> {
  __$$_LedPanelCopyWithImpl(
      _$_LedPanel _value, $Res Function(_$_LedPanel) _then)
      : super(_value, (v) => _then(v as _$_LedPanel));

  @override
  _$_LedPanel get _value => super._value as _$_LedPanel;

  @override
  $Res call({
    Object? brightness = freezed,
  }) {
    return _then(_$_LedPanel(
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LedPanel implements _LedPanel {
  const _$_LedPanel({required this.brightness});

  factory _$_LedPanel.fromJson(Map<String, dynamic> json) =>
      _$$_LedPanelFromJson(json);

  @override
  final int brightness;

  @override
  String toString() {
    return 'LedPanel(brightness: $brightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedPanel &&
            const DeepCollectionEquality()
                .equals(other.brightness, brightness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(brightness));

  @JsonKey(ignore: true)
  @override
  _$$_LedPanelCopyWith<_$_LedPanel> get copyWith =>
      __$$_LedPanelCopyWithImpl<_$_LedPanel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedPanelToJson(
      this,
    );
  }
}

abstract class _LedPanel implements LedPanel {
  const factory _LedPanel({required final int brightness}) = _$_LedPanel;

  factory _LedPanel.fromJson(Map<String, dynamic> json) = _$_LedPanel.fromJson;

  @override
  int get brightness;
  @override
  @JsonKey(ignore: true)
  _$$_LedPanelCopyWith<_$_LedPanel> get copyWith =>
      throw _privateConstructorUsedError;
}
