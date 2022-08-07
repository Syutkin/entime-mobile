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

class I18nBluetooth {
  static String get unknownDevice => Intl.message(
        'Неизвестное устройство',
        name: 'I18nBluetooth_unknownDevice',
      );

  static String get dbm => Intl.message(
        'дБм',
        name: 'I18nBluetooth_dbm',
      );

  static String get selectDevice => Intl.message(
        'Выберите устройство',
        name: 'I18nBluetooth_selectDevice',
      );
}

class I18nCountdown {
  static String get countdown => Intl.message(
        'Обратный отсчёт',
        name: 'I18nCountdown_countdown',
      );
}

class I18nDrawer {
  static String get settings => Intl.message(
        'Настройки',
        name: 'I18nDrawer_settings',
      );

  static String get help => Intl.message(
        'Помощь',
        name: 'I18nDrawer_help',
      );

  static String get about => Intl.message(
        'О программе',
        name: 'I18nDrawer_about',
      );

  static String version(String version) {
    return Intl.message(
      'v$version',
      name: 'I18nDrawer_version',
      args: [version],
    );
  }
}

class I18nHelp {
  static String get manual => Intl.message(
        'Руководство',
        name: 'I18nHelp_manual',
      );

  static String get manualMd => Intl.message(
        '''
# Entime mobile

Перед началом работы можно изменить настройки приложения.

![](resource:assets/1.png)

 - Включить звук обратного отсчёта
 - Включить и настроить голосовые оповещения
 - Отключить выключение эрана во время работы приложения.

![](resource:assets/9.png)
![](resource:assets/11.png)

Для непосредственной работы нужно выбрать файл стартового протокола.

![](resource:assets/2.png)

Затем bluetooth модуль, который предварительно должен быть сопряжён с мобильным устройством.

![](resource:assets/4.png)

После выбора bluetooth модуля, нужно нажать на любой из появившихся bluetooth значков, для соединения с модулем.

![](resource:assets/5.png)

После установки соединения, можно ~~изменить~~ пока только посмотреть настройки модуля.

![](resource:assets/8.png)


Для работы на старте переходим во вкладку "Start", в ней отображается стартовый протокол.

В первом столбце номер участника, во втором - плановое стартовое время, в третьем - реальное стартовое время (поступает от стартового модуля), в четвёртом - поправка в миллисекундах относительно планового времени старта.

| Номер | Время старта | Фактическое время старта | Поправка |
|-------|--------------|--------------------------|----------|

Если участник не стартовал, выставить DNS можно свайпом в левую сторону на строке с нужным номером.

После окончания стартов передать результаты можно нажав стандартную кнопку **share** вверху.

![](resource:assets/12.png)

При нажатии на синий плюс внизу, можно добавить нового участника, либо изменить время старта уже существующего.

Для этого в открывшемся диалоге вводим номер и новое стартовое время.

![](resource:assets/20.png)

Для работы на финише переходим во вкладку "Finish", в ней отображаются финишные времена, введённые либо вручную, при нажатии на иконку руки внизу экрана, либо полученные от финишного модуля. Значок слева поможет определить, как именно было получено значение времени финиша.

Внизу отображаются номера гонщиков, которые сейчас должны быть на трассе.

![](resource:assets/13.png)

Для присвоения номеру времени финиша, либо перетащите номер снизу на нужное время, либо выставите номер вручную из диалога, который появится при нажатии на любое значение времени в основной таблице.

![](resource:assets/15.png)

Отработанные, либо ненужные времена финиша, можно либо скрывать поодиночке свайпом в любую сторону,

![](resource:assets/17.png)

либо сразу все из всплывающего меню, которое появляется при долгом нажатии на любом значении времени.

![](resource:assets/14.png)

После окончания заездов передать результаты финиша можно нажав стандартную кнопку **share** вверху.
  ''',
        name: 'I18nHelp_manualMd',
      );
}

