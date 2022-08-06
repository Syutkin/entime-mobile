import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/i18n.dart';
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
        title: Text(I18nSettings.settings),
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
              title: Text(I18nSettings.general),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(I18nSettings.bluetooth),
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
                  title: Text(I18nSettings.reconnect),
                  description: Text(I18nSettings.reconnectDescription),
                  // subtitleMaxLines: 3,
                  //leading:  Icon(Icons.bluetooth),
                  initialValue: settingsState.reconnect,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(reconnect: value));
                  },
                ),
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.sound),
                  //leading:  Icon(Icons.volume_up),
                  initialValue: settingsState.sound,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(sound: value));
                  },
                ),
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.wakelock),
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
              title:  Text(I18nSettings.countdown),
              tiles: [
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.countdown),
                  //leading:  Icon(Icons.timer),
                  initialValue: settingsState.beep,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(beep: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title:  Text(I18nSettings.voiceMessages),
              tiles: [
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.voice),
                  //leading:  Icon(MdiIcons.textToSpeech),
                  initialValue: settingsState.voice,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voice: value));
                  },
                ),
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.participantsName),
                  // titleMaxLines: 2,
                  //leading:  Icon(MdiIcons.textToSpeech),
                  initialValue: settingsState.voiceName,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voiceName: value));
                  },
                ),
                SettingsTile(
                  title:  Text(I18nSettings.volume),
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
                  title:  Text(I18nSettings.pitch),
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
                  title:  Text(I18nSettings.rate),
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
                  title:  Text(I18nSettings.language),
                  //leading:  Icon(Icons.language),
                  trailing: Text(settingsState.language),
                  onPressed: (context) {
                    //TODO: i18n
                  },
                ),
              ],
            ),
            SettingsSection(
              title:  Text(I18nSettings.startScreen),
              tiles: [
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.startButton),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  initialValue: settingsState.startFab,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(startFab: value));
                  },
                ),
                SettingsTile(
                  title:  Text(I18nSettings.startButtonSize),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  trailing: Text(I18nSettings.pixelSize((settingsState.startFabSize).round())),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.startFabSize,
                        text: I18nSettings.startButtonSizeDescription);
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(startFabSize: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.countdownAtStart),
                  //leading:  Icon(MdiIcons.timer),
                  initialValue: settingsState.countdown,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(countdown: value));
                  },
                ),
                SettingsTile(
                  title:  Text(I18nSettings.countdownAtStartSize),
                  //leading:  Icon(MdiIcons.timer),
                  trailing: Text(I18nSettings.pixelSize((settingsState.startFabSize).round())),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.countdownSize,
                        text: I18nSettings.countdownAtStartSize);
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(countdownSize: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.replaceStartCountdown),
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
              title:  Text(I18nSettings.finishScreen),
              tiles: [
                SettingsTile(
                  title:  Text(I18nSettings.delayForNewEvents),
                  // titleMaxLines: 2,
                  trailing: Text(I18nSettings.milliseconds(settingsState.finishDelay)),
                  //leading:  Icon(MdiIcons.clockOutline),
                  onPressed: (context) async {
                    final value = await setDelayPopup(
                        context,
                        settingsState.finishDelay,
                        I18nSettings.delayForNewEvents);
                    if (value != null) {
                      settingsBloc.add(SetIntValueEvent(finishDelay: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.autosubstitution),
                  //leading:  Icon(MdiIcons.autoFix),
                  initialValue: settingsState.substituteNumbers,
                  onToggle: (value) {
                    settingsBloc
                        .add(SetBoolValueEvent(substituteNumbers: value));
                  },
                ),
                SettingsTile(
                  title:  Text(
                      I18nSettings.autosubstitutionDelay),
                  trailing: Text(I18nSettings.milliseconds(settingsState.finishDelay)),
                  //leading:  Icon(MdiIcons.clockOutline),
                  onPressed: (context) async {
                    final value = await setDelayPopup(
                        context,
                        settingsState.substituteNumbersDelay,
                        I18nSettings.autosubstitutionDelay);
                    if (value != null) {
                      settingsBloc
                          .add(SetIntValueEvent(substituteNumbersDelay: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.finishButton),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  initialValue: settingsState.finishFab,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(finishFab: value));
                  },
                ),
                SettingsTile(
                  title:  Text(I18nSettings.finishButtonSize),
                  trailing: Text(I18nSettings.pixelSize((settingsState.finishFabSize).round())),
                  //leading:  Icon(MdiIcons.handBackLeft),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.finishFabSize,
                        text: I18nSettings.finishButtonSizeDescription);
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(finishFabSize: value));
                    }
                  },
                ),
              ],
            ),
            SettingsSection(
              title:  Text(I18nSettings.update),
              tiles: [
                SettingsTile.switchTile(
                  title:  Text(I18nSettings.checkUpdateAtStartup),
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
              title:  Text(I18nSettings.themes),
              tiles: _themes(),
            ),
            SettingsSection(
              title:  Text(I18nSettings.journal),
              tiles: [
                SettingsTile(
                  title:  Text(I18nSettings.journalLinesNumber),
                  // titleMaxLines: 2,
                  trailing: settingsState.logLimit > -1
                      ? Text('${settingsState.logLimit}')
                      // : Text('без ограничений'),
                      :  const Icon(MdiIcons.infinity),
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
              title:  Text(I18nSettings.defaults),
              tiles: [
                SettingsTile(
                  title:  Text(I18nSettings.resetToDefaults),
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
        title: Text(element.display()),
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
