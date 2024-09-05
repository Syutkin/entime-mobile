import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../bloc/settings_bloc.dart';
import '../model/theme.dart';
import 'settings_popups.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(Localization.current.I18nSettings_settings),
        ),
        body: const _SettingsList(),
      );
}

class _SettingsList extends StatelessWidget {
  const _SettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsBloc = context.read<SettingsBloc>();
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) =>
          BlocBuilder<BluetoothBloc, BluetoothBlocState>(
        builder: (context, bluetoothState) => SettingsList(
          sections: [
            SettingsSection(
              title: Text(Localization.current.I18nSettings_general),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_bluetooth),
                  initialValue: bluetoothState is! BluetoothNotEnabledState,
                  onToggle: (value) {
                    value
                        ? context
                            .read<BluetoothBloc>()
                            .add(const BluetoothEvent.enable())
                        : context
                            .read<BluetoothBloc>()
                            .add(const BluetoothEvent.disable());
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_reconnect),
                  description: Text(
                    Localization.current.I18nSettings_reconnectDescription,
                  ),
                  //leading:  Icon(Icons.bluetooth),
                  initialValue: settingsState.settings.reconnect,
                  onToggle: (value) {
                    settingsBloc.add(
                      SettingsEventUpdate(
                        settings:
                            settingsState.settings.copyWith(reconnect: value),
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
                      SettingsEventUpdate(
                        settings: settingsState.settings.copyWith(sound: value),
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
                      SettingsEventUpdate(
                        settings:
                            settingsState.settings.copyWith(wakelock: value),
                      ),
                    );
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nSettings_countdown),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_countdown),
                  //leading:  Icon(Icons.timer),
                  initialValue: settingsState.settings.beep,
                  onToggle: (value) {
                    settingsBloc.add(
                      SettingsEventUpdate(
                        settings: settingsState.settings.copyWith(beep: value),
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
                  title: Text(Localization.current.I18nSettings_voice),
                  //leading:  Icon(MdiIcons.textToSpeech),
                  initialValue: settingsState.settings.voice,
                  onToggle: (value) {
                    settingsBloc.add(
                      SettingsEventUpdate(
                        settings: settingsState.settings.copyWith(voice: value),
                      ),
                    );
                  },
                ),
                SettingsTile.switchTile(
                  title:
                      Text(Localization.current.I18nSettings_participantsName),
                  // titleMaxLines: 2,
                  //leading:  Icon(MdiIcons.textToSpeech),
                  initialValue: settingsState.settings.voiceName,
                  onToggle: (value) {
                    settingsBloc.add(
                      SettingsEventUpdate(
                        settings:
                            settingsState.settings.copyWith(voiceName: value),
                      ),
                    );
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_volume),
                  //leading:  Icon(Icons.volume_up),
                  trailing:
                      Text('${(settingsState.settings.volume * 100).round()}%'),
                  onPressed: (context) async {
                    final value = await setVolumePopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(
                        SettingsEventUpdate(
                          settings:
                              settingsState.settings.copyWith(volume: value),
                        ),
                      );
                    }
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_pitch),
                  //leading:  Icon(Icons.record_voice_over),
                  trailing:
                      Text(settingsState.settings.pitch.toStringAsFixed(2)),
                  onPressed: (context) async {
                    final value = await setPitchPopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(
                        SettingsEventUpdate(
                          settings:
                              settingsState.settings.copyWith(pitch: value),
                        ),
                      );
                    }
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_rate),
                  //leading:  Icon(MdiIcons.playSpeed),
                  trailing:
                      Text(settingsState.settings.rate.toStringAsFixed(2)),
                  onPressed: (context) async {
                    final value = await setRatePopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(
                        SettingsEventUpdate(
                          settings:
                              settingsState.settings.copyWith(rate: value),
                        ),
                      );
                    }
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_language),
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
                      SettingsEventUpdate(
                        settings:
                            settingsState.settings.copyWith(startFab: value),
                      ),
                    );
                  },
                ),
                SettingsTile(
                  title:
                      Text(Localization.current.I18nSettings_startButtonSize),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  trailing: Text(
                    Localization.current.I18nSettings_pixelSize(
                      (settingsState.settings.startFabSize).round(),
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
                        SettingsEventUpdate(
                          settings: settingsState.settings
                              .copyWith(startFabSize: value),
                        ),
                      );
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:
                      Text(Localization.current.I18nSettings_countdownAtStart),
                  //leading:  Icon(MdiIcons.timer),
                  initialValue: settingsState.settings.countdown,
                  onToggle: (value) {
                    settingsBloc.add(
                      SettingsEventUpdate(
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
                      (settingsState.settings.startFabSize).round(),
                    ),
                  ),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                      context,
                      settingsState.settings.countdownSize,
                      text: Localization
                          .current.I18nSettings_countdownAtStartSize,
                    );
                    if (value != null) {
                      settingsBloc.add(
                        SettingsEventUpdate(
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
                      SettingsEventUpdate(
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
                        SettingsEventUpdate(
                          settings: settingsState.settings
                              .copyWith(finishDelay: value),
                        ),
                      );
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:
                      Text(Localization.current.I18nSettings_autosubstitution),
                  //leading:  Icon(MdiIcons.autoFix),
                  initialValue: settingsState.settings.substituteNumbers,
                  onToggle: (value) {
                    settingsBloc.add(
                      SettingsEventUpdate(
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
                        SettingsEventUpdate(
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
                      SettingsEventUpdate(
                        settings:
                            settingsState.settings.copyWith(finishFab: value),
                      ),
                    );
                  },
                ),
                SettingsTile(
                  title:
                      Text(Localization.current.I18nSettings_finishButtonSize),
                  trailing: Text(
                    Localization.current.I18nSettings_pixelSize(
                      (settingsState.settings.finishFabSize).round(),
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
                        SettingsEventUpdate(
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
                      SettingsEventUpdate(
                        settings: settingsState.settings
                            .copyWith(checkUpdates: value),
                      ),
                    );
                  },
                ),
              ],
            ),
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
                    final int? value = await setLogLimitPopup(
                      context,
                      settingsState.settings.logLimit,
                    );
                    if (value != null) {
                      settingsBloc.add(
                        SettingsEventUpdate(
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
                  title:
                      Text(Localization.current.I18nSettings_resetToDefaults),
                  //leading:  Icon(MdiIcons.backupRestore),
                  onPressed: (context) {
                    settingsBloc.add(const SettingsEventSetDefault());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<SettingsTile> _themes(SettingsBloc bloc) {
    final settings = bloc.state.settings;
    final List<SettingsTile> result = [];
    final AppTheme appTheme = settings.appTheme;
    for (final element in AppTheme.values) {
      result.add(
        SettingsTile(
          title: Text(element.str()),
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appThemeData[element]!.colorScheme.background,
            ),
            child: Icon(
              MdiIcons.palette,
              color: appThemeData[element]!.colorScheme.primary,
            ),
          ),
          trailing: Radio(
            groupValue: appTheme,
            onChanged: (value) {
              // settingsBloc.add(ThemeChanged(element));
              bloc.add(
                SettingsEventUpdate(
                  settings: settings.copyWith(appTheme: element),
                ),
              );
            },
            value: element,
          ),
          onPressed: (context) {
            // settingsBloc.add(ThemeChanged(element));
            bloc.add(
              SettingsEventUpdate(
                settings: settings.copyWith(appTheme: element),
              ),
            );
          },
        ),
      );
    }
    return result;
  }
}
