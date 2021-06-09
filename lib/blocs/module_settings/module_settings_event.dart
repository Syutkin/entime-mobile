part of 'module_settings_bloc.dart';

@immutable
abstract class ModuleSettingsEvent extends Equatable {
  const ModuleSettingsEvent();

  @override
  List<Object> get props => [];
}

class GetModuleSettings extends ModuleSettingsEvent {
  final String json;
  const GetModuleSettings(this.json);

  @override
  List<Object> get props => [json];
}

class ModuleSettingsLoaded extends ModuleSettingsEvent {}

class UpdateModuleSettings extends ModuleSettingsEvent {
  final ModuleSettingsProvider moduleSettings;

  const UpdateModuleSettings(this.moduleSettings);

  @override
  List<Object> get props => [moduleSettings];
}
