part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.initialize() = SettingsEventInitialize;
  const factory SettingsEvent.setDefault() = SettingsEventSetDefault;
  const factory SettingsEvent.update({required AppSettings settings}) = SettingsEventUpdate;
}
