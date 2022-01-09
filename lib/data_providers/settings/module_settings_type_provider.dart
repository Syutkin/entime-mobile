import 'package:entime/data_providers/settings/module_settings_provider.dart';
import 'package:entime/models/models.dart';
import 'package:entime/utils/logger.dart';

class ModuleSettingsType extends ModuleSettingsProvider {
  late ModSettingsModelType _modSettingsModel;

  // // Module type
  // @override
  // String type = '';

  //Loading settings on initialization
  @override
  Future<bool> update(String jsonString) async {
    logger.i('Updating modsettings from json');

    try {
      _modSettingsModel = modSettingsModelTypeFromJson(jsonString);

      // Module type
      type = _modSettingsModel.type;

      return true;
    } on Exception catch (e) {
      logger.e('Error at parsing ModuleSettings json: $e');
      return false;
    }
  }

  @override
  String get write {
    return '';
  }
}
