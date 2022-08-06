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

class I18nSettings {
  static String get settings => Intl.message(
    'Настройки',
    name: 'I18nSettings_settings',
  );

  static String get general => Intl.message(
    'Основные',
    name: 'I18nSettings_general',
  );

  static String get bluetooth => Intl.message(
    'Bluetooth',
    name: 'I18nSettings_bluetooth',
  );

  static String get reconnect => Intl.message(
    'Переподключение',
    name: 'I18nSettings_reconnect',
  );

  static String get reconnectDescription => Intl.message(
    'Пытаться переподключится к модулю при обрыве связи',
    name: 'I18nSettings_reconnectDescription',
  );

  static String get sound => Intl.message(
    'Звук',
    name: 'I18nSettings_sound',
  );

  static String get wakelock => Intl.message(
    'Всегда включённый экран',
    name: 'I18nSettings_wakelock',
  );

  static String get countdown => Intl.message(
    'Обратный отсчёт',
    name: 'I18nSettings_countdown',
  );

  static String get voiceMessages => Intl.message(
    'Голосовые сообщения',
    name: 'I18nSettings_voiceMessages',
  );

  static String get voice => Intl.message(
    'Голос',
    name: 'I18nSettings_voice',
  );

  static String get participantsName => Intl.message(
    'Называть имена участников',
    name: 'I18nSettings_participantsName',
  );

  static String get volume => Intl.message(
    'Громкость',
    name: 'I18nSettings_volume',
  );

  static String get pitch => Intl.message(
    'Тембр',
    name: 'I18nSettings_pitch',
  );

  static String get rate => Intl.message(
    'Скорость',
    name: 'I18nSettings_rate',
  );

  static String get language => Intl.message(
    'Язык',
    name: 'I18nSettings_language',
  );

  static String get startScreen => Intl.message(
    'Стартовый экран',
    name: 'I18nSettings_startScreen',
  );

  static String get startButton => Intl.message(
    'Кнопка "отсечка"',
    name: 'I18nSettings_startButton',
  );

  static String get startButtonSize => Intl.message(
    'Размер кнопки "отсечка"',
    name: 'I18nSettings_startButtonSize',
  );

  static String pixelSize(int size) {
    return Intl.message(
      '${size}px',
      name: 'I18nUpdate_pixelSize',
      args: [size],
    );
  }

  static String get startButtonSizeDescription => Intl.message(
    'Размер кнопки "отсечка" на стартовом экране',
    name: 'I18nSettings_startButtonSizeDescription',
  );

  static String get countdownAtStart => Intl.message(
    'Обратный отсчёт',
    name: 'I18nSettings_countdownAtStart',
  );

  static String get countdownAtStartSize => Intl.message(
    'Размер обратного отсчёта',
    name: 'I18nSettings_countdownAtStartSize',
  );

  static String get replaceStartCountdown => Intl.message(
    'Заменять время старта обратным отсчётом',
    name: 'I18nSettings_replaceStartCountdown',
  );

  static String get finishScreen => Intl.message(
    'Финишный экран',
    name: 'I18nSettings_finishScreen',
  );

  static String get delayForNewEvents => Intl.message(
    'Задержка перед показом новых отсечек',
    name: 'I18nSettings_delayForNewEvents',
  );

  static String milliseconds(int milliseconds) {
    return Intl.message(
      '$millisecondsмс',
      name: 'I18nUpdate_milliseconds',
      args: [milliseconds],
    );
  }

  static String get autosubstitution => Intl.message(
    'Автоподстановка номеров',
    name: 'I18nSettings_autosubstitution',
  );

  static String get autosubstitutionDelay => Intl.message(
    'Задержка перед автоматическим подставлением новых номеров',
    name: 'I18nSettings_autosubstitutionDelay',
  );

  static String get finishButton => Intl.message(
    'Кнопка "отсечка"',
    name: 'I18nSettings_finishButton',
  );

  static String get finishButtonSize => Intl.message(
    'Размер кнопки "отсечка"',
    name: 'I18nSettings_finishButtonSize',
  );

  static String get finishButtonSizeDescription => Intl.message(
    'Размер кнопки "отсечка" на финишном экране',
    name: 'I18nSettings_finishButtonSizeDescription',
  );

  static String get update => Intl.message(
    'Обновление',
    name: 'I18nSettings_update',
  );

  static String get checkUpdateAtStartup => Intl.message(
    'Проверка обновлений при старте',
    name: 'I18nSettings_checkUpdateAtStartup',
  );

  static String get themes => Intl.message(
    'Темы',
    name: 'I18nSettings_themes',
  );

  static String get journal => Intl.message(
    'Журнал',
    name: 'I18nSettings_journal',
  );

  static String get journalLinesNumber => Intl.message(
    'Количество показываемых записей',
    name: 'I18nSettings_journalLinesNumber',
  );

  static String get defaults => Intl.message(
    'По умолчанию',
    name: 'I18nSettings_defaults',
  );

  static String get resetToDefaults => Intl.message(
    'Настройки по умолчанию',
    name: 'I18nSettings_resetToDefaults',
  );
}
