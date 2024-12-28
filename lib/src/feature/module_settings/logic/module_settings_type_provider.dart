import 'dart:convert';

import '../../../common/logger/logger.dart';
import '../model/module_settings.dart';
import 'module_settings_provider.dart';

class ModuleSettingsType extends ModuleSettingsProvider {
  late ModSettingsModelType _modSettingsModel;

  //Loading settings on initialization
  @override
  Future<bool> update(String jsonString) async {
    logger.i('Updating modsettings from json');

    try {
      _modSettingsModel = ModSettingsModelType.fromJson(
        jsonDecode(jsonString) as Map<String, dynamic>,
      );

      // Module type
      type = _modSettingsModel.type;

      return true;
    } on Exception catch (e) {
      logger.e('Exception at parsing ModuleSettingsType json', error: e);
      return false;
    } catch (e) {
      logger.e('Unknown error at parsing ModuleSettingsType json', error: e);
      return false;
    }
  }

  @override
  String get write => '';
}
