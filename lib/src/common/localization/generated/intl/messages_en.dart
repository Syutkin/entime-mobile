// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(number) =>
      "Duplicate participant number in stages CSV: ${number}";

  static String m1(version) => "v${version}";

  static String m2(time, prevNumber, currentNumber) =>
      "The start time ${time} has already been assigned to number ${prevNumber}. Are you sure you want to set the same start time for numbers ${currentNumber} and ${prevNumber}?";

  static String m3(cancelButtonLabel) =>
      "Error when adding participant! Press \"${cancelButtonLabel}\" to continue\n";

  static String m4(number, prevCorrection, correction) =>
      "Participant number ${number} already has the initial correction ${prevCorrection} set. Would you like to update it to ${correction}?";

  static String m5(number, automaticCorrection) =>
      "For number ${number}, the automatic start timer has already been set to: ${automaticCorrection}. Would you like to set a new start time and remove the previous setting?";

  static String m6(version) => "Update available";

  static String m7(number, manualCorrection) =>
      "For number ${number}, the manual start time has already been set: ${manualCorrection}. Would you like to set a new start time and remove the previous entry?";

  static String m8(brightness) => "Brightness ${brightness}";

  static String m9(message) => "Failed to save settings: ${message}";

  static String m10(type) => "Unknown module type: ${type}";

  static String m11(offset) =>
      "${Intl.plural(offset, one: '${offset} millisecond offset', other: '${offset} milliseconds offset')}";

  static String m12(number) => "Number ${number} finished";

  static String m13(raceName, stageName) =>
      "Results of the finish of the race ${raceName}, stage ${stageName}";

  static String m14(raceName, stageName) =>
      "Results of the race ${raceName}, stage ${stageName}";

  static String m15(number) =>
      "Finish time for participant with number ${number} already setted. Set new value?";

  static String m16(milliseconds) => "${milliseconds}ms";

  static String m17(size) => "${size}px";

  static String m18(category) => "Category: ${category}";

  static String m19(city) => "City: ${city}";

  static String m20(nickname) => "Nickname: ${nickname}";

  static String m21(number) => "Participant No. ${number}";

  static String m22(number, name) => "No. ${number}, ${name}";

  static String m23(team) => "Team: ${team}";

  static String m24(year) => "Year/Age: ${year}";

  static String m25(current, total) => "${current} from ${total}";

  static String m26(version) => "Update to ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "I18nBluetooth_dbm": MessageLookupByLibrary.simpleMessage("dBm"),
    "I18nBluetooth_selectDevice": MessageLookupByLibrary.simpleMessage(
      "Select device",
    ),
    "I18nBluetooth_unknownDevice": MessageLookupByLibrary.simpleMessage(
      "Unknown device",
    ),
    "I18nCore_correction": MessageLookupByLibrary.simpleMessage("Correction"),
    "I18nCore_delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "I18nCore_edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "I18nCore_warning": MessageLookupByLibrary.simpleMessage("Warning"),
    "I18nCountdown_countdown": MessageLookupByLibrary.simpleMessage(
      "Countdown",
    ),
    "I18nDatabase_addRace": MessageLookupByLibrary.simpleMessage(
      "Create a competition",
    ),
    "I18nDatabase_addStage": MessageLookupByLibrary.simpleMessage(
      "Create a stage",
    ),
    "I18nDatabase_duplicateParticipantNumberInStagesCsv": m0,
    "I18nDatabase_enterRaceName": MessageLookupByLibrary.simpleMessage(
      "Enter the name of the competition",
    ),
    "I18nDatabase_enterStageName": MessageLookupByLibrary.simpleMessage(
      "Enter the name of the stage",
    ),
    "I18nDatabase_raceDates": MessageLookupByLibrary.simpleMessage(
      "Dates of Conduct",
    ),
    "I18nDatabase_raceName": MessageLookupByLibrary.simpleMessage(
      "Competition name",
    ),
    "I18nDatabase_races": MessageLookupByLibrary.simpleMessage("Competitions"),
    "I18nDatabase_stageName": MessageLookupByLibrary.simpleMessage(
      "Stage name",
    ),
    "I18nDatabase_trail": MessageLookupByLibrary.simpleMessage("Trail"),
    "I18nDrawer_about": MessageLookupByLibrary.simpleMessage("About"),
    "I18nDrawer_help": MessageLookupByLibrary.simpleMessage("Help"),
    "I18nDrawer_settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "I18nDrawer_version": m1,
    "I18nHelp_manual": MessageLookupByLibrary.simpleMessage("Manual"),
    "I18nHelp_manualMd": MessageLookupByLibrary.simpleMessage(
      "# Entime mobile\n\nПриложение для старт/финиш‑тайминга соревнований с поддержкой модулей по BLE и ручного ввода.\n\n## Быстрый старт\n\n1) Во вкладке **Начало** выберите соревнование и спецучасток.\n- Создайте новые или импортируйте из CSV (меню у плитки соревнования).\n- Формат CSV: см. `CSV_FORMAT.md`.\n\n2) Подключите модуль во вкладке **Начало** → Bluetooth.\n- Включите Bluetooth, выберите устройство и подключитесь.\n- После подключения доступны настройки модуля (имя/номер/часовой пояс, Wi‑Fi, и др.).\n\n3) При необходимости синхронизируйте время через NTP (плитка **NTP**).\n\n4) Дополнительно: в **Трейлах** можно вести список трасс/треков, в **Гонщиках** — список участников.\n\n## Старт\n\nВо вкладке **Старт** отображается стартовый протокол:\n- Колонки: номер, плановое время, фактическое время (от модуля/устройства), поправка.\n- DNS/DNF/DSQ можно отмечать в строке участника (жесты/меню), а видимость фильтровать через кнопку фильтра вверху.\n- Кнопка **+** позволяет добавить участника или изменить его стартовое время.\n- Результаты стартов отправляются через стандартную кнопку **поделиться**.\n\nТакже доступен экран обратного отсчёта и голосовые/звуковые уведомления (настраиваются в **Настройках**).\n\n## Финиш\n\nВо вкладке **Финиш** отображаются финишные времена:\n- Время приходит от модуля или вводится вручную кнопкой с иконкой руки.\n- Номер участника назначается перетаскиванием из списка «на трассе» либо через диалог по нажатию на время.\n- Финишные времена можно скрывать свайпом; массовое скрытие доступно через контекстное меню (долгое нажатие).\n- Кнопка фильтра позволяет показывать/скрывать ручные значения, скрытые строки и записи с номерами.\n- Результаты финиша отправляются через стандартную кнопку **поделиться**.\n\n## Настройки\n\nВ боковом меню доступны:\n- звук и голосовые сообщения, язык;\n- обратный отсчёт, окно старта, автоподстановка номеров;\n- использование времени устройства вместо времени модуля;\n- темы и параметры интерфейса;\n- журнал и обновления.\n\nПримечание: поддерживается только BLE‑подключение, Bluetooth Classic не используется.\n",
    ),
    "I18nHome_addRacer": MessageLookupByLibrary.simpleMessage("Add"),
    "I18nHome_bluetooth": MessageLookupByLibrary.simpleMessage("Bluetooth"),
    "I18nHome_countdown": MessageLookupByLibrary.simpleMessage("Countdown"),
    "I18nHome_countdownPage": MessageLookupByLibrary.simpleMessage(
      "Countdown page",
    ),
    "I18nHome_equalStartTime": m2,
    "I18nHome_errorAddParticipant": m3,
    "I18nHome_fab": MessageLookupByLibrary.simpleMessage("FAB"),
    "I18nHome_finish": MessageLookupByLibrary.simpleMessage("Finish"),
    "I18nHome_home": MessageLookupByLibrary.simpleMessage("Home"),
    "I18nHome_importStartProtocolCsv": MessageLookupByLibrary.simpleMessage(
      "Import start protocol",
    ),
    "I18nHome_selectStartProtocol": MessageLookupByLibrary.simpleMessage(
      "Start protocol",
    ),
    "I18nHome_setDefaults": MessageLookupByLibrary.simpleMessage("Defaults"),
    "I18nHome_start": MessageLookupByLibrary.simpleMessage("Start"),
    "I18nHome_update": MessageLookupByLibrary.simpleMessage("Update"),
    "I18nHome_updateAutomaticCorrection": m4,
    "I18nHome_updateAutomaticStartCorrection": m5,
    "I18nHome_updateAvailable": m6,
    "I18nHome_updateManualStartCorrection": m7,
    "I18nInit_bluetoothModule": MessageLookupByLibrary.simpleMessage(
      "Bluetooth module",
    ),
    "I18nInit_delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "I18nInit_importFromCsv": MessageLookupByLibrary.simpleMessage(
      "Import protocol from csv",
    ),
    "I18nInit_noData": MessageLookupByLibrary.simpleMessage("No data"),
    "I18nInit_pressToSelect": MessageLookupByLibrary.simpleMessage(
      "Press to select",
    ),
    "I18nInit_selectFile": MessageLookupByLibrary.simpleMessage("Select file"),
    "I18nInit_selectRace": MessageLookupByLibrary.simpleMessage(
      "Select the competition",
    ),
    "I18nInit_selectStage": MessageLookupByLibrary.simpleMessage(
      "Select the stage",
    ),
    "I18nInit_share": MessageLookupByLibrary.simpleMessage("Share"),
    "I18nLog_bluetoothInformation": MessageLookupByLibrary.simpleMessage(
      "Bluetooth information",
    ),
    "I18nModuleSettings_awaitingSettings": MessageLookupByLibrary.simpleMessage(
      "Awaiting settings",
    ),
    "I18nModuleSettings_bluetooth": MessageLookupByLibrary.simpleMessage(
      "Bluetooth",
    ),
    "I18nModuleSettings_bluetoothModuleName":
        MessageLookupByLibrary.simpleMessage("Module name"),
    "I18nModuleSettings_bluetoothModuleNumber":
        MessageLookupByLibrary.simpleMessage("Module number"),
    "I18nModuleSettings_bluetoothNumber": MessageLookupByLibrary.simpleMessage(
      "Number",
    ),
    "I18nModuleSettings_brightness": MessageLookupByLibrary.simpleMessage(
      "Brightness",
    ),
    "I18nModuleSettings_brightnessInt": m8,
    "I18nModuleSettings_device": MessageLookupByLibrary.simpleMessage("Device"),
    "I18nModuleSettings_deviceName": MessageLookupByLibrary.simpleMessage(
      "Name",
    ),
    "I18nModuleSettings_deviceNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Enter module name",
    ),
    "I18nModuleSettings_deviceNameInvalid":
        MessageLookupByLibrary.simpleMessage(
          "ASCII only (A-Z, a-z, 0-9, -, _)",
        ),
    "I18nModuleSettings_deviceNameTooLong":
        MessageLookupByLibrary.simpleMessage("Max 16 characters"),
    "I18nModuleSettings_deviceNumber": MessageLookupByLibrary.simpleMessage(
      "Number",
    ),
    "I18nModuleSettings_deviceTimezone": MessageLookupByLibrary.simpleMessage(
      "UTC offset",
    ),
    "I18nModuleSettings_deviceType": MessageLookupByLibrary.simpleMessage(
      "Type",
    ),
    "I18nModuleSettings_enterBluetoothModuleNumber":
        MessageLookupByLibrary.simpleMessage("Enter module number"),
    "I18nModuleSettings_errorLoadSettings":
        MessageLookupByLibrary.simpleMessage("Error load settings!"),
    "I18nModuleSettings_gps": MessageLookupByLibrary.simpleMessage("GPS"),
    "I18nModuleSettings_gpsEnabled": MessageLookupByLibrary.simpleMessage(
      "GPS",
    ),
    "I18nModuleSettings_module": MessageLookupByLibrary.simpleMessage("Module"),
    "I18nModuleSettings_moduleSettings": MessageLookupByLibrary.simpleMessage(
      "Module settings",
    ),
    "I18nModuleSettings_ntp1": MessageLookupByLibrary.simpleMessage("NTP 1"),
    "I18nModuleSettings_ntp2": MessageLookupByLibrary.simpleMessage("NTP 2"),
    "I18nModuleSettings_ntp3": MessageLookupByLibrary.simpleMessage("NTP 3"),
    "I18nModuleSettings_saveSettingsError":
        MessageLookupByLibrary.simpleMessage("Failed to save settings"),
    "I18nModuleSettings_saveSettingsErrorMessage": m9,
    "I18nModuleSettings_saveSettingsSuccess":
        MessageLookupByLibrary.simpleMessage("Settings saved"),
    "I18nModuleSettings_saveSettingsSuccessReboot":
        MessageLookupByLibrary.simpleMessage(
          "Settings saved successfully.\nRestart the module for the changes to take effect.",
        ),
    "I18nModuleSettings_saveSettingsTimeout":
        MessageLookupByLibrary.simpleMessage(
          "Module did not respond. Check the connection and try saving again.",
        ),
    "I18nModuleSettings_saveSettingsToModule":
        MessageLookupByLibrary.simpleMessage("Save settings to module?"),
    "I18nModuleSettings_setBrightness": MessageLookupByLibrary.simpleMessage(
      "Set panel brightness",
    ),
    "I18nModuleSettings_sync": MessageLookupByLibrary.simpleMessage("Sync"),
    "I18nModuleSettings_syncAuto": MessageLookupByLibrary.simpleMessage("Auto"),
    "I18nModuleSettings_syncSource": MessageLookupByLibrary.simpleMessage(
      "Source",
    ),
    "I18nModuleSettings_syncSourceAuto": MessageLookupByLibrary.simpleMessage(
      "Auto",
    ),
    "I18nModuleSettings_syncSourceGps": MessageLookupByLibrary.simpleMessage(
      "GPS",
    ),
    "I18nModuleSettings_syncSourceRtc": MessageLookupByLibrary.simpleMessage(
      "RTC",
    ),
    "I18nModuleSettings_timezoneEmpty": MessageLookupByLibrary.simpleMessage(
      "Enter UTC offset, for example 3 or 5:45",
    ),
    "I18nModuleSettings_timezoneInvalid": MessageLookupByLibrary.simpleMessage(
      "Enter whole hours or hours:minutes",
    ),
    "I18nModuleSettings_timezoneRange": MessageLookupByLibrary.simpleMessage(
      "Range UTC-12:00..UTC+14:00",
    ),
    "I18nModuleSettings_touch": MessageLookupByLibrary.simpleMessage("Touch"),
    "I18nModuleSettings_touchCalValid": MessageLookupByLibrary.simpleMessage(
      "Calibration valid",
    ),
    "I18nModuleSettings_touchCalibration": MessageLookupByLibrary.simpleMessage(
      "Calibration",
    ),
    "I18nModuleSettings_touchEnabled": MessageLookupByLibrary.simpleMessage(
      "Touch input",
    ),
    "I18nModuleSettings_unknownModuleType": m10,
    "I18nModuleSettings_wifi": MessageLookupByLibrary.simpleMessage("WiFi"),
    "I18nModuleSettings_wifiActive": MessageLookupByLibrary.simpleMessage(
      "Active",
    ),
    "I18nModuleSettings_wifiNetwork": MessageLookupByLibrary.simpleMessage(
      "Network",
    ),
    "I18nNtp_ntpOffset": MessageLookupByLibrary.simpleMessage("NTP offset"),
    "I18nNtp_offsetInMilliseconds": m11,
    "I18nNtp_sync": MessageLookupByLibrary.simpleMessage("Press to sync"),
    "I18nNtp_syncError": MessageLookupByLibrary.simpleMessage(
      "Synchronization error",
    ),
    "I18nNtp_syncing": MessageLookupByLibrary.simpleMessage("Syncing..."),
    "I18nProtocol_clearNumber": MessageLookupByLibrary.simpleMessage(
      "Clear number",
    ),
    "I18nProtocol_didNotFinish": MessageLookupByLibrary.simpleMessage(
      "Did not finish",
    ),
    "I18nProtocol_didNotStart": MessageLookupByLibrary.simpleMessage(
      "Did not start",
    ),
    "I18nProtocol_enterFinishNumber": MessageLookupByLibrary.simpleMessage(
      "Enter number for finished participant",
    ),
    "I18nProtocol_finishNumber": m12,
    "I18nProtocol_hide": MessageLookupByLibrary.simpleMessage("Hide"),
    "I18nProtocol_hideAll": MessageLookupByLibrary.simpleMessage("Hide all"),
    "I18nProtocol_incorrectNumber": MessageLookupByLibrary.simpleMessage(
      "Incorrect number",
    ),
    "I18nProtocol_number": MessageLookupByLibrary.simpleMessage("Number"),
    "I18nProtocol_shareFinishResults": m13,
    "I18nProtocol_shareStartResults": m14,
    "I18nProtocol_time": MessageLookupByLibrary.simpleMessage("Time"),
    "I18nProtocol_type": MessageLookupByLibrary.simpleMessage("Type"),
    "I18nProtocol_updateNumber": m15,
    "I18nProtocol_warning": MessageLookupByLibrary.simpleMessage("Warning"),
    "I18nSettings_brightness": MessageLookupByLibrary.simpleMessage(
      "Light theme",
    ),
    "I18nSettings_checkUpdateAtStartup": MessageLookupByLibrary.simpleMessage(
      "Check updates at startup",
    ),
    "I18nSettings_countdown": MessageLookupByLibrary.simpleMessage("Countdown"),
    "I18nSettings_countdownAtStart": MessageLookupByLibrary.simpleMessage(
      "Countdown",
    ),
    "I18nSettings_countdownAtStartSize": MessageLookupByLibrary.simpleMessage(
      "Countdown size",
    ),
    "I18nSettings_countdownFromApp": MessageLookupByLibrary.simpleMessage(
      "Use the app\'s time",
    ),
    "I18nSettings_countdownFromAppDetails":
        MessageLookupByLibrary.simpleMessage("For playback without a module"),
    "I18nSettings_darkBlue": MessageLookupByLibrary.simpleMessage(
      "Dark blue theme",
    ),
    "I18nSettings_darkRed": MessageLookupByLibrary.simpleMessage(
      "Dark red theme",
    ),
    "I18nSettings_defaults": MessageLookupByLibrary.simpleMessage("Defaults"),
    "I18nSettings_delay": MessageLookupByLibrary.simpleMessage("Delay"),
    "I18nSettings_delayForNewEvents": MessageLookupByLibrary.simpleMessage(
      "Delay before show new timestamps",
    ),
    "I18nSettings_enterNumber": MessageLookupByLibrary.simpleMessage(
      "Enter positive number,\nempty or negative number -\nno limitation",
    ),
    "I18nSettings_finishButton": MessageLookupByLibrary.simpleMessage(
      "Timestamp button",
    ),
    "I18nSettings_finishButtonSize": MessageLookupByLibrary.simpleMessage(
      "Timestamp button size",
    ),
    "I18nSettings_finishButtonSizeDescription":
        MessageLookupByLibrary.simpleMessage(
          "Timestamp button size at finish screen",
        ),
    "I18nSettings_finishScreen": MessageLookupByLibrary.simpleMessage(
      "Finish screen",
    ),
    "I18nSettings_general": MessageLookupByLibrary.simpleMessage("General"),
    "I18nSettings_incorrectDelay": MessageLookupByLibrary.simpleMessage(
      "Incorrect delay",
    ),
    "I18nSettings_journal": MessageLookupByLibrary.simpleMessage("Journal"),
    "I18nSettings_journalLinesNumber": MessageLookupByLibrary.simpleMessage(
      "Number of records displayed",
    ),
    "I18nSettings_journalLinesNumberPopup":
        MessageLookupByLibrary.simpleMessage(
          "Number of visible lines at journal",
        ),
    "I18nSettings_language": MessageLookupByLibrary.simpleMessage("Language"),
    "I18nSettings_lightBlue": MessageLookupByLibrary.simpleMessage(
      "Light blue theme",
    ),
    "I18nSettings_lightRed": MessageLookupByLibrary.simpleMessage(
      "Light red theme",
    ),
    "I18nSettings_milliseconds": m16,
    "I18nSettings_ntpOffset": MessageLookupByLibrary.simpleMessage(
      "NTP offset",
    ),
    "I18nSettings_ntpOffsetDescription": MessageLookupByLibrary.simpleMessage(
      "Synchronize on application startup",
    ),
    "I18nSettings_numberOfLines": MessageLookupByLibrary.simpleMessage(
      "Number of lines",
    ),
    "I18nSettings_participantsName": MessageLookupByLibrary.simpleMessage(
      "Name the participants",
    ),
    "I18nSettings_pitch": MessageLookupByLibrary.simpleMessage("Pitch"),
    "I18nSettings_pixelSize": m17,
    "I18nSettings_rate": MessageLookupByLibrary.simpleMessage("Rate"),
    "I18nSettings_reconnect": MessageLookupByLibrary.simpleMessage("Reconnect"),
    "I18nSettings_reconnectDescription": MessageLookupByLibrary.simpleMessage(
      "Trying to reconnect when disconnected",
    ),
    "I18nSettings_replaceStartCountdown": MessageLookupByLibrary.simpleMessage(
      "Replace start time with countdown",
    ),
    "I18nSettings_resetToDefaults": MessageLookupByLibrary.simpleMessage(
      "Reset to defaults",
    ),
    "I18nSettings_settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "I18nSettings_sound": MessageLookupByLibrary.simpleMessage("Sound"),
    "I18nSettings_startButton": MessageLookupByLibrary.simpleMessage(
      "Timestamp button",
    ),
    "I18nSettings_startButtonSize": MessageLookupByLibrary.simpleMessage(
      "Timestamp button size",
    ),
    "I18nSettings_startButtonSizeDescription":
        MessageLookupByLibrary.simpleMessage(
          "Timestamp button size at start screen",
        ),
    "I18nSettings_startScreen": MessageLookupByLibrary.simpleMessage(
      "Start screen",
    ),
    "I18nSettings_themes": MessageLookupByLibrary.simpleMessage("Themes"),
    "I18nSettings_update": MessageLookupByLibrary.simpleMessage("Update"),
    "I18nSettings_voice": MessageLookupByLibrary.simpleMessage("Voice"),
    "I18nSettings_voiceFromApp": MessageLookupByLibrary.simpleMessage(
      "Use the app\'s time",
    ),
    "I18nSettings_voiceFromAppDetails": MessageLookupByLibrary.simpleMessage(
      "For playback without a module",
    ),
    "I18nSettings_voiceLanguage": MessageLookupByLibrary.simpleMessage(
      "Language",
    ),
    "I18nSettings_voiceMessages": MessageLookupByLibrary.simpleMessage(
      "Voice messages",
    ),
    "I18nSettings_voicePitch": MessageLookupByLibrary.simpleMessage(
      "Voice pitch",
    ),
    "I18nSettings_voiceRate": MessageLookupByLibrary.simpleMessage(
      "Voice rate",
    ),
    "I18nSettings_voiceVolume": MessageLookupByLibrary.simpleMessage(
      "Voice volume",
    ),
    "I18nSettings_volume": MessageLookupByLibrary.simpleMessage("Volume"),
    "I18nSettings_wakelock": MessageLookupByLibrary.simpleMessage("Wakelock"),
    "I18nStart_addParticipant": MessageLookupByLibrary.simpleMessage(
      "Add participant",
    ),
    "I18nStart_didNotStart": MessageLookupByLibrary.simpleMessage(
      "Did not start",
    ),
    "I18nStart_incorrectCorrection": MessageLookupByLibrary.simpleMessage(
      "Incorrect correction",
    ),
    "I18nStart_incorrectTime": MessageLookupByLibrary.simpleMessage(
      "Incorrect time",
    ),
    "I18nStart_participantCategory": m18,
    "I18nStart_participantCity": m19,
    "I18nStart_participantNickname": m20,
    "I18nStart_participantNumber": m21,
    "I18nStart_participantNumberWithName": m22,
    "I18nStart_participantTeam": m23,
    "I18nStart_participantYear": m24,
    "I18nStart_sliverAutomaticCorrection": MessageLookupByLibrary.simpleMessage(
      "Auto\ncorrection",
    ),
    "I18nStart_sliverManualCorrection": MessageLookupByLibrary.simpleMessage(
      "Manual\nCorrection",
    ),
    "I18nStart_sliverNumber": MessageLookupByLibrary.simpleMessage("No."),
    "I18nStart_sliverStart": MessageLookupByLibrary.simpleMessage("Start"),
    "I18nStart_startTime": MessageLookupByLibrary.simpleMessage("Start Time"),
    "I18nUpdate_changelog": MessageLookupByLibrary.simpleMessage("Changelog"),
    "I18nUpdate_checkForUpdates": MessageLookupByLibrary.simpleMessage(
      "Check for updates",
    ),
    "I18nUpdate_connecting": MessageLookupByLibrary.simpleMessage(
      "Connecting...",
    ),
    "I18nUpdate_downloaded": m25,
    "I18nUpdate_updateToVersion": m26,
    "I18nUpdate_whatsNew": MessageLookupByLibrary.simpleMessage("What\'s new"),
  };
}