class I18nHome {
  static String updateAutomaticCorrection(
      int number, int prevCorrection, int correction) {
    return Intl.message(
      'Участнику под номером $number '
      'уже установлена стартовая поправка $prevCorrection. '
      'Обновить её на $correction?',
      name: 'I18nHome_updateAutomaticCorrection',
      args: [number, prevCorrection, correction],
    );
  }

  static String equalStartTime(String time, int prevNumber, int currentNumber) {
    return Intl.message(
      'Стартовое время $time уже присвоено номеру $prevNumber. '
      'Вы уверены что хотите установить одинаковое стартовое время '
      'для номеров $currentNumber и $prevNumber?\n',
      name: 'I18nHome_equalStartTime',
      args: [time, prevNumber, currentNumber],
    );
  }

  static String updateAutomaticStartCorrection(
      int number, String automaticCorrection) {
    return Intl.message(
      'У номера $number уже проставлена автоматическая стартовая отсечка: $automaticCorrection. '
      'Установить новое стартовое время и удалить предыдущее значение?\n',
      name: 'I18nHome_updateAutomaticStartCorrection',
      args: [number, automaticCorrection],
    );
  }

  static String updateManualStartCorrection(
      int number, String manualCorrection) {
    return Intl.message(
      'У номера $number уже проставлена ручная стартовая отсечка: $manualCorrection. '
      'Установить новое стартовое время и удалить предыдущее значение?\n',
      name: 'I18nHome_updateManualStartCorrection',
      args: [number, manualCorrection],
    );
  }

  static String errorAddParticipant(String cancelButtonLabel) {
    return Intl.message(
      'Ошибка при добавлении участника! Для продолжения нажмите "$cancelButtonLabel"\n',
      name: 'I18nHome_errorAddParticipant',
      args: [cancelButtonLabel],
    );
  }

  static String get home => Intl.message(
        'Начало',
        name: 'I18nHome_home',
      );

  static String get start => Intl.message(
        'Старт',
        name: 'I18nHome_start',
      );

  static String get finish => Intl.message(
        'Финиш',
        name: 'I18nHome_finish',
      );

  static String updateAvailable(String version) {
    return Intl.message(
      'Доступна новая версия $version',
      name: 'I18nHome_updateAvailable',
      args: [version],
    );
  }

  static String get update => Intl.message(
    'Обновить',
    name: 'I18nHome_update',
  );

  static String get addRacer => Intl.message(
    'Добавить',
    name: 'I18nHome_addRacer',
  );

  static String get share => Intl.message(
    'Поделиться',
    name: 'I18nHome_share',
  );

  static String get selectStartProtocol => Intl.message(
    'Стартовый протокол',
    name: 'I18nHome_selectStartProtocol',
  );

  static String get countdown => Intl.message(
    'Обратный отсчёт',
    name: 'I18nHome_countdown',
  );

  static String get fab => Intl.message(
    'FAB',
    name: 'I18nHome_fab',
  );

  static String get importStartProtocolCsv => Intl.message(
    'Импорт стартового протокола',
    name: 'I18nHome_importStartProtocolCsv',
  );

  static String get bluetooth => Intl.message(
    'Bluetooth',
    name: 'I18nHome_bluetooth',
  );

  static String get hideMarked => Intl.message(
    'Скрытые',
    name: 'I18nHome_hideMarked',
  );

  static String get hideNumbers => Intl.message(
    'С номерами',
    name: 'I18nHome_hideNumbers',
  );

  static String get hideManual => Intl.message(
    'Ручная отсечка',
    name: 'I18nHome_hideManual',
  );

  static String get setDefaults => Intl.message(
    'По умолчанию',
    name: 'I18nHome_setDefaults',
  );
}

class I18nInit {
  static String get startProtocol => Intl.message(
    'Стартовый протокол',
    name: 'I18nInit_startProtocol',
  );

  static String get pressToSelect => Intl.message(
    'Нажмите чтобы выбрать',
    name: 'I18nInit_pressToSelect',
  );

  static String get bluetoothModule => Intl.message(
    'Bluetooth модуль',
    name: 'I18nInit_bluetoothModule',
  );

