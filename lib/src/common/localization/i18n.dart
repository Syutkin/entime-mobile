// ignore_for_file: avoid_classes_with_only_static_members

import 'package:intl/intl.dart';

class I18nCore {
  static String get edit =>
      Intl.message('Редактировать', name: 'I18nCore_edit');

  static String get delete => Intl.message('Удалить', name: 'I18nCore_delete');

  static String get share => Intl.message('Поделиться', name: 'I18nCore_share');

  static String get warning =>
      Intl.message('Предупреждение', name: 'I18nCore_warning');

  static String get confirmation =>
      Intl.message('Подтверждение', name: 'I18nCore_confirmation');

  static String get details =>
      Intl.message('Подробнее', name: 'I18nCore_details');

  static String get correction =>
      Intl.message('Поправка', name: 'I18nCore_correction');

  static String get dns => Intl.message('DNS', name: 'I18nCore_dns');

  static String get dnf => Intl.message('DNF', name: 'I18nCore_dnf');

  static String get dsq => Intl.message('DSQ', name: 'I18nCore_dsq');

  static String get yes => Intl.message('Да', name: 'I18nCore_yes');

  static String get no => Intl.message('Нет', name: 'I18nCore_no');
}

class I18nUpdate {
  static String get whatsNew =>
      Intl.message('Что нового', name: 'I18nUpdate_whatsNew');

  static String get connecting =>
      Intl.message('Соединение...', name: 'I18nUpdate_connecting');

  static String updateToVersion(String version) => Intl.message(
        'Обновить до $version',
        name: 'I18nUpdate_updateToVersion',
        args: [version],
      );

  static String get checkForUpdates =>
      Intl.message('Проверить обновления', name: 'I18nUpdate_checkForUpdates');

  static String get changelog =>
      Intl.message('Список изменений', name: 'I18nUpdate_changelog');

  static String downloaded(String current, String total) => Intl.message(
        '$current из $total',
        name: 'I18nUpdate_downloaded',
        args: [current, total],
        desc: 'Сколько скачано байт относительно общего количества',
      );
}

class I18nSettings {
  static String get settings =>
      Intl.message('Настройки', name: 'I18nSettings_settings');

  static String get general =>
      Intl.message('Основные', name: 'I18nSettings_general');

  static String get reconnect =>
      Intl.message('Переподключение', name: 'I18nSettings_reconnect');

  static String get reconnectDescription => Intl.message(
        'Пытаться переподключиться к модулю при обрыве связи',
        name: 'I18nSettings_reconnectDescription',
      );

  static String get sound => Intl.message('Звук', name: 'I18nSettings_sound');

  static String get wakelock =>
      Intl.message('Всегда включённый экран', name: 'I18nSettings_wakelock');

  static String get language =>
      Intl.message('Язык', name: 'I18nSettings_language');

  static String get countdown =>
      Intl.message('Обратный отсчёт', name: 'I18nSettings_countdown');

  static String get countdownFromApp => Intl.message(
        'Использовать время приложения',
        name: 'I18nSettings_countdownFromApp',
      );

  static String get countdownFromAppDetails => Intl.message(
        'Для озвучивания без модуля',
        name: 'I18nSettings_countdownFromAppDetails',
      );

  static String get voiceMessages =>
      Intl.message('Голосовые сообщения', name: 'I18nSettings_voiceMessages');

  static String get voice => Intl.message('Голос', name: 'I18nSettings_voice');

  static String get voiceFromApp => Intl.message(
        'Использовать время приложения',
        name: 'I18nSettings_voiceFromApp',
      );

  static String get voiceFromAppDetails => Intl.message(
        'Для озвучивания без модуля',
        name: 'I18nSettings_voiceFromAppDetails',
      );

  static String get participantsName => Intl.message(
        'Называть имена участников',
        name: 'I18nSettings_participantsName',
      );

  static String get volume =>
      Intl.message('Громкость', name: 'I18nSettings_volume');

  static String get pitch => Intl.message('Тембр', name: 'I18nSettings_pitch');

  static String get rate => Intl.message('Скорость', name: 'I18nSettings_rate');

  static String get ttsEngine =>
      Intl.message('Синтезатор речи', name: 'I18nSettings_ttsEngine');

  static String get ttsVoice =>
      Intl.message('Голос', name: 'I18nSettings_ttsVoice');

  static String get voiceLanguage =>
      Intl.message('Язык', name: 'I18nSettings_voiceLanguage');

  static String get startScreen =>
      Intl.message('Стартовый экран', name: 'I18nSettings_startScreen');

  static String get startButton =>
      Intl.message('Кнопка "отсечка"', name: 'I18nSettings_startButton');

  static String get startButtonSize => Intl.message(
        'Размер кнопки "отсечка"',
        name: 'I18nSettings_startButtonSize',
      );

