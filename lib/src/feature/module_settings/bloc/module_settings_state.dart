part of 'module_settings_bloc.dart';

@immutable
abstract class ModuleSettingsState extends Equatable {
  const ModuleSettingsState();
  @override
  List<Object> get props => [];
}

class ModuleSettingsUninitialized extends ModuleSettingsState {
}

class ModuleSettingsLoading extends ModuleSettingsState {
}

//class ModuleSettingsUpdated extends ModuleSettingsState {
//}

class ModuleSettingsUpdated extends ModuleSettingsState {
  final ModuleSettingsProvider moduleSettings;

  const ModuleSettingsUpdated(this.moduleSettings);

  @override
  List<Object> get props => [moduleSettings];
}

class ModuleSettingsLoadError extends ModuleSettingsState {
}

// Reason:
//if the authentication state was uninitialized, the user might be seeing a splash screen.
//if the authentication state was loading, the user might be seeing a progress indicator.
//if the authentication state was authenticated, the user might see a home screen.
//if the authentication state was unauthenticated, the user might see a login form.
