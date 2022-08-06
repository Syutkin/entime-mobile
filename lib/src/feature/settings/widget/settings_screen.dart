import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

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
              title: const Text('Основные'),
              tiles: [
                SettingsTile.switchTile(
                  title: const Text('Bluetooth'),
                  //leading: const Icon(Icons.bluetooth),
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
                  title: const Text('Переподключение'),
                  description: const Text(
                      'Пытаться переподключится к модулю при обрыве связи'),
                  // subtitleMaxLines: 3,
                  //leading: const Icon(Icons.bluetooth),
                  initialValue: settingsState.reconnect,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(reconnect: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: const Text('Звук'),
                  //leading: const Icon(Icons.volume_up),
                  initialValue: settingsState.sound,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(sound: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: const Text('Всегда включённый экран'),
                  // titleMaxLines: 2,
                  //leading: const Icon(Icons.lightbulb_outline),
                  initialValue: settingsState.wakelock,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(wakelock: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: const Text('Обратный отсчёт'),
              tiles: [
                SettingsTile.switchTile(
                  title: const Text('Обратный отсчёт'),
                  //leading: const Icon(Icons.timer),
                  initialValue: settingsState.beep,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(beep: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: const Text('Голосовые сообщения'),
              tiles: [
                SettingsTile.switchTile(
                  title: const Text('Голос'),
                  //leading: const Icon(MdiIcons.textToSpeech),
                  initialValue: settingsState.voice,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voice: value));
                  },
                ),
                SettingsTile.switchTile(
                  title: const Text('Называть имена участников'),
                  // titleMaxLines: 2,
                  //leading: const Icon(MdiIcons.textToSpeech),
                  initialValue: settingsState.voiceName,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(voiceName: value));
                  },
                ),
                SettingsTile(
                  title: const Text('Громкость'),
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
                  title: const Text('Тембр'),
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
                  title: const Text('Скорость'),
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
                  title: const Text('Язык'),
                  //leading: const Icon(Icons.language),
                  trailing: Text(settingsState.language),
                  onPressed: (context) {
                    //TODO: i18n
                  },
                ),
              ],
            ),
            SettingsSection(
              title: const Text('Стартовый экран'),
              tiles: [
                SettingsTile.switchTile(
                  title: const Text('Кнопка "отсечка"'),
                  //leading: const Icon(MdiIcons.handBackLeft),
                  initialValue: settingsState.startFab,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(startFab: value));
                  },
                ),
                SettingsTile(
                  title: const Text('Размер кнопки "отсечка"'),
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
                  title: const Text('Обратный отсчёт'),
                  //leading: const Icon(MdiIcons.timer),
                  initialValue: settingsState.countdown,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(countdown: value));
                  },
                ),
                SettingsTile(
                  title: const Text('Размер обратного отсчёта'),
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
                  title: const Text('Заменять время старта обратным отсчётом'),
                  // titleMaxLines: 2,
                  //leading: const Icon(MdiIcons.timer),
                  initialValue: settingsState.countdownAtStartTime,
                  onToggle: (value) {
                    settingsBloc
                        .add(SetBoolValueEvent(countdownAtStartTime: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: const Text('Финишный экран'),
              tiles: [
                SettingsTile(
                  title: const Text('Задержка перед показом новых отсечек'),
                  // titleMaxLines: 2,
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
                  title: const Text('Автоподстановка номеров'),
                  //leading: const Icon(MdiIcons.autoFix),
                  initialValue: settingsState.substituteNumbers,
                  onToggle: (value) {
                    settingsBloc
                        .add(SetBoolValueEvent(substituteNumbers: value));
                  },
                ),
                SettingsTile(
                  title: const Text(
                      'Задержка перед автоматическим подставлением новых номеров'),
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
                  title: const Text('Кнопка "отсечка"'),
                  //leading: const Icon(MdiIcons.handBackLeft),
                  initialValue: settingsState.finishFab,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(finishFab: value));
                  },
                ),
                SettingsTile(
                  title: const Text('Размер кнопки "отсечка"'),
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
              title: const Text('Обновление'),
              tiles: [
                SettingsTile.switchTile(
                  title: const Text('Проверка обновлений при старте'),
                  // titleMaxLines: 2,
                  //leading: const Icon(MdiIcons.update),
                  initialValue: settingsState.checkUpdates,
                  onToggle: (value) {
                    settingsBloc.add(SetBoolValueEvent(checkUpdates: value));
                  },
                ),
              ],
            ),
            SettingsSection(
              title: const Text('Темы'),
              tiles: _themes(),
            ),
            SettingsSection(
              title: const Text('Журнал'),
              tiles: [
                SettingsTile(
                  title: const Text('Количество показываемых записей'),
                  // titleMaxLines: 2,
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
              title: const Text('По умолчанию'),
              tiles: [
                SettingsTile(
                  title: const Text('Настройки по умолчанию'),
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