  static String pixelSize(int size) =>
      Intl.message('${size}px', name: 'I18nSettings_pixelSize', args: [size]);

  static String get startButtonSizeDescription => Intl.message(
        'Размер кнопки "отсечка" на стартовом экране',
        name: 'I18nSettings_startButtonSizeDescription',
      );

  static String get countdownAtStart =>
      Intl.message('Обратный отсчёт', name: 'I18nSettings_countdownAtStart');

  static String get countdownAtStartSize => Intl.message(
        'Размер обратного отсчёта',
        name: 'I18nSettings_countdownAtStartSize',
      );

  static String get replaceStartCountdown => Intl.message(
        'Заменять время старта обратным отсчётом',
        name: 'I18nSettings_replaceStartCountdown',
      );

  static String get finishScreen =>
      Intl.message('Финишный экран', name: 'I18nSettings_finishScreen');

  static String get delayForNewEvents => Intl.message(
        'Задержка перед показом новых отсечек',
        name: 'I18nSettings_delayForNewEvents',
      );

  static String milliseconds(int milliseconds) => Intl.message(
        '$millisecondsмс',
        name: 'I18nSettings_milliseconds',
        args: [milliseconds],
      );

  static String get startDeltaInSeconds => Intl.message(
        'Отрезок времени старта после сигнала',
        name: 'I18nSettings_startDeltaInSeconds',
      );

  static String get startDeltaInSecondsTitle => Intl.message(
        'Окно старта',
        name: 'I18nSettings_startDeltaInSecondsTitle',
      );

  static String get startDeltaInSecondsContent => Intl.message(
        'Отрезок времени в секундах, в течении которого можно стартовать до и после актуального времени старта',
        name: 'I18nSettings_startDeltaInSecondsContent',
      );

  static String get startDelta => Intl.message(
        'Секунды',
        name: 'I18nSettings_startDelta',
      );

  static String get incorrectStartDelta => Intl.message(
        'Неверный отрезок времени',
        name: 'I18nSettings_incorrectStartDelta',
      );

  static String seconds(int seconds) => Intl.message(
        '$secondsс',
        name: 'I18nSettings_seconds',
        args: [seconds],
      );

  static String get autoSubstitution => Intl.message(
        'Автоподстановка номеров',
        name: 'I18nSettings_autoSubstitution',
      );

  static String get autoSubstitutionDelay => Intl.message(
        'Задержка перед автоматическим подставлением новых номеров',
        name: 'I18nSettings_autoSubstitutionDelay',
      );

  static String get finishButton =>
      Intl.message('Кнопка "отсечка"', name: 'I18nSettings_finishButton');

  static String get finishButtonSize => Intl.message(
        'Размер кнопки "отсечка"',
        name: 'I18nSettings_finishButtonSize',
      );

  static String get finishButtonSizeDescription => Intl.message(
        'Размер кнопки "отсечка" на финишном экране',
        name: 'I18nSettings_finishButtonSizeDescription',
      );

  static String get showStartDifference => Intl.message(
        'Показывать разницу во времени',
        name: 'I18nSettings_showStartDifference',
      );

  static String get showStartDifferenceDescription => Intl.message(
        'Между временем модуля и временем устройства',
        name: 'I18nSettings_showStartDifferenceDescription',
      );

  static String get showColorStartDifference => Intl.message(
        'Выделение цветом разницы во времени',
        name: 'I18nSettings_showColorStartDifference',
      );

  static String get showColorStartDifferenceDescription => Intl.message(
        'При достижении порога между временем модуля и временем устройства',
        name: 'I18nSettings_showColorStartDifferenceDescription',
      );

  static String get showFinishDifference => Intl.message(
        'Показывать разницу во времени',
        name: 'I18nSettings_showFinishDifference',
      );

  static String get showFinishDifferenceDescription => Intl.message(
        'Между временем модуля и временем устройства',
        name: 'I18nSettings_showFinishDifferenceDescription',
      );

  static String get showColorFinishDifference => Intl.message(
        'Выделение цветом разницы во времени',
        name: 'I18nSettings_showColorFinishDifference',
      );

  static String get showColorFinishDifferenceDescription => Intl.message(
        'При достижении порога',
        name: 'I18nSettings_showColorFinishDifferenceDescription',
      );

  static String get startFinishDifference => Intl.message(
        'Порог цветовой индикации',
        name: 'I18nSettings_startFinishDifference',
      );

  static String get incorrectStartFinishDifference => Intl.message(
        'Неверный порог',
        name: 'I18nSettings_incorrectStartFinishDifference',
      );

  static String get update =>
      Intl.message('Обновление', name: 'I18nSettings_update');

  static String get checkUpdateAtStartup => Intl.message(
        'Проверка обновлений при старте',
        name: 'I18nSettings_checkUpdateAtStartup',
      );

