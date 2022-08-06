import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../bloc/settings_bloc.dart';
import '../model/theme.dart';
import 'settings_popups.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsScreen> {
  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;

  @override
  void initState() {
    super.initState();

    // Get current state
    FlutterBluetoothSerial.instance.state.then((state) {
      setState(() {
        _bluetoothState = state;
      });
    });

    // Listen for further state changes
    FlutterBluetoothSerial.instance.onStateChanged().listen((state) {
      setState(() {
        _bluetoothState = state;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.current.I18nSettings_settings),
      ),
      body: settingsList(context),
    );
  }

  Widget settingsList(BuildContext context) {
    final SettingsBloc settingsBloc = BlocProvider.of<SettingsBloc>(context);
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
        return SettingsList(
          sections: [
            SettingsSection(
              title: Text(Localization.current.I18nSettings_general),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_bluetooth),
                  //leading:  Icon(Icons.bluetooth),
                  initialValue: _bluetoothState.isEnabled,
                  onToggle: (value) {
                    // Do the request and update with the true value then
                    Future<void> future() async {
                      // async lambda seems to not working
                      if (value) {
                        await FlutterBluetoothSerial.instance.requestEnable();
                      } else {
                        await FlutterBluetoothSerial.instance.requestDisable();
                      }
                    }

                    future().then((_) {
                      setState(() {
                        //TODO: state to BLoC
                      });
                    });
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_reconnect),
                  description: Text(
                      Localization.current.I18nSettings_reconnectDescription),
                  // subtitleMaxLines: 3,
                  //leading:  Icon(Icons.bluetooth),
                  initialValue: settingsState.reconnect,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(reconnect: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_sound),
                  //leading:  Icon(Icons.volume_up),
                  initialValue: settingsState.sound,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(sound: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_wakelock),
                  // titleMaxLines: 2,
                  //leading:  Icon(Icons.lightbulb_outline),
                  initialValue: settingsState.wakelock,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(wakelock: value));
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
                  initialValue: settingsState.beep,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(beep: value));
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
                  initialValue: settingsState.voice,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voice: value));
                  },
                ),
                SettingsTile.switchTile(
                  title:
                      Text(Localization.current.I18nSettings_participantsName),
                  // titleMaxLines: 2,
                  //leading:  Icon(MdiIcons.textToSpeech),
                  initialValue: settingsState.voiceName,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voiceName: value));
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_volume),
                  //leading:  Icon(Icons.volume_up),
                  trailing: Text('${(settingsState.volume * 100).round()}%'),
                  onPressed: (context) async {
                    final value = await setVolumePopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(SetDoubleValueEvent(volume: value));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_pitch),
                  //leading:  Icon(Icons.record_voice_over),
                  trailing: Text(settingsState.pitch.toStringAsFixed(2)),
                  onPressed: (context) async {
                    final value = await setPitchPopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(SetDoubleValueEvent(pitch: value));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_rate),
                  //leading:  Icon(MdiIcons.playSpeed),
                  trailing: Text(settingsState.rate.toStringAsFixed(2)),
                  onPressed: (context) async {
                    final value = await setRatePopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(SetDoubleValueEvent(rate: value));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nSettings_language),
                  //leading:  Icon(Icons.language),
                  // trailing: Text(settingsState.language),
                  trailing: Text(Intl.getCurrentLocale()),
                  onPressed: (context) {
                    //TODO: i18n
                  },
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
                    settingsBloc.add(SetBoolValueEvent(startFab: value));
                  },
                ),
                SettingsTile(
                  title:
                      Text(Localization.current.I18nSettings_startButtonSize),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  trailing: Text(Localization.current.I18nSettings_pixelSize(
                      (settingsState.startFabSize).round())),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.startFabSize,
                        text: Localization
                            .current.I18nSettings_startButtonSizeDescription);
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(startFabSize: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:
                      Text(Localization.current.I18nSettings_countdownAtStart),
                  //leading:  Icon(MdiIcons.timer),
                  initialValue: settingsState.countdown,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(countdown: value));
                  },
                ),
                SettingsTile(
                  title: Text(
                      Localization.current.I18nSettings_countdownAtStartSize),
                  //leading:  Icon(MdiIcons.timer),
                  trailing: Text(Localization.current.I18nSettings_pixelSize(
                      (settingsState.startFabSize).round())),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.countdownSize,
                        text: Localization
                            .current.I18nSettings_countdownAtStartSize);
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(countdownSize: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(
                      Localization.current.I18nSettings_replaceStartCountdown),
                  // titleMaxLines: 2,
                  //leading:  Icon(MdiIcons.timer),
                  initialValue: settingsState.countdownAtStartTime,
                  onToggle: (value) {
                    settingsBloc
                        .add(SetBoolValueEvent(countdownAtStartTime: value));
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
                  trailing: Text(Localization.current
                      .I18nSettings_milliseconds(settingsState.finishDelay)),
                  //leading:  Icon(MdiIcons.clockOutline),
                  onPressed: (context) async {
                    final value = await setDelayPopup(
                        context,
                        settingsState.finishDelay,
                        Localization.current.I18nSettings_delayForNewEvents);
                    if (value != null) {
                      settingsBloc.add(SetIntValueEvent(finishDelay: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:
                      Text(Localization.current.I18nSettings_autosubstitution),
                  //leading:  Icon(MdiIcons.autoFix),
                  initialValue: settingsState.substituteNumbers,
                  onToggle: (value) {
                    settingsBloc
                        .add(SetBoolValueEvent(substituteNumbers: value));
                  },
                ),
                SettingsTile(
                  title: Text(
                      Localization.current.I18nSettings_autosubstitutionDelay),
                  trailing: Text(Localization.current
                      .I18nSettings_milliseconds(settingsState.finishDelay)),
                  //leading:  Icon(MdiIcons.clockOutline),
                  onPressed: (context) async {
                    final value = await setDelayPopup(
                        context,
                        settingsState.substituteNumbersDelay,
                        Localization
                            .current.I18nSettings_autosubstitutionDelay);
                    if (value != null) {
                      settingsBloc
                          .add(SetIntValueEvent(substituteNumbersDelay: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nSettings_finishButton),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  initialValue: settingsState.finishFab,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(finishFab: value));
                  },
                ),
                SettingsTile(
                  title:
                      Text(Localization.current.I18nSettings_finishButtonSize),
                  trailing: Text(Localization.current.I18nSettings_pixelSize(
                      (settingsState.finishFabSize).round())),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.finishFabSize,
                        text: Localization
                            .current.I18nSettings_finishButtonSizeDescription);
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(finishFabSize: value));
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
                      Localization.current.I18nSettings_checkUpdateAtStartup),
                  // titleMaxLines: 2,
                  //leading:  Icon(MdiIcons.update),
                  initialValue: settingsState.checkUpdates,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(checkUpdates: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nSettings_themes),
              tiles: _themes(),
            ),
            SettingsSection(
              title: Text(Localization.current.I18nSettings_journal),
              tiles: [
                SettingsTile(
                  title: Text(
                      Localization.current.I18nSettings_journalLinesNumber),
                  // titleMaxLines: 2,
                  trailing: settingsState.logLimit > -1
                      ? Text('${settingsState.logLimit}')
                      // : Text('без ограничений'),
                      : const Icon(MdiIcons.infinity),
                  //leading:  Icon(MdiIcons.filter),
                  onPressed: (context) async {
                    final int? value =
                        await setLogLimitPopup(context, settingsState.logLimit);
                    if (value != null) {
                      settingsBloc.add(SetIntValueEvent(logLimit: value));
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
                    settingsBloc.add(SetDefaultSettings());
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  List<SettingsTile> _themes() {
    final List<SettingsTile> result = [];
    final AppTheme appTheme =
        BlocProvider.of<SettingsBloc>(context).settings.getTheme();
    for (final element in AppTheme.values) {
      result.add(SettingsTile(
        title: Text(element.str()),
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: appThemeData[element]!.colorScheme.background,
          ),
          child: Icon(MdiIcons.palette,
              color: appThemeData[element]!.colorScheme.primary),
        ),
        trailing: Radio(
          groupValue: appTheme,
          onChanged: (value) {
            BlocProvider.of<SettingsBloc>(context).add(ThemeChanged(element));
          },
          value: element,
        ),
        onPressed: (context) {
          BlocProvider.of<SettingsBloc>(context).add(ThemeChanged(element));
        },
      ));
    }
    return result;
  }
}