  static String get selectFile => Intl.message(
    'Выберите файл',
    name: 'I18nInit_selectFile',
  );

  static String get noData => Intl.message(
    'Нет данных',
    name: 'I18nInit_noData',
  );

  static String get share => Intl.message(
    'Поделиться',
    name: 'I18nInit_share',
  );

  static String get delete => Intl.message(
    'Удалить',
    name: 'I18nInit_delete',
  );

  static String get dbFile => Intl.message(
    'Файл базы данных',
    name: 'I18nInit_dbFile',
  );
}

class I18nLog {
  static String get bluetoothInformation => Intl.message(
    'Информация Bluetooth',
    name: 'I18nLog_bluetoothInformation',
  );
}

class I18nModuleSettings {
  static String get saveSettingsToModule => Intl.message(
    'Записать новые настройки в модуль?',
    name: 'I18nModuleSettings_saveSettingsToModule',
  );

  static String get moduleSettings => Intl.message(
    'Настройки модуля',
    name: 'I18nModuleSettings_moduleSettings',
  );

  static String get errorLoadSettings => Intl.message(
    'Ошибка загрузки настроек!',
    name: 'I18nModuleSettings_errorLoadSettings',
  );

  static String get awaitingSettings => Intl.message(
    'Ждём настройки...',
    name: 'I18nModuleSettings_awaitingSettings',
  );

  static String get module => Intl.message(
    'Модуль',
    name: 'I18nModuleSettings_module',
  );

  static String get buzzer => Intl.message(
    'Buzzer',
    name: 'I18nModuleSettings_buzzer',
  );

  static String get shortFrequency => Intl.message(
    'Частота коротких гудков',
    name: 'I18nModuleSettings_shortFrequency',
  );

  static String get selectShortFrequency => Intl.message(
    'Выберите частоту короткого гудка',
    name: 'I18nModuleSettings_selectShortFrequency',
  );

  static String get longFrequency => Intl.message(
    'Частота длинных гудков',
    name: 'I18nModuleSettings_longFrequency',
  );

  static String get selectLongFrequency => Intl.message(
    'Выберите частоту длинного гудка',
    name: 'I18nModuleSettings_selectLongFrequency',
  );

  static String noteFrequency (String note, int frequency) {
    return Intl.message(
      'Нота $note, $frequencyГц',
      name: 'I18nModuleSettings_noteFrequency',
      args: [note, frequency],
    );
  }

  static String get lora => Intl.message(
    'LoRa',
    name: 'I18nModuleSettings_lora',
  );

  static String get frequency => Intl.message(
    'Частота',
    name: 'I18nModuleSettings_frequency',
  );

  static String frequencyHz (int frequency) {
    return Intl.message(
      '$frequency Гц',
      name: 'I18nModuleSettings_frequencyHz',
      args: [frequency],
    );
  }

  static String get txPower => Intl.message(
    'TX Power',
    name: 'I18nModuleSettings_txPower',
  );

  static String get spreadingFactor => Intl.message(
    'Spreading Factor',
    name: 'I18nModuleSettings_spreadingFactor',
  );

  static String get signalBandwidth => Intl.message(
    'Signal Bandwidth',
    name: 'I18nModuleSettings_signalBandwidth',
  );

  static String get codingRateDenominator => Intl.message(
    'Coding Rate Denominator',
    name: 'I18nModuleSettings_codingRateDenominator',
  );

  static String get preambleLength => Intl.message(
    'Preamble Length',
    name: 'I18nModuleSettings_preambleLength',
  );

  static String get syncWord => Intl.message(
    'Sync Word',
    name: 'I18nModuleSettings_syncWord',
  );

  static String get crc => Intl.message(
    'CRC',
    name: 'I18nModuleSettings_crc',
  );

  static String get screen => Intl.message(
    'Экран',
    name: 'I18nModuleSettings_screen',
  );

  static String get tft => Intl.message(
    'TFT',
    name: 'I18nModuleSettings_tft',
  );

