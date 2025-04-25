import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../../audio/bloc/audio_bloc.dart';
import '../settings.dart';
import 'select_theme_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(title: Text(Localization.current.I18nSettings_settings)), body: const _SettingsList());
}

class _SettingsList extends StatelessWidget {
  const _SettingsList();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final settingsThemeData = const SettingsThemeData().copyWith(
      settingsListBackground: colorScheme.surface,
      settingsTileTextColor: colorScheme.onSurface,
      titleTextColor: colorScheme.primary,
    );
    final settingsCubit = context.read<SettingsCubit>();
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder:
          (context, settingsState) => SettingsList(
            platform: DevicePlatform.android,
            darkTheme: settingsThemeData,
            lightTheme: settingsThemeData,
            sections: [
              SettingsSection(
                title: Text(Localization.current.I18nSettings_general),
                tiles: [
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_reconnect),
                    description: Text(Localization.current.I18nSettings_reconnectDescription),
                    //leading:  Icon(Icons.bluetooth),
                    initialValue: settingsState.reconnect,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(reconnect: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_ntpOffset),
                    description: Text(Localization.current.I18nSettings_ntpOffsetDescription),
                    initialValue: settingsState.updateNtpOffsetAtStartup,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(updateNtpOffsetAtStartup: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_wakelock),
                    // titleMaxLines: 2,
                    //leading:  Icon(Icons.lightbulb_outline),
                    initialValue: settingsState.wakelock,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(wakelock: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_sound),
                    //leading:  Icon(Icons.volume_up),
                    initialValue: settingsState.sound,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(sound: value));
                    },
                  ),
                  SettingsTile(
                    // ToDo: выбор локализации
                    enabled: false,
                    title: Text(Localization.current.I18nSettings_language),
                    trailing: DropdownMenu<String>(
                      inputDecorationTheme: const InputDecorationTheme(border: InputBorder.none),
                      dropdownMenuEntries: _dropdownMenuEntries(),
                      initialSelection: Localizations.localeOf(context).languageCode,
                      onSelected: (locale) {
                        if (locale != null) {
                          Localization.delegate.load(Locale(locale));
                          settingsCubit.update(settingsState.copyWith(language: locale));
                        }
                      },
                    ),
                  ),
                ],
              ),
              SettingsSection(
                title: Text(Localization.current.I18nSettings_countdown),
                tiles: [
                  SettingsTile.switchTile(
                    enabled: settingsState.sound,
                    title: Text(Localization.current.I18nSettings_countdown),
                    //leading:  Icon(Icons.timer),
                    initialValue: settingsState.beep,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(beep: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    enabled: settingsState.sound && settingsState.beep,
                    title: Text(Localization.current.I18nSettings_countdownFromApp),
                    description: Text(Localization.current.I18nSettings_countdownFromAppDetails),
                    initialValue: settingsState.beepFromApp,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(beepFromApp: value));
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: Text(Localization.current.I18nSettings_voiceMessages),
                tiles: [
                  SettingsTile.switchTile(
                    enabled: settingsState.sound,
                    title: Text(Localization.current.I18nSettings_voice),
                    //leading:  Icon(MdiIcons.textToSpeech),
                    initialValue: settingsState.voice,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(voice: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_voiceFromApp),
                    description: Text(Localization.current.I18nSettings_voiceFromAppDetails),
                    //leading:  Icon(MdiIcons.textToSpeech),
                    initialValue: settingsState.voiceFromApp,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(voiceFromApp: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_participantsName),
                    // titleMaxLines: 2,
                    //leading:  Icon(MdiIcons.textToSpeech),
                    initialValue: settingsState.voiceName,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(voiceName: value));
                    },
                  ),
                  SettingsTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_volume),
                    //leading:  Icon(Icons.volume_up),
                    trailing: Text('${(settingsState.volume * 100).round()}%'),
                    onPressed: (context) async {
                      final value = await setVolumePopup(context, settingsState);
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(volume: value));
                      }
                    },
                  ),
                  SettingsTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_pitch),
                    //leading:  Icon(Icons.record_voice_over),
                    trailing: Text(settingsState.pitch.toStringAsFixed(2)),
                    onPressed: (context) async {
                      final value = await setPitchPopup(context, settingsState);
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(pitch: value));
                      }
                    },
                  ),
                  SettingsTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_rate),
                    //leading:  Icon(MdiIcons.playSpeed),
                    trailing: Text(settingsState.rate.toStringAsFixed(2)),
                    onPressed: (context) async {
                      final value = await setRatePopup(context, settingsState);
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(rate: value));
                      }
                    },
                  ),
                  SettingsTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_ttsEngine),
                    trailing: BlocBuilder<AudioBloc, AudioState>(
                      builder: (context, state) {
                        return switch (state) {
                          AudioStateInitial() => const SizedBox.shrink(),
                          AudioStateInitialized() =>Text(state.engine ?? ''),
                        };
                      },
                    ),
                  ),
                  SettingsTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_ttsVoice),
                    trailing: BlocBuilder<AudioBloc, AudioState>(
                      builder: (context, state) {
                        return switch (state) {
                          AudioStateInitial() => const SizedBox.shrink(),
                          AudioStateInitialized() =>Text(state.voice ?? ''),
                        };
                      },
                    ),
                  ),
                  SettingsTile(
                    enabled: settingsState.sound && settingsState.voice,
                    title: Text(Localization.current.I18nSettings_voiceLanguage),
                    //leading:  Icon(Icons.language),
                    // trailing: Text(settingsState.language),
                    trailing: Text(Intl.getCurrentLocale()),
                    //ToDo: change locale
                    // onPressed: (context) {},
                  ),
                ],
              ),
              SettingsSection(
                title: Text(Localization.current.I18nSettings_startScreen),
                tiles: [
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_startButton),
                    //leading:  Icon(MdiIcons.handBackLeft),
                    initialValue: settingsState.startFab,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(startFab: value));
                    },
                  ),
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_startButtonSize),
                    //leading:  Icon(MdiIcons.handBackLeft),
                    trailing: Text(Localization.current.I18nSettings_pixelSize(settingsState.startFabSize.round())),
                    onPressed: (context) async {
                      final value = await setFloatingButtonSizePopup(
                        context,
                        settingsState.startFabSize,
                        text: Localization.current.I18nSettings_startButtonSizeDescription,
                      );
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(startFabSize: value));
                      }
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_countdownAtStart),
                    //leading:  Icon(MdiIcons.timer),
                    initialValue: settingsState.countdown,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(countdown: value));
                    },
                  ),
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_countdownAtStartSize),
                    //leading:  Icon(MdiIcons.timer),
                    trailing: Text(Localization.current.I18nSettings_pixelSize(settingsState.startFabSize.round())),
                    onPressed: (context) async {
                      final value = await setFloatingButtonSizePopup(
                        context,
                        settingsState.countdownSize,
                        text: Localization.current.I18nSettings_countdownAtStartSize,
                      );
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(countdownSize: value));
                      }
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_replaceStartCountdown),
                    // titleMaxLines: 2,
                    //leading:  Icon(MdiIcons.timer),
                    initialValue: settingsState.countdownAtStartTime,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(countdownAtStartTime: value));
                    },
                  ),
                  // SettingsTile.switchTile(
                  //   title: Text(
                  //     Localization.current.I18nSettings_showStartDifference,
                  //   ),
                  //   description: Text(
                  //     Localization
                  //         .current.I18nSettings_showStartDifferenceDescription,
                  //   ),
                  //   initialValue: settingsState.showStartDifference,
                  //   onToggle: (value) {
                  //     settingsCubit.add(
                  //       update(
                  //         settings: settingsState.settings
                  //             .copyWith(showStartDifference: value),
                  //       ),
                  //     );
                  //   },
                  // ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_showColorStartDifference),
                    description: Text(Localization.current.I18nSettings_showColorStartDifferenceDescription),
                    initialValue: settingsState.showColorStartDifference,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(showColorStartDifference: value));
                    },
                  ),
                  SettingsTile(
                    enabled: settingsState.showColorStartDifference,
                    title: Text(Localization.current.I18nSettings_startFinishDifference),
                    trailing: Text(
                      Localization.current.I18nSettings_milliseconds(settingsState.startDifferenceThreshold),
                    ),
                    //leading:  Icon(MdiIcons.handBackLeft),
                    onPressed: (context) async {
                      final value = await setStartFinishDifferencePopup(
                        context,
                        difference: settingsState.startDifferenceThreshold,
                        title: Localization.current.I18nSettings_startFinishDifference,
                      );
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(startDifferenceThreshold: value));
                      }
                    },
                  ),
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_startDeltaInSeconds),
                    trailing: Text(Localization.current.I18nSettings_seconds(settingsState.deltaInSeconds)),
                    onPressed: (context) async {
                      final value = await setDeltaInSecondsPopup(context, delta: settingsState.deltaInSeconds);
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(deltaInSeconds: value));
                      }
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: Text(Localization.current.I18nSettings_finishScreen),
                tiles: [
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_delayForNewEvents),
                    // titleMaxLines: 2,
                    trailing: Text(Localization.current.I18nSettings_milliseconds(settingsState.finishDelay)),
                    //leading:  Icon(MdiIcons.clockOutline),
                    onPressed: (context) async {
                      final value = await setDelayPopup(
                        context,
                        settingsState.finishDelay,
                        Localization.current.I18nSettings_delayForNewEvents,
                      );
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(finishDelay: value));
                      }
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_autoSubstitution),
                    //leading:  Icon(MdiIcons.autoFix),
                    initialValue: settingsState.substituteNumbers,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(substituteNumbers: value));
                    },
                  ),
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_autoSubstitutionDelay),
                    trailing: Text(Localization.current.I18nSettings_milliseconds(settingsState.finishDelay)),
                    //leading:  Icon(MdiIcons.clockOutline),
                    onPressed: (context) async {
                      final value = await setDelayPopup(
                        context,
                        settingsState.substituteNumbersDelay,
                        Localization.current.I18nSettings_autoSubstitutionDelay,
                      );
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(substituteNumbersDelay: value));
                      }
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_finishButton),
                    //leading:  Icon(MdiIcons.handBackLeft),
                    initialValue: settingsState.finishFab,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(finishFab: value));
                    },
                  ),
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_finishButtonSize),
                    trailing: Text(Localization.current.I18nSettings_pixelSize(settingsState.finishFabSize.round())),
                    //leading:  Icon(MdiIcons.handBackLeft),
                    onPressed: (context) async {
                      final value = await setFloatingButtonSizePopup(
                        context,
                        settingsState.finishFabSize,
                        text: Localization.current.I18nSettings_finishButtonSizeDescription,
                      );
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(finishFabSize: value));
                      }
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_showFinishDifference),
                    description: Text(Localization.current.I18nSettings_showFinishDifferenceDescription),
                    initialValue: settingsState.showFinishDifference,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(showFinishDifference: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_showColorFinishDifference),
                    description: Text(Localization.current.I18nSettings_showColorFinishDifferenceDescription),
                    initialValue: settingsState.showColorFinishDifference,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(showColorFinishDifference: value));
                    },
                  ),
                  SettingsTile(
                    enabled: settingsState.showColorFinishDifference,
                    title: Text(Localization.current.I18nSettings_startFinishDifference),
                    trailing: Text(
                      Localization.current.I18nSettings_milliseconds(settingsState.finishDifferenceThreshold),
                    ),
                    //leading:  Icon(MdiIcons.handBackLeft),
                    onPressed: (context) async {
                      final value = await setStartFinishDifferencePopup(
                        context,
                        difference: settingsState.finishDifferenceThreshold,
                        title: Localization.current.I18nSettings_startFinishDifference,
                      );
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(finishDifferenceThreshold: value));
                      }
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: Text(Localization.current.I18nSettings_update),
                tiles: [
                  SettingsTile.switchTile(
                    title: Text(Localization.current.I18nSettings_checkUpdateAtStartup),
                    // titleMaxLines: 2,
                    //leading:  Icon(MdiIcons.update),
                    initialValue: settingsState.checkUpdates,
                    onToggle: (value) {
                      settingsCubit.update(settingsState.copyWith(checkUpdates: value));
                    },
                  ),
                ],
              ),
              // ToDo: добавить выбор контраста и dynamicSchemeVariant
              SettingsSection(title: Text(Localization.current.I18nSettings_themes), tiles: _themes(settingsCubit)),
              SettingsSection(
                title: Text(Localization.current.I18nSettings_journal),
                tiles: [
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_journalLinesNumber),
                    // titleMaxLines: 2,
                    trailing:
                        settingsState.logLimit > -1
                            ? Text('${settingsState.logLimit}')
                            // : Text('без ограничений'),
                            : Icon(MdiIcons.infinity),
                    //leading:  Icon(MdiIcons.filter),
                    onPressed: (context) async {
                      final value = await setLogLimitPopup(context, settingsState.logLimit);
                      if (value != null) {
                        settingsCubit.update(settingsState.copyWith(logLimit: value));
                      }
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: Text(Localization.current.I18nSettings_defaults),
                tiles: [
                  SettingsTile(
                    title: Text(Localization.current.I18nSettings_resetToDefaults),
                    //leading:  Icon(MdiIcons.backupRestore),
                    onPressed: (context) async {
                      await settingsCubit.setDefault();
                    },
                  ),
                ],
              ),
            ],
          ),
    );
  }

  List<SettingsTile> _themes(SettingsCubit bloc) {
    final settings = bloc.state;
    // final seedColor = settings.seedColor;
    return <SettingsTile>[
      SettingsTile.switchTile(
        title: Text(Localization.current.I18nSettings_brightness),
        initialValue: settings.brightness == Brightness.light,
        onToggle: (value) {
          bloc.update(settings.copyWith(brightness: value ? Brightness.light : Brightness.dark));
        },
      ),
      SettingsTile.switchTile(
        enabled: settings.brightness == Brightness.dark,
        title: Text(Localization.current.I18nSettings_oLEDBackground),
        initialValue: settings.isOLEDBackground,
        onToggle: (value) {
          bloc.update(settings.copyWith(isOLEDBackground: value));
        },
      ),
      SettingsTile.navigation(
        title: Text(Localization.current.I18nSettings_themeSettings),
        onPressed: (context) {
          Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => const SelectThemeScreen()));
        },
      ),
    ];
  }

  List<DropdownMenuEntry<String>> _dropdownMenuEntries() {
    final entries = <DropdownMenuEntry<String>>[];
    for (final locale in Localization.supportedLocales) {
      entries.add(DropdownMenuEntry(value: locale.languageCode, label: locale.languageCode));
    }
    return entries;
  }
}
