import 'dart:convert';

import 'package:entime/src/feature/module_settings/model/module_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/cancel_ok_buttons.dart';
import '../../../common/widget/splash_widget.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../bloc/module_settings_bloc.dart';
import 'popups.dart';

class ModuleSettingsInitScreen extends StatelessWidget {
  const ModuleSettingsInitScreen({super.key});

  Future<bool> _onBackPressed(BuildContext context, bool updated) async {
    if (updated) {
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(Localization.current.I18nModuleSettings_saveSettingsToModule),
          actions: cancelOkButtons(
            context: context,
            onCancelPressed: () {
              // ToDo: зачем тут contex? и передача одинаковых значений в Navigator.pop
              Navigator.pop(context, true);
            },
            onOkPressed: () {
              final bloc = BlocProvider.of<ModuleSettingsBloc>(context);
              bloc.state.maybeWhen(
                loaded: (moduleSettings) {
                  moduleSettings.map(
                    entime: (entime) {
                      final message = jsonEncode(entime.entime.copyWith(read: false).toJson());
                      BlocProvider.of<BluetoothBloc>(context).add(
                        BluetoothEvent.sendMessage(message: message),
                      );
                    },
                    led: (led) {
                      final message = jsonEncode(led.led.copyWith(read: false).toJson());
                      BlocProvider.of<BluetoothBloc>(context).add(
                        BluetoothEvent.sendMessage(message: message),
                      );
                    },
                  );
                },
                orElse: () {},
              );
              // ToDo: зачем тут contex? и передача одинаковых значений в Navigator.pop
              Navigator.pop(context, true);
            },
          ),
        ),
      );
      return true;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    var updated = false;
    // migration from WillPopScope to PopScope is taken from
    // https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, result) async {
        if (didPop) {
          return;
        }
        final navigator = Navigator.of(context);
        final shouldPop = await _onBackPressed(context, updated);
        if (shouldPop) {
          navigator.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text(Localization.current.I18nModuleSettings_moduleSettings)),
        body: BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
          builder: (context, state) {
            switch (state) {
              case ModuleSettingsLoaded():
                return ModuleSettingsScreen(onChanged: () => updated = true);
              case ModuleSettingsError():
                return Splash(text: Localization.current.I18nModuleSettings_errorLoadSettings);
              default:
                return Splash(text: Localization.current.I18nModuleSettings_awaitingSettings);
            }
          },
        ),
      ),
    );
  }
}

class ModuleSettingsScreen extends StatefulWidget {
  const ModuleSettingsScreen({required this.onChanged, super.key});
  final VoidCallback onChanged;

  @override
  State<ModuleSettingsScreen> createState() => _ModuleSettingsScreenState();
}

