import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/screens.dart';
import 'package:entime/models/models.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
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
    FlutterBluetoothSerial.instance
        .onStateChanged()
        .listen((BluetoothState state) {
      setState(() {
        _bluetoothState = state;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: settingsList(context),
    );
  }

  Widget settingsList(BuildContext context) {
    final SettingsBloc settingsBloc = BlocProvider.of<SettingsBloc>(context);
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (BuildContext context, SettingsState settingsState) =>
          SettingsList(
            sections: [
              SettingsSection(
                title: 'Основные',
                tiles: [
                  SettingsTile.switchTile(
                    title: 'Bluetooth',
                    leading: const Icon(Icons.bluetooth),
                    switchValue: _bluetoothState.isEnabled,
                    onToggle: (bool value) {
                      // Do the request and update with the true value then
                      Future<void> future() async {
                        // async lambda seems to not working
                        if (value) {
                          await FlutterBluetoothSerial.instance.requestEnable();
                        } else {
                          await FlutterBluetoothSerial.instance
                              .requestDisable();
                        }
                      }

                      future().then((_) {
                        setState(() {});
                      });
                    },
                  ),
                  SettingsTile.switchTile(
                    title: 'Переподключение',
                    subtitle: 'Пытаться переподключится к модулю при обрыве связи',
                    subtitleMaxLines: 3,
                    leading: const Icon(Icons.bluetooth),
                    switchValue: settingsState.reconnect,
                    onToggle: (bool value) {
                      settingsBloc.add(SetBoolValueEvent(reconnect: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    title: 'Звук',
                    leading: const Icon(Icons.volume_up),
                    switchValue: settingsState.sound,
                    onToggle: (bool value) {
                      settingsBloc.add(SetBoolValueEvent(sound: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    title: 'Всегда включённый экран',
                    titleMaxLines: 2,
                    leading: const Icon(Icons.lightbulb_outline),
                    switchValue: settingsState.wakelock,
                    onToggle: (bool value) {
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
                    leading: const Icon(Icons.timer),
                    switchValue: settingsState.beep,
                    onToggle: (bool value) {
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
                    leading: const Icon(MdiIcons.textToSpeech),
                    switchValue: settingsState.voice,
                    onToggle: (bool value) {
                      settingsBloc.add(SetBoolValueEvent(voice: value));
                    },
                  ),
                  SettingsTile.switchTile(
                    title: 'Называть имена участников',
                    titleMaxLines: 2,
                    leading: const Icon(MdiIcons.textToSpeech),
                    switchValue: settingsState.voice_name,
                    onToggle: (bool value) {
                      settingsBloc.add(SetBoolValueEvent(voice_name: value));
                    },
                  ),
                  SettingsTile(
                    title: 'Громкость',
                    subtitle: '${(settingsState.volume * 100).round()}%',
                    leading: const Icon(Icons.volume_up),
                    onPressed: (BuildContext context) async {
                      var value = await setVolumePopup(context, settingsState);
                      if (value != null) {
                        settingsBloc.add(SetDoubleValueEvent(volume: value));
                      }
                    },
                  ),
                  SettingsTile(
                    title: 'Тембр',
                    subtitle: settingsState.pitch.toStringAsFixed(2),
                    leading: const Icon(Icons.record_voice_over),
                    onPressed: (BuildContext context) async {
                      var value = await setPitchPopup(context, settingsState);
                      if (value != null) {
                        settingsBloc.add(SetDoubleValueEvent(pitch: value));
                      }
                    },
                  ),
                  SettingsTile(
                    title: 'Скорость',
                    subtitle: settingsState.rate.toStringAsFixed(2),
                    leading: const Icon(MdiIcons.playSpeed),
                    onPressed: (BuildContext context) async {
                      var value = await setRatePopup(context, settingsState);
                      if (value != null) {
                        settingsBloc.add(SetDoubleValueEvent(rate: value));
                      }
                    },
                  ),
                  SettingsTile(
                    title: 'Язык',
                    subtitle: settingsState.language,
                    leading: const Icon(Icons.language),
                    onPressed: (BuildContext context) {},
                  ),
                ],
              ),
              SettingsSection(
                title: 'Стартовый экран',
                tiles: [
                  SettingsTile.switchTile(
                    title: 'Обратный отсчёт',
                    leading: const Icon(MdiIcons.timer),
                    switchValue: settingsState.countdown,
                    onToggle: (bool value) {
                      settingsBloc.add(SetBoolValueEvent(countdown: value));
                    },
                  ),
                  SettingsTile(
                    title: 'Размер обратного отсчёта',
                    subtitle: '${(settingsState.countdownSize).round()}px',
                    leading: const Icon(MdiIcons.timer),
                    onPressed: (BuildContext context) async {
                      var value = await setFloatingButtonSizePopup(
                          context, settingsState.countdownSize,
                          text: 'Размер обратного отсчёта');
                      if (value != null) {
                        settingsBloc.add(
                            SetDoubleValueEvent(countdownSize: value));
                      }
                    },
                  ),
                  SettingsTile.switchTile(
                    title: 'Кнопка "отсечка"',
                    leading: const Icon(MdiIcons.hand),
                    switchValue: settingsState.startFab,
                    onToggle: (bool value) {
                      settingsBloc.add(SetBoolValueEvent(startFab: value));
                    },
                  ),
                  SettingsTile(
                    title: 'Размер кнопки "отсечка"',
                    subtitle: '${(settingsState.startFabSize).round()}px',
                    leading: const Icon(MdiIcons.hand),
                    onPressed: (BuildContext context) async {
                      var value = await setFloatingButtonSizePopup(
                          context, settingsState.startFabSize,
                          text: 'Размер кнопки "отсечка" на стартовом экране');
                      if (value != null) {
                        settingsBloc.add(
                            SetDoubleValueEvent(startFabSize: value));
                      }
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: 'Финишный экран',
                tiles: [
                  SettingsTile(
                    title: 'Задержка перед показом новых отсечек',
                    subtitle: '${(settingsState.finishDelay)}мс',
                    leading: const Icon(MdiIcons.clockOutline),
                    onPressed: (BuildContext context) async {
                      var value = await setDelayPopup(
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
                    leading: const Icon(MdiIcons.autoFix),
                    switchValue: settingsState.substituteNumbers,
                    onToggle: (bool value) {
                      settingsBloc.add(
                          SetBoolValueEvent(substituteNumbers: value));
                    },
                  ),
                  SettingsTile(
                    title:
                    'Задержка перед автоматическим подставлением новых номеров',
                    subtitle: '${(settingsState.substituteNumbersDelay)}мс',
                    leading: const Icon(MdiIcons.clockOutline),
                    onPressed: (BuildContext context) async {
                      var value = await setDelayPopup(
                          context,
                          settingsState.substituteNumbersDelay,
                          'Задержка перед автоматическим подставлением новых номеров');
                      if (value != null) {
                        settingsBloc
                            .add(
                            SetIntValueEvent(substituteNumbersDelay: value));
                      }
                    },
                  ),
                  SettingsTile.switchTile(
                    title: 'Кнопка "отсечка"',
                    leading: const Icon(MdiIcons.hand),
                    switchValue: settingsState.finishFab,
                    onToggle: (bool value) {
                      settingsBloc.add(SetBoolValueEvent(finishFab: value));
                    },
                  ),
                  SettingsTile(
                    title: 'Размер кнопки "отсечка"',
                    subtitle: '${(settingsState.finishFabSize).round()}px',
                    leading: const Icon(MdiIcons.hand),
                    onPressed: (BuildContext context) async {
                      var value = await setFloatingButtonSizePopup(
                          context, settingsState.finishFabSize,
                          text: 'Размер кнопки "отсечка" на финишном экране');
                      if (value != null) {
                        settingsBloc.add(
                            SetDoubleValueEvent(finishFabSize: value));
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
                    leading: const Icon(MdiIcons.update),
                    switchValue: settingsState.checkUpdates,
                    onToggle: (bool value) {
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
                    subtitle: settingsState.log_limit > -1
                        ? '${(settingsState.log_limit)}'
                        : 'без ограничений',
                    leading: const Icon(MdiIcons.filter),
                    onPressed: (BuildContext context) async {
                      int? value =
                      await setLogLimitPopup(context, settingsState.log_limit);
                      if (value != null) {
                        settingsBloc.add(SetIntValueEvent(log_limit: value));
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
                    leading: const Icon(MdiIcons.backupRestore),
                    onPressed: (BuildContext context) {
                      settingsBloc.add(SetDefaultSettings());
                    },
                  ),
                ],
              ),
            ],
          ),
    );
  }

  List<SettingsTile> _themes() {
    List<SettingsTile> result = [];
    AppTheme appTheme = BlocProvider
        .of<ThemeBloc>(context)
        .settings
        .getTheme();
    AppTheme.values.forEach((element) {
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
          onChanged: (AppTheme? value) {
            BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(element));
          },
          value: element,
        ),
        onPressed: (BuildContext context) {
          BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(element));
        },
      ));
    });
    return result;
  }
}
