import '../../models/models.dart';
import '../../utils/logger.dart';
import 'module_settings_provider.dart';

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
