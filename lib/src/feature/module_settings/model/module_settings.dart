// ignore_for_file: always_put_required_named_parameters_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'module_settings.freezed.dart';
part 'module_settings.g.dart';

@freezed
sealed class ModSettingsModel with _$ModSettingsModel {
  const factory ModSettingsModel.entime(ModSettingsEntime entime) = ModSettingsModelEntime;
  const factory ModSettingsModel.led(ModSettingsLed led) = ModSettingsModelLed;
}

@freezed
abstract class ModSettingsType with _$ModSettingsType {
  const factory ModSettingsType({@JsonKey(name: 'Type') required String type}) = _ModSettingsType;

  factory ModSettingsType.fromJson(Map<String, dynamic> json) => _$ModSettingsTypeFromJson(json);
}

@freezed
abstract class ModSettingsEntime with _$ModSettingsEntime {
  const factory ModSettingsEntime({
    @JsonKey(name: 'device') required DeviceSettings device,
    @JsonKey(name: 'sync') required SyncSettings sync,
    @JsonKey(name: 'wifi') required WiFi wifi,
  }) = _ModSettingsEntime;

  factory ModSettingsEntime.fromJson(Map<String, dynamic> json) => _$ModSettingsEntimeFromJson(json);
}

@freezed
abstract class DeviceSettings with _$DeviceSettings {
  const factory DeviceSettings({
    required String name,
    required int number,
    required int type,
    required int timezone,
  }) = _DeviceSettings;

  factory DeviceSettings.fromJson(Map<String, dynamic> json) => _$DeviceSettingsFromJson(json);
}

@freezed
abstract class SyncSettings with _$SyncSettings {
  const factory SyncSettings({
    required bool auto,
    required int source,
    required String ntp1,
    required String ntp2,
    required String ntp3,
  }) = _SyncSettings;

  factory SyncSettings.fromJson(Map<String, dynamic> json) => _$SyncSettingsFromJson(json);
}

@freezed
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
abstract class Bluetooth with _$Bluetooth {
  const factory Bluetooth({required bool active, required String name, required int number}) = _Bluetooth;

  factory Bluetooth.fromJson(Map<String, dynamic> json) => _$BluetoothFromJson(json);
}

@freezed
abstract class Buzzer with _$Buzzer {
  const factory Buzzer({required bool active, required int shortFrequency, required int longFrequency}) = _Buzzer;

  factory Buzzer.fromJson(Map<String, dynamic> json) => _$BuzzerFromJson(json);
}

@freezed
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
abstract class Vcc with _$Vcc {
  const factory Vcc({required int r1, required int r2, int? vbat}) = _Vcc;

  factory Vcc.fromJson(Map<String, dynamic> json) => _$VccFromJson(json);
}

@freezed
abstract class WiFi with _$WiFi {
  const factory WiFi({required bool active, required String ssid, required String passwd}) = _WiFi;

  factory WiFi.fromJson(Map<String, dynamic> json) => _$WiFiFromJson(json);
}

@freezed
abstract class LedPanel with _$LedPanel {
  const factory LedPanel({required int brightness}) = _LedPanel;

  factory LedPanel.fromJson(Map<String, dynamic> json) => _$LedPanelFromJson(json);
}
