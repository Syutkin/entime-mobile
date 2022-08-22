import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsProvider prefs;

  SettingsBloc(this.prefs) : super(_SettingsState(settings: prefs.settings)) {
    on<SettingsEventInitialize>((event, emit) {
      emit(_SettingsState(settings: prefs.settings));
    });
    on<SettingsEventSetDefault>((event, emit) {
      prefs.setDefaults();
      emit(_SettingsState(settings: prefs.settings));
    });
    on<SettingsEventUpdate>((event, emit) {
      prefs.save(event.settings);
      emit(_SettingsState(settings: prefs.settings));
    });
  }
}