  static String get themes => Intl.message('Темы', name: 'I18nSettings_themes');

  static String get brightness =>
      Intl.message('Светлая тема', name: 'I18nSettings_brightness');

  static String get oLEDBackground => Intl.message(
        'Чёрный фон (для OLED)',
        name: 'I18nSettings_oLEDBackground',
      );

  static String get themeSettings => Intl.message(
        'Настройки темы',
        name: 'I18nSettings_themeSettings',
      );

  static String get journal =>
      Intl.message('Журнал', name: 'I18nSettings_journal');

  static String get journalLinesNumber => Intl.message(
        'Количество показываемых записей',
        name: 'I18nSettings_journalLinesNumber',
      );

  static String get journalLinesNumberPopup => Intl.message(
        'Количество отображаемых строк в журнале',
        name: 'I18nSettings_journalLinesNumberPopup',
      );

  static String get numberOfLines =>
      Intl.message('Количество строк', name: 'I18nSettings_numberOfLines');

  static String get enterNumber => Intl.message(
        'Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений',
        name: 'I18nSettings_enterNumber',
      );

  static String get defaults =>
      Intl.message('По умолчанию', name: 'I18nSettings_defaults');

  static String get resetToDefaults => Intl.message(
        'Настройки по умолчанию',
        name: 'I18nSettings_resetToDefaults',
      );

  static String get delay =>
      Intl.message('Задержка', name: 'I18nSettings_delay');

  static String get incorrectDelay =>
      Intl.message('Неверная задержка', name: 'I18nSettings_incorrectDelay');

  static String get voicePitch =>
      Intl.message('Тембр голоса', name: 'I18nSettings_voicePitch');

  static String get voiceRate =>
      Intl.message('Скорость произношения', name: 'I18nSettings_voiceRate');

  static String get voiceVolume =>
      Intl.message('Громкость голоса', name: 'I18nSettings_voiceVolume');

  static String get lightBlue =>
      Intl.message('Синяя светлая тема', name: 'I18nSettings_lightBlue');

  static String get darkBlue =>
      Intl.message('Синяя тёмная тема', name: 'I18nSettings_darkBlue');

  static String get lightRed =>
      Intl.message('Красная светлая тема', name: 'I18nSettings_lightRed');

  static String get darkRed =>
      Intl.message('Красная тёмная тема', name: 'I18nSettings_darkRed');

  static String get ntpOffset =>
      Intl.message('NTP смещение', name: 'I18nSettings_ntpOffset');

  static String get ntpOffsetDescription => Intl.message(
        'Синхронизировать при старте приложения',
        name: 'I18nSettings_ntpOffsetDescription',
      );
}

class I18nProtocol {
  static String get enterFinishNumber => Intl.message(
        'Введите номер финишировавшего участника',
        name: 'I18nProtocol_enterFinishNumber',
      );

  static String get number =>
      Intl.message('Номер', name: 'I18nProtocol_number');

  static String get incorrectNumber =>
      Intl.message('Неверный номер', name: 'I18nProtocol_incorrectNumber');

  static String get warning =>
      Intl.message('Предупреждение', name: 'I18nProtocol_warning');

  static String updateNumber(int number) => Intl.message(
        'Участнику с номером $number уже присвоено финишное время. Установить новое значение?',
        name: 'I18nProtocol_updateNumber',
        args: [number],
      );

  static String get hide => Intl.message('Скрыть', name: 'I18nProtocol_hide');

  static String finishNumber(String number) => Intl.message(
        'Финишировал номер $number',
        name: 'I18nProtocol_finishNumber',
        args: [number],
      );

  static String get clearNumber =>
      Intl.message('Убрать номер', name: 'I18nProtocol_clearNumber');

  static String get hideAll =>
      Intl.message('Скрыть всё', name: 'I18nProtocol_hideAll');

  static String get didNotStart =>
      Intl.message('Не стартовал', name: 'I18nProtocol_didNotStart');

  static String get didNotFinish =>
      Intl.message('Не финишировал', name: 'I18nProtocol_didNotFinish');

  static String get type => Intl.message('Тип', name: 'I18nProtocol_type');

  static String get time => Intl.message('Время', name: 'I18nProtocol_time');

  static String get difference =>
      Intl.message('Разница', name: 'I18nProtocol_difference');

  static String shareStartResults(String raceName, String stageName) =>
      Intl.message(
        'Результаты стартов гонки $raceName, этап $stageName',
        name: 'I18nProtocol_shareStartResults',
        args: [raceName, stageName],
      );

  static String shareFinishResults(String raceName, String stageName) =>
      Intl.message(
        'Результаты финишей гонки $raceName, этап $stageName',
        name: 'I18nProtocol_shareFinishResults',
        args: [raceName, stageName],
      );

