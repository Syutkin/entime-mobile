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

  static String m0(version) => "v${version}";

  static String m1(time, prevNumber, currentNumber) =>
      "The start time ${time} has already been assigned to number ${prevNumber}. Are you sure you want to set the same start time for numbers ${currentNumber} and ${prevNumber}?";

  static String m2(cancelButtonLabel) =>
      "Error when adding participant! Press \"${cancelButtonLabel}\" to continue\n";

  static String m3(number, prevCorrection, correction) =>
      "Participant number ${number} already has the initial correction ${prevCorrection} set. Would you like to update it to ${correction}?";

  static String m4(number, automaticCorrection) =>
      "For number ${number}, the automatic start timer has already been set to: ${automaticCorrection}. Would you like to set a new start time and remove the previous setting?";

  static String m5(version) => "Update available";

  static String m6(number, manualCorrection) =>
      "For number ${number}, the manual start time has already been set: ${manualCorrection}. Would you like to set a new start time and remove the previous entry?";

  static String m7(brightness) => "Brightness ${brightness}";

  static String m8(ssid) => "Enter password for ${ssid}";

  static String m9(frequency) => "${frequency} Hz";

  static String m10(note, frequency) => "Note ${note}, ${frequency}Hz";

  static String m11(ohm) => "${ohm} Ohm";

  static String m12(seconds) =>
      "${Intl.plural(seconds, one: '${seconds} second', other: 'seconds')}";

  static String m13(type) => "Unknown module type: ${type}";

  static String m14(offset) =>
      "${Intl.plural(offset, one: '${offset} millisecond offset', other: '${offset} milliseconds offset')}";

  static String m15(number) => "Number ${number} finished";

  static String m16(raceName, stageName) =>
      "Results of the finish of the race ${raceName}, stage ${stageName}";

  static String m17(raceName, stageName) =>
      "Results of the race ${raceName}, stage ${stageName}";

  static String m18(number) =>
      "Finish time for participant with number ${number} already setted. Set new value?";

  static String m19(milliseconds) => "${milliseconds}ms";

  static String m20(size) => "${size}px";

  static String m21(category) => "Category: ${category}";

  static String m22(city) => "City: ${city}";

  static String m23(nickname) => "Nickname: ${nickname}";

  static String m24(number) => "Participant No. ${number}";

  static String m25(number, name) => "No. ${number}, ${name}";

  static String m26(team) => "Team: ${team}";

  static String m27(year) => "Year/Age: ${year}";

  static String m28(current, total) => "${current} from ${total}";

  static String m29(version) => "Update to ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "I18nBluetooth_dbm": MessageLookupByLibrary.simpleMessage("dBm"),
        "I18nBluetooth_selectDevice":
            MessageLookupByLibrary.simpleMessage("Select device"),
        "I18nBluetooth_unknownDevice":
            MessageLookupByLibrary.simpleMessage("Unknown device"),
        "I18nCore_correction":
            MessageLookupByLibrary.simpleMessage("Correction"),
        "I18nCore_delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "I18nCore_edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "I18nCore_warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "I18nCountdown_countdown":
            MessageLookupByLibrary.simpleMessage("Countdown"),
        "I18nDatabase_addRace":
            MessageLookupByLibrary.simpleMessage("Create a competition"),
        "I18nDatabase_addStage":
            MessageLookupByLibrary.simpleMessage("Create a stage"),
        "I18nDatabase_enterRaceName": MessageLookupByLibrary.simpleMessage(
            "Enter the name of the competition"),
        "I18nDatabase_enterStageName":
            MessageLookupByLibrary.simpleMessage("Enter the name of the stage"),
        "I18nDatabase_raceDates":
            MessageLookupByLibrary.simpleMessage("Dates of Conduct"),
        "I18nDatabase_raceName":
            MessageLookupByLibrary.simpleMessage("Competition name"),
        "I18nDatabase_races":
            MessageLookupByLibrary.simpleMessage("Competitions"),
        "I18nDatabase_stageName":
            MessageLookupByLibrary.simpleMessage("Stage name"),
        "I18nDatabase_trail": MessageLookupByLibrary.simpleMessage("Trail"),
        "I18nDrawer_about": MessageLookupByLibrary.simpleMessage("About"),
        "I18nDrawer_help": MessageLookupByLibrary.simpleMessage("Help"),
        "I18nDrawer_settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "I18nDrawer_version": m0,
        "I18nHelp_manual": MessageLookupByLibrary.simpleMessage("Manual"),
        "I18nHelp_manualMd": MessageLookupByLibrary.simpleMessage(
            "# Entime mobile\n\nПеред началом работы можно изменить настройки приложения.\n\n![](resource:assets/1.png)\n\n - Включить звук обратного отсчёта\n - Включить и настроить голосовые оповещения\n - Отключить выключение эрана во время работы приложения.\n\n![](resource:assets/9.png)\n![](resource:assets/11.png)\n\nДля непосредственной работы нужно выбрать файл стартового протокола.\n\n![](resource:assets/2.png)\n\nЗатем bluetooth модуль, который предварительно должен быть сопряжён с мобильным устройством.\n\n![](resource:assets/4.png)\n\nПосле выбора bluetooth модуля, нужно нажать на любой из появившихся bluetooth значков, для соединения с модулем.\n\n![](resource:assets/5.png)\n\nПосле установки соединения, можно ~~изменить~~ пока только посмотреть настройки модуля.\n\n![](resource:assets/8.png)\n\n\nДля работы на старте переходим во вкладку \"Start\", в ней отображается стартовый протокол.\n\nВ первом столбце номер участника, во втором - плановое стартовое время, в третьем - реальное стартовое время (поступает от стартового модуля), в четвёртом - поправка в миллисекундах относительно планового времени старта.\n\n| Номер | Время старта | Фактическое время старта | Поправка |\n|-------|--------------|--------------------------|----------|\n\nЕсли участник не стартовал, выставить DNS можно свайпом в левую сторону на строке с нужным номером.\n\nПосле окончания стартов передать результаты можно нажав стандартную кнопку **share** вверху.\n\n![](resource:assets/12.png)\n\nПри нажатии на синий плюс внизу, можно добавить нового участника, либо изменить время старта уже существующего.\n\nДля этого в открывшемся диалоге вводим номер и новое стартовое время.\n\n![](resource:assets/20.png)\n\nДля работы на финише переходим во вкладку \"Finish\", в ней отображаются финишные времена, введённые либо вручную, при нажатии на иконку руки внизу экрана, либо полученные от финишного модуля. Значок слева поможет определить, как именно было получено значение времени финиша.\n\nВнизу отображаются номера гонщиков, которые сейчас должны быть на трассе.\n\n![](resource:assets/13.png)\n\nДля присвоения номеру времени финиша, либо перетащите номер снизу на нужное время, либо выставите номер вручную из диалога, который появится при нажатии на любое значение времени в основной таблице.\n\n![](resource:assets/15.png)\n\nОтработанные, либо ненужные времена финиша, можно либо скрывать поодиночке свайпом в любую сторону,\n\n![](resource:assets/17.png)\n\nлибо сразу все из всплывающего меню, которое появляется при долгом нажатии на любом значении времени.\n\n![](resource:assets/14.png)\n\nПосле окончания заездов передать результаты финиша можно нажав стандартную кнопку **share** вверху.\n  "),
        "I18nHome_addRacer": MessageLookupByLibrary.simpleMessage("Add"),
        "I18nHome_bluetooth": MessageLookupByLibrary.simpleMessage("Bluetooth"),
        "I18nHome_countdown": MessageLookupByLibrary.simpleMessage("Countdown"),
        "I18nHome_countdownPage":
            MessageLookupByLibrary.simpleMessage("Countdown page"),
        "I18nHome_equalStartTime": m1,
        "I18nHome_errorAddParticipant": m2,
        "I18nHome_fab": MessageLookupByLibrary.simpleMessage("FAB"),
        "I18nHome_finish": MessageLookupByLibrary.simpleMessage("Finish"),
        "I18nHome_home": MessageLookupByLibrary.simpleMessage("Home"),
        "I18nHome_importStartProtocolCsv":
            MessageLookupByLibrary.simpleMessage("Import start protocol"),
        "I18nHome_selectStartProtocol":
            MessageLookupByLibrary.simpleMessage("Start protocol"),
        "I18nHome_setDefaults":
            MessageLookupByLibrary.simpleMessage("Defaults"),
        "I18nHome_start": MessageLookupByLibrary.simpleMessage("Start"),
        "I18nHome_update": MessageLookupByLibrary.simpleMessage("Update"),
        "I18nHome_updateAutomaticCorrection": m3,
        "I18nHome_updateAutomaticStartCorrection": m4,
        "I18nHome_updateAvailable": m5,
        "I18nHome_updateManualStartCorrection": m6,
        "I18nInit_bluetoothModule":
            MessageLookupByLibrary.simpleMessage("Bluetooth module"),
        "I18nInit_delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "I18nInit_importFromCsv":
            MessageLookupByLibrary.simpleMessage("Import protocol from csv"),
        "I18nInit_noData": MessageLookupByLibrary.simpleMessage("No data"),
        "I18nInit_pressToSelect":
            MessageLookupByLibrary.simpleMessage("Press to select"),
        "I18nInit_selectFile":
            MessageLookupByLibrary.simpleMessage("Select file"),
        "I18nInit_selectRace":
            MessageLookupByLibrary.simpleMessage("Select the competition"),
        "I18nInit_selectStage":
            MessageLookupByLibrary.simpleMessage("Select the stage"),
        "I18nInit_share": MessageLookupByLibrary.simpleMessage("Share"),
        "I18nLog_bluetoothInformation":
            MessageLookupByLibrary.simpleMessage("Bluetooth information"),
        "I18nModuleSettings_awaitingSettings":
            MessageLookupByLibrary.simpleMessage("Awaiting settings"),
        "I18nModuleSettings_bluetooth":
            MessageLookupByLibrary.simpleMessage("Bluetooth"),
        "I18nModuleSettings_bluetoothModuleName":
            MessageLookupByLibrary.simpleMessage("Module name"),
        "I18nModuleSettings_bluetoothModuleNumber":
            MessageLookupByLibrary.simpleMessage("Module number"),
        "I18nModuleSettings_bluetoothNumber":
            MessageLookupByLibrary.simpleMessage("Number"),
        "I18nModuleSettings_brightness":
            MessageLookupByLibrary.simpleMessage("Brightness"),
        "I18nModuleSettings_brightnessInt": m7,
        "I18nModuleSettings_buzzer":
            MessageLookupByLibrary.simpleMessage("Buzzer"),
        "I18nModuleSettings_codingRateDenominator":
            MessageLookupByLibrary.simpleMessage("Coding Rate Denominator"),
        "I18nModuleSettings_crc": MessageLookupByLibrary.simpleMessage("CRC"),
        "I18nModuleSettings_enterBluetoothModuleNumber":
            MessageLookupByLibrary.simpleMessage("Enter module number"),
        "I18nModuleSettings_enterCurrentVoltage":
            MessageLookupByLibrary.simpleMessage(
                "Enter current voltage at batteries"),
        "I18nModuleSettings_enterMeasuredVoltage":
            MessageLookupByLibrary.simpleMessage("Enter measured voltage"),
        "I18nModuleSettings_enterResistor1":
            MessageLookupByLibrary.simpleMessage("Enter resistor 1 value"),
        "I18nModuleSettings_enterResistor2":
            MessageLookupByLibrary.simpleMessage("Enter resistor 2 value"),
        "I18nModuleSettings_enterWifiPassword": m8,
        "I18nModuleSettings_enterWifiSsid":
            MessageLookupByLibrary.simpleMessage("Enter WiFi SSID"),
        "I18nModuleSettings_errorLoadSettings":
            MessageLookupByLibrary.simpleMessage("Error load settings!"),
        "I18nModuleSettings_frequency":
            MessageLookupByLibrary.simpleMessage("Frequency"),
        "I18nModuleSettings_frequencyHz": m9,
        "I18nModuleSettings_longFrequency":
            MessageLookupByLibrary.simpleMessage("Long beep frequency"),
        "I18nModuleSettings_lora": MessageLookupByLibrary.simpleMessage("LoRa"),
        "I18nModuleSettings_module":
            MessageLookupByLibrary.simpleMessage("Module"),
        "I18nModuleSettings_moduleSettings":
            MessageLookupByLibrary.simpleMessage("Module settings"),
        "I18nModuleSettings_mv": MessageLookupByLibrary.simpleMessage("mV"),
        "I18nModuleSettings_noteFrequency": m10,
        "I18nModuleSettings_ohm": MessageLookupByLibrary.simpleMessage("Ohm"),
        "I18nModuleSettings_password":
            MessageLookupByLibrary.simpleMessage("Password"),
        "I18nModuleSettings_preambleLength":
            MessageLookupByLibrary.simpleMessage("Preamble Length"),
        "I18nModuleSettings_resistor1":
            MessageLookupByLibrary.simpleMessage("R1"),
        "I18nModuleSettings_resistor2":
            MessageLookupByLibrary.simpleMessage("R2"),
        "I18nModuleSettings_resistorOhm": m11,
        "I18nModuleSettings_saveSettingsToModule":
            MessageLookupByLibrary.simpleMessage("Save settings to module?"),
        "I18nModuleSettings_screen":
            MessageLookupByLibrary.simpleMessage("Screen"),
        "I18nModuleSettings_selectLongFrequency":
            MessageLookupByLibrary.simpleMessage("Select long beep frequency"),
        "I18nModuleSettings_selectShortFrequency":
            MessageLookupByLibrary.simpleMessage("Select short beep frequency"),
        "I18nModuleSettings_setBrightness":
            MessageLookupByLibrary.simpleMessage("Set panel brightness"),
        "I18nModuleSettings_shortFrequency":
            MessageLookupByLibrary.simpleMessage("Short beep frequency"),
        "I18nModuleSettings_signalBandwidth":
            MessageLookupByLibrary.simpleMessage("Signal Bandwidth"),
        "I18nModuleSettings_sleepMode":
            MessageLookupByLibrary.simpleMessage("Sleeping mode"),
        "I18nModuleSettings_sleepModeSeconds": m12,
        "I18nModuleSettings_spreadingFactor":
            MessageLookupByLibrary.simpleMessage("Spreading Factor"),
        "I18nModuleSettings_syncWord":
            MessageLookupByLibrary.simpleMessage("Sync Word"),
        "I18nModuleSettings_tft": MessageLookupByLibrary.simpleMessage("TFT"),
        "I18nModuleSettings_turnOnAtEvent":
            MessageLookupByLibrary.simpleMessage("Turn on after event"),
        "I18nModuleSettings_txPower":
            MessageLookupByLibrary.simpleMessage("TX Power"),
        "I18nModuleSettings_unknownModuleType": m13,
        "I18nModuleSettings_vcc": MessageLookupByLibrary.simpleMessage("VCC"),
        "I18nModuleSettings_wifi": MessageLookupByLibrary.simpleMessage("WiFi"),
        "I18nModuleSettings_wifiNetwork":
            MessageLookupByLibrary.simpleMessage("Network"),
        "I18nNtp_ntpOffset": MessageLookupByLibrary.simpleMessage("NTP offset"),
        "I18nNtp_offsetInMilliseconds": m14,
        "I18nNtp_sync": MessageLookupByLibrary.simpleMessage("Press to sync"),
        "I18nNtp_syncError":
            MessageLookupByLibrary.simpleMessage("Synchronization error"),
        "I18nNtp_syncing": MessageLookupByLibrary.simpleMessage("Syncing..."),
        "I18nProtocol_clearNumber":
            MessageLookupByLibrary.simpleMessage("Clear number"),
        "I18nProtocol_didNotFinish":
            MessageLookupByLibrary.simpleMessage("Did not finish"),
        "I18nProtocol_didNotStart":
            MessageLookupByLibrary.simpleMessage("Did not start"),
        "I18nProtocol_enterFinishNumber": MessageLookupByLibrary.simpleMessage(
            "Enter number for finished participant"),
        "I18nProtocol_finishNumber": m15,
        "I18nProtocol_hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "I18nProtocol_hideAll":
            MessageLookupByLibrary.simpleMessage("Hide all"),
        "I18nProtocol_incorrectNumber":
            MessageLookupByLibrary.simpleMessage("Incorrect number"),
        "I18nProtocol_number": MessageLookupByLibrary.simpleMessage("Number"),
        "I18nProtocol_shareFinishResults": m16,
        "I18nProtocol_shareStartResults": m17,
        "I18nProtocol_time": MessageLookupByLibrary.simpleMessage("Time"),
        "I18nProtocol_type": MessageLookupByLibrary.simpleMessage("Type"),
        "I18nProtocol_updateNumber": m18,
        "I18nProtocol_warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "I18nSettings_brightness":
            MessageLookupByLibrary.simpleMessage("Light theme"),
        "I18nSettings_checkUpdateAtStartup":
            MessageLookupByLibrary.simpleMessage("Check updates at startup"),
        "I18nSettings_countdown":
            MessageLookupByLibrary.simpleMessage("Countdown"),
        "I18nSettings_countdownAtStart":
            MessageLookupByLibrary.simpleMessage("Countdown"),
        "I18nSettings_countdownAtStartSize":
            MessageLookupByLibrary.simpleMessage("Countdown size"),
        "I18nSettings_countdownFromApp":
            MessageLookupByLibrary.simpleMessage("Use the app\'s time"),
        "I18nSettings_countdownFromAppDetails":
            MessageLookupByLibrary.simpleMessage(
                "For playback without a module"),
        "I18nSettings_darkBlue":
            MessageLookupByLibrary.simpleMessage("Dark blue theme"),
        "I18nSettings_darkRed":
            MessageLookupByLibrary.simpleMessage("Dark red theme"),
        "I18nSettings_defaults":
            MessageLookupByLibrary.simpleMessage("Defaults"),
        "I18nSettings_delay": MessageLookupByLibrary.simpleMessage("Delay"),
        "I18nSettings_delayForNewEvents": MessageLookupByLibrary.simpleMessage(
            "Delay before show new timestamps"),
        "I18nSettings_enterNumber": MessageLookupByLibrary.simpleMessage(
            "Enter positive number,\nempty or negative number -\nno limitation"),
        "I18nSettings_finishButton":
            MessageLookupByLibrary.simpleMessage("Timestamp button"),
        "I18nSettings_finishButtonSize":
            MessageLookupByLibrary.simpleMessage("Timestamp button size"),
        "I18nSettings_finishButtonSizeDescription":
            MessageLookupByLibrary.simpleMessage(
                "Timestamp button size at finish screen"),
        "I18nSettings_finishScreen":
            MessageLookupByLibrary.simpleMessage("Finish screen"),
        "I18nSettings_general": MessageLookupByLibrary.simpleMessage("General"),
        "I18nSettings_incorrectDelay":
            MessageLookupByLibrary.simpleMessage("Incorrect delay"),
        "I18nSettings_journal": MessageLookupByLibrary.simpleMessage("Journal"),
        "I18nSettings_journalLinesNumber":
            MessageLookupByLibrary.simpleMessage("Number of records displayed"),
        "I18nSettings_journalLinesNumberPopup":
            MessageLookupByLibrary.simpleMessage(
                "Number of visible lines at journal"),
        "I18nSettings_language":
            MessageLookupByLibrary.simpleMessage("Language"),
        "I18nSettings_lightBlue":
            MessageLookupByLibrary.simpleMessage("Light blue theme"),
        "I18nSettings_lightRed":
            MessageLookupByLibrary.simpleMessage("Light red theme"),
        "I18nSettings_milliseconds": m19,
        "I18nSettings_ntpOffset":
            MessageLookupByLibrary.simpleMessage("NTP offset"),
        "I18nSettings_ntpOffsetDescription":
            MessageLookupByLibrary.simpleMessage(
                "Synchronize on application startup"),
        "I18nSettings_numberOfLines":
            MessageLookupByLibrary.simpleMessage("Number of lines"),
        "I18nSettings_participantsName":
            MessageLookupByLibrary.simpleMessage("Name the participants"),
        "I18nSettings_pitch": MessageLookupByLibrary.simpleMessage("Pitch"),
        "I18nSettings_pixelSize": m20,
        "I18nSettings_rate": MessageLookupByLibrary.simpleMessage("Rate"),
        "I18nSettings_reconnect":
            MessageLookupByLibrary.simpleMessage("Reconnect"),
        "I18nSettings_reconnectDescription":
            MessageLookupByLibrary.simpleMessage(
                "Trying to reconnect when disconnected"),
        "I18nSettings_replaceStartCountdown":
            MessageLookupByLibrary.simpleMessage(
                "Replace start time with countdown"),
        "I18nSettings_resetToDefaults":
            MessageLookupByLibrary.simpleMessage("Reset to defaults"),
        "I18nSettings_settings":
            MessageLookupByLibrary.simpleMessage("Settings"),
        "I18nSettings_sound": MessageLookupByLibrary.simpleMessage("Sound"),
        "I18nSettings_startButton":
            MessageLookupByLibrary.simpleMessage("Timestamp button"),
        "I18nSettings_startButtonSize":
            MessageLookupByLibrary.simpleMessage("Timestamp button size"),
        "I18nSettings_startButtonSizeDescription":
            MessageLookupByLibrary.simpleMessage(
                "Timestamp button size at start screen"),
        "I18nSettings_startScreen":
            MessageLookupByLibrary.simpleMessage("Start screen"),
        "I18nSettings_themes": MessageLookupByLibrary.simpleMessage("Themes"),
        "I18nSettings_update": MessageLookupByLibrary.simpleMessage("Update"),
        "I18nSettings_voice": MessageLookupByLibrary.simpleMessage("Voice"),
        "I18nSettings_voiceFromApp":
            MessageLookupByLibrary.simpleMessage("Use the app\'s time"),
        "I18nSettings_voiceFromAppDetails":
            MessageLookupByLibrary.simpleMessage(
                "For playback without a module"),
        "I18nSettings_voiceLanguage":
            MessageLookupByLibrary.simpleMessage("Language"),
        "I18nSettings_voiceMessages":
            MessageLookupByLibrary.simpleMessage("Voice messages"),
        "I18nSettings_voicePitch":
            MessageLookupByLibrary.simpleMessage("Voice pitch"),
        "I18nSettings_voiceRate":
            MessageLookupByLibrary.simpleMessage("Voice rate"),
        "I18nSettings_voiceVolume":
            MessageLookupByLibrary.simpleMessage("Voice volume"),
        "I18nSettings_volume": MessageLookupByLibrary.simpleMessage("Volume"),
        "I18nSettings_wakelock":
            MessageLookupByLibrary.simpleMessage("Wakelock"),
        "I18nStart_addParticipant":
            MessageLookupByLibrary.simpleMessage("Add participant"),
        "I18nStart_didNotStart":
            MessageLookupByLibrary.simpleMessage("Did not start"),
        "I18nStart_incorrectCorrection":
            MessageLookupByLibrary.simpleMessage("Incorrect correction"),
        "I18nStart_incorrectTime":
            MessageLookupByLibrary.simpleMessage("Incorrect time"),
        "I18nStart_participantCategory": m21,
        "I18nStart_participantCity": m22,
        "I18nStart_participantNickname": m23,
        "I18nStart_participantNumber": m24,
        "I18nStart_participantNumberWithName": m25,
        "I18nStart_participantTeam": m26,
        "I18nStart_participantYear": m27,
        "I18nStart_sliverAutomaticCorrection":
            MessageLookupByLibrary.simpleMessage("Auto\ncorrection"),
        "I18nStart_sliverManualCorrection":
            MessageLookupByLibrary.simpleMessage("Manual\nCorrection"),
        "I18nStart_sliverNumber": MessageLookupByLibrary.simpleMessage("No."),
        "I18nStart_sliverStart": MessageLookupByLibrary.simpleMessage("Start"),
        "I18nStart_startTime":
            MessageLookupByLibrary.simpleMessage("Start Time"),
        "I18nUpdate_changelog":
            MessageLookupByLibrary.simpleMessage("Changelog"),
        "I18nUpdate_checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Check for updates"),
        "I18nUpdate_connecting":
            MessageLookupByLibrary.simpleMessage("Connecting..."),
        "I18nUpdate_downloaded": m28,
        "I18nUpdate_updateToVersion": m29,
        "I18nUpdate_whatsNew":
            MessageLookupByLibrary.simpleMessage("What\'s new")
      };
}
