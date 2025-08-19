// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m29(emailLaunchUri) => "Could not launch ${emailLaunchUri}";

  static String m30(version) => "Версия: ${version}";

  static String m31(raceName) =>
      "Вы уверены, что хотите удалить гонку \"${raceName}\"?";

  static String m32(stageName) =>
      "Вы уверены, что хотите удалить этап \"${stageName}\"?";

  static String m33(trailName) =>
      "Вы уверены, что хотите удалить трейл \"${trailName}\"?";

  static String m34(limit) => "Максимальный размер ${limit} Мб";

  static String m0(version) => "v${version}";

  static String m1(time, prevNumber, currentNumber) =>
      "Стартовое время ${time} уже присвоено номеру ${prevNumber}. Вы уверены что хотите установить одинаковое стартовое время для номеров ${currentNumber} и ${prevNumber}?\n";

  static String m2(cancelButtonLabel) =>
      "Ошибка при добавлении участника! Для продолжения нажмите \"${cancelButtonLabel}\"\n";

  static String m3(number, prevCorrection, correction) =>
      "Участнику под номером ${number} уже установлена стартовая поправка ${prevCorrection}. Обновить её на ${correction}?";

  static String m4(number, automaticCorrection) =>
      "У номера ${number} уже проставлена автоматическая стартовая отсечка: ${automaticCorrection}. Установить новое стартовое время и удалить предыдущее значение?\n";

  static String m5(version) => "Доступна новая версия ${version}";

  static String m6(number, manualCorrection) =>
      "У номера ${number} уже проставлена ручная стартовая отсечка: ${manualCorrection}. Установить новое стартовое время и удалить предыдущее значение?\n";

  static String m7(brightness) => "Яркость ${brightness}";

  static String m8(frequency) => "${frequency}Гц";

  static String m9(note, frequency) => "Нота ${note}, ${frequency}Гц";

  static String m10(ohm) => "${ohm} Ом";

  static String m11(seconds) =>
      "${Intl.plural(seconds, one: '${seconds} секунда', few: '${seconds} секунды', other: 'секунд')}";

  static String m12(type) => "Неизвестный тип модуля: ${type}";

  static String m13(offset) =>
      "${Intl.plural(offset, one: 'Смещение ${offset} миллисекунда', few: 'Смещение ${offset} миллисекунды', other: 'Смещение ${offset} миллисекунд')}";

  static String m14(number) => "Финишировал номер ${number}";

  static String m15(raceName, stageName) =>
      "Результаты финишей гонки ${raceName}, этап ${stageName}";

  static String m16(raceName, stageName) =>
      "Результаты стартов гонки ${raceName}, этап ${stageName}";

  static String m17(number) =>
      "Участнику с номером ${number} уже присвоено финишное время. Установить новое значение?";

  static String m18(milliseconds) => "${milliseconds}мс";

  static String m19(size) => "${size}px";

  static String m35(seconds) => "${seconds}с";

  static String m20(category) => "Категория: ${category}";

  static String m21(city) => "Город: ${city}";

  static String m22(nickname) => "Никнейм: ${nickname}";

  static String m23(number) => "Участник №${number}";

  static String m24(number, name) => "№${number}, ${name}";

  static String m25(team) => "Команда: ${team}";

  static String m26(year) => "Год/Возраст: ${year}";

  static String m36(automaticCorrection, timestampCorrection) =>
      "Вы уверены что хотите заменить автоматическую поправку (${automaticCorrection}) на поправку относительно времени смартфона (${timestampCorrection})?";

  static String m37(number) => "Участник с номером ${number} не стартовал?";

  static String m38(number, time) =>
      "Сдвинуть время стартов на указанное количество минут от номера ${number} (время старта ${time}) и далее?";

  static String m27(current, total) => "${current} из ${total}";

  static String m28(version) => "Обновить до ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "I18nAbout_about": MessageLookupByLibrary.simpleMessage(
      "Мобильное приложение к системе электронного замера времени на спортивных соревнованиях по даунхилу и эндуро\n                                  \nПриложение делается в свободное от работы время, используйте на свой страх и риск.\n                                  \nЗамечания и предложения можно оправлять на почту: ",
    ),
    "I18nAbout_changelog": MessageLookupByLibrary.simpleMessage(
      "Список изменений",
    ),
    "I18nAbout_copyright": MessageLookupByLibrary.simpleMessage(
      "© 2021-2025 Andrey Syutkin",
    ),
    "I18nAbout_emailSendError": m29,
    "I18nAbout_emailSubject": MessageLookupByLibrary.simpleMessage(
      "Entime замечания/предложения",
    ),
    "I18nAbout_version": m30,
    "I18nBluetooth_bluetoothNotAvailable": MessageLookupByLibrary.simpleMessage(
      "Bluetooth недоступен на устройстве",
    ),
    "I18nBluetooth_dbm": MessageLookupByLibrary.simpleMessage("дБм"),
    "I18nBluetooth_selectDevice": MessageLookupByLibrary.simpleMessage(
      "Выберите устройство",
    ),
    "I18nBluetooth_unknownDevice": MessageLookupByLibrary.simpleMessage(
      "Неизвестное устройство",
    ),
    "I18nCore_confirmation": MessageLookupByLibrary.simpleMessage(
      "Подтверждение",
    ),
    "I18nCore_correction": MessageLookupByLibrary.simpleMessage("Поправка"),
    "I18nCore_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
    "I18nCore_details": MessageLookupByLibrary.simpleMessage("Подробнее"),
    "I18nCore_dnf": MessageLookupByLibrary.simpleMessage("DNF"),
    "I18nCore_dns": MessageLookupByLibrary.simpleMessage("DNS"),
    "I18nCore_dsq": MessageLookupByLibrary.simpleMessage("DSQ"),
    "I18nCore_edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
    "I18nCore_no": MessageLookupByLibrary.simpleMessage("Нет"),
    "I18nCore_share": MessageLookupByLibrary.simpleMessage("Поделиться"),
    "I18nCore_warning": MessageLookupByLibrary.simpleMessage("Предупреждение"),
    "I18nCore_yes": MessageLookupByLibrary.simpleMessage("Да"),
    "I18nCountdown_countdown": MessageLookupByLibrary.simpleMessage(
      "Обратный отсчёт",
    ),
    "I18nDatabase_addRace": MessageLookupByLibrary.simpleMessage(
      "Создать соревнование",
    ),
    "I18nDatabase_addStage": MessageLookupByLibrary.simpleMessage(
      "Создать спецучасток",
    ),
    "I18nDatabase_birthday": MessageLookupByLibrary.simpleMessage(
      "Дата/Год рождения",
    ),
    "I18nDatabase_category": MessageLookupByLibrary.simpleMessage("Категория"),
    "I18nDatabase_city": MessageLookupByLibrary.simpleMessage("Город"),
    "I18nDatabase_comment": MessageLookupByLibrary.simpleMessage("Комментарий"),
    "I18nDatabase_deleteRace": m31,
    "I18nDatabase_deleteStage": m32,
    "I18nDatabase_deleteTrail": m33,
    "I18nDatabase_editRace": MessageLookupByLibrary.simpleMessage(
      "Редактирование",
    ),
    "I18nDatabase_editRider": MessageLookupByLibrary.simpleMessage(
      "Редактирование гонщика",
    ),
    "I18nDatabase_email": MessageLookupByLibrary.simpleMessage(
      "Электронная почта",
    ),
    "I18nDatabase_enterRaceName": MessageLookupByLibrary.simpleMessage(
      "Введите название соревнования",
    ),
    "I18nDatabase_enterStageName": MessageLookupByLibrary.simpleMessage(
      "Введите название спецучастка",
    ),
    "I18nDatabase_enterTrailName": MessageLookupByLibrary.simpleMessage(
      "Введите название трейла",
    ),
    "I18nDatabase_incorrectRaceUrl": MessageLookupByLibrary.simpleMessage(
      "Некорректная ссылка",
    ),
    "I18nDatabase_incorrectTrailDistance": MessageLookupByLibrary.simpleMessage(
      "Неверная длина",
    ),
    "I18nDatabase_incorrectTrailElevation":
        MessageLookupByLibrary.simpleMessage("Неверный перепад высот"),
    "I18nDatabase_incorrectTrailUrl": MessageLookupByLibrary.simpleMessage(
      "Некорректная ссылка",
    ),
    "I18nDatabase_isActiveStage": MessageLookupByLibrary.simpleMessage(
      "Активный",
    ),
    "I18nDatabase_name": MessageLookupByLibrary.simpleMessage("Имя"),
    "I18nDatabase_newCategory": MessageLookupByLibrary.simpleMessage(
      "Новая категория?",
    ),
    "I18nDatabase_newRider": MessageLookupByLibrary.simpleMessage(
      "Новый гонщик?",
    ),
    "I18nDatabase_nickname": MessageLookupByLibrary.simpleMessage("Никнейм"),
    "I18nDatabase_phone": MessageLookupByLibrary.simpleMessage("Телефон"),
    "I18nDatabase_raceDates": MessageLookupByLibrary.simpleMessage(
      "Даты проведения",
    ),
    "I18nDatabase_raceDescription": MessageLookupByLibrary.simpleMessage(
      "Описание",
    ),
    "I18nDatabase_raceLocation": MessageLookupByLibrary.simpleMessage(
      "Место проведения",
    ),
    "I18nDatabase_raceName": MessageLookupByLibrary.simpleMessage("Название"),
    "I18nDatabase_raceUrl": MessageLookupByLibrary.simpleMessage("Сайт"),
    "I18nDatabase_races": MessageLookupByLibrary.simpleMessage("Соревнования"),
    "I18nDatabase_searchTrail": MessageLookupByLibrary.simpleMessage(
      "Найти...",
    ),
    "I18nDatabase_stageDescription": MessageLookupByLibrary.simpleMessage(
      "Описание",
    ),
    "I18nDatabase_stageName": MessageLookupByLibrary.simpleMessage(
      "Название спецучастка",
    ),
    "I18nDatabase_team": MessageLookupByLibrary.simpleMessage("Команда"),
    "I18nDatabase_trail": MessageLookupByLibrary.simpleMessage("Трейл"),
    "I18nDatabase_trailDescription": MessageLookupByLibrary.simpleMessage(
      "Описание",
    ),
    "I18nDatabase_trailDistance": MessageLookupByLibrary.simpleMessage("Длина"),
    "I18nDatabase_trailElevation": MessageLookupByLibrary.simpleMessage(
      "Перепад высот",
    ),
    "I18nDatabase_trailGpxTrack": MessageLookupByLibrary.simpleMessage("Трек"),
    "I18nDatabase_trailIsActive": MessageLookupByLibrary.simpleMessage(
      "Активен",
    ),
    "I18nDatabase_trailName": MessageLookupByLibrary.simpleMessage("Название"),
    "I18nDatabase_trailUrl": MessageLookupByLibrary.simpleMessage("Ссылка"),
    "I18nDatabase_trails": MessageLookupByLibrary.simpleMessage("Трейлы"),
    "I18nDatabase_uploadLimit": m34,
    "I18nDrawer_about": MessageLookupByLibrary.simpleMessage("О программе"),
    "I18nDrawer_help": MessageLookupByLibrary.simpleMessage("Помощь"),
    "I18nDrawer_settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "I18nDrawer_version": m0,
    "I18nFinish_automaticTime": MessageLookupByLibrary.simpleMessage(
      "Автоматическая отсечка",
    ),
    "I18nFinish_finishTime": MessageLookupByLibrary.simpleMessage(
      "Финишное время",
    ),
    "I18nFinish_finishTimestamp": MessageLookupByLibrary.simpleMessage(
      "Время записи на устройстве",
    ),
    "I18nFinish_hiddenCutoff": MessageLookupByLibrary.simpleMessage("Скрытая"),
    "I18nFinish_manualTime": MessageLookupByLibrary.simpleMessage(
      "Ручная отсечка",
    ),
    "I18nHelp_manual": MessageLookupByLibrary.simpleMessage("Руководство"),
    "I18nHelp_manualMd": MessageLookupByLibrary.simpleMessage(
      "# Entime mobile\n\nПеред началом работы можно изменить настройки приложения.\n\n![](resource:assets/1.png)\n\n - Включить звук обратного отсчёта\n - Включить и настроить голосовые оповещения\n - Отключить выключение эрана во время работы приложения.\n\n![](resource:assets/9.png)\n![](resource:assets/11.png)\n\nДля непосредственной работы нужно выбрать файл стартового протокола.\n\n![](resource:assets/2.png)\n\nЗатем bluetooth модуль, который предварительно должен быть сопряжён с мобильным устройством.\n\n![](resource:assets/4.png)\n\nПосле выбора bluetooth модуля, нужно нажать на любой из появившихся bluetooth значков, для соединения с модулем.\n\n![](resource:assets/5.png)\n\nПосле установки соединения, можно ~~изменить~~ пока только посмотреть настройки модуля.\n\n![](resource:assets/8.png)\n\n\nДля работы на старте переходим во вкладку \"Start\", в ней отображается стартовый протокол.\n\nВ первом столбце номер участника, во втором - плановое стартовое время, в третьем - реальное стартовое время (поступает от стартового модуля), в четвёртом - поправка в миллисекундах относительно планового времени старта.\n\n| Номер | Время старта | Фактическое время старта | Поправка |\n|-------|--------------|--------------------------|----------|\n\nЕсли участник не стартовал, выставить DNS можно свайпом в левую сторону на строке с нужным номером.\n\nПосле окончания стартов передать результаты можно нажав стандартную кнопку **share** вверху.\n\n![](resource:assets/12.png)\n\nПри нажатии на синий плюс внизу, можно добавить нового участника, либо изменить время старта уже существующего.\n\nДля этого в открывшемся диалоге вводим номер и новое стартовое время.\n\n![](resource:assets/20.png)\n\nДля работы на финише переходим во вкладку \"Finish\", в ней отображаются финишные времена, введённые либо вручную, при нажатии на иконку руки внизу экрана, либо полученные от финишного модуля. Значок слева поможет определить, как именно было получено значение времени финиша.\n\nВнизу отображаются номера гонщиков, которые сейчас должны быть на трассе.\n\n![](resource:assets/13.png)\n\nДля присвоения номеру времени финиша, либо перетащите номер снизу на нужное время, либо выставите номер вручную из диалога, который появится при нажатии на любое значение времени в основной таблице.\n\n![](resource:assets/15.png)\n\nОтработанные, либо ненужные времена финиша, можно либо скрывать поодиночке свайпом в любую сторону,\n\n![](resource:assets/17.png)\n\nлибо сразу все из всплывающего меню, которое появляется при долгом нажатии на любом значении времени.\n\n![](resource:assets/14.png)\n\nПосле окончания заездов передать результаты финиша можно нажав стандартную кнопку **share** вверху.\n  ",
    ),
    "I18nHome_addRacer": MessageLookupByLibrary.simpleMessage(
      "Добавить участника",
    ),
    "I18nHome_bluetooth": MessageLookupByLibrary.simpleMessage("Bluetooth"),
    "I18nHome_countdown": MessageLookupByLibrary.simpleMessage(
      "Обратный отсчёт",
    ),
    "I18nHome_countdownPage": MessageLookupByLibrary.simpleMessage(
      "Страница с обратным отсчётом",
    ),
    "I18nHome_equalStartTime": m1,
    "I18nHome_errorAddParticipant": m2,
    "I18nHome_fab": MessageLookupByLibrary.simpleMessage("FAB"),
    "I18nHome_finish": MessageLookupByLibrary.simpleMessage("Финиш"),
    "I18nHome_home": MessageLookupByLibrary.simpleMessage("Начало"),
    "I18nHome_importStagesCsv": MessageLookupByLibrary.simpleMessage(
      "Импорт этапов",
    ),
    "I18nHome_importStartProtocolCsv": MessageLookupByLibrary.simpleMessage(
      "Импорт стартового протокола",
    ),
    "I18nHome_selectStartProtocol": MessageLookupByLibrary.simpleMessage(
      "Стартовый протокол",
    ),
    "I18nHome_setDefaults": MessageLookupByLibrary.simpleMessage(
      "По умолчанию",
    ),
    "I18nHome_showColorFinishDifference": MessageLookupByLibrary.simpleMessage(
      "Цветовая индикация разницы",
    ),
    "I18nHome_showDNF": MessageLookupByLibrary.simpleMessage("DNF"),
    "I18nHome_showDNS": MessageLookupByLibrary.simpleMessage("DNS"),
    "I18nHome_showDSQ": MessageLookupByLibrary.simpleMessage("DSQ"),
    "I18nHome_showFinishDifference": MessageLookupByLibrary.simpleMessage(
      "Разница во времени",
    ),
    "I18nHome_showHidden": MessageLookupByLibrary.simpleMessage("Скрытые"),
    "I18nHome_showManual": MessageLookupByLibrary.simpleMessage(
      "Ручная отсечка",
    ),
    "I18nHome_showNumbers": MessageLookupByLibrary.simpleMessage("С номерами"),
    "I18nHome_start": MessageLookupByLibrary.simpleMessage("Старт"),
    "I18nHome_update": MessageLookupByLibrary.simpleMessage("Обновить"),
    "I18nHome_updateAutomaticCorrection": m3,
    "I18nHome_updateAutomaticStartCorrection": m4,
    "I18nHome_updateAvailable": m5,
    "I18nHome_updateManualStartCorrection": m6,
    "I18nInit_bluetoothModule": MessageLookupByLibrary.simpleMessage(
      "Bluetooth модуль",
    ),
    "I18nInit_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
    "I18nInit_importFromCsv": MessageLookupByLibrary.simpleMessage(
      "Импорт протокола из csv",
    ),
    "I18nInit_noData": MessageLookupByLibrary.simpleMessage("Нет данных"),
    "I18nInit_pressToSelect": MessageLookupByLibrary.simpleMessage(
      "Нажмите чтобы выбрать",
    ),
    "I18nInit_riders": MessageLookupByLibrary.simpleMessage("Гонщики"),
    "I18nInit_selectFile": MessageLookupByLibrary.simpleMessage(
      "Выберите файл",
    ),
    "I18nInit_selectRace": MessageLookupByLibrary.simpleMessage(
      "Выберите соревнование",
    ),
    "I18nInit_selectStage": MessageLookupByLibrary.simpleMessage(
      "Выберите спецучасток",
    ),
    "I18nInit_share": MessageLookupByLibrary.simpleMessage("Поделиться"),
    "I18nInit_trails": MessageLookupByLibrary.simpleMessage("Трейлы"),
    "I18nLog_bluetoothInformation": MessageLookupByLibrary.simpleMessage(
      "Информация Bluetooth",
    ),
    "I18nModuleSettings_awaitingSettings": MessageLookupByLibrary.simpleMessage(
      "Ждём настройки...",
    ),
    "I18nModuleSettings_bluetooth": MessageLookupByLibrary.simpleMessage(
      "Bluetooth",
    ),
    "I18nModuleSettings_bluetoothModuleName":
        MessageLookupByLibrary.simpleMessage("Имя модуля"),
    "I18nModuleSettings_bluetoothModuleNumber":
        MessageLookupByLibrary.simpleMessage("Номер модуля"),
    "I18nModuleSettings_bluetoothNumber": MessageLookupByLibrary.simpleMessage(
      "Номер",
    ),
    "I18nModuleSettings_brightness": MessageLookupByLibrary.simpleMessage(
      "Яркость",
    ),
    "I18nModuleSettings_brightnessInt": m7,
    "I18nModuleSettings_buzzer": MessageLookupByLibrary.simpleMessage("Buzzer"),
    "I18nModuleSettings_codingRateDenominator":
        MessageLookupByLibrary.simpleMessage("Coding Rate Denominator"),
    "I18nModuleSettings_crc": MessageLookupByLibrary.simpleMessage("CRC"),
    "I18nModuleSettings_enterBluetoothModuleNumber":
        MessageLookupByLibrary.simpleMessage("Введите номер модуля"),
    "I18nModuleSettings_enterCurrentVoltage":
        MessageLookupByLibrary.simpleMessage(
          "Введите текущее значение напряжения на батареях",
        ),
    "I18nModuleSettings_enterMeasuredVoltage":
        MessageLookupByLibrary.simpleMessage("Ввод измеренного напряжения"),
    "I18nModuleSettings_enterResistor1": MessageLookupByLibrary.simpleMessage(
      "Введите значение резистора R1",
    ),
    "I18nModuleSettings_enterResistor2": MessageLookupByLibrary.simpleMessage(
      "Введите значение резистора R2",
    ),
    "I18nModuleSettings_enterWifiCredentials":
        MessageLookupByLibrary.simpleMessage("Введите данные сети"),
    "I18nModuleSettings_errorLoadSettings":
        MessageLookupByLibrary.simpleMessage("Ошибка загрузки настроек!"),
    "I18nModuleSettings_frequency": MessageLookupByLibrary.simpleMessage(
      "Частота",
    ),
    "I18nModuleSettings_frequencyHz": m8,
    "I18nModuleSettings_longFrequency": MessageLookupByLibrary.simpleMessage(
      "Частота длинных гудков",
    ),
    "I18nModuleSettings_lora": MessageLookupByLibrary.simpleMessage("LoRa"),
    "I18nModuleSettings_module": MessageLookupByLibrary.simpleMessage("Модуль"),
    "I18nModuleSettings_moduleSettings": MessageLookupByLibrary.simpleMessage(
      "Настройки модуля",
    ),
    "I18nModuleSettings_mv": MessageLookupByLibrary.simpleMessage("мВ"),
    "I18nModuleSettings_noteFrequency": m9,
    "I18nModuleSettings_ohm": MessageLookupByLibrary.simpleMessage("Ом"),
    "I18nModuleSettings_preambleLength": MessageLookupByLibrary.simpleMessage(
      "Preamble Length",
    ),
    "I18nModuleSettings_resistor1": MessageLookupByLibrary.simpleMessage("R1"),
    "I18nModuleSettings_resistor2": MessageLookupByLibrary.simpleMessage("R2"),
    "I18nModuleSettings_resistorOhm": m10,
    "I18nModuleSettings_saveSettingsToModule":
        MessageLookupByLibrary.simpleMessage(
          "Записать новые настройки в модуль?",
        ),
    "I18nModuleSettings_screen": MessageLookupByLibrary.simpleMessage("Экран"),
    "I18nModuleSettings_selectLongFrequency":
        MessageLookupByLibrary.simpleMessage("Выберите частоту длинного гудка"),
    "I18nModuleSettings_selectShortFrequency":
        MessageLookupByLibrary.simpleMessage(
          "Выберите частоту короткого гудка",
        ),
    "I18nModuleSettings_setBrightness": MessageLookupByLibrary.simpleMessage(
      "Установите яркость панели",
    ),
    "I18nModuleSettings_shortFrequency": MessageLookupByLibrary.simpleMessage(
      "Частота коротких гудков",
    ),
    "I18nModuleSettings_signalBandwidth": MessageLookupByLibrary.simpleMessage(
      "Signal Bandwidth",
    ),
    "I18nModuleSettings_sleepMode": MessageLookupByLibrary.simpleMessage(
      "Спящий режим",
    ),
    "I18nModuleSettings_sleepModeSeconds": m11,
    "I18nModuleSettings_spreadingFactor": MessageLookupByLibrary.simpleMessage(
      "Spreading Factor",
    ),
    "I18nModuleSettings_syncWord": MessageLookupByLibrary.simpleMessage(
      "Sync Word",
    ),
    "I18nModuleSettings_tft": MessageLookupByLibrary.simpleMessage("TFT"),
    "I18nModuleSettings_turnOnAtEvent": MessageLookupByLibrary.simpleMessage(
      "Включать после события",
    ),
    "I18nModuleSettings_txPower": MessageLookupByLibrary.simpleMessage(
      "TX Power",
    ),
    "I18nModuleSettings_unknownModuleType": m12,
    "I18nModuleSettings_vcc": MessageLookupByLibrary.simpleMessage("VCC"),
    "I18nModuleSettings_wifi": MessageLookupByLibrary.simpleMessage("WiFi"),
    "I18nModuleSettings_wifiNetwork": MessageLookupByLibrary.simpleMessage(
      "Сеть",
    ),
    "I18nModuleSettings_wifiPassword": MessageLookupByLibrary.simpleMessage(
      "Пароль",
    ),
    "I18nModuleSettings_wifiSsid": MessageLookupByLibrary.simpleMessage(
      "Имя сети",
    ),
    "I18nNtp_ntpOffset": MessageLookupByLibrary.simpleMessage("NTP offset"),
    "I18nNtp_offsetInMilliseconds": m13,
    "I18nNtp_sync": MessageLookupByLibrary.simpleMessage(
      "Нажмите для синхронизации",
    ),
    "I18nNtp_syncError": MessageLookupByLibrary.simpleMessage(
      "Ошибка синхронизации",
    ),
    "I18nNtp_syncing": MessageLookupByLibrary.simpleMessage("Синхронизация..."),
    "I18nProtocol_clearNumber": MessageLookupByLibrary.simpleMessage(
      "Убрать номер",
    ),
    "I18nProtocol_didNotFinish": MessageLookupByLibrary.simpleMessage(
      "Не финишировал",
    ),
    "I18nProtocol_didNotStart": MessageLookupByLibrary.simpleMessage(
      "Не стартовал",
    ),
    "I18nProtocol_difference": MessageLookupByLibrary.simpleMessage("Разница"),
    "I18nProtocol_enterFinishNumber": MessageLookupByLibrary.simpleMessage(
      "Введите номер финишировавшего участника",
    ),
    "I18nProtocol_finishNumber": m14,
    "I18nProtocol_finishTimeCutoff": MessageLookupByLibrary.simpleMessage(
      "Финишная отсечка",
    ),
    "I18nProtocol_hide": MessageLookupByLibrary.simpleMessage("Скрыть"),
    "I18nProtocol_hideAll": MessageLookupByLibrary.simpleMessage("Скрыть всё"),
    "I18nProtocol_incorrectNumber": MessageLookupByLibrary.simpleMessage(
      "Неверный номер",
    ),
    "I18nProtocol_number": MessageLookupByLibrary.simpleMessage("Номер"),
    "I18nProtocol_shareFinishResults": m15,
    "I18nProtocol_shareStartResults": m16,
    "I18nProtocol_startTimeCutoff": MessageLookupByLibrary.simpleMessage(
      "Стартовая отсечка",
    ),
    "I18nProtocol_time": MessageLookupByLibrary.simpleMessage("Время"),
    "I18nProtocol_type": MessageLookupByLibrary.simpleMessage("Тип"),
    "I18nProtocol_updateNumber": m17,
    "I18nProtocol_warning": MessageLookupByLibrary.simpleMessage(
      "Предупреждение",
    ),
    "I18nSettings_autoSubstitution": MessageLookupByLibrary.simpleMessage(
      "Автоподстановка номеров",
    ),
    "I18nSettings_autoSubstitutionDelay": MessageLookupByLibrary.simpleMessage(
      "Задержка перед автоматическим подставлением новых номеров",
    ),
    "I18nSettings_brightness": MessageLookupByLibrary.simpleMessage(
      "Светлая тема",
    ),
    "I18nSettings_checkUpdateAtStartup": MessageLookupByLibrary.simpleMessage(
      "Проверка обновлений при старте",
    ),
    "I18nSettings_countdown": MessageLookupByLibrary.simpleMessage(
      "Обратный отсчёт",
    ),
    "I18nSettings_countdownAtStart": MessageLookupByLibrary.simpleMessage(
      "Обратный отсчёт",
    ),
    "I18nSettings_countdownAtStartSize": MessageLookupByLibrary.simpleMessage(
      "Размер обратного отсчёта",
    ),
    "I18nSettings_countdownFromApp": MessageLookupByLibrary.simpleMessage(
      "Использовать время приложения",
    ),
    "I18nSettings_countdownFromAppDetails":
        MessageLookupByLibrary.simpleMessage("Для озвучивания без модуля"),
    "I18nSettings_darkBlue": MessageLookupByLibrary.simpleMessage(
      "Синяя тёмная тема",
    ),
    "I18nSettings_darkRed": MessageLookupByLibrary.simpleMessage(
      "Красная тёмная тема",
    ),
    "I18nSettings_defaults": MessageLookupByLibrary.simpleMessage(
      "По умолчанию",
    ),
    "I18nSettings_delay": MessageLookupByLibrary.simpleMessage("Задержка"),
    "I18nSettings_delayForNewEvents": MessageLookupByLibrary.simpleMessage(
      "Задержка перед показом новых отсечек",
    ),
    "I18nSettings_enterNumber": MessageLookupByLibrary.simpleMessage(
      "Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений",
    ),
    "I18nSettings_finishButton": MessageLookupByLibrary.simpleMessage(
      "Кнопка \"отсечка\"",
    ),
    "I18nSettings_finishButtonSize": MessageLookupByLibrary.simpleMessage(
      "Размер кнопки \"отсечка\"",
    ),
    "I18nSettings_finishButtonSizeDescription":
        MessageLookupByLibrary.simpleMessage(
          "Размер кнопки \"отсечка\" на финишном экране",
        ),
    "I18nSettings_finishScreen": MessageLookupByLibrary.simpleMessage(
      "Финишный экран",
    ),
    "I18nSettings_general": MessageLookupByLibrary.simpleMessage("Основные"),
    "I18nSettings_incorrectDelay": MessageLookupByLibrary.simpleMessage(
      "Неверная задержка",
    ),
    "I18nSettings_incorrectStartDelta": MessageLookupByLibrary.simpleMessage(
      "Неверный отрезок времени",
    ),
    "I18nSettings_incorrectStartFinishDifference":
        MessageLookupByLibrary.simpleMessage("Неверный порог"),
    "I18nSettings_journal": MessageLookupByLibrary.simpleMessage("Журнал"),
    "I18nSettings_journalLinesNumber": MessageLookupByLibrary.simpleMessage(
      "Количество показываемых записей",
    ),
    "I18nSettings_journalLinesNumberPopup":
        MessageLookupByLibrary.simpleMessage(
          "Количество отображаемых строк в журнале",
        ),
    "I18nSettings_language": MessageLookupByLibrary.simpleMessage("Язык"),
    "I18nSettings_lightBlue": MessageLookupByLibrary.simpleMessage(
      "Синяя светлая тема",
    ),
    "I18nSettings_lightRed": MessageLookupByLibrary.simpleMessage(
      "Красная светлая тема",
    ),
    "I18nSettings_milliseconds": m18,
    "I18nSettings_ntpOffset": MessageLookupByLibrary.simpleMessage(
      "NTP смещение",
    ),
    "I18nSettings_ntpOffsetDescription": MessageLookupByLibrary.simpleMessage(
      "Синхронизировать при старте приложения",
    ),
    "I18nSettings_numberOfLines": MessageLookupByLibrary.simpleMessage(
      "Количество строк",
    ),
    "I18nSettings_oLEDBackground": MessageLookupByLibrary.simpleMessage(
      "Чёрный фон (для OLED)",
    ),
    "I18nSettings_participantsName": MessageLookupByLibrary.simpleMessage(
      "Называть имена участников",
    ),
    "I18nSettings_pitch": MessageLookupByLibrary.simpleMessage("Тембр"),
    "I18nSettings_pixelSize": m19,
    "I18nSettings_rate": MessageLookupByLibrary.simpleMessage("Скорость"),
    "I18nSettings_reconnect": MessageLookupByLibrary.simpleMessage(
      "Переподключение",
    ),
    "I18nSettings_reconnectDescription": MessageLookupByLibrary.simpleMessage(
      "Пытаться переподключиться к модулю при обрыве связи",
    ),
    "I18nSettings_replaceStartCountdown": MessageLookupByLibrary.simpleMessage(
      "Заменять время старта обратным отсчётом",
    ),
    "I18nSettings_resetToDefaults": MessageLookupByLibrary.simpleMessage(
      "Настройки по умолчанию",
    ),
    "I18nSettings_seconds": m35,
    "I18nSettings_settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "I18nSettings_showColorFinishDifference":
        MessageLookupByLibrary.simpleMessage(
          "Выделение цветом разницы во времени",
        ),
    "I18nSettings_showColorFinishDifferenceDescription":
        MessageLookupByLibrary.simpleMessage("При достижении порога"),
    "I18nSettings_showColorStartDifference":
        MessageLookupByLibrary.simpleMessage(
          "Выделение цветом разницы во времени",
        ),
    "I18nSettings_showColorStartDifferenceDescription":
        MessageLookupByLibrary.simpleMessage(
          "При достижении порога между временем модуля и временем устройства",
        ),
    "I18nSettings_showFinishDifference": MessageLookupByLibrary.simpleMessage(
      "Показывать разницу во времени",
    ),
    "I18nSettings_showFinishDifferenceDescription":
        MessageLookupByLibrary.simpleMessage(
          "Между временем модуля и временем устройства",
        ),
    "I18nSettings_showStartDifference": MessageLookupByLibrary.simpleMessage(
      "Показывать разницу во времени",
    ),
    "I18nSettings_showStartDifferenceDescription":
        MessageLookupByLibrary.simpleMessage(
          "Между временем модуля и временем устройства",
        ),
    "I18nSettings_sound": MessageLookupByLibrary.simpleMessage("Звук"),
    "I18nSettings_startButton": MessageLookupByLibrary.simpleMessage(
      "Кнопка \"отсечка\"",
    ),
    "I18nSettings_startButtonSize": MessageLookupByLibrary.simpleMessage(
      "Размер кнопки \"отсечка\"",
    ),
    "I18nSettings_startButtonSizeDescription":
        MessageLookupByLibrary.simpleMessage(
          "Размер кнопки \"отсечка\" на стартовом экране",
        ),
    "I18nSettings_startDelta": MessageLookupByLibrary.simpleMessage("Секунды"),
    "I18nSettings_startDeltaInSeconds": MessageLookupByLibrary.simpleMessage(
      "Отрезок времени старта после сигнала",
    ),
    "I18nSettings_startDeltaInSecondsContent": MessageLookupByLibrary.simpleMessage(
      "Отрезок времени в секундах, в течении которого можно стартовать до и после актуального времени старта",
    ),
    "I18nSettings_startDeltaInSecondsTitle":
        MessageLookupByLibrary.simpleMessage("Окно старта"),
    "I18nSettings_startFinishDifference": MessageLookupByLibrary.simpleMessage(
      "Порог цветовой индикации",
    ),
    "I18nSettings_startScreen": MessageLookupByLibrary.simpleMessage(
      "Стартовый экран",
    ),
    "I18nSettings_themeSettings": MessageLookupByLibrary.simpleMessage(
      "Настройки темы",
    ),
    "I18nSettings_themes": MessageLookupByLibrary.simpleMessage("Темы"),
    "I18nSettings_timeControl": MessageLookupByLibrary.simpleMessage(
      "Учёт времени",
    ),
    "I18nSettings_timeForAutomaticStamps": MessageLookupByLibrary.simpleMessage(
      "Время автоматических отсечек",
    ),
    "I18nSettings_timeForAutomaticStampsDescription":
        MessageLookupByLibrary.simpleMessage("Использовать время приложения"),
    "I18nSettings_ttsEngine": MessageLookupByLibrary.simpleMessage(
      "Синтезатор речи",
    ),
    "I18nSettings_ttsEngineNotFound": MessageLookupByLibrary.simpleMessage(
      "Не найден",
    ),
    "I18nSettings_ttsVoice": MessageLookupByLibrary.simpleMessage("Голос"),
    "I18nSettings_ttsVoiceNotFound": MessageLookupByLibrary.simpleMessage(
      "Не найден",
    ),
    "I18nSettings_update": MessageLookupByLibrary.simpleMessage("Обновление"),
    "I18nSettings_voice": MessageLookupByLibrary.simpleMessage("Голос"),
    "I18nSettings_voiceFromApp": MessageLookupByLibrary.simpleMessage(
      "Использовать время приложения",
    ),
    "I18nSettings_voiceFromAppDetails": MessageLookupByLibrary.simpleMessage(
      "Для озвучивания без модуля",
    ),
    "I18nSettings_voiceLanguage": MessageLookupByLibrary.simpleMessage("Язык"),
    "I18nSettings_voiceMessages": MessageLookupByLibrary.simpleMessage(
      "Голосовые сообщения",
    ),
    "I18nSettings_voicePitch": MessageLookupByLibrary.simpleMessage(
      "Тембр голоса",
    ),
    "I18nSettings_voiceRate": MessageLookupByLibrary.simpleMessage(
      "Скорость произношения",
    ),
    "I18nSettings_voiceVolume": MessageLookupByLibrary.simpleMessage(
      "Громкость голоса",
    ),
    "I18nSettings_volume": MessageLookupByLibrary.simpleMessage("Громкость"),
    "I18nSettings_wakelock": MessageLookupByLibrary.simpleMessage(
      "Всегда включённый экран",
    ),
    "I18nStart_addParticipant": MessageLookupByLibrary.simpleMessage(
      "Добавить участника",
    ),
    "I18nStart_didNotStart": MessageLookupByLibrary.simpleMessage(
      "Не стартовал",
    ),
    "I18nStart_emptyName": MessageLookupByLibrary.simpleMessage("Введите имя"),
    "I18nStart_incorrectAge": MessageLookupByLibrary.simpleMessage(
      "Некорректный возраст/год рождения",
    ),
    "I18nStart_incorrectBirthday": MessageLookupByLibrary.simpleMessage(
      "Некорректная дата рождения",
    ),
    "I18nStart_incorrectCity": MessageLookupByLibrary.simpleMessage(
      "Только буквы, цифры, пробел, дефис и подчёркивание",
    ),
    "I18nStart_incorrectCorrection": MessageLookupByLibrary.simpleMessage(
      "Неверное значение поправки",
    ),
    "I18nStart_incorrectEmail": MessageLookupByLibrary.simpleMessage(
      "Некорректный е-мейл",
    ),
    "I18nStart_incorrectName": MessageLookupByLibrary.simpleMessage(
      "Только буквы, цифры, пробел, дефис и подчёркивание",
    ),
    "I18nStart_incorrectNickname": MessageLookupByLibrary.simpleMessage(
      "Только буквы, цифры, пробел, дефис и подчёркивание",
    ),
    "I18nStart_incorrectShiftMinutes": MessageLookupByLibrary.simpleMessage(
      "Некорректные минуты",
    ),
    "I18nStart_incorrectTime": MessageLookupByLibrary.simpleMessage(
      "Неверное значение времени",
    ),
    "I18nStart_participantCategory": m20,
    "I18nStart_participantCity": m21,
    "I18nStart_participantNickname": m22,
    "I18nStart_participantNumber": m23,
    "I18nStart_participantNumberWithName": m24,
    "I18nStart_participantTeam": m25,
    "I18nStart_participantYear": m26,
    "I18nStart_replaceAutomaticCorrection":
        MessageLookupByLibrary.simpleMessage(
          "Заменить автоматическую поправку",
        ),
    "I18nStart_replaceAutomaticCorrectionConfirmation": m36,
    "I18nStart_setDnsConfirmation": m37,
    "I18nStart_shiftMinutes": MessageLookupByLibrary.simpleMessage("Минуты"),
    "I18nStart_shiftStartsTime": MessageLookupByLibrary.simpleMessage(
      "Сдвинуть время стартов",
    ),
    "I18nStart_shiftStartsTimeFromNumber": m38,
    "I18nStart_sliverAutomaticCorrection": MessageLookupByLibrary.simpleMessage(
      "Авто\r\nпоправка",
    ),
    "I18nStart_sliverManualCorrection": MessageLookupByLibrary.simpleMessage(
      "Ручная\r\nпоправка",
    ),
    "I18nStart_sliverNumber": MessageLookupByLibrary.simpleMessage("№"),
    "I18nStart_sliverStart": MessageLookupByLibrary.simpleMessage("Старт"),
    "I18nStart_startTime": MessageLookupByLibrary.simpleMessage("Время старта"),
    "I18nStart_startTimestamp": MessageLookupByLibrary.simpleMessage(
      "Время записи на устройстве",
    ),
    "I18nStart_wrongRangeShiftMinutes": MessageLookupByLibrary.simpleMessage(
      "Мин -2 часа, макс 10 часов",
    ),
    "I18nUpdate_changelog": MessageLookupByLibrary.simpleMessage(
      "Список изменений",
    ),
    "I18nUpdate_checkForUpdates": MessageLookupByLibrary.simpleMessage(
      "Проверить обновления",
    ),
    "I18nUpdate_connecting": MessageLookupByLibrary.simpleMessage(
      "Соединение...",
    ),
    "I18nUpdate_downloaded": m27,
    "I18nUpdate_updateToVersion": m28,
    "I18nUpdate_whatsNew": MessageLookupByLibrary.simpleMessage("Что нового"),
  };
}