  static String get startTimeCutoff =>
      Intl.message('Стартовая отсечка', name: 'I18nProtocol_startTimeCutoff');

  static String get finishTimeCutoff =>
      Intl.message('Финишная отсечка', name: 'I18nProtocol_finishTimeCutoff');
}

class I18nBluetooth {
  static String get unknownDevice => Intl.message(
        'Неизвестное устройство',
        name: 'I18nBluetooth_unknownDevice',
      );

  static String get dbm => Intl.message('дБм', name: 'I18nBluetooth_dbm');

  static String get selectDevice =>
      Intl.message('Выберите устройство', name: 'I18nBluetooth_selectDevice');

  static String get bluetoothNotAvailable => Intl.message(
        'Bluetooth недоступен на устройстве',
        name: 'I18nBluetooth_bluetoothNotAvailable',
      );
}

class I18nCountdown {
  static String get countdown =>
      Intl.message('Обратный отсчёт', name: 'I18nCountdown_countdown');
}

class I18nDrawer {
  static String get settings =>
      Intl.message('Настройки', name: 'I18nDrawer_settings');

  static String get help => Intl.message('Помощь', name: 'I18nDrawer_help');

  static String get about =>
      Intl.message('О программе', name: 'I18nDrawer_about');

  static String version(String version) =>
      Intl.message('v$version', name: 'I18nDrawer_version', args: [version]);
}

class I18nHelp {
  static String get manual =>
      Intl.message('Руководство', name: 'I18nHelp_manual');

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
    int number,
    int prevCorrection,
    int correction,
  ) =>
      Intl.message(
        'Участнику под номером $number '
        'уже установлена стартовая поправка $prevCorrection. '
        'Обновить её на $correction?',
        name: 'I18nHome_updateAutomaticCorrection',
        args: [number, prevCorrection, correction],
      );

  static String equalStartTime(
    String time,
    int prevNumber,
    int currentNumber,
  ) =>
      Intl.message(
        'Стартовое время $time уже присвоено номеру $prevNumber. '
        'Вы уверены что хотите установить одинаковое стартовое время '
        'для номеров $currentNumber и $prevNumber?\n',
        name: 'I18nHome_equalStartTime',
        args: [time, prevNumber, currentNumber],
      );

  static String updateAutomaticStartCorrection(
    int number,
    String automaticCorrection,
  ) =>
      Intl.message(
        'У номера $number уже проставлена автоматическая стартовая отсечка: $automaticCorrection. '
        'Установить новое стартовое время и удалить предыдущее значение?\n',
        name: 'I18nHome_updateAutomaticStartCorrection',
        args: [number, automaticCorrection],
      );

  static String updateManualStartCorrection(
    int number,
    String manualCorrection,
  ) =>
      Intl.message(
        'У номера $number уже проставлена ручная стартовая отсечка: $manualCorrection. '
        'Установить новое стартовое время и удалить предыдущее значение?\n',
        name: 'I18nHome_updateManualStartCorrection',
        args: [number, manualCorrection],
      );

  static String errorAddParticipant(String cancelButtonLabel) => Intl.message(
        'Ошибка при добавлении участника! Для продолжения нажмите "$cancelButtonLabel"\n',
        name: 'I18nHome_errorAddParticipant',
        args: [cancelButtonLabel],
      );

  static String get home => Intl.message('Начало', name: 'I18nHome_home');

  static String get start => Intl.message('Старт', name: 'I18nHome_start');

  static String get finish => Intl.message('Финиш', name: 'I18nHome_finish');

  static String updateAvailable(String version) => Intl.message(
        'Доступна новая версия $version',
        name: 'I18nHome_updateAvailable',
        args: [version],
      );

  static String get update => Intl.message('Обновить', name: 'I18nHome_update');

  static String get addRacer =>
      Intl.message('Добавить участника', name: 'I18nHome_addRacer');

  static String get selectStartProtocol =>
      Intl.message('Стартовый протокол', name: 'I18nHome_selectStartProtocol');

  static String get countdown =>
      Intl.message('Обратный отсчёт', name: 'I18nHome_countdown');

  static String get countdownPage => Intl.message(
        'Страница с обратным отсчётом',
        name: 'I18nHome_countdownPage',
      );

  static String get fab => Intl.message('FAB', name: 'I18nHome_fab');

  static String get showFinishDifference =>
      Intl.message('Разница во времени', name: 'I18nHome_showFinishDifference');

  static String get showColorFinishDifference => Intl.message(
        'Цветовая индикация разницы',
        name: 'I18nHome_showColorFinishDifference',
      );

  static String get importStartProtocolCsv => Intl.message(
        'Импорт стартового протокола',
        name: 'I18nHome_importStartProtocolCsv',
      );

  static String get importStagesCsv =>
      Intl.message('Импорт этапов', name: 'I18nHome_importStagesCsv');

  static String get bluetooth =>
      Intl.message('Bluetooth', name: 'I18nHome_bluetooth');

  static String get showHidden =>
      Intl.message('Скрытые', name: 'I18nHome_showHidden');

  static String get showNumbers =>
      Intl.message('С номерами', name: 'I18nHome_showNumbers');

  static String get showManual =>
      Intl.message('Ручная отсечка', name: 'I18nHome_showManual');

  static String get setDefaults =>
      Intl.message('По умолчанию', name: 'I18nHome_setDefaults');

  static String get showDNS => Intl.message('DNS', name: 'I18nHome_showDNS');

  static String get showDNF => Intl.message('DNF', name: 'I18nHome_showDNF');

  static String get showDSQ => Intl.message('DSQ', name: 'I18nHome_showDSQ');
}

