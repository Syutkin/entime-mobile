import 'dart:convert';

import 'package:entime/src/feature/module_settings/model/module_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/extensions.dart';
import '../../../common/widget/cancel_ok_buttons.dart';
import '../../../common/widget/splash_widget.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../bloc/module_settings_bloc.dart';
import '../model/module_settings_protocol.dart';
import 'popups.dart';

class ModuleSettingsInitScreen extends StatefulWidget {
  const ModuleSettingsInitScreen({super.key});

  @override
  State<ModuleSettingsInitScreen> createState() => _ModuleSettingsInitScreenState();
}

class _ModuleSettingsInitScreenState extends State<ModuleSettingsInitScreen> {
  var _updated = false;
  ModSettingsModel? _initialModuleSettings;

  Future<bool> _onBackPressed(BuildContext context) async {
    if (_updated) {
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
                      final data = _entimeSaveConfigData(
                        current: entime.entime,
                        initial: _initialModuleSettings,
                      );
                      if (data.isEmpty) {
                        return;
                      }
                      final message = jsonEncode({
                        'cmd': 'save_config',
                        'id': moduleSettingsSaveConfigRequestId,
                        'data': data,
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
    // migration from WillPopScope to PopScope is taken from
    // https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, result) async {
        if (didPop) {
          return;
        }
        final navigator = Navigator.of(context);
        final shouldPop = await _onBackPressed(context);
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
                _initialModuleSettings ??= state.moduleSettings;
                return ModuleSettingsScreen(onChanged: () => _updated = true);
              case ModuleSettingsError():
                _initialModuleSettings = null;
                _updated = false;
                return Splash(text: Localization.current.I18nModuleSettings_errorLoadSettings);
              default:
                _initialModuleSettings = null;
                _updated = false;
                return Splash(text: Localization.current.I18nModuleSettings_awaitingSettings);
            }
          },
        ),
      ),
    );
  }
}

Map<String, dynamic> _entimeSaveConfigData({
  required ModSettingsEntime current,
  required ModSettingsModel? initial,
}) {
  if (initial is! ModSettingsModelEntime) {
    return current.toJson();
  }

  return _entimeSettingsDiff(initial.entime, current);
}

Map<String, dynamic> _entimeSettingsDiff(ModSettingsEntime initial, ModSettingsEntime current) {
  final data = <String, dynamic>{};

  final device = <String, dynamic>{};
  _putIfChanged(device, 'name', initial.device.name, current.device.name);
  _putIfChanged(device, 'number', initial.device.number, current.device.number);
  _putIfChanged(device, 'type', initial.device.type, current.device.type);
  _putIfChanged(
    device,
    'timezone_offset_min',
    initial.device.timezoneOffsetMin,
    current.device.timezoneOffsetMin,
  );
  _putGroupIfNotEmpty(data, 'device', device);

  final sync = <String, dynamic>{};
  _putIfChanged(sync, 'auto', initial.sync.auto, current.sync.auto);
  _putIfChanged(sync, 'source', initial.sync.source, current.sync.source);
  _putIfChanged(sync, 'ntp1', initial.sync.ntp1, current.sync.ntp1);
  _putIfChanged(sync, 'ntp2', initial.sync.ntp2, current.sync.ntp2);
  _putIfChanged(sync, 'ntp3', initial.sync.ntp3, current.sync.ntp3);
  _putGroupIfNotEmpty(data, 'sync', sync);

  final wifi = <String, dynamic>{};
  _putIfChanged(wifi, 'active', initial.wifi.active, current.wifi.active);
  _putIfChanged(wifi, 'ssid', initial.wifi.ssid, current.wifi.ssid);
  _putIfChanged(wifi, 'passwd', initial.wifi.passwd, current.wifi.passwd);
  _putGroupIfNotEmpty(data, 'wifi', wifi);

  final gps = <String, dynamic>{};
  _putIfChanged(gps, 'enabled', initial.gps.enabled, current.gps.enabled);
  _putGroupIfNotEmpty(data, 'gps', gps);

  final touch = <String, dynamic>{};
  _putIfChanged(touch, 'enabled', initial.touch.enabled, current.touch.enabled);
  _putIfChanged(touch, 'cal_valid', initial.touch.calValid, current.touch.calValid);
  if (!listEquals(initial.touch.calibration, current.touch.calibration)) {
    touch['calibration'] = List<int>.from(current.touch.calibration);
  }
  _putGroupIfNotEmpty(data, 'touch', touch);

  return data;
}

void _putIfChanged(Map<String, dynamic> target, String key, Object? initial, Object? current) {
  if (initial != current) {
    target[key] = current;
  }
}

void _putGroupIfNotEmpty(Map<String, dynamic> target, String key, Map<String, dynamic> group) {
  if (group.isNotEmpty) {
    target[key] = group;
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
                      title: Text(i18n.I18nModuleSettings_touch),
                      tiles: [
                        SettingsTile.switchTile(
                          title: Text(i18n.I18nModuleSettings_touchEnabled),
                          initialValue: moduleSettings.touch.enabled,
                          onToggle: (value) {
                            widget.onChanged();
                            bloc.add(
                              ModuleSettingsEvent.update(
                                ModSettingsModel.entime(moduleSettings.copyWith.touch(enabled: value)),
                              ),
                            );
                          },
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_touchCalValid),
                          trailing: Text(moduleSettings.touch.calValid ? i18n.I18nCore_yes : i18n.I18nCore_no),
                        ),
                        SettingsTile(
                          title: Text(i18n.I18nModuleSettings_touchCalibration),
                          trailing: Text(moduleSettings.touch.calibration.join(', ')),
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
