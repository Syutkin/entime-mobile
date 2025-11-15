import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings.dart';

class SettingsCubit extends Cubit<AppSettings> {
  SettingsCubit(this.settingsProvider) : super(settingsProvider.settings);
  ISettingsProvider settingsProvider;
  void initialize() {
    emit(settingsProvider.settings);
  }

  Future<void> setDefault() async {
    await settingsProvider.setDefaults();
    emit(settingsProvider.settings);
  }

  Future<void> update(AppSettings settings) async {
    emit(settings);
    await settingsProvider.update(settings);
  }
}