class I18nInit {
  static String get selectRace =>
      Intl.message('Выберите соревнование', name: 'I18nInit_selectRace');

  static String get selectStage =>
      Intl.message('Выберите спецучасток', name: 'I18nInit_selectStage');

  static String get pressToSelect =>
      Intl.message('Нажмите чтобы выбрать', name: 'I18nInit_pressToSelect');

  static String get bluetoothModule =>
      Intl.message('Bluetooth модуль', name: 'I18nInit_bluetoothModule');

  static String get selectFile =>
      Intl.message('Выберите файл', name: 'I18nInit_selectFile');

  static String get noData =>
      Intl.message('Нет данных', name: 'I18nInit_noData');

  static String get share => Intl.message('Поделиться', name: 'I18nInit_share');

  static String get delete => Intl.message('Удалить', name: 'I18nInit_delete');

  static String get importFromCsv =>
      Intl.message('Импорт протокола из csv', name: 'I18nInit_importFromCsv');

  static String get trails => Intl.message('Трейлы', name: 'I18nInit_trails');

  static String get riders => Intl.message('Гонщики', name: 'I18nInit_riders');
}

class I18nStart {
  static String get didNotStart =>
      Intl.message('Не стартовал', name: 'I18nStart_didNotStart');

  static String get addParticipant =>
      Intl.message('Добавить участника', name: 'I18nStart_addParticipant');

  static String get sliverNumber =>
      Intl.message('№', name: 'I18nStart_sliverNumber');

  static String get sliverStart =>
      Intl.message('Старт', name: 'I18nStart_sliverStart');

  static String get sliverManualCorrection => Intl.message(
        'Ручная\r\nпоправка',
        name: 'I18nStart_sliverManualCorrection',
      );

  static String get sliverAutomaticCorrection => Intl.message(
        'Авто\r\nпоправка',
        name: 'I18nStart_sliverAutomaticCorrection',
      );

  // edit_start_time_popup
  static String get incorrectCorrection => Intl.message(
        'Неверное значение поправки',
        name: 'I18nStart_incorrectCorrection',
      );

  static String get incorrectTime => Intl.message(
        'Неверное значение времени',
        name: 'I18nStart_incorrectTime',
      );

  // edit_racer_popup
  static String get incorrectName => Intl.message(
        'Только буквы, цифры, пробел, дефис и подчёркивание',
        name: 'I18nStart_incorrectName',
      );

  static String get emptyName =>
      Intl.message('Введите имя', name: 'I18nStart_emptyName');

  static String get incorrectNickname => Intl.message(
        'Только буквы, цифры, пробел, дефис и подчёркивание',
        name: 'I18nStart_incorrectNickname',
      );

  static String get incorrectBirthday => Intl.message(
        'Некорректная дата рождения',
        name: 'I18nStart_incorrectBirthday',
      );

  static String get incorrectAge => Intl.message(
        'Некорректный возраст/год рождения',
        name: 'I18nStart_incorrectAge',
      );

  static String get incorrectCity => Intl.message(
        'Только буквы, цифры, пробел, дефис и подчёркивание',
        name: 'I18nStart_incorrectCity',
      );

  static String get incorrectEmail =>
      Intl.message('Некорректный е-мейл', name: 'I18nStart_incorrectEmail');

  static String participantNumber(int number) => Intl.message(
        'Участник №$number',
        name: 'I18nStart_participantNumber',
        args: [number],
      );

  static String participantNumberWithName(int number, String name) =>
      Intl.message(
        '№$number, $name',
        name: 'I18nStart_participantNumberWithName',
        args: [number, name],
      );

  static String participantCategory(String category) => Intl.message(
        'Категория: $category',
        name: 'I18nStart_participantCategory',
        args: [category],
      );

  static String participantNickname(String nickname) => Intl.message(
        'Никнейм: $nickname',
        name: 'I18nStart_participantNickname',
        args: [nickname],
      );

