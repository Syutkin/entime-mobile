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
      name: 'I18nSettings_pixelSize',
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
      name: 'I18nSettings_milliseconds',
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

  static String get journalLinesNumberPopup => Intl.message(
    'Количество отображамых строк в журнале',
    name: 'I18nSettings_journalLinesNumberPopup',
  );

  static String get numberOfLines => Intl.message(
    'Количество строк',
    name: 'I18nSettings_numberOfLines',
  );

  static String get enterNumber => Intl.message(
    'Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений',
    name: 'I18nSettings_enterNumber',
  );

  static String get defaults => Intl.message(
    'По умолчанию',
    name: 'I18nSettings_defaults',
  );

  static String get resetToDefaults => Intl.message(
    'Настройки по умолчанию',
    name: 'I18nSettings_resetToDefaults',
  );

  static String get delay => Intl.message(
    'Задержка',
    name: 'I18nSettings_delay',
  );

  static String get incorrectDelay => Intl.message(
    'Неверная задержка',
    name: 'I18nSettings_incorrectDelay',
  );

  static String get voicePitch => Intl.message(
    'Тембр голоса',
    name: 'I18nSettings_voicePitch',
  );

  static String get voiceRate => Intl.message(
    'Скорость произношения',
    name: 'I18nSettings_voiceRate',
  );

  static String get voiceVolume => Intl.message(
    'Громкость голоса',
    name: 'I18nSettings_voiceVolume',
  );

  static String get lightBlue => Intl.message(
    'Синяя светлая тема',
    name: 'I18nSettings_lightBlue',
  );

  static String get darkBlue => Intl.message(
    'Синяя тёмная тема',
    name: 'I18nSettings_darkBlue',
  );

  static String get lightRed => Intl.message(
    'Красная светлая тема',
    name: 'I18nSettings_lightRed',
  );

  static String get darkRed => Intl.message(
    'Красная тёмная тема',
    name: 'I18nSettings_darkRed',
  );
}

class I18nProtocol {
  static String get enterFinishNumber => Intl.message(
    'Введите номер финишировавшего участника',
    name: 'I18nProtocol_enterFinishNumber',
  );

  static String get number => Intl.message(
    'Номер',
    name: 'I18nProtocol_number',
  );

  static String get incorrectNumber => Intl.message(
    'Неверный номер',
    name: 'I18nProtocol_incorrectNumber',
  );

  static String get warning => Intl.message(
    'Предупреждение',
    name: 'I18nProtocol_warning',
  );

  static String updateNumber(int number) {
    return Intl.message(
      'Участнику с номером $number уже присвоено финишное время. Установить новое значение?',
      name: 'I18nProtocol_updateNumber',
      args: [number],
    );
  }

  static String get hide => Intl.message(
    'Скрыть',
    name: 'I18nProtocol_hide',
  );

  static String finishNumber(String number) {
    return Intl.message(
      'Финишировал номер $number',
      name: 'I18nProtocol_finishNumber',
      args: [number],
    );
  }

  static String get clearNumber => Intl.message(
    'Убрать номер',
    name: 'I18nProtocol_clearNumber',
  );

  static String get hideAll => Intl.message(
    'Скрыть всё',
    name: 'I18nProtocol_hideAll',
  );

  static String get didNotStart => Intl.message(
    'Не стартовал',
    name: 'I18nProtocol_didNotStart',
  );

  static String get didNotFinish => Intl.message(
    'Не финишировал',
    name: 'I18nProtocol_didNotFinish',
  );

  static String get type => Intl.message(
    'Тип',
    name: 'I18nProtocol_type',
  );

  static String get time => Intl.message(
    'Время',
    name: 'I18nProtocol_time',
  );

}
