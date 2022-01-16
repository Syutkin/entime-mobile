import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../blocs/blocs.dart';
import '../../widgets/splash.dart';
import '../screens.dart';

class ModuleSettingsInitScreen extends StatelessWidget {
  const ModuleSettingsInitScreen({Key? key}) : super(key: key);

  Future<bool> _onBackPressed(BuildContext context, bool updated) async {
    if (updated) {
      await showDialog<void>(
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
    final _bloc = BlocProvider.of<ModuleSettingsBloc>(context);
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
                //leading: const Icon(MdiIcons.bell),
                switchValue: _bloc.moduleSettings.buzzer,
                onToggle: (value) {
                  onChanged();
                  _bloc.moduleSettings.buzzer = value;
                  _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
                },
              ),
              SettingsTile(
                title: 'Частота коротких гудков',
                trailing: Text('${_bloc.moduleSettings.shortFrequency} Гц'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) async {
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
            trailing: Text('${_bloc.moduleSettings.longFrequency} Гц'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) async {
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
                //leading: const Icon(MdiIcons.radio),
                switchValue: _bloc.moduleSettings.lora,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.lora = value;
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Частота',
                trailing: Text('${_bloc.moduleSettings.frequency} Гц'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'TX Power',
            trailing: Text('${_bloc.moduleSettings.txPower}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Spreading Factor',
            trailing: Text('${_bloc.moduleSettings.spreadingFactor}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Signal Bandwidth',
            trailing: Text('${_bloc.moduleSettings.signalBandwidth}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Coding Rate Denominator',
            trailing: Text('${_bloc.moduleSettings.codingRateDenominator}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Preamble Length',
            trailing: Text('${_bloc.moduleSettings.preambleLength}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Sync Word',
            trailing: Text('${_bloc.moduleSettings.syncWord}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile.switchTile(
                title: 'CRC',
                //leading: const Icon(MdiIcons.wave),
                switchValue: _bloc.moduleSettings.crc,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.crc = value;
                  //ToDo LoRa;
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'Экран',
            tiles: [
              SettingsTile.switchTile(
                title: 'TFT',
                //leading: const Icon(MdiIcons.monitor),
                switchValue: _bloc.moduleSettings.tft,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.tft = value;
                  //ToDo TFT;
                },
              ),
              SettingsTile.switchTile(
                title: 'Спящий режим',
                //leading: const Icon(MdiIcons.monitor),
                switchValue: _bloc.moduleSettings.timeout,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.timeout = value;
                  //ToDo TFT;
                },
              ),
              SettingsTile(
                title: 'Спящий режим',
                trailing: Text(
                    '${_bloc.moduleSettings.timeoutDuration} секунд'),
                //leading: const Icon(MdiIcons.monitor),
                onPressed: (context) {
                  onChanged();
                  //ToDo TFT;
                },
              ),
              SettingsTile.switchTile(
                title: 'Включать после события',
                //leading: const Icon(MdiIcons.monitor),
                switchValue: _bloc.moduleSettings.turnOnAtEvent,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.turnOnAtEvent = value;
                  //ToDo TFT;
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'Bluetooth',
            tiles: [
              SettingsTile.switchTile(
                title: 'Bluetooth',
                //leading: const Icon(Icons.bluetooth),
                switchValue: _bloc.moduleSettings.bluetooth,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.bluetooth = value;
                  //ToDo bluetooth on/off;
                },
              ),
              SettingsTile(
                title: 'Имя модуля',
            trailing: Text(_bloc.moduleSettings.bluetoothName),
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) {
                  onChanged();
                  //ToDo bluetooth module name;
                },
              ),
              SettingsTile(
                title: 'Номер модуля',
            trailing: Text('${_bloc.moduleSettings.bluetoothNumber}'),
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) async {
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
              //leading: const Icon(MdiIcons.wifi),
              switchValue: _bloc.moduleSettings.wifi,
              onToggle: (value) {
                onChanged();
                //moduleSettings.wifi = value;
                //ToDo WiFi;
              },
            ),
            SettingsTile(
              title: 'Сеть',
            trailing: Text(_bloc.moduleSettings.ssid),
              //leading: const Icon(MdiIcons.wifi),
              onPressed: (context) {
                onChanged();
                //ToDo WiFi;
              },
            ),
            SettingsTile(
                title: 'Пароль',
                //subtitle: '${(moduleSettings.password)}',
                //leading: const Icon(MdiIcons.wifi),
                onPressed: (context) {
                  onChanged();
                  //ToDo WiFi;
                }),
          ]),
          SettingsSection(
            title: 'VCC',
            tiles: [
              SettingsTile(
                title: 'R1',
            trailing: Text('${_bloc.moduleSettings.r1} Ом'),
                //leading: const Icon(MdiIcons.resistor),
                onPressed: (context) async {
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
            trailing: Text('${_bloc.moduleSettings.r2} Ом'),
                //leading: const Icon(MdiIcons.resistor),
                onPressed: (context) async {
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
                // subtitle: '${_bloc.moduleSettings.vBat} мВ',
                //leading: const Icon(MdiIcons.batteryCharging),
                onPressed: (context) async {
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
                //leading: const Icon(Icons.bluetooth),
                switchValue: _bloc.moduleSettings.bluetooth,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.bluetooth = value;
                  //ToDo bluetooth on/off;
                },
              ),
              SettingsTile(
                title: 'Имя модуля',
                subtitle: _bloc.moduleSettings.bluetoothName,
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) {
                  onChanged();
                  //ToDo bluetooth module name;
                },
              ),
              SettingsTile(
                title: 'Номер модуля',
                subtitle: '${_bloc.moduleSettings.bluetoothNumber}',
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) async {
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
                subtitle: '${_bloc.moduleSettings.brightness}',
                //leading: const Icon(MdiIcons.brightness1),
                onPressed: (context) async {
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
              //leading: const Icon(MdiIcons.wifi),
              switchValue: _bloc.moduleSettings.wifi,
              onToggle: (value) {
                onChanged();
                _bloc.moduleSettings.wifi = value;
                _bloc.add(UpdateModuleSettings(_bloc.moduleSettings));
              },
            ),
            SettingsTile(
              title: 'Сеть',
              subtitle: _bloc.moduleSettings.ssid,
              //leading: const Icon(MdiIcons.wifi),
              onPressed: (context) async {
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
              //leading: const Icon(MdiIcons.wifi),
              onPressed: (context) async {
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