  static String participantCity(String city) => Intl.message(
        'Город: $city',
        name: 'I18nStart_participantCity',
        args: [city],
      );

  static String participantTeam(String team) => Intl.message(
        'Команда: $team',
        name: 'I18nStart_participantTeam',
        args: [team],
      );

  static String participantYear(int year) => Intl.message(
        'Год/Возраст: $year',
        name: 'I18nStart_participantYear',
        args: [year],
      );

  static String get startTime =>
      Intl.message('Время старта', name: 'I18nStart_startTime');

  static String get startTimeAtSmartphone => Intl.message(
        'Время старта на смартфоне',
        name: 'I18nStart_startTimeAtSmartphone',
      );

  static String get shiftStartsTime =>
      Intl.message('Сдвинуть время стартов', name: 'I18nStart_shiftStartsTime');

  static String shiftStartsTimeFromNumber(
    int number,
    String time,
  ) =>
      Intl.message(
        'Сдвинуть время стартов на указанное количество минут от номера $number (время старта $time) и далее?',
        name: 'I18nStart_shiftStartsTimeFromNumber',
        args: [number, time],
      );

  static String get shiftMinutes =>
      Intl.message('Минуты', name: 'I18nStart_shiftMinutes');

  static String get incorrectShiftMinutes => Intl.message(
        'Некорректные минуты',
        name: 'I18nStart_incorrectShiftMinutes',
      );

  static String get wrongRangeShiftMinutes => Intl.message(
        'Мин -2 часа, макс 10 часов',
        name: 'I18nStart_wrongRangeShiftMinutes',
      );

  static String setDnsConfirmation(
    int number,
  ) =>
      Intl.message(
        'Участник с номером $number не стартовал?',
        name: 'I18nStart_setDnsConfirmation',
        args: [number],
      );
}

class I18nFinish {
  static String get finishTime =>
      Intl.message('Финишное время', name: 'I18nFinish_finishTime');

  static String get finishTimestamp => Intl.message(
        'Время записи на устройстве',
        name: 'I18nFinish_finishTimestamp',
      );

  static String get manualTime =>
      Intl.message('Ручная отсечка', name: 'I18nFinish_manualTime');

  static String get automaticTime =>
      Intl.message('Автоматическая отсечка', name: 'I18nFinish_automaticTime');

  static String get hiddenCutoff =>
      Intl.message('Скрытая', name: 'I18nFinish_hiddenCutoff');
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

  static String get module =>
      Intl.message('Модуль', name: 'I18nModuleSettings_module');

  static String get buzzer =>
      Intl.message('Buzzer', name: 'I18nModuleSettings_buzzer');

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

  static String noteFrequency(String note, int frequency) => Intl.message(
        'Нота $note, $frequencyГц',
        name: 'I18nModuleSettings_noteFrequency',
        args: [note, frequency],
      );

  static String get lora =>
      Intl.message('LoRa', name: 'I18nModuleSettings_lora');

  static String get frequency =>
      Intl.message('Частота', name: 'I18nModuleSettings_frequency');

  static String frequencyHz(int frequency) => Intl.message(
        '$frequencyГц',
        name: 'I18nModuleSettings_frequencyHz',
        args: [frequency],
      );

  static String get txPower =>
      Intl.message('TX Power', name: 'I18nModuleSettings_txPower');

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

  static String get syncWord =>
      Intl.message('Sync Word', name: 'I18nModuleSettings_syncWord');

  static String get crc => Intl.message('CRC', name: 'I18nModuleSettings_crc');

  static String get screen =>
      Intl.message('Экран', name: 'I18nModuleSettings_screen');

  static String get tft => Intl.message('TFT', name: 'I18nModuleSettings_tft');

  static String get sleepMode =>
      Intl.message('Спящий режим', name: 'I18nModuleSettings_sleepMode');

  static String sleepModeSeconds(int seconds) => Intl.plural(
        seconds,
        one: '$seconds секунда',
        few: '$seconds секунды',
        other: 'секунд',
        name: 'I18nModuleSettings_sleepModeSeconds',
        args: [seconds],
      );

  static String get turnOnAtEvent => Intl.message(
        'Включать после события',
        name: 'I18nModuleSettings_turnOnAtEvent',
      );

  static String get bluetooth =>
      Intl.message('Bluetooth', name: 'I18nModuleSettings_bluetooth');

  static String get bluetoothModuleName => Intl.message(
        'Имя модуля',
        name: 'I18nModuleSettings_bluetoothModuleName',
      );

  static String get bluetoothModuleNumber => Intl.message(
        'Номер модуля',
        name: 'I18nModuleSettings_bluetoothModuleNumber',
      );

