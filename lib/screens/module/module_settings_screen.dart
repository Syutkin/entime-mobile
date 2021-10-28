import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/screens.dart';
import 'package:entime/widgets/splash.dart';

class ModuleSettingsInitScreen extends StatelessWidget {
  const ModuleSettingsInitScreen({Key? key}) : super(key: key);

  Future<bool> _onBackPressed(BuildContext context, bool updated) async {
    if (updated) {
      await showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) => AlertDialog(
                title: const Text('Записать новые настройки в модуль?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      BlocProvider.of<BluetoothBloc>(context).add(SendMessage(
                          BlocProvider.of<ModuleSettingsBloc>(context)
                              .moduleSettings
                              .write));
                      Navigator.pop(context, true);
                    },
                    child:
                        Text(MaterialLocalizations.of(context).okButtonLabel),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text(
                        MaterialLocalizations.of(context).cancelButtonLabel),
                  )
                ],
              ));
      return true;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    bool updated = false;
    return WillPopScope(
      onWillPop: () async => _onBackPressed(context, updated),
      child: Scaffold(
        appBar: AppBar(title: const Text('Настройки модуля')),
        body: BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
            builder: (context, state) {
          if (state is ModuleSettingsUpdated) {
            return ModuleSettingsScreen(
              onChanged: () => updated = true,
            );
          } else if (state is ModuleSettingsLoadError) {
            return const Splash(text: 'Ошибка загрузки настроек!');
          } else {
            return const Splash(text: 'Ждём настройки...');
          }
        }),
      ),
    );
  }
}

class ModuleSettingsScreen extends StatelessWidget {
  final VoidCallback onChanged;

