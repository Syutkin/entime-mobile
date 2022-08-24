import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/splash_widget.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../bloc/module_settings_bloc.dart';
import 'popups.dart';

class ModuleSettingsInitScreen extends StatelessWidget {
  const ModuleSettingsInitScreen({Key? key}) : super(key: key);

  Future<bool> _onBackPressed(BuildContext context, bool updated) async {
    if (updated) {
      await showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
          title: Text(
            Localization.current.I18nModuleSettings_saveSettingsToModule,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                BlocProvider.of<BluetoothBloc>(context).add(
                  SendMessage(
                    BlocProvider.of<ModuleSettingsBloc>(context)
                        .moduleSettings
                        .write,
                  ),
                );
                Navigator.pop(context, true);
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(
                MaterialLocalizations.of(context).cancelButtonLabel,
              ),
            )
          ],
        ),
      );
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
        appBar: AppBar(
          title: Text(Localization.current.I18nModuleSettings_moduleSettings),
        ),
        body: BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
          builder: (context, state) {
            if (state is ModuleSettingsUpdated) {
              return ModuleSettingsScreen(
                onChanged: () => updated = true,
              );
            } else if (state is ModuleSettingsLoadError) {
              return Splash(
                text: Localization.current.I18nModuleSettings_errorLoadSettings,
              );
            } else {
              return Splash(
                text: Localization.current.I18nModuleSettings_awaitingSettings,
              );
            }
          },
        ),
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
        builder: (context, state) => SettingsList(
          sections: [
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_module),
              tiles: [
                SettingsTile(
                  title: Text(
                    '${bloc.moduleSettings.bluetoothName}${bloc.moduleSettings.bluetoothNumber}',
                  ),
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_buzzer),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nModuleSettings_buzzer),
                  //leading:  Icon(MdiIcons.bell),
                  initialValue: bloc.moduleSettings.buzzer,
                  onToggle: (value) {
                    onChanged();
                    bloc.moduleSettings.buzzer = value;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_shortFrequency,
                  ),
                  trailing: Text(
                    Localization.current.I18nModuleSettings_frequencyHz(
                      bloc.moduleSettings.shortFrequency,
                    ),
                  ),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) async {
                    final int? hz = await buzzerFrequencyPopup(
                      frequency: bloc.moduleSettings.shortFrequency,
                      context: context,
                      text: Localization
                          .current.I18nModuleSettings_selectShortFrequency,
                    );
                    if (hz != null) {
                      onChanged();
                      bloc.moduleSettings.shortFrequency = hz;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_longFrequency,
                  ),
                  trailing: Text(
                    Localization.current.I18nModuleSettings_frequencyHz(
                      bloc.moduleSettings.longFrequency,
                    ),
                  ),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) async {
                    final int? hz = await buzzerFrequencyPopup(
                      frequency: bloc.moduleSettings.longFrequency,
                      context: context,
                      text: Localization
                          .current.I18nModuleSettings_selectLongFrequency,
                    );
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
              title: Text(Localization.current.I18nModuleSettings_lora),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nModuleSettings_lora),
                  //leading:  Icon(MdiIcons.radio),
                  initialValue: bloc.moduleSettings.lora,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.lora = value;
                    //ToDo LoRa;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_frequency,
                  ),
                  trailing: Text(
                    Localization.current.I18nModuleSettings_frequencyHz(
                      bloc.moduleSettings.frequency,
                    ),
                  ),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) {
                    onChanged();
                    //ToDo LoRa;
                  },
                ),
                SettingsTile(
                  title: Text(Localization.current.I18nModuleSettings_txPower),
                  trailing: Text('${bloc.moduleSettings.txPower}'),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) {
                    onChanged();
                    //ToDo LoRa;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_spreadingFactor,
                  ),
                  trailing: Text('${bloc.moduleSettings.spreadingFactor}'),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) {
                    onChanged();
                    //ToDo LoRa;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_signalBandwidth,
                  ),
                  trailing: Text('${bloc.moduleSettings.signalBandwidth}'),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) {
                    onChanged();
                    //ToDo LoRa;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization
                        .current.I18nModuleSettings_codingRateDenominator,
                  ),
                  trailing:
                      Text('${bloc.moduleSettings.codingRateDenominator}'),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) {
                    onChanged();
                    //ToDo LoRa;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_preambleLength,
                  ),
                  trailing: Text('${bloc.moduleSettings.preambleLength}'),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) {
                    onChanged();
                    //ToDo LoRa;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_syncWord,
                  ),
                  trailing: Text('${bloc.moduleSettings.syncWord}'),
                  //leading:  Icon(MdiIcons.wave),
                  onPressed: (context) {
                    onChanged();
                    //ToDo LoRa;
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nModuleSettings_crc),
                  //leading:  Icon(MdiIcons.wave),
                  initialValue: bloc.moduleSettings.crc,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.crc = value;
                    //ToDo LoRa;
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_screen),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nModuleSettings_tft),
                  //leading:  Icon(MdiIcons.monitor),
                  initialValue: bloc.moduleSettings.tft,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.tft = value;
                    //ToDo TFT;
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_sleepMode,
                  ),
                  //leading:  Icon(MdiIcons.monitor),
                  initialValue: bloc.moduleSettings.timeout,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.timeout = value;
                    //ToDo TFT;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_sleepMode,
                  ),
                  trailing: Text(
                    Localization.current.I18nModuleSettings_sleepModeSeconds(
                      bloc.moduleSettings.timeoutDuration,
                    ),
                  ),
                  //leading:  Icon(MdiIcons.monitor),
                  onPressed: (context) {
                    onChanged();
                    //ToDo TFT;
                  },
                ),
                SettingsTile.switchTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_turnOnAtEvent,
                  ),
                  //leading:  Icon(MdiIcons.monitor),
                  initialValue: bloc.moduleSettings.turnOnAtEvent,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.turnOnAtEvent = value;
                    //ToDo TFT;
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_bluetooth),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_bluetooth,
                  ),
                  //leading:  Icon(Icons.bluetooth),
                  initialValue: bloc.moduleSettings.bluetooth,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.bluetooth = value;
                    //ToDo bluetooth on/off;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_bluetoothModuleName,
                  ),
                  trailing: Text(bloc.moduleSettings.bluetoothName),
                  //leading:  Icon(MdiIcons.bluetooth),
                  onPressed: (context) {
                    onChanged();
                    //ToDo bluetooth module name;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization
                        .current.I18nModuleSettings_bluetoothModuleNumber,
                  ),
                  trailing: Text('${bloc.moduleSettings.bluetoothNumber}'),
                  //leading:  Icon(MdiIcons.bluetooth),
                  onPressed: (context) async {
                    final int? number = await bluetoothNumberPopup(
                      context: context,
                      labelText: Localization
                          .current.I18nModuleSettings_bluetoothNumber,
                      text: Localization.current
                          .I18nModuleSettings_enterBluetoothModuleNumber,
                    );
                    if (number != null) {
                      onChanged();
                      bloc.moduleSettings.bluetoothNumber = number;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_wifi),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nModuleSettings_wifi),
                  //leading:  Icon(MdiIcons.wifi),
                  initialValue: bloc.moduleSettings.wifi,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.wifi = value;
                    //ToDo WiFi;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_wifiNetwork,
                  ),
                  trailing: Text(bloc.moduleSettings.ssid),
                  //leading:  Icon(MdiIcons.wifi),
                  onPressed: (context) {
                    onChanged();
                    //ToDo WiFi;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_password,
                  ),
                  //subtitle: Text('${(moduleSettings.password)}'),
                  //leading:  Icon(MdiIcons.wifi),
                  onPressed: (context) {
                    onChanged();
                    //ToDo WiFi;
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_vcc),
              tiles: [
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_resistor1,
                  ),
                  trailing: Text(
                    Localization.current.I18nModuleSettings_resistorOhm(
                      bloc.moduleSettings.r1,
                    ),
                  ),
                  //leading:  Icon(MdiIcons.resistor),
                  onPressed: (context) async {
                    final int? r1 = await vccPopup(
                      context: context,
                      labelText: Localization.current.I18nModuleSettings_ohm,
                      text: Localization
                          .current.I18nModuleSettings_enterResistor1,
                    );
                    if (r1 != null) {
                      onChanged();
                      bloc.moduleSettings.r1 = r1;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_resistor2,
                  ),
                  trailing: Text(
                    Localization.current.I18nModuleSettings_resistorOhm(
                      bloc.moduleSettings.r2,
                    ),
                  ),
                  //leading:  Icon(MdiIcons.resistor),
                  onPressed: (context) async {
                    final int? r2 = await vccPopup(
                      context: context,
                      labelText: Localization.current.I18nModuleSettings_ohm,
                      text: Localization
                          .current.I18nModuleSettings_enterResistor2,
                    );
                    if (r2 != null) {
                      onChanged();
                      bloc.moduleSettings.r2 = r2;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization
                        .current.I18nModuleSettings_enterMeasuredVoltage,
                  ),
                  // subtitle: Text('${_bloc.moduleSettings.vBat} мВ'),
                  //leading:  Icon(MdiIcons.batteryCharging),
                  onPressed: (context) async {
                    final int? mv = await vccPopup(
                      context: context,
                      labelText: Localization.current.I18nModuleSettings_mv,
                      text: Localization
                          .current.I18nModuleSettings_enterCurrentVoltage,
                    );
                    if (mv != null) {
                      onChanged();
                      bloc.moduleSettings.vBat = mv;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      );
    } else if (bloc.moduleSettings.type == 'led') {
      return BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
        builder: (context, state) => SettingsList(
          sections: [
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_module),
              tiles: [
                SettingsTile(
                  title: Text(
                    '${bloc.moduleSettings.bluetoothName}${bloc.moduleSettings.bluetoothNumber}',
                  ),
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_bluetooth),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_bluetooth,
                  ),
                  //leading:  Icon(Icons.bluetooth),
                  initialValue: bloc.moduleSettings.bluetooth,
                  onToggle: (value) {
                    onChanged();
                    //moduleSettings.bluetooth = value;
                    //ToDo bluetooth on/off;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_bluetoothModuleName,
                  ),
                  description: Text(bloc.moduleSettings.bluetoothName),
                  //leading:  Icon(MdiIcons.bluetooth),
                  onPressed: (context) {
                    onChanged();
                    //ToDo bluetooth module name;
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization
                        .current.I18nModuleSettings_bluetoothModuleNumber,
                  ),
                  description: Text('${bloc.moduleSettings.bluetoothNumber}'),
                  //leading:  Icon(MdiIcons.bluetooth),
                  onPressed: (context) async {
                    final int? number = await bluetoothNumberPopup(
                      context: context,
                      labelText: Localization
                          .current.I18nModuleSettings_bluetoothNumber,
                      text: Localization.current
                          .I18nModuleSettings_enterBluetoothModuleNumber,
                    );
                    if (number != null) {
                      onChanged();
                      bloc.moduleSettings.bluetoothNumber = number;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_brightness,
                  ),
                  description: Text('${bloc.moduleSettings.brightness}'),
                  //leading:  Icon(MdiIcons.brightness1),
                  onPressed: (context) async {
                    final int? number = await brightnessPopup(
                      initialValue: bloc.moduleSettings.brightness,
                      context: context,
                      text:
                          Localization.current.I18nModuleSettings_setBrightness,
                    );
                    if (number != null) {
                      onChanged();
                      bloc.moduleSettings.brightness = number;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text(Localization.current.I18nModuleSettings_wifi),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(Localization.current.I18nModuleSettings_wifi),
                  //leading:  Icon(MdiIcons.wifi),
                  initialValue: bloc.moduleSettings.wifi,
                  onToggle: (value) {
                    onChanged();
                    bloc.moduleSettings.wifi = value;
                    bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_wifiNetwork,
                  ),
                  description: Text(bloc.moduleSettings.ssid),
                  //leading:  Icon(MdiIcons.wifi),
                  onPressed: (context) async {
                    final String? ssid = await wifiSettingsPopup(
                      context: context,
                      labelText: Localization.current.I18nModuleSettings_wifi,
                      text:
                          Localization.current.I18nModuleSettings_enterWifiSsid,
                    );
                    if (ssid != null) {
                      onChanged();
                      bloc.moduleSettings.ssid = ssid;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
                SettingsTile(
                  title: Text(
                    Localization.current.I18nModuleSettings_password,
                  ),
                  //subtitle: Text('${(moduleSettings.password)}'),
                  //leading:  Icon(MdiIcons.wifi),
                  onPressed: (context) async {
                    final String? password = await wifiSettingsPopup(
                      context: context,
                      labelText:
                          Localization.current.I18nModuleSettings_password,
                      text: Localization.current
                          .I18nModuleSettings_enterWifiPassword(
                        bloc.moduleSettings.ssid,
                      ),
                    );
                    if (password != null) {
                      onChanged();
                      bloc.moduleSettings.password = password;
                      bloc.add(UpdateModuleSettings(bloc.moduleSettings));
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Splash(
        text: Localization.current.I18nModuleSettings_unknownModuleType(
          bloc.moduleSettings.type,
        ),
      );
    }
  }
}
