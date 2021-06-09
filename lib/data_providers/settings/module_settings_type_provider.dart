import 'package:entime/data_providers/settings/module_settings_provider.dart';
import 'package:entime/models/models.dart';

class ModuleSettingsType extends ModuleSettingsProvider {
  ModSettingsModelType _modSettingsModel;

  // Module type
  @override
  String type = '';

  //Loading settings on initialization
  @override
  Future<bool> update(jsonString) async {
    print('Updating modsettings from json');

    try {
      _modSettingsModel = modSettingsModelTypeFromJson(jsonString);

      // Module type
      type = _modSettingsModel.type;

      return true;
    } catch (e) {
      print('Error at parsing ModuleSettings json: $e');
      return false;
    }
  }

  @override
  String get write {
    return '';
  }
}
