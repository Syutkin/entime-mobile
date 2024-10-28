part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.initialize() = _SettingsEventInitialize;
  const factory SettingsEvent.setDefault() = _SettingsEventSetDefault;
  const factory SettingsEvent.update({required AppSettings settings}) =
      _SettingsEventUpdate;
}
