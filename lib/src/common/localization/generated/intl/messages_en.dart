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

  static String m0(milliseconds) => "${milliseconds}ms";

  static String m1(size) => "${size}px";

  static String m2(current, total) => "${current} from ${total}";

  static String m3(version) => "Update to ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "I18nSettings_autosubstitution":
            MessageLookupByLibrary.simpleMessage("Autosubstitute numbers"),
        "I18nSettings_autosubstitutionDelay":
            MessageLookupByLibrary.simpleMessage(
                "Delay before autosubstitute new numbers"),
        "I18nSettings_bluetooth":
            MessageLookupByLibrary.simpleMessage("Bluetooth"),
        "I18nSettings_checkUpdateAtStartup":
            MessageLookupByLibrary.simpleMessage("Check updates at startup"),
        "I18nSettings_countdown":
            MessageLookupByLibrary.simpleMessage("Countdown"),
        "I18nSettings_countdownAtStart":
            MessageLookupByLibrary.simpleMessage("Countdown"),
        "I18nSettings_countdownAtStartSize":
            MessageLookupByLibrary.simpleMessage("Countdown size"),
        "I18nSettings_defaults":
            MessageLookupByLibrary.simpleMessage("Defaults"),
        "I18nSettings_delayForNewEvents": MessageLookupByLibrary.simpleMessage(
            "Delay before show new timestamps"),
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
        "I18nSettings_journal": MessageLookupByLibrary.simpleMessage("Journal"),
        "I18nSettings_journalLinesNumber":
            MessageLookupByLibrary.simpleMessage("Number of records displayed"),
        "I18nSettings_language":
            MessageLookupByLibrary.simpleMessage("Language"),
        "I18nSettings_milliseconds": m0,
        "I18nSettings_participantsName":
            MessageLookupByLibrary.simpleMessage("Name the participants"),
        "I18nSettings_pitch": MessageLookupByLibrary.simpleMessage("Pitch"),
        "I18nSettings_pixelSize": m1,
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
        "I18nSettings_voiceMessages":
            MessageLookupByLibrary.simpleMessage("Voice messages"),
        "I18nSettings_volume": MessageLookupByLibrary.simpleMessage("Volume"),
        "I18nSettings_wakelock":
            MessageLookupByLibrary.simpleMessage("Wakelock"),
        "I18nUpdate_changelog":
            MessageLookupByLibrary.simpleMessage("Changelog"),
        "I18nUpdate_checkForUpdates":
            MessageLookupByLibrary.simpleMessage("Check for updates"),
        "I18nUpdate_connecting":
            MessageLookupByLibrary.simpleMessage("Connecting..."),
        "I18nUpdate_downloaded": m2,
        "I18nUpdate_updateToVersion": m3,
        "I18nUpdate_whatsNew":
            MessageLookupByLibrary.simpleMessage("What\'s new")
      };
}