class _ModuleSettingsScreenState extends State<ModuleSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ModuleSettingsBloc>(context);
    return BlocBuilder<ModuleSettingsBloc, ModuleSettingsState>(
      builder: (context, state) {
        switch (state) {
          case ModuleSettingsLoaded():
            final moduleSettingsType = state.moduleSettings;
            switch (moduleSettingsType) {
              case ModSettingsModelEntime():
                final moduleSettings = moduleSettingsType.entime;
                return SettingsList(
                  sections: [
                    SettingsSection(
                      title: Text(Localization.current.I18nModuleSettings_module),
                      tiles: [
                        SettingsTile(
                          title: Text('${moduleSettings.bluetooth.name}${moduleSettings.bluetooth.number}'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(Localization.current.I18nModuleSettings_buzzer),
                      tiles: [
                        SettingsTile.switchTile(
                          title: Text(Localization.current.I18nModuleSettings_buzzer),
                          //leading:  Icon(MdiIcons.bell),
                          initialValue: moduleSettings.buzzer.active,
                          onToggle: (value) {
                            widget.onChanged();
                            // bloc.moduleSettings.buzzer = value;
                            bloc.add(
                              ModuleSettingsEvent.update(
                                ModSettingsModel.entime(moduleSettings.copyWith.buzzer(active: value)),
                              ),
                            );
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_shortFrequency),
                          trailing: Text(
                            Localization.current.I18nModuleSettings_frequencyHz(moduleSettings.buzzer.shortFrequency),
                          ),
                          //leading:  Icon(MdiIcons.wave),
                          onPressed: (context) async {
                            final hz = await buzzerFrequencyPopup(
                              frequency: moduleSettings.buzzer.shortFrequency,
                              context: context,
                              text: Localization.current.I18nModuleSettings_selectShortFrequency,
                            );
                            if (hz != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.shortFrequency = hz;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.buzzer(shortFrequency: hz)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_longFrequency),
                          trailing: Text(
                            Localization.current.I18nModuleSettings_frequencyHz(moduleSettings.buzzer.longFrequency),
                          ),
                          //leading:  Icon(MdiIcons.wave),
                          onPressed: (context) async {
                            final hz = await buzzerFrequencyPopup(
                              frequency: moduleSettings.buzzer.longFrequency,
                              context: context,
                              text: Localization.current.I18nModuleSettings_selectLongFrequency,
                            );
                            if (hz != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.longFrequency = hz;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.buzzer(longFrequency: hz)),
                                ),
                              );
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
                          initialValue: moduleSettings.loRa.active,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
                            //moduleSettings.lora = value;
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_frequency),
                          trailing: Text(
                            Localization.current.I18nModuleSettings_frequencyHz(moduleSettings.loRa.frequency),
                          ),
                          //leading:  Icon(MdiIcons.wave),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_txPower),
                          trailing: Text('${moduleSettings.loRa.txPower}'),
                          //leading:  Icon(MdiIcons.wave),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_spreadingFactor),
                          trailing: Text('${moduleSettings.loRa.spreadingFactor}'),
                          //leading:  Icon(MdiIcons.wave),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_signalBandwidth),
                          trailing: Text('${moduleSettings.loRa.signalBandwidth}'),
                          //leading:  Icon(MdiIcons.wave),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_codingRateDenominator),
                          trailing: Text('${moduleSettings.loRa.codingRateDenom}'),
                          //leading:  Icon(MdiIcons.wave),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_preambleLength),
                          trailing: Text('${moduleSettings.loRa.preambleLength}'),
                          //leading:  Icon(MdiIcons.wave),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_syncWord),
                          trailing: Text('${moduleSettings.loRa.syncWord}'),
                          //leading:  Icon(MdiIcons.wave),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo LoRa;
                          },
                        ),
                        SettingsTile.switchTile(
                          title: Text(Localization.current.I18nModuleSettings_crc),
                          //leading:  Icon(MdiIcons.wave),
                          initialValue: moduleSettings.loRa.crc,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
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
                          initialValue: moduleSettings.tft.active,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
                            //moduleSettings.tft = value;
                            //ToDo TFT;
                          },
                        ),
                        SettingsTile.switchTile(
                          title: Text(Localization.current.I18nModuleSettings_sleepMode),
                          //leading:  Icon(MdiIcons.monitor),
                          initialValue: moduleSettings.tft.timeout,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
                            //moduleSettings.timeout = value;
                            //ToDo TFT;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_sleepMode),
                          trailing: Text(
                            Localization.current.I18nModuleSettings_sleepModeSeconds(
                              moduleSettings.tft.timeoutDuration,
                            ),
                          ),
                          //leading:  Icon(MdiIcons.monitor),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo TFT;
                          },
                        ),
                        SettingsTile.switchTile(
                          title: Text(Localization.current.I18nModuleSettings_turnOnAtEvent),
                          //leading:  Icon(MdiIcons.monitor),
                          initialValue: moduleSettings.tft.turnOnAtEvent,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
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
                          title: Text(Localization.current.I18nModuleSettings_bluetooth),
                          //leading:  Icon(Icons.bluetooth),
                          // initialValue: bloc.moduleSettings.bluetooth,
                          initialValue: true,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
                            //moduleSettings.bluetooth = value;
                            //ToDo bluetooth on/off;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_bluetoothModuleName),
                          trailing: Text(moduleSettings.bluetooth.name),
                          //leading:  Icon(MdiIcons.bluetooth),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo bluetooth module name;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_bluetoothModuleNumber),
                          trailing: Text('${moduleSettings.bluetooth.number}'),
                          //leading:  Icon(MdiIcons.bluetooth),
                          onPressed: (context) async {
                            final number = await bluetoothNumberPopup(
                              context: context,
                              labelText: Localization.current.I18nModuleSettings_bluetoothNumber,
                              text: Localization.current.I18nModuleSettings_enterBluetoothModuleNumber,
                            );
                            if (number != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.bluetoothNumber = number;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.bluetooth(number: number)),
                                ),
                              );
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
                          //ToDo WiFi;
                          initialValue: true,
                          // initialValue: bloc.moduleSettings.wifi,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
                            //moduleSettings.wifi = value;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_wifiNetwork),
                          trailing: Text(moduleSettings.wiFi.ssid),
                          //leading:  Icon(MdiIcons.wifi),
                          onPressed: (context) async {
                            final credentials = await wifiSettingsPopup(context: context, ssid: moduleSettings.wiFi.ssid);
                            final ssid = credentials?[0];
                            final password = credentials?[1];
                            if (ssid != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(
                                    moduleSettings.copyWith.wiFi(ssid: ssid, passwd: password ?? ''),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(Localization.current.I18nModuleSettings_vcc),
                      tiles: [
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_resistor1),
                          trailing: Text(Localization.current.I18nModuleSettings_resistorOhm(moduleSettings.vcc.r1)),
                          //leading:  Icon(MdiIcons.resistor),
                          onPressed: (context) async {
                            final r1 = await vccPopup(
                              context: context,
                              labelText: Localization.current.I18nModuleSettings_ohm,
                              text: Localization.current.I18nModuleSettings_enterResistor1,
                            );
                            if (r1 != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.r1 = r1;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.vcc(r1: r1)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_resistor2),
                          trailing: Text(Localization.current.I18nModuleSettings_resistorOhm(moduleSettings.vcc.r2)),
                          //leading:  Icon(MdiIcons.resistor),
                          onPressed: (context) async {
                            final r2 = await vccPopup(
                              context: context,
                              labelText: Localization.current.I18nModuleSettings_ohm,
                              text: Localization.current.I18nModuleSettings_enterResistor2,
                            );
                            if (r2 != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.r2 = r2;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.vcc(r2: r2)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_enterMeasuredVoltage),
                          // subtitle: Text('${_bloc.moduleSettings.vBat} мВ'),
                          //leading:  Icon(MdiIcons.batteryCharging),
                          onPressed: (context) async {
                            final mv = await vccPopup(
                              context: context,
                              labelText: Localization.current.I18nModuleSettings_mv,
                              text: Localization.current.I18nModuleSettings_enterCurrentVoltage,
                            );
                            if (mv != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.vBat = mv;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.vcc(vbat: mv)),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                );
              case ModSettingsModelLed():
                final moduleSettings = moduleSettingsType.led;
                return SettingsList(
                  sections: [
                    SettingsSection(
                      title: Text(Localization.current.I18nModuleSettings_module),
                      tiles: [
                        SettingsTile(
                          title: Text('${moduleSettings.bluetooth.name}${moduleSettings.bluetooth.number}'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(Localization.current.I18nModuleSettings_bluetooth),
                      tiles: [
                        SettingsTile.switchTile(
                          title: Text(Localization.current.I18nModuleSettings_bluetooth),
                          //leading:  Icon(Icons.bluetooth),
                          // initialValue: bloc.moduleSettings.bluetooth,
                          initialValue: true,
                          enabled: false,
                          onToggle: (value) {
                            widget.onChanged();
                            //moduleSettings.bluetooth = value;
                            //ToDo bluetooth on/off;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_bluetoothModuleName),
                          description: Text(moduleSettings.bluetooth.name),
                          //leading:  Icon(MdiIcons.bluetooth),
                          enabled: false,
                          onPressed: (context) {
                            widget.onChanged();
                            //ToDo bluetooth module name;
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_bluetoothModuleNumber),
                          description: Text('${moduleSettings.bluetooth.number}'),
                          //leading:  Icon(MdiIcons.bluetooth),
                          onPressed: (context) async {
                            final number = await bluetoothNumberPopup(
                              context: context,
                              labelText: Localization.current.I18nModuleSettings_bluetoothNumber,
                              text: Localization.current.I18nModuleSettings_enterBluetoothModuleNumber,
                            );
                            if (number != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.bluetoothNumber = number;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.led(moduleSettings.copyWith.bluetooth(number: number)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_brightness),
                          description: Text('${moduleSettings.ledPanel.brightness}'),
                          //leading:  Icon(MdiIcons.brightness1),
                          onPressed: (context) async {
                            final number = await brightnessPopup(
                              initialValue: moduleSettings.ledPanel.brightness,
                              context: context,
                              text: Localization.current.I18nModuleSettings_setBrightness,
                            );
                            if (number != null) {
                              widget.onChanged();
                              // bloc.moduleSettings.brightness = number;
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.led(moduleSettings.copyWith.ledPanel(brightness: number)),
                                ),
                              );
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
                          initialValue: moduleSettings.wiFi.active,
                          onToggle: (value) {
                            widget.onChanged();
                            bloc.add(
                              ModuleSettingsEvent.update(
                                ModSettingsModel.led(moduleSettings.copyWith.wiFi(active: value)),
                              ),
                            );
                          },
                        ),
                       SettingsTile(
                          title: Text(Localization.current.I18nModuleSettings_wifiNetwork),
                          trailing: Text(moduleSettings.wiFi.ssid),
                          //leading:  Icon(MdiIcons.wifi),
                          onPressed: (context) async {
                            final credentials = await wifiSettingsPopup(context: context, ssid: moduleSettings.wiFi.ssid);
                            final ssid = credentials?[0];
                            final password = credentials?[1];
                            if (ssid != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.led(
                                    moduleSettings.copyWith.wiFi(ssid: ssid, passwd: password ?? ''),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                );
            }
          // Сюда мы не попадём
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