  static String get bluetoothNumber =>
      Intl.message('Номер', name: 'I18nModuleSettings_bluetoothNumber');

  static String get enterBluetoothModuleNumber => Intl.message(
        'Введите номер модуля',
        name: 'I18nModuleSettings_enterBluetoothModuleNumber',
      );

  static String get wifi =>
      Intl.message('WiFi', name: 'I18nModuleSettings_wifi');

  static String get wifiNetwork =>
      Intl.message('Сеть', name: 'I18nModuleSettings_wifiNetwork');

  static String get enterWifiSsid => Intl.message(
        'Введите имя WiFi сети',
        name: 'I18nModuleSettings_enterWifiSsid',
      );

  static String enterWifiPassword(String ssid) => Intl.message(
        'Введите пароль WiFi сети $ssid',
        name: 'I18nModuleSettings_enterWifiPassword',
        args: [ssid],
      );

  static String get password =>
      Intl.message('Пароль', name: 'I18nModuleSettings_password');

  static String get vcc => Intl.message('VCC', name: 'I18nModuleSettings_vcc');

  static String get resistor1 =>
      Intl.message('R1', name: 'I18nModuleSettings_resistor1');

  static String get resistor2 =>
      Intl.message('R2', name: 'I18nModuleSettings_resistor2');

  static String get ohm => Intl.message('Ом', name: 'I18nModuleSettings_ohm');

  static String resistorOhm(int ohm) => Intl.message(
        '$ohm Ом',
        name: 'I18nModuleSettings_resistorOhm',
        args: [ohm],
      );

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

  static String get mv => Intl.message('мВ', name: 'I18nModuleSettings_mv');

  static String get enterCurrentVoltage => Intl.message(
        'Введите текущее значение напряжения на батареях',
        name: 'I18nModuleSettings_enterCurrentVoltage',
      );

  static String get brightness =>
      Intl.message('Яркость', name: 'I18nModuleSettings_brightness');

  static String get setBrightness => Intl.message(
        'Установите яркость панели',
        name: 'I18nModuleSettings_setBrightness',
      );

  static String brightnessInt(int brightness) => Intl.message(
        'Яркость $brightness',
        name: 'I18nModuleSettings_brightnessInt',
        args: [brightness],
      );

  static String unknownModuleType(String type) => Intl.message(
        'Неизвестный тип модуля: $type',
        name: 'I18nModuleSettings_unknownModuleType',
        args: [type],
      );
}

class I18nDatabase {
  static String get category =>
      Intl.message('Категория', name: 'I18nDatabase_category');

  static String get name => Intl.message('Имя', name: 'I18nDatabase_name');

  static String get nickname =>
      Intl.message('Никнейм', name: 'I18nDatabase_nickname');

  static String get birthday =>
      Intl.message('Дата/Год рождения', name: 'I18nDatabase_birthday');

  static String get team => Intl.message('Команда', name: 'I18nDatabase_team');

  static String get city => Intl.message('Город', name: 'I18nDatabase_city');

  static String get email =>
      Intl.message('Электронная почта', name: 'I18nDatabase_email');

  static String get phone =>
      Intl.message('Телефон', name: 'I18nDatabase_phone');

  static String get comment =>
      Intl.message('Комментарий', name: 'I18nDatabase_comment');

  static String get races =>
      Intl.message('Соревнования', name: 'I18nDatabase_races');

  static String get addRace =>
      Intl.message('Создать соревнование', name: 'I18nDatabase_addRace');

  static String get editRace =>
      Intl.message('Редактирование', name: 'I18nDatabase_editRace');

  static String get raceName =>
      Intl.message('Название', name: 'I18nDatabase_raceName');

  static String get enterRaceName => Intl.message(
        'Введите название соревнования',
        name: 'I18nDatabase_enterRaceName',
      );

  static String get raceDates =>
      Intl.message('Даты проведения', name: 'I18nDatabase_raceDates');

  static String get raceUrl =>
      Intl.message('Сайт', name: 'I18nDatabase_raceUrl');

  static String get incorrectRaceUrl => Intl.message(
        'Некорректная ссылка',
        name: 'I18nDatabase_incorrectRaceUrl',
      );

  static String get raceLocation =>
      Intl.message('Место проведения', name: 'I18nDatabase_raceLocation');

  static String get raceDescription =>
      Intl.message('Описание', name: 'I18nDatabase_raceDescription');

  static String get addStage =>
      Intl.message('Создать спецучасток', name: 'I18nDatabase_addStage');

  static String get stageName =>
      Intl.message('Название спецучастка', name: 'I18nDatabase_stageName');

  static String get enterStageName => Intl.message(
        'Введите название спецучастка',
        name: 'I18nDatabase_enterStageName',
      );

  static String get stageDescription =>
      Intl.message('Описание', name: 'I18nDatabase_stageDescription');