  static String get sleepMode => Intl.message(
    'Спящий режим',
    name: 'I18nModuleSettings_sleepMode',
  );

  static String sleepModeSeconds (int seconds) {
    return Intl.message(
      '$seconds секунд',
      name: 'I18nModuleSettings_sleepModeSeconds',
      args: [seconds],
    );
  }

  static String get turnOnAtEvent => Intl.message(
    'Включать после события',
    name: 'I18nModuleSettings_turnOnAtEvent',
  );

  static String get bluetooth => Intl.message(
    'Bluetooth',
    name: 'I18nModuleSettings_bluetooth',
  );

  static String get bluetoothModuleName => Intl.message(
    'Имя модуля',
    name: 'I18nModuleSettings_bluetoothModuleName',
  );

  static String get bluetoothModuleNumber => Intl.message(
    'Номер модуля',
    name: 'I18nModuleSettings_bluetoothModuleNumber',
  );

  static String get bluetoothNumber => Intl.message(
    'Номер',
    name: 'I18nModuleSettings_bluetoothNumber',
  );

  static String get enterBluetoothModuleNumber => Intl.message(
    'Введите номер модуля',
    name: 'I18nModuleSettings_enterBluetoothModuleNumber',
  );

  static String get wifi => Intl.message(
    'WiFi',
    name: 'I18nModuleSettings_wifi',
  );

  static String get wifiNetwork => Intl.message(
    'Сеть',
    name: 'I18nModuleSettings_wifiNetwork',
  );

  static String get enterWifiSsid => Intl.message(
    'Введите имя WiFi сети',
    name: 'I18nModuleSettings_enterWifiSsid',
  );

  static String enterWifiPassword (String ssid) {
    return Intl.message(
      'Введите пароль WiFi сети $ssid',
      name: 'I18nModuleSettings_enterWifiPassword',
      args: [ssid],
    );
  }

  static String get password => Intl.message(
    'Пароль',
    name: 'I18nModuleSettings_password',
  );

  static String get vcc => Intl.message(
    'VCC',
    name: 'I18nModuleSettings_vcc',
  );

  static String get resistor1 => Intl.message(
    'R1',
    name: 'I18nModuleSettings_resistor1',
  );

  static String get resistor2 => Intl.message(
    'R2',
    name: 'I18nModuleSettings_resistor2',
  );

  static String get ohm => Intl.message(
    'Ом',
    name: 'I18nModuleSettings_ohm',
  );

  static String resistorOhm (int ohm) {
    return Intl.message(
      '$ohm Ом',
      name: 'I18nModuleSettings_resistorOhm',
      args: [ohm],
    );
  }

  static String get enterResistor1 => Intl.message(
    'Введите значение резистора R1',
    name: 'I18nModuleSettings_enterResistor1',
  );

  static String get enterResistor2 => Intl.message(
    'Введите значение резистора R2',
    name: 'I18nModuleSettings_enterResistor2',
  );

  static String get enterMeasuredVoltage => Intl.message(
    'Ввод измеренного напряжения',
    name: 'I18nModuleSettings_enterMeasuredVoltage',
  );

  static String get mv => Intl.message(
    'мВ',
    name: 'I18nModuleSettings_mv',
  );

  static String get enterCurrentVoltage => Intl.message(
    'Введите текущее значение напряжения на батареях',
    name: 'I18nModuleSettings_enterCurrentVoltage',
  );

  static String get brightness => Intl.message(
    'Яркость',
    name: 'I18nModuleSettings_brightness',
  );

  static String get setBrightness => Intl.message(
    'Установите яркость панели',
    name: 'I18nModuleSettings_setBrightness',
  );

  static String brightnessInt (int brightness) {
    return Intl.message(
      'Яркость $brightness',
      name: 'I18nModuleSettings_brightnessInt',
      args: [brightness],
    );
  }

  static String unknownModuleType (String type) {
    return Intl.message(
      'Неизвестный тип модуля: $type',
      name: 'I18nModuleSettings_unknownModuleType',
      args: [type],
    );
  }
}
