import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';
import '../../settings/settings.dart';

part 'module_settings_bloc.freezed.dart';
part 'module_settings_event.dart';
part 'module_settings_state.dart';

class ModuleSettingsBloc extends Bloc<ModuleSettingsEvent, ModuleSettingsState> {
  ModuleSettingsBloc() : super(const ModuleSettingsUninitialized()) {
    on<_Get>(_handleGetModuleSettings);
    // on<ModuleSettingsLoaded>((event, emit) {});
    on<_Update>((event, emit) {
      emit(const ModuleSettingsLoading());
      emit(ModuleSettingsLoaded(moduleSettings));
    });
  }
  late ModuleSettingsProvider moduleSettings;

  Future<void> _handleGetModuleSettings(_Get event, Emitter<ModuleSettingsState> emit) async {
    emit(const ModuleSettingsLoading());
    moduleSettings = ModuleSettingsType();
    var isLoaded = await moduleSettings.update(event.json);

    if (isLoaded) {
      if (moduleSettings.type == 'entime') {
        moduleSettings = ModuleSettingsEntime();
        isLoaded = await moduleSettings.update(event.json);
      } else if (moduleSettings.type == 'led') {
        moduleSettings = ModuleSettingsLed();
        isLoaded = await moduleSettings.update(event.json);
      } else {
        logger.e('Ошибка! Неизвестный тип модуля: ${moduleSettings.type}');
        emit(const ModuleSettingsError());
      }
      emit(ModuleSettingsLoaded(moduleSettings));
    } else {
      logger.e('Ошибка! Настройки не загружены');
      emit(const ModuleSettingsError());
    }
  }
}
