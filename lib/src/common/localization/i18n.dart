import 'package:intl/intl.dart';

class I18nUpdate {
  static String get whatsNew => Intl.message(
        'Что нового',
        name: 'I18nUpdate_whatsNew',
      );

  static String get connecting => Intl.message(
        'Соединение...',
        name: 'I18nUpdate_connecting',
      );

  static String updateToVersion(String version) {
    return Intl.message(
      'Обновить до $version',
      name: 'I18nUpdate_updateToVersion',
      args: [version],
    );
  }

  static String get checkForUpdates => Intl.message(
        'Проверить обновления',
        name: 'I18nUpdate_checkForUpdates',
      );

  static String get changelog => Intl.message(
        'Список изменений',
        name: 'I18nUpdate_changelog',
      );

  static String downloaded(String current, String total) {
    return Intl.message(
      '$current из $total',
      name: 'I18nUpdate_downloaded',
      args: [current, total],
      desc: 'Сколько скачано байт относительно общего количества',
    );
  }


}
