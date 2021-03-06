import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../blocs/blocs.dart';
import '../../models/models.dart';
import '../screens.dart';

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
        title: const Text('Настройки'),
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
              title: 'Основные',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Bluetooth',
                  //leading: const Icon(Icons.bluetooth),
                  switchValue: _bluetoothState.isEnabled,
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
                  title: 'Переподключение',
                  subtitle:
                      'Пытаться переподключится к модулю при обрыве связи',
                  subtitleMaxLines: 3,
                  //leading: const Icon(Icons.bluetooth),
                  switchValue: settingsState.reconnect,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(reconnect: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Звук',
                  //leading: const Icon(Icons.volume_up),
                  switchValue: settingsState.sound,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(sound: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Всегда включённый экран',
                  titleMaxLines: 2,
                  //leading: const Icon(Icons.lightbulb_outline),
                  switchValue: settingsState.wakelock,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(wakelock: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: 'Обратный отсчёт',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Обратный отсчёт',
                  //leading: const Icon(Icons.timer),
                  switchValue: settingsState.beep,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(beep: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: 'Голосовые сообщения',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Голос',
                  //leading: const Icon(MdiIcons.textToSpeech),
                  switchValue: settingsState.voice,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voice: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Называть имена участников',
                  titleMaxLines: 2,
                  //leading: const Icon(MdiIcons.textToSpeech),
                  switchValue: settingsState.voiceName,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voiceName: value));
                  },
                ),
                SettingsTile(
                  title: 'Громкость',
                  //leading: const Icon(Icons.volume_up),
                  trailing: Text('${(settingsState.volume * 100).round()}%'),
                  onPressed: (context) async {
                    final value = await setVolumePopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(SetDoubleValueEvent(volume: value));
                    }
                  },
                ),
                SettingsTile(
                  title: 'Тембр',
                  //leading: const Icon(Icons.record_voice_over),
                  trailing: Text(settingsState.pitch.toStringAsFixed(2)),
                  onPressed: (context) async {
                    final value = await setPitchPopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(SetDoubleValueEvent(pitch: value));
                    }
                  },
                ),
                SettingsTile(
                  title: 'Скорость',
                  //leading: const Icon(MdiIcons.playSpeed),
                  trailing: Text(settingsState.rate.toStringAsFixed(2)),
                  onPressed: (context) async {
                    final value = await setRatePopup(context, settingsState);
                    if (value != null) {
                      settingsBloc.add(SetDoubleValueEvent(rate: value));
                    }
                  },
                ),
                SettingsTile(
                  title: 'Язык',
                  //leading: const Icon(Icons.language),
                  trailing: Text(settingsState.language),
                  onPressed: (context) {
                    //TODO: i18n
                  },
                ),
              ],
            ),
            SettingsSection(
              title: 'Стартовый экран',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Кнопка "отсечка"',
                  //leading: const Icon(MdiIcons.handBackLeft),
                  switchValue: settingsState.startFab,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(startFab: value));
                  },
                ),
                SettingsTile(
                  title: 'Размер кнопки "отсечка"',
                  //leading: const Icon(MdiIcons.handBackLeft),
                  trailing: Text('${(settingsState.startFabSize).round()}px'),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.startFabSize,
                        text: 'Размер кнопки "отсечка" на стартовом экране');
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(startFabSize: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Обратный отсчёт',
                  //leading: const Icon(MdiIcons.timer),
                  switchValue: settingsState.countdown,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(countdown: value));
                  },
                ),
                SettingsTile(
                  title: 'Размер обратного отсчёта',
                  //leading: const Icon(MdiIcons.timer),
                  trailing: Text('${(settingsState.countdownSize).round()}px'),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.countdownSize,
                        text: 'Размер обратного отсчёта');
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(countdownSize: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Заменять время старта обратным отсчётом',
                  titleMaxLines: 2,
                  //leading: const Icon(MdiIcons.timer),
                  switchValue: settingsState.countdownAtStartTime,
                  onToggle: (value) {
                    settingsBloc
                        .add(SetBoolValueEvent(countdownAtStartTime: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: 'Финишный экран',
              tiles: [
                SettingsTile(
                  title: 'Задержка перед показом новых отсечек',
                  titleMaxLines: 2,
                  trailing: Text('${settingsState.finishDelay}мс'),
                  //leading: const Icon(MdiIcons.clockOutline),
                  onPressed: (context) async {
                    final value = await setDelayPopup(
                        context,
                        settingsState.finishDelay,
                        'Задержка перед показом новых отсечек');
                    if (value != null) {
                      settingsBloc.add(SetIntValueEvent(finishDelay: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Автоподстановка номеров',
                  //leading: const Icon(MdiIcons.autoFix),
                  switchValue: settingsState.substituteNumbers,
                  onToggle: (value) {
                    settingsBloc
                        .add(SetBoolValueEvent(substituteNumbers: value));
                  },
                ),
                SettingsTile(
                  title:
                      'Задержка перед автоматическим подставлением новых номеров',
                  trailing: Text('${settingsState.substituteNumbersDelay}мс'),
                  //leading: const Icon(MdiIcons.clockOutline),
                  onPressed: (context) async {
                    final value = await setDelayPopup(
                        context,
                        settingsState.substituteNumbersDelay,
                        'Задержка перед автоматическим подставлением новых номеров');
                    if (value != null) {
                      settingsBloc
                          .add(SetIntValueEvent(substituteNumbersDelay: value));
                    }
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Кнопка "отсечка"',
                  //leading: const Icon(MdiIcons.handBackLeft),
                  switchValue: settingsState.finishFab,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(finishFab: value));
                  },
                ),
                SettingsTile(
                  title: 'Размер кнопки "отсечка"',
                  trailing: Text('${(settingsState.finishFabSize).round()}px'),
                  //leading: const Icon(MdiIcons.handBackLeft),
                  onPressed: (context) async {
                    final value = await setFloatingButtonSizePopup(
                        context, settingsState.finishFabSize,
                        text: 'Размер кнопки "отсечка" на финишном экране');
                    if (value != null) {
                      settingsBloc
                          .add(SetDoubleValueEvent(finishFabSize: value));
                    }
                  },
                ),
              ],
            ),
            SettingsSection(
              title: 'Обновление',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Проверка обновлений при старте',
                  titleMaxLines: 2,
                  //leading: const Icon(MdiIcons.update),
                  switchValue: settingsState.checkUpdates,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(checkUpdates: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: 'Темы',
              tiles: _themes(),
            ),
            SettingsSection(
              title: 'Журнал',
              tiles: [
                SettingsTile(
                  title: 'Количество показываемых записей',
                  titleMaxLines: 2,
                  trailing: settingsState.logLimit > -1
                      ? Text('${settingsState.logLimit}')
                      // : Text('без ограничений'),
                      : const Icon(MdiIcons.infinity),
                  //leading: const Icon(MdiIcons.filter),
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
              title: 'По умолчанию',
              tiles: [
                SettingsTile(
                  title: 'Настройки по умолчанию',
                  //leading: const Icon(MdiIcons.backupRestore),
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
        title: element.display(),
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
