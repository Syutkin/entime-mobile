import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
    final bloc = BlocProvider.of<ModuleSettingsBloc>(context);
    if (bloc.moduleSettings.type == 'entime') {
      return BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
          builder: (context, state) {
        return SettingsList(sections: [
          SettingsSection(
            title: 'Модуль',
            tiles: [
              SettingsTile(
                title:
                    '${bloc.moduleSettings.bluetoothName}${bloc.moduleSettings.bluetoothNumber}',
              ),
            ],
          ),
          SettingsSection(
            title: 'Buzzer',
            tiles: [
              SettingsTile.switchTile(
                title: 'Buzzer',
                //leading: const Icon(MdiIcons.bell),
                switchValue: bloc.moduleSettings.buzzer,
                onToggle: (value) {
                  onChanged();
                  bloc.moduleSettings.buzzer = value;
                  bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                },
              ),
              SettingsTile(
                title: 'Частота коротких гудков',
                trailing: Text('${bloc.moduleSettings.shortFrequency} Гц'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) async {
                  final int? hz = await buzzerFrequencyPopup(
                      frequency: bloc.moduleSettings.shortFrequency,
                      context: context,
                      text: 'Выберите частоту короткого гудка');
                  if (hz != null) {
                    onChanged();
                    bloc.moduleSettings.shortFrequency = hz;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  }
                },
              ),
              SettingsTile(
                title: 'Частота длинных гудков',
            trailing: Text('${bloc.moduleSettings.longFrequency} Гц'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) async {
                  final int? hz = await buzzerFrequencyPopup(
                      frequency: bloc.moduleSettings.longFrequency,
                      context: context,
                      text: 'Выберите частоту длинного гудка');
                  if (hz != null) {
                    onChanged();
                    bloc.moduleSettings.longFrequency = hz;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
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
                switchValue: bloc.moduleSettings.lora,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.lora = value;
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Частота',
                trailing: Text('${bloc.moduleSettings.frequency} Гц'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'TX Power',
            trailing: Text('${bloc.moduleSettings.txPower}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Spreading Factor',
            trailing: Text('${bloc.moduleSettings.spreadingFactor}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Signal Bandwidth',
            trailing: Text('${bloc.moduleSettings.signalBandwidth}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Coding Rate Denominator',
            trailing: Text('${bloc.moduleSettings.codingRateDenominator}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Preamble Length',
            trailing: Text('${bloc.moduleSettings.preambleLength}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile(
                title: 'Sync Word',
            trailing: Text('${bloc.moduleSettings.syncWord}'),
                //leading: const Icon(MdiIcons.wave),
                onPressed: (context) {
                  onChanged();
                  //ToDo LoRa;
                },
              ),
              SettingsTile.switchTile(
                title: 'CRC',
                //leading: const Icon(MdiIcons.wave),
                switchValue: bloc.moduleSettings.crc,
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
                switchValue: bloc.moduleSettings.tft,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.tft = value;
                  //ToDo TFT;
                },
              ),
              SettingsTile.switchTile(
                title: 'Спящий режим',
                //leading: const Icon(MdiIcons.monitor),
                switchValue: bloc.moduleSettings.timeout,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.timeout = value;
                  //ToDo TFT;
                },
              ),
              SettingsTile(
                title: 'Спящий режим',
                trailing: Text(
                    '${bloc.moduleSettings.timeoutDuration} секунд'),
                //leading: const Icon(MdiIcons.monitor),
                onPressed: (context) {
                  onChanged();
                  //ToDo TFT;
                },
              ),
              SettingsTile.switchTile(
                title: 'Включать после события',
                //leading: const Icon(MdiIcons.monitor),
                switchValue: bloc.moduleSettings.turnOnAtEvent,
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
                switchValue: bloc.moduleSettings.bluetooth,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.bluetooth = value;
                  //ToDo bluetooth on/off;
                },
              ),
              SettingsTile(
                title: 'Имя модуля',
            trailing: Text(bloc.moduleSettings.bluetoothName),
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) {
                  onChanged();
                  //ToDo bluetooth module name;
                },
              ),
              SettingsTile(
                title: 'Номер модуля',
            trailing: Text('${bloc.moduleSettings.bluetoothNumber}'),
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) async {
                  final int? number = await bluetoothNumberPopup(
                      context: context,
                      labelText: 'Номер',
                      text: 'Введите номер модуля');
                  if (number != null) {
                    onChanged();
                    bloc.moduleSettings.bluetoothNumber = number;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  }
                },
              ),
            ],
          ),
          SettingsSection(title: 'WiFi', tiles: [
            SettingsTile.switchTile(
              title: 'WiFi',
              //leading: const Icon(MdiIcons.wifi),
              switchValue: bloc.moduleSettings.wifi,
              onToggle: (value) {
                onChanged();
                //moduleSettings.wifi = value;
                //ToDo WiFi;
              },
            ),
            SettingsTile(
              title: 'Сеть',
            trailing: Text(bloc.moduleSettings.ssid),
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
            trailing: Text('${bloc.moduleSettings.r1} Ом'),
                //leading: const Icon(MdiIcons.resistor),
                onPressed: (context) async {
                  final int? r1 = await vccPopup(
                      context: context,
                      labelText: 'Ом',
                      text: 'Введите значение резистора R1');
                  if (r1 != null) {
                    onChanged();
                    bloc.moduleSettings.r1 = r1;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  }
                },
              ),
              SettingsTile(
                title: 'R2',
            trailing: Text('${bloc.moduleSettings.r2} Ом'),
                //leading: const Icon(MdiIcons.resistor),
                onPressed: (context) async {
                  final int? r2 = await vccPopup(
                      context: context,
                      labelText: 'Ом',
                      text: 'Введите значение резистора R2');
                  if (r2 != null) {
                    onChanged();
                    bloc.moduleSettings.r2 = r2;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
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
                    bloc.moduleSettings.vBat = mv;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  }
                },
              ),
            ],
          ),
        ]);
      });
    } else if (bloc.moduleSettings.type == 'led') {
      return BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
          builder: (context, state) {
        return SettingsList(sections: [
          SettingsSection(
            title: 'Модуль',
            tiles: [
              SettingsTile(
                title:
                    '${bloc.moduleSettings.bluetoothName}${bloc.moduleSettings.bluetoothNumber}',
              ),
            ],
          ),
          SettingsSection(
            title: 'Bluetooth',
            tiles: [
              SettingsTile.switchTile(
                title: 'Bluetooth',
                //leading: const Icon(Icons.bluetooth),
                switchValue: bloc.moduleSettings.bluetooth,
                onToggle: (value) {
                  onChanged();
                  //moduleSettings.bluetooth = value;
                  //ToDo bluetooth on/off;
                },
              ),
              SettingsTile(
                title: 'Имя модуля',
                subtitle: bloc.moduleSettings.bluetoothName,
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) {
                  onChanged();
                  //ToDo bluetooth module name;
                },
              ),
              SettingsTile(
                title: 'Номер модуля',
                subtitle: '${bloc.moduleSettings.bluetoothNumber}',
                //leading: const Icon(MdiIcons.bluetooth),
                onPressed: (context) async {
                  final int? number = await bluetoothNumberPopup(
                      context: context,
                      labelText: 'Номер',
                      text: 'Введите номер модуля');
                  if (number != null) {
                    onChanged();
                    bloc.moduleSettings.bluetoothNumber = number;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  }
                },
              ),
              SettingsTile(
                title: 'Яркость',
                subtitle: '${bloc.moduleSettings.brightness}',
                //leading: const Icon(MdiIcons.brightness1),
                onPressed: (context) async {
                  final int? number = await brightnessPopup(
                      initialValue: bloc.moduleSettings.brightness,
                      context: context,
                      text: 'Установите яркость панели');
                  if (number != null) {
                    onChanged();
                    bloc.moduleSettings.brightness = number;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  }
                },
              ),
            ],
          ),
          SettingsSection(title: 'WiFi', tiles: [
            SettingsTile.switchTile(
              title: 'WiFi',
              //leading: const Icon(MdiIcons.wifi),
              switchValue: bloc.moduleSettings.wifi,
              onToggle: (value) {
                onChanged();
                bloc.moduleSettings.wifi = value;
                bloc.add(UpdateModuleSettings(bloc.moduleSettings));
              },
            ),
            SettingsTile(
              title: 'Сеть',
              subtitle: bloc.moduleSettings.ssid,
              //leading: const Icon(MdiIcons.wifi),
              onPressed: (context) async {
                final String? ssid = await wifiSettingsPopup(
                    context: context,
                    labelText: 'WiFi',
                    text: 'Введите имя WiFi сети');
                if (ssid != null) {
                  onChanged();
                  bloc.moduleSettings.ssid = ssid;
                  bloc.add(UpdateModuleSettings(bloc.moduleSettings));
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
                        'Введите пароль WiFi сети ${bloc.moduleSettings.ssid}');
                if (password != null) {
                  onChanged();
                  bloc.moduleSettings.password = password;
                  bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                }
              },
            ),
          ]),
        ]);
      });
    } else {
      return Splash(
          text: 'Неизвестный тип модуля: ${bloc.moduleSettings.type}');
    }
  }
}
