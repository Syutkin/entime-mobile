import 'dart:convert';

import 'package:entime/src/feature/module_settings/model/module_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/extensions.dart';
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
              bloc.state.whenOrNull(
                loaded: (moduleSettings) {
                  moduleSettings.map(
                    entime: (entime) {
                      final message = jsonEncode({
                        'cmd': 'save_config',
                        'data': entime.entime.toJson(),
                      });
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
    final i18n = Localization.current;
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
                      title: Text(i18n.I18nModuleSettings_device),
                      tiles: [
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_deviceName),
                          trailing: Text(moduleSettings.device.name),
                          onPressed: (context) async {
                            final value = await moduleNamePopup(
                              context: context,
                              text: i18n.I18nModuleSettings_deviceName,
                              labelText: i18n.I18nModuleSettings_deviceName,
                              initialValue: moduleSettings.device.name,
                            );
                            if (value != null && value.isNotEmpty) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.device(name: value)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_deviceNumber),
                          trailing: Text('${moduleSettings.device.number}'),
                          onPressed: (context) async {
                            final value = await bluetoothNumberPopup(
                              context: context,
                              text: i18n.I18nModuleSettings_deviceNumber,
                              labelText: i18n.I18nModuleSettings_deviceNumber,
                              initialValue: moduleSettings.device.number,
                            );
                            if (value != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.device(number: value)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_deviceType),
                          trailing: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              value: moduleSettings.device.type == 2 ? 2 : 1,
                              items: [
                                DropdownMenuItem(value: 1, child: Text(i18n.I18nHome_start)),
                                DropdownMenuItem(value: 2, child: Text(i18n.I18nHome_finish)),
                              ],
                              onChanged: (value) {
                                if (value == null) {
                                  return;
                                }
                                widget.onChanged();
                                bloc.add(
                                  ModuleSettingsEvent.update(
                                    ModSettingsModel.entime(moduleSettings.copyWith.device(type: value)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_deviceTimezone),
                          trailing: Text(moduleSettings.device.timezoneOffsetMin.formatUtcOffset()),
                          onPressed: (context) async {
                            final value = await timezonePopup(
                              context: context,
                              text: i18n.I18nModuleSettings_deviceTimezone,
                              labelText: i18n.I18nModuleSettings_deviceTimezone,
                              initialValue: moduleSettings.device.timezoneOffsetMin,
                            );
                            if (value != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(
                                    moduleSettings.copyWith.device(timezoneOffsetMin: value),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(i18n.I18nModuleSettings_sync),
                      tiles: [
                        SettingsTile.switchTile(
                          title: Text(i18n.I18nModuleSettings_syncAuto),
                          initialValue: moduleSettings.sync.auto,
                          onToggle: (value) {
                            widget.onChanged();
                            bloc.add(
                              ModuleSettingsEvent.update(
                                ModSettingsModel.entime(moduleSettings.copyWith.sync(auto: value)),
                              ),
                            );
                          },
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_syncSource),
                          trailing: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              value: switch (moduleSettings.sync.source) {
                                1 => 1,
                                2 => 2,
                                _ => 0,
                              },
                              items: [
                                DropdownMenuItem(value: 0, child: Text(i18n.I18nModuleSettings_syncSourceAuto)),
                                DropdownMenuItem(value: 1, child: Text(i18n.I18nModuleSettings_syncSourceGps)),
                                DropdownMenuItem(value: 2, child: Text(i18n.I18nModuleSettings_syncSourceRtc)),
                              ],
                              onChanged: (value) {
                                if (value == null) {
                                  return;
                                }
                                widget.onChanged();
                                bloc.add(
                                  ModuleSettingsEvent.update(
                                    ModSettingsModel.entime(moduleSettings.copyWith.sync(source: value)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_ntp1),
                          trailing: Text(moduleSettings.sync.ntp1),
                          onPressed: (context) async {
                            final value = await ntpServerPopup(
                              context: context,
                              text: i18n.I18nModuleSettings_ntp1,
                              labelText: i18n.I18nModuleSettings_ntp1,
                              initialValue: moduleSettings.sync.ntp1,
                            );
                            if (value != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.sync(ntp1: value)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_ntp2),
                          trailing: Text(moduleSettings.sync.ntp2),
                          onPressed: (context) async {
                            final value = await ntpServerPopup(
                              context: context,
                              text: i18n.I18nModuleSettings_ntp2,
                              labelText: i18n.I18nModuleSettings_ntp2,
                              initialValue: moduleSettings.sync.ntp2,
                              allowEmpty: true,
                            );
                            if (value != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.sync(ntp2: value)),
                                ),
                              );
                            }
                          },
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_ntp3),
                          trailing: Text(moduleSettings.sync.ntp3),
                          onPressed: (context) async {
                            final value = await ntpServerPopup(
                              context: context,
                              text: i18n.I18nModuleSettings_ntp3,
                              labelText: i18n.I18nModuleSettings_ntp3,
                              initialValue: moduleSettings.sync.ntp3,
                              allowEmpty: true,
                            );
                            if (value != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(moduleSettings.copyWith.sync(ntp3: value)),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(i18n.I18nModuleSettings_gps),
                      tiles: [
                        SettingsTile.switchTile(
                          title: Text(i18n.I18nModuleSettings_gpsEnabled),
                          initialValue: moduleSettings.gps.enabled,
                          onToggle: (value) {
                            widget.onChanged();
                            bloc.add(
                              ModuleSettingsEvent.update(
                                ModSettingsModel.entime(moduleSettings.copyWith.gps(enabled: value)),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(i18n.I18nModuleSettings_wifi),
                      tiles: [
                        SettingsTile.switchTile(
                          title: Text(i18n.I18nModuleSettings_wifi),
                          initialValue: moduleSettings.wifi.active,
                          onToggle: (value) {
                            widget.onChanged();
                            bloc.add(
                              ModuleSettingsEvent.update(
                                ModSettingsModel.entime(moduleSettings.copyWith.wifi(active: value)),
                              ),
                            );
                          },
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_wifiNetwork),
                          trailing: Text(moduleSettings.wifi.ssid),
                          enabled: moduleSettings.wifi.active,
                          onPressed: (context) async {
                            final credentials = await wifiSettingsPopup(
                              context: context,
                              ssid: moduleSettings.wifi.ssid,
                            );
                            final ssid = credentials?[0];
                            final password = credentials?[1];
                            if (ssid != null) {
                              widget.onChanged();
                              bloc.add(
                                ModuleSettingsEvent.update(
                                  ModSettingsModel.entime(
                                    moduleSettings.copyWith.wifi(
                                      ssid: ssid,
                                      passwd: password ?? '',
                                    ),
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
                            final credentials = await wifiSettingsPopup(
                              context: context,
                              ssid: moduleSettings.wiFi.ssid,
                            );
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
