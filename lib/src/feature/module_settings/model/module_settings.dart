// ignore_for_file: always_put_required_named_parameters_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'module_settings.freezed.dart';
part 'module_settings.g.dart';

@freezed
sealed class ModSettingsModel with _$ModSettingsModel {
  const factory ModSettingsModel.entime(ModSettingsEntime entime) = ModSettingsModelEntime;
  const factory ModSettingsModel.led(ModSettingsLed led) = ModSettingsModelLed;
}

@freezed
@JsonSerializable()
abstract class ModSettingsType with _$ModSettingsType {
  const factory ModSettingsType({@JsonKey(name: 'Type') required String type}) = _ModSettingsType;

  factory ModSettingsType.fromJson(Map<String, dynamic> json) => _$ModSettingsTypeFromJson(json);
}

@freezed
@JsonSerializable()
abstract class ModSettingsEntime with _$ModSettingsEntime {
  const factory ModSettingsEntime({
    @JsonKey(name: 'Read') bool? read,
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'Bluetooth') required Bluetooth bluetooth,
    @JsonKey(name: 'LoRa') required LoRa loRa,
    @JsonKey(name: 'WiFi') required WiFi wiFi,
    @JsonKey(name: 'TFT') required Tft tft,
    @JsonKey(name: 'Buzzer') required Buzzer buzzer,
    @JsonKey(name: 'VCC') required Vcc vcc,
  }) = _ModSettingsEntime;

  factory ModSettingsEntime.fromJson(Map<String, dynamic> json) => _$ModSettingsEntimeFromJson(json);
}

@freezed
@JsonSerializable()
abstract class ModSettingsLed with _$ModSettingsLed {
  const factory ModSettingsLed({
    @JsonKey(name: 'Read') bool? read,
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'Bluetooth') required Bluetooth bluetooth,
    @JsonKey(name: 'WiFi') required WiFi wiFi,
    @JsonKey(name: 'LedPanel') required LedPanel ledPanel,
  }) = _ModSettingsLed;

  factory ModSettingsLed.fromJson(Map<String, dynamic> json) => _$ModSettingsLedFromJson(json);
}

@freezed
@JsonSerializable()
abstract class Bluetooth with _$Bluetooth {
  const factory Bluetooth({required bool active, required String name, required int number}) = _Bluetooth;

  factory Bluetooth.fromJson(Map<String, dynamic> json) => _$BluetoothFromJson(json);
}

@freezed
@JsonSerializable()
abstract class Buzzer with _$Buzzer {
  const factory Buzzer({required bool active, required int shortFrequency, required int longFrequency}) = _Buzzer;

  factory Buzzer.fromJson(Map<String, dynamic> json) => _$BuzzerFromJson(json);
}

@freezed
@JsonSerializable()
abstract class LoRa with _$LoRa {
  const factory LoRa({
    required bool active,
    required int frequency,
    required int txPower,
    required int spreadingFactor,
    required int signalBandwidth,
    required int codingRateDenom,
    required int preambleLength,
    required int syncWord,
    required bool crc,
  }) = _LoRa;

  factory LoRa.fromJson(Map<String, dynamic> json) => _$LoRaFromJson(json);
}

@freezed
@JsonSerializable()
abstract class Tft with _$Tft {
  const factory Tft({
    required bool active,
    required bool timeout,
    required int timeoutDuration,
    required bool turnOnAtEvent,
  }) = _Tft;

  factory Tft.fromJson(Map<String, dynamic> json) => _$TftFromJson(json);
}

@freezed
@JsonSerializable()
abstract class Vcc with _$Vcc {
  const factory Vcc({required int r1, required int r2, int? vbat}) = _Vcc;

  factory Vcc.fromJson(Map<String, dynamic> json) => _$VccFromJson(json);
}

@freezed
@JsonSerializable()
abstract class WiFi with _$WiFi {
  const factory WiFi({required bool active, required String ssid, required String passwd}) = _WiFi;

  factory WiFi.fromJson(Map<String, dynamic> json) => _$WiFiFromJson(json);
}

@freezed
@JsonSerializable()
abstract class LedPanel with _$LedPanel {
  const factory LedPanel({required int brightness}) = _LedPanel;

  factory LedPanel.fromJson(Map<String, dynamic> json) => _$LedPanelFromJson(json);
}
