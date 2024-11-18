import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../bloc/settings_bloc.dart';
import '../model/theme.dart';
import 'settings_popups.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(Localization.current.I18nSettings_settings),
        ),
        body: const _SettingsList(),
      );
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
    final settingsBloc = context.read<SettingsBloc>();
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) => SettingsList(
        platform: DevicePlatform.android,
        darkTheme:settingsThemeData,
        lightTheme: settingsThemeData,
        sections: [
          SettingsSection(
            title: Text(Localization.current.I18nSettings_general),
            tiles: [
              SettingsTile.switchTile(
                title: Text(Localization.current.I18nSettings_reconnect),
                description: Text(
                  Localization.current.I18nSettings_reconnectDescription,
                ),
                //leading:  Icon(Icons.bluetooth),
                initialValue: settingsState.settings.reconnect,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(reconnect: value),
                    ),
                  );
                },
              ),
              SettingsTile.switchTile(
                title: Text(Localization.current.I18nSettings_ntpOffset),
                description: Text(
                  Localization.current.I18nSettings_ntpOffsetDescription,
                ),
                initialValue: settingsState.settings.updateNtpOffsetAtStartup,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settingsState.settings
                          .copyWith(updateNtpOffsetAtStartup: value),
                    ),
                  );
                },
              ),
              SettingsTile.switchTile(
                title: Text(Localization.current.I18nSettings_wakelock),
                // titleMaxLines: 2,
                //leading:  Icon(Icons.lightbulb_outline),
                initialValue: settingsState.settings.wakelock,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(wakelock: value),
                    ),
                  );
                },
              ),
              SettingsTile.switchTile(
                title: Text(Localization.current.I18nSettings_sound),
                //leading:  Icon(Icons.volume_up),
                initialValue: settingsState.settings.sound,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settingsState.settings.copyWith(sound: value),
                    ),
                  );
                },
              ),
              SettingsTile(
                // ToDo: выбор локализации
                enabled: false,
                title: Text(Localization.current.I18nSettings_language),
                trailing: DropdownMenu<String>(
                  inputDecorationTheme:
                      const InputDecorationTheme(border: InputBorder.none),
                  dropdownMenuEntries: _dropdownMenuEntries(),
                  initialSelection:
                      Localizations.localeOf(context).languageCode,
                  onSelected: (locale) {
                    if (locale != null) {
                      Localization.delegate.load(Locale(locale));
                      settingsBloc.add(
                        SettingsEvent.update(
                          settings:
                              settingsState.settings.copyWith(language: locale),
                        ),
                      );
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
                enabled: settingsState.settings.sound,
                title: Text(Localization.current.I18nSettings_countdown),
                //leading:  Icon(Icons.timer),
                initialValue: settingsState.settings.beep,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settingsState.settings.copyWith(beep: value),
                    ),
                  );
                },
              ),
              SettingsTile.switchTile(
                enabled:
                    settingsState.settings.sound && settingsState.settings.beep,
                title: Text(Localization.current.I18nSettings_countdownFromApp),
                description: Text(
                  Localization.current.I18nSettings_countdownFromAppDetails,
                ),
                initialValue: settingsState.settings.beepFromApp,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(beepFromApp: value),
                    ),
                  );
                },
              ),
            ],
          ),
          SettingsSection(
            title: Text(Localization.current.I18nSettings_voiceMessages),
            tiles: [
              SettingsTile.switchTile(
                enabled: settingsState.settings.sound,
                title: Text(Localization.current.I18nSettings_voice),
                //leading:  Icon(MdiIcons.textToSpeech),
                initialValue: settingsState.settings.voice,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settingsState.settings.copyWith(voice: value),
                    ),
                  );
                },
              ),
              SettingsTile.switchTile(
                enabled: settingsState.settings.sound &&
                    settingsState.settings.voice,
                title: Text(Localization.current.I18nSettings_voiceFromApp),
                description:
                    Text(Localization.current.I18nSettings_voiceFromAppDetails),
                //leading:  Icon(MdiIcons.textToSpeech),
                initialValue: settingsState.settings.voiceFromApp,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(voiceFromApp: value),
                    ),
                  );
                },
              ),
              SettingsTile.switchTile(
                enabled: settingsState.settings.sound &&
                    settingsState.settings.voice,
                title: Text(Localization.current.I18nSettings_participantsName),
                // titleMaxLines: 2,
                //leading:  Icon(MdiIcons.textToSpeech),
                initialValue: settingsState.settings.voiceName,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(voiceName: value),
                    ),
                  );
                },
              ),
              SettingsTile(
                enabled: settingsState.settings.sound &&
                    settingsState.settings.voice,
                title: Text(Localization.current.I18nSettings_volume),
                //leading:  Icon(Icons.volume_up),
                trailing:
                    Text('${(settingsState.settings.volume * 100).round()}%'),
                onPressed: (context) async {
                  final value = await setVolumePopup(context, settingsState);
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings:
                            settingsState.settings.copyWith(volume: value),
                      ),
                    );
                  }
                },
              ),
              SettingsTile(
                enabled: settingsState.settings.sound &&
                    settingsState.settings.voice,
                title: Text(Localization.current.I18nSettings_pitch),
                //leading:  Icon(Icons.record_voice_over),
                trailing: Text(settingsState.settings.pitch.toStringAsFixed(2)),
                onPressed: (context) async {
                  final value = await setPitchPopup(context, settingsState);
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settingsState.settings.copyWith(pitch: value),
                      ),
                    );
                  }
                },
              ),
              SettingsTile(
                enabled: settingsState.settings.sound &&
                    settingsState.settings.voice,
                title: Text(Localization.current.I18nSettings_rate),
                //leading:  Icon(MdiIcons.playSpeed),
                trailing: Text(settingsState.settings.rate.toStringAsFixed(2)),
                onPressed: (context) async {
                  final value = await setRatePopup(context, settingsState);
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settingsState.settings.copyWith(rate: value),
                      ),
                    );
                  }
                },
              ),
              SettingsTile(
                enabled: settingsState.settings.sound &&
                    settingsState.settings.voice,
                title: Text(Localization.current.I18nSettings_voiceLanguage),
                //leading:  Icon(Icons.language),
                // trailing: Text(settingsState.settings.language),
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
                initialValue: settingsState.settings.startFab,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(startFab: value),
                    ),
                  );
                },
              ),
              SettingsTile(
                title: Text(Localization.current.I18nSettings_startButtonSize),
                //leading:  Icon(MdiIcons.handBackLeft),
                trailing: Text(
                  Localization.current.I18nSettings_pixelSize(
                    settingsState.settings.startFabSize.round(),
                  ),
                ),
                onPressed: (context) async {
                  final value = await setFloatingButtonSizePopup(
                    context,
                    settingsState.settings.startFabSize,
                    text: Localization
                        .current.I18nSettings_startButtonSizeDescription,
                  );
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settingsState.settings
                            .copyWith(startFabSize: value),
                      ),
                    );
                  }
                },
              ),
              SettingsTile.switchTile(
                title: Text(Localization.current.I18nSettings_countdownAtStart),
                //leading:  Icon(MdiIcons.timer),
                initialValue: settingsState.settings.countdown,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(countdown: value),
                    ),
                  );
                },
              ),
              SettingsTile(
                title: Text(
                  Localization.current.I18nSettings_countdownAtStartSize,
                ),
                //leading:  Icon(MdiIcons.timer),
                trailing: Text(
                  Localization.current.I18nSettings_pixelSize(
                    settingsState.settings.startFabSize.round(),
                  ),
                ),
                onPressed: (context) async {
                  final value = await setFloatingButtonSizePopup(
                    context,
                    settingsState.settings.countdownSize,
                    text:
                        Localization.current.I18nSettings_countdownAtStartSize,
                  );
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settingsState.settings
                            .copyWith(countdownSize: value),
                      ),
                    );
                  }
                },
              ),
              SettingsTile.switchTile(
                title: Text(
                  Localization.current.I18nSettings_replaceStartCountdown,
                ),
                // titleMaxLines: 2,
                //leading:  Icon(MdiIcons.timer),
                initialValue: settingsState.settings.countdownAtStartTime,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settingsState.settings
                          .copyWith(countdownAtStartTime: value),
                    ),
                  );
                },
              ),
            ],
          ),
          SettingsSection(
            title: Text(Localization.current.I18nSettings_finishScreen),
            tiles: [
              SettingsTile(
                title:
                    Text(Localization.current.I18nSettings_delayForNewEvents),
                // titleMaxLines: 2,
                trailing: Text(
                  Localization.current.I18nSettings_milliseconds(
                    settingsState.settings.finishDelay,
                  ),
                ),
                //leading:  Icon(MdiIcons.clockOutline),
                onPressed: (context) async {
                  final value = await setDelayPopup(
                    context,
                    settingsState.settings.finishDelay,
                    Localization.current.I18nSettings_delayForNewEvents,
                  );
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings:
                            settingsState.settings.copyWith(finishDelay: value),
                      ),
                    );
                  }
                },
              ),
              SettingsTile.switchTile(
                title: Text(Localization.current.I18nSettings_autosubstitution),
                //leading:  Icon(MdiIcons.autoFix),
                initialValue: settingsState.settings.substituteNumbers,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settingsState.settings
                          .copyWith(substituteNumbers: value),
                    ),
                  );
                },
              ),
              SettingsTile(
                title: Text(
                  Localization.current.I18nSettings_autosubstitutionDelay,
                ),
                trailing: Text(
                  Localization.current.I18nSettings_milliseconds(
                    settingsState.settings.finishDelay,
                  ),
                ),
                //leading:  Icon(MdiIcons.clockOutline),
                onPressed: (context) async {
                  final value = await setDelayPopup(
                    context,
                    settingsState.settings.substituteNumbersDelay,
                    Localization.current.I18nSettings_autosubstitutionDelay,
                  );
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settingsState.settings
                            .copyWith(substituteNumbersDelay: value),
                      ),
                    );
                  }
                },
              ),
              SettingsTile.switchTile(
                title: Text(Localization.current.I18nSettings_finishButton),
                //leading:  Icon(MdiIcons.handBackLeft),
                initialValue: settingsState.settings.finishFab,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(finishFab: value),
                    ),
                  );
                },
              ),
              SettingsTile(
                title: Text(Localization.current.I18nSettings_finishButtonSize),
                trailing: Text(
                  Localization.current.I18nSettings_pixelSize(
                    settingsState.settings.finishFabSize.round(),
                  ),
                ),
                //leading:  Icon(MdiIcons.handBackLeft),
                onPressed: (context) async {
                  final value = await setFloatingButtonSizePopup(
                    context,
                    settingsState.settings.finishFabSize,
                    text: Localization
                        .current.I18nSettings_finishButtonSizeDescription,
                  );
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settingsState.settings
                            .copyWith(finishFabSize: value),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
          SettingsSection(
            title: Text(Localization.current.I18nSettings_update),
            tiles: [
              SettingsTile.switchTile(
                title: Text(
                  Localization.current.I18nSettings_checkUpdateAtStartup,
                ),
                // titleMaxLines: 2,
                //leading:  Icon(MdiIcons.update),
                initialValue: settingsState.settings.checkUpdates,
                onToggle: (value) {
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settingsState.settings.copyWith(checkUpdates: value),
                    ),
                  );
                },
              ),
            ],
          ),
          // ToDo: добавить выбор контраста и dynamicSchemeVariant
          SettingsSection(
            title: Text(Localization.current.I18nSettings_themes),
            tiles: _themes(settingsBloc),
          ),
          SettingsSection(
            title: Text(Localization.current.I18nSettings_journal),
            tiles: [
              SettingsTile(
                title: Text(
                  Localization.current.I18nSettings_journalLinesNumber,
                ),
                // titleMaxLines: 2,
                trailing: settingsState.settings.logLimit > -1
                    ? Text('${settingsState.settings.logLimit}')
                    // : Text('без ограничений'),
                    : Icon(MdiIcons.infinity),
                //leading:  Icon(MdiIcons.filter),
                onPressed: (context) async {
                  final value = await setLogLimitPopup(
                    context,
                    settingsState.settings.logLimit,
                  );
                  if (value != null) {
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings:
                            settingsState.settings.copyWith(logLimit: value),
                      ),
                    );
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
                onPressed: (context) {
                  settingsBloc.add(const SettingsEvent.setDefault());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<SettingsTile> _themes(SettingsBloc bloc) {
    final settings = bloc.state.settings;
    final result = <SettingsTile>[];
    final seedColor = settings.seedColor;
    result.add(
      SettingsTile.switchTile(
        title: Text(
          Localization.current.I18nSettings_brightness,
        ),
        // titleMaxLines: 2,
        //leading:  Icon(MdiIcons.timer),
        initialValue: settings.brightness == Brightness.light,
        onToggle: (value) {
          bloc.add(
            SettingsEvent.update(
              settings: settings.copyWith(
                brightness: value ? Brightness.light : Brightness.dark,
              ),
            ),
          );
        },
      ),
    );
    for (final colorSeed in ColorSeed.values) {
      result.add(
        SettingsTile(
          title: Text(colorSeed.name),
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appThemeData(
                seedColor: colorSeed,
                brightness: settings.brightness,
              ).colorScheme.surface,
            ),
            child: Icon(
              MdiIcons.palette,
              color: appThemeData(
                seedColor: colorSeed,
                brightness: settings.brightness,
              ).colorScheme.primary,
            ),
          ),
          trailing: Radio(
            groupValue: seedColor,
            onChanged: (value) {
              bloc.add(
                SettingsEvent.update(
                  settings: settings.copyWith(seedColor: colorSeed),
                ),
              );
            },
            value: colorSeed,
          ),
          onPressed: (context) {
            bloc.add(
              SettingsEvent.update(
                settings: settings.copyWith(seedColor: colorSeed),
              ),
            );
          },
        ),
      );
    }
    return result;
  }

  List<DropdownMenuEntry<String>> _dropdownMenuEntries() {
    final entries = <DropdownMenuEntry<String>>[];
    for (final locale in Localization.supportedLocales) {
      entries.add(
        DropdownMenuEntry(
          value: locale.languageCode,
          label: locale.languageCode,
        ),
      );
    }
    return entries;
  }
}