  static String get isActiveStage =>
      Intl.message('Активный', name: 'I18nDatabase_isActiveStage');

  static String deleteRace(String raceName) => Intl.message(
        'Вы уверены, что хотите удалить гонку "$raceName"?',
        name: 'I18nDatabase_deleteRace',
        args: [raceName],
      );

  static String deleteStage(String stageName) => Intl.message(
        'Вы уверены, что хотите удалить этап "$stageName"?',
        name: 'I18nDatabase_deleteStage',
        args: [stageName],
      );

  static String get trail => Intl.message('Трейл', name: 'I18nDatabase_trail');

  static String get trails =>
      Intl.message('Трейлы', name: 'I18nDatabase_trails');

  static String get trailName =>
      Intl.message('Название', name: 'I18nDatabase_trailName');

  static String get enterTrailName => Intl.message(
        'Введите название трейла',
        name: 'I18nDatabase_enterTrailName',
      );

  static String get trailDistance =>
      Intl.message('Длина', name: 'I18nDatabase_trailDistance');

  static String get incorrectTrailDistance => Intl.message(
        'Неверная длина',
        name: 'I18nDatabase_incorrectTrailDistance',
      );

  static String get trailElevation =>
      Intl.message('Перепад высот', name: 'I18nDatabase_trailElevation');

  static String get incorrectTrailElevation => Intl.message(
        'Неверный перепад высот',
        name: 'I18nDatabase_incorrectTrailElevation',
      );

  static String get trailGpxTrack =>
      Intl.message('Трек', name: 'I18nDatabase_trailGpxTrack');

  static String get trailUrl =>
      Intl.message('Ссылка', name: 'I18nDatabase_trailUrl');

  static String get incorrectTrailUrl => Intl.message(
        'Некорректная ссылка',
        name: 'I18nDatabase_incorrectTrailUrl',
      );

  static String get trailDescription =>
      Intl.message('Описание', name: 'I18nDatabase_trailDescription');

  static String get trailIsActive =>
      Intl.message('Активен', name: 'I18nDatabase_trailIsActive');

  static String get searchTrail =>
      Intl.message('Найти...', name: 'I18nDatabase_searchTrail');

  static String uploadLimit(double limit) {
    return Intl.message(
      'Максимальный размер $limit Мб',
      name: 'I18nDatabase_uploadLimit',
      args: [limit],
    );
  }

  static String deleteTrail(String trailName) => Intl.message(
        'Вы уверены, что хотите удалить трейл "$trailName"?',
        name: 'I18nDatabase_deleteTrail',
        args: [trailName],
      );

  static String get newCategory =>
      Intl.message('Новая категория?', name: 'I18nDatabase_newCategory');

  static String get newRider =>
      Intl.message('Новый гонщик?', name: 'I18nDatabase_newRider');

  static String get editRider =>
      Intl.message('Редактирование гонщика', name: 'I18nDatabase_editRider');
}

class I18nNtp {
  static String get ntpOffset =>
      Intl.message('NTP offset', name: 'I18nNtp_ntpOffset');

  static String get sync =>
      Intl.message('Нажмите для синхронизации', name: 'I18nNtp_sync');

  static String get syncing =>
      Intl.message('Синхронизация...', name: 'I18nNtp_syncing');

  static String get syncError =>
      Intl.message('Ошибка синхронизации', name: 'I18nNtp_syncError');

  static String offsetInMilliseconds(int offset) => Intl.plural(
        offset,
        one: 'Смещение $offset миллисекунда',
        few: 'Смещение $offset миллисекунды',
        other: 'Смещение $offset миллисекунд',
        name: 'I18nNtp_offsetInMilliseconds',
        args: [offset],
      );
}

class I18nAbout {
  static String version(String version) => Intl.message(
        'Версия: $version',
        name: 'I18nAbout_version',
        args: [version],
      );

  static String get copyright =>
      Intl.message('© 2021-2025 Andrey Syutkin', name: 'I18nAbout_copyright');

  static String get about => Intl.message(
        '''
Мобильное приложение к системе электронного замера времени на спортивных соревнованиях по даунхилу и эндуро
                                  
Приложение делается в свободное от работы время, используйте на свой страх и риск.
                                  
Замечания и предложения можно оправлять на почту: ''',
        name: 'I18nAbout_about',
      );

  static String get emailSubject => Intl.message(
        'Entime замечания/предложения',
        name: 'I18nAbout_emailSubject',
      );

  static String emailSendError(String emailLaunchUri) => Intl.message(
        'Could not launch $emailLaunchUri',
        name: 'I18nAbout_emailSendError',
        args: [emailLaunchUri],
      );

  static String get changelog => Intl.message(
        'Список изменений',
        name: 'I18nAbout_changelog',
      );
}