  const ModuleSettingsScreen({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _bloc = BlocProvider.of<ModuleSettingsBloc>(context);
    if (_bloc.moduleSettings.type == 'entime') {
      return BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
          builder: (context, state) {
        return SettingsList(sections: [
          SettingsSection(
            title: 'Модуль',
            tiles: [
              SettingsTile(
                title:
                    '${_bloc.moduleSettings.bluetoothName}${_bloc.moduleSettings.bluetoothNumber}',
              ),
            ],
          ),
          SettingsSection(
            title: 'Buzzer',
            tiles: [
              SettingsTile.switchTile(
                title: 'Buzzer',
                leading: const Icon(MdiIcons.bell),
                switchValue: _bloc.moduleSettings.buzzer,
                onToggle: (bool value) {
                  onChanged();
                  _bloc.moduleSettings.buzzer = value;
                  _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                },
              ),
              SettingsTile(
                title: 'Частота коротких гудков',
                subtitle: '${(_bloc.moduleSettings.shortFrequency)} Гц',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) async {
                  final int? hz = await buzzerFrequencyPopup(
                      frequency: _bloc.moduleSettings.shortFrequency,
                      context: context,
                      text: 'Выберите частоту короткого гудка');
                  if (hz != null) {
                    onChanged();
                    _bloc.moduleSettings.shortFrequency = hz;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
              SettingsTile(
                title: 'Частота длинных гудков',
                subtitle: '${(_bloc.moduleSettings.longFrequency)} Гц',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) async {
                  final int? hz = await buzzerFrequencyPopup(
                      frequency: _bloc.moduleSettings.longFrequency,
                      context: context,
                      text: 'Выберите частоту длинного гудка');
                  if (hz != null) {
                    onChanged();
                    _bloc.moduleSettings.longFrequency = hz;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'LoRa',
            tiles: [
              SettingsTile.switchTile(
                title: 'LoRa',
                leading: const Icon(MdiIcons.radio),
                switchValue: _bloc.moduleSettings.lora,
                onToggle: (bool value) {
                  onChanged();
                  //moduleSettings.lora = value;
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Частота',
                subtitle: '${(_bloc.moduleSettings.frequency)} МГц',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'TX Power',
                subtitle: '${(_bloc.moduleSettings.txPower)}',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Spreading Factor',
                subtitle: '${(_bloc.moduleSettings.spreadingFactor)}',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Signal Bandwidth',
                subtitle: '${(_bloc.moduleSettings.signalBandwidth)}',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Coding Rate Denominator',
                subtitle: '${(_bloc.moduleSettings.codingRateDenominator)}',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Preamble Length',
                subtitle: '${(_bloc.moduleSettings.preambleLength)}',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Sync Word',
                subtitle: '${(_bloc.moduleSettings.syncWord)}',
                leading: const Icon(MdiIcons.wave),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile.switchTile(
                title: 'CRC',
                leading: const Icon(MdiIcons.wave),
                switchValue: _bloc.moduleSettings.crc,
                onToggle: (bool value) {
                  onChanged();
                  //moduleSettings.crc = value;
                  //ToDo;
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'TFT',
            tiles: [
              SettingsTile.switchTile(
                title: 'TFT',
                leading: const Icon(MdiIcons.monitor),
                switchValue: _bloc.moduleSettings.tft,
                onToggle: (bool value) {
                  onChanged();
                  //moduleSettings.tft = value;
                  //ToDo;
                },
              ),
              SettingsTile.switchTile(
                title: 'Спящий режим',
                leading: const Icon(MdiIcons.monitor),
                switchValue: _bloc.moduleSettings.timeout,
                onToggle: (bool value) {
                  onChanged();
                  //moduleSettings.timeout = value;
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Спящий режим',
                subtitle:
                    'Через ${(_bloc.moduleSettings.timeoutDuration)} секунд',
                leading: const Icon(MdiIcons.monitor),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile.switchTile(
                title: 'Включать после события',
                leading: const Icon(MdiIcons.monitor),
                switchValue: _bloc.moduleSettings.turnOnAtEvent,
                onToggle: (bool value) {
                  onChanged();
                  //moduleSettings.turnOnAtEvent = value;
                  //ToDo;
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'Bluetooth',
            tiles: [
              SettingsTile.switchTile(
                title: 'Bluetooth',
                leading: const Icon(Icons.bluetooth),
                switchValue: _bloc.moduleSettings.bluetooth,
                onToggle: (bool value) {
                  onChanged();
                  //moduleSettings.bluetooth = value;
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Имя модуля',
                subtitle: (_bloc.moduleSettings.bluetoothName),
                leading: const Icon(MdiIcons.bluetooth),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Номер модуля',
                subtitle: '${(_bloc.moduleSettings.bluetoothNumber)}',
                leading: const Icon(MdiIcons.bluetooth),
                onPressed: (BuildContext context) async {
                  final int? number = await bluetoothNumberPopup(
                      context: context,
                      labelText: 'Номер',
                      text: 'Введите номер модуля');
                  if (number != null) {
                    onChanged();
                    _bloc.moduleSettings.bluetoothNumber = number;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
            ],
          ),
          SettingsSection(title: 'WiFi', tiles: [
            SettingsTile.switchTile(
              title: 'WiFi',
              leading: const Icon(MdiIcons.wifi),
              switchValue: _bloc.moduleSettings.wifi,
              onToggle: (bool value) {
                onChanged();
                //moduleSettings.wifi = value;
                //ToDo;
              },
            ),
            SettingsTile(
              title: 'Сеть',
              subtitle: (_bloc.moduleSettings.ssid),
              leading: const Icon(MdiIcons.wifi),
              onPressed: (BuildContext context) {
                onChanged();
                //ToDo;
              },
            ),
            SettingsTile(
                title: 'Пароль',
                //subtitle: '${(moduleSettings.password)}',
                leading: const Icon(MdiIcons.wifi),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                }),
          ]),
          SettingsSection(
            title: 'VCC',
            tiles: [
              SettingsTile(
                title: 'R1',
                subtitle: '${(_bloc.moduleSettings.r1)} Ом',
                leading: const Icon(MdiIcons.resistor),
                onPressed: (BuildContext context) async {
                  final int? r1 = await vccPopup(
                      context: context,
                      labelText: 'Ом',
                      text: 'Введите значение резистора R1');
                  if (r1 != null) {
                    onChanged();
                    _bloc.moduleSettings.r1 = r1;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
              SettingsTile(
                title: 'R2',
                subtitle: '${(_bloc.moduleSettings.r2)} Ом',
                leading: const Icon(MdiIcons.resistor),
                onPressed: (BuildContext context) async {
                  final int? r2 = await vccPopup(
                      context: context,
                      labelText: 'Ом',
                      text: 'Введите значение резистора R2');
                  if (r2 != null) {
                    onChanged();
                    _bloc.moduleSettings.r2 = r2;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
              SettingsTile(
                title: 'Ввод измерянного напряжения',
                subtitle: '${(_bloc.moduleSettings.vBat)} мВ',
                leading: const Icon(MdiIcons.batteryCharging),
                onPressed: (BuildContext context) async {
                  final int? mv = await vccPopup(
                      context: context,
                      labelText: 'мВ',
                      text: 'Введите текущее значение напряжения на батареях');
                  if (mv != null) {
                    onChanged();
                    _bloc.moduleSettings.vBat = mv;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
            ],
          ),
        ]);
      });
    } else if (_bloc.moduleSettings.type == 'led') {
      return BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
          builder: (context, state) {
        return SettingsList(sections: [
          SettingsSection(
            title: 'Модуль',
            tiles: [
              SettingsTile(
                title:
                    '${_bloc.moduleSettings.bluetoothName}${_bloc.moduleSettings.bluetoothNumber}',
              ),
            ],
          ),
          SettingsSection(
            title: 'Bluetooth',
            tiles: [
              SettingsTile.switchTile(
                title: 'Bluetooth',
                leading: const Icon(Icons.bluetooth),
                switchValue: _bloc.moduleSettings.bluetooth,
                onToggle: (bool value) {
                  onChanged();
                  //moduleSettings.bluetooth = value;
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Имя модуля',
                subtitle: (_bloc.moduleSettings.bluetoothName),
                leading: const Icon(MdiIcons.bluetooth),
                onPressed: (BuildContext context) {
                  onChanged();
                  //ToDo;
                },
              ),
              SettingsTile(
                title: 'Номер модуля',
                subtitle: '${(_bloc.moduleSettings.bluetoothNumber)}',
                leading: const Icon(MdiIcons.bluetooth),
                onPressed: (BuildContext context) async {
                  final int? number = await bluetoothNumberPopup(
                      context: context,
                      labelText: 'Номер',
                      text: 'Введите номер модуля');
                  if (number != null) {
                    onChanged();
                    _bloc.moduleSettings.bluetoothNumber = number;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
              SettingsTile(
                title: 'Яркость',
                subtitle: '${(_bloc.moduleSettings.brightness)}',
                leading: const Icon(MdiIcons.brightness1),
                onPressed: (BuildContext context) async {
                  final int? number = await brightnessPopup(
                      initialValue: _bloc.moduleSettings.brightness,
                      context: context,
                      text: 'Установите яркость панели');
                  if (number != null) {
                    onChanged();
                    _bloc.moduleSettings.brightness = number;
                    _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                  }
                },
              ),
            ],
          ),
          SettingsSection(title: 'WiFi', tiles: [
            SettingsTile.switchTile(
              title: 'WiFi',
              leading: const Icon(MdiIcons.wifi),
              switchValue: _bloc.moduleSettings.wifi,
              onToggle: (bool value) {
                onChanged();
                _bloc.moduleSettings.wifi = value;
                _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
              },
            ),
            SettingsTile(
              title: 'Сеть',
              subtitle: (_bloc.moduleSettings.ssid),
              leading: const Icon(MdiIcons.wifi),
              onPressed: (BuildContext context) async {
                final String? ssid = await wifiSettingsPopup(
                    context: context,
                    labelText: 'WiFi',
                    text: 'Введите имя WiFi сети');
                if (ssid != null) {
                  onChanged();
                  _bloc.moduleSettings.ssid = ssid;
                  _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                }
              },
            ),
            SettingsTile(
              title: 'Пароль',
              //subtitle: '${(moduleSettings.password)}',
              leading: const Icon(MdiIcons.wifi),
              onPressed: (BuildContext context) async {
                final String? password = await wifiSettingsPopup(
                    context: context,
                    labelText: 'Пароль',
                    text:
                        'Введите пароль WiFi сети ${_bloc.moduleSettings.ssid}');
                if (password != null) {
                  onChanged();
                  _bloc.moduleSettings.password = password;
                  _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                }
              },
            ),
          ]),
        ]);
      });
    } else {
      return Splash(
          text: 'Неизвестный тип модуля: ${_bloc.moduleSettings.type}');
    }
  }
}
