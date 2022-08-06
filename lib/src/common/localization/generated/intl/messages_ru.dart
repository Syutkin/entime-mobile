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

  static String m4(number) => "Финишировал номер ${number}";

  static String m5(number) =>
      "Участнику с номером ${number} уже присвоено финишное время. Установить новое значение?";

  static String m0(milliseconds) => "${milliseconds}мс";

  static String m1(size) => "${size}px";

  static String m2(current, total) => "${current} из ${total}";

  static String m3(version) => "Обновить до ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "I18nProtocol_clearNumber":
            MessageLookupByLibrary.simpleMessage("Убрать номер"),
        "I18nProtocol_didNotFinish":
            MessageLookupByLibrary.simpleMessage("Не финишировал"),
        "I18nProtocol_didNotStart":
            MessageLookupByLibrary.simpleMessage("Не стартовал"),
        "I18nProtocol_enterFinishNumber": MessageLookupByLibrary.simpleMessage(
            "Введите номер финишировавшего участника"),
        "I18nProtocol_finishNumber": m4,
        "I18nProtocol_hide": MessageLookupByLibrary.simpleMessage("Скрыть"),
        "I18nProtocol_hideAll":
            MessageLookupByLibrary.simpleMessage("Скрыть всё"),
        "I18nProtocol_incorrectNumber":
            MessageLookupByLibrary.simpleMessage("Неверный номер"),
        "I18nProtocol_number": MessageLookupByLibrary.simpleMessage("Номер"),
        "I18nProtocol_time": MessageLookupByLibrary.simpleMessage("Время"),
        "I18nProtocol_type": MessageLookupByLibrary.simpleMessage("Тип"),
        "I18nProtocol_updateNumber": m5,
        "I18nProtocol_warning":
            MessageLookupByLibrary.simpleMessage("Предупреждение"),
        "I18nSettings_autosubstitution":
            MessageLookupByLibrary.simpleMessage("Автоподстановка номеров"),
        "I18nSettings_autosubstitutionDelay":
            MessageLookupByLibrary.simpleMessage(
                "Задержка перед автоматическим подставлением новых номеров"),
        "I18nSettings_bluetooth":
            MessageLookupByLibrary.simpleMessage("Bluetooth"),
        "I18nSettings_checkUpdateAtStartup":
            MessageLookupByLibrary.simpleMessage(
                "Проверка обновлений при старте"),
        "I18nSettings_countdown":
            MessageLookupByLibrary.simpleMessage("Обратный отсчёт"),
        "I18nSettings_countdownAtStart":
            MessageLookupByLibrary.simpleMessage("Обратный отсчёт"),
        "I18nSettings_countdownAtStartSize":
            MessageLookupByLibrary.simpleMessage("Размер обратного отсчёта"),
        "I18nSettings_darkBlue":
            MessageLookupByLibrary.simpleMessage("Синяя тёмная тема"),
        "I18nSettings_darkRed":
            MessageLookupByLibrary.simpleMessage("Красная тёмная тема"),
        "I18nSettings_defaults":
            MessageLookupByLibrary.simpleMessage("По умолчанию"),
        "I18nSettings_delay": MessageLookupByLibrary.simpleMessage("Задержка"),
        "I18nSettings_delayForNewEvents": MessageLookupByLibrary.simpleMessage(
            "Задержка перед показом новых отсечек"),
        "I18nSettings_enterNumber": MessageLookupByLibrary.simpleMessage(
            "Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений"),
        "I18nSettings_finishButton":
            MessageLookupByLibrary.simpleMessage("Кнопка \"отсечка\""),
        "I18nSettings_finishButtonSize":
            MessageLookupByLibrary.simpleMessage("Размер кнопки \"отсечка\""),
        "I18nSettings_finishButtonSizeDescription":
            MessageLookupByLibrary.simpleMessage(
                "Размер кнопки \"отсечка\" на финишном экране"),
        "I18nSettings_finishScreen":
            MessageLookupByLibrary.simpleMessage("Финишный экран"),
        "I18nSettings_general":
            MessageLookupByLibrary.simpleMessage("Основные"),
        "I18nSettings_incorrectDelay":
            MessageLookupByLibrary.simpleMessage("Неверная задержка"),
        "I18nSettings_journal": MessageLookupByLibrary.simpleMessage("Журнал"),
        "I18nSettings_journalLinesNumber": MessageLookupByLibrary.simpleMessage(
            "Количество показываемых записей"),
        "I18nSettings_journalLinesNumberPopup":
            MessageLookupByLibrary.simpleMessage(
                "Количество отображамых строк в журнале"),
        "I18nSettings_language": MessageLookupByLibrary.simpleMessage("Язык"),
        "I18nSettings_lightBlue":
            MessageLookupByLibrary.simpleMessage("Синяя светлая тема"),
        "I18nSettings_lightRed":
            MessageLookupByLibrary.simpleMessage("Красная светлая тема"),
        "I18nSettings_milliseconds": m0,
        "I18nSettings_numberOfLines":
            MessageLookupByLibrary.simpleMessage("Количество строк"),
        "I18nSettings_participantsName":
            MessageLookupByLibrary.simpleMessage("Называть имена участников"),
        "I18nSettings_pitch": MessageLookupByLibrary.simpleMessage("Тембр"),
        "I18nSettings_pixelSize": m1,
        "I18nSettings_rate": MessageLookupByLibrary.simpleMessage("Скорость"),
        "I18nSettings_reconnect":
            MessageLookupByLibrary.simpleMessage("Переподключение"),
        "I18nSettings_reconnectDescription":
            MessageLookupByLibrary.simpleMessage(
                "Пытаться переподключится к модулю при обрыве связи"),
        "I18nSettings_replaceStartCountdown":
            MessageLookupByLibrary.simpleMessage(
                "Заменять время старта обратным отсчётом"),
        "I18nSettings_resetToDefaults":
            MessageLookupByLibrary.simpleMessage("Настройки по умолчанию"),
        "I18nSettings_settings":
            MessageLookupByLibrary.simpleMessage("Настройки"),
        "I18nSettings_sound": MessageLookupByLibrary.simpleMessage("Звук"),
        "I18nSettings_startButton":
            MessageLookupByLibrary.simpleMessage("Кнопка \"отсечка\""),
        "I18nSettings_startButtonSize":
            MessageLookupByLibrary.simpleMessage("Размер кнопки \"отсечка\""),
        "I18nSettings_startButtonSizeDescription":
            MessageLookupByLibrary.simpleMessage(
                "Размер кнопки \"отсечка\" на стартовом экране"),
        "I18nSettings_startScreen":
            MessageLookupByLibrary.simpleMessage("Стартовый экран"),
        "I18nSettings_themes": MessageLookupByLibrary.simpleMessage("Темы"),
        "I18nSettings_update":
            MessageLookupByLibrary.simpleMessage("Обновление"),
        "I18nSettings_voice": MessageLookupByLibrary.simpleMessage("Голос"),
        "I18nSettings_voiceMessages":
            MessageLookupByLibrary.simpleMessage("Голосовые сообщения"),
        "I18nSettings_voicePitch":
            MessageLookupByLibrary.simpleMessage("Тембр голоса"),
        "I18nSettings_voiceRate":
            MessageLookupByLibrary.simpleMessage("Скорость произношения"),
        "I18nSettings_voiceVolume":
            MessageLookupByLibrary.simpleMessage("Громкость голоса"),
        "I18nSettings_volume":
            MessageLookupByLibrary.simpleMessage("Громкость"),
        "I18nSettings_wakelock":
            MessageLookupByLibrary.simpleMessage("Всегда включённый экран"),
        "I18nUpdate_changelog":
            MessageLookupByLibrary.simpleMessage("Список изменений"),
        "I18nUpdate_checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Проверить обновления"),
        "I18nUpdate_connecting":
            MessageLookupByLibrary.simpleMessage("Соединение..."),
        "I18nUpdate_downloaded": m2,
        "I18nUpdate_updateToVersion": m3,
        "I18nUpdate_whatsNew":
            MessageLookupByLibrary.simpleMessage("Что нового")
      };
}
