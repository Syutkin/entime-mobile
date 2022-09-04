import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';

import '../../../common/localization/localization.dart';
import '../../bluetooth/bluetooth.dart';
import '../../drawer/widget/app_drawer.dart';
import '../../init/init.dart';
import '../../module_settings/module_settings.dart';
import '../../protocol/protocol.dart';
import '../../protocol_screens/protocol_screens.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../../tab/tab.dart';
import '../../update/update.dart';
import 'add_racer_popup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      // Следим за поступающей информацией от Bluetooth
      BlocListener<BluetoothBloc, BluetoothBlocState>(
        listener: (context, state) {
          state.whenOrNull(
            connected: (message) {
              message?.whenOrNull(
                automaticStart: (automaticStart) {
                  context.read<ProtocolBloc>().add(
                        ProtocolEvent.updateAutomaticCorrection(
                          automaticStart: automaticStart,
                        ),
                      );
                },
                finish: (time, timeStamp) {
                  context.read<ProtocolBloc>().add(
                        ProtocolEvent.addFinishTime(
                          time: time,
                          timeStamp: timeStamp,
                        ),
                      );
                },
                moduleSettings: (moduleSettings) {
                  context
                      .read<ModuleSettingsBloc>()
                      .add(ModuleSettingsEvent.get(moduleSettings));
                },
              );
            },
          );
        },
        // Следим за повторной установкой стартового времени для участника
        child: BlocListener<ProtocolBloc, ProtocolState>(
          listener: (context, state) async {
            final protocolBloc = context.read<ProtocolBloc>();
            final materialLocalization = MaterialLocalizations.of(context);
            if (state is ProtocolSelectedState) {
              // Обновление автоматического времени старта
              if (state.automaticStart != null &&
                  state.automaticStart!.updating) {
                final String text =
                    Localization.current.I18nHome_updateAutomaticCorrection(
                  state.previousStart!.first.number,
                  state.previousStart!.first.automaticcorrection!,
                  state.automaticStart!.correction,
                );
                final bool? update = await overwriteStartTimePopup(
                  context: context,
                  text: text,
                );
                if (update != null && update) {
                  protocolBloc.add(
                    ProtocolUpdateAutomaticCorrection(
                      automaticStart: state.automaticStart!,
                      forceUpdate: true,
                    ),
                  );
                }
              }
              // Добавление нового стартового времени
              if (state.previousStart != null && state.startTime != null) {
                // Если стартовое время уже присвоено другому номеру
                String text = '';
                for (final element in state.previousStart!) {
                  if (element.automaticstarttime == null &&
                      element.manualstarttime == null) {
                    text += Localization.current.I18nHome_equalStartTime(
                      state.startTime!.time,
                      element.number,
                      state.startTime!.number,
                    );
                  } else {
                    if (element.automaticstarttime != null) {
                      text += Localization.current
                          .I18nHome_updateAutomaticStartCorrection(
                        state.startTime!.number,
                        element.automaticstarttime!,
                      );
                    } else if (element.manualstarttime != null) {
                      text += Localization.current
                          .I18nHome_updateAutomaticStartCorrection(
                        state.startTime!.number,
                        element.manualstarttime!,
                      );
                    } else {
                      text += Localization.current.I18nHome_errorAddParticipant(
                        materialLocalization.cancelButtonLabel,
                      );
                    }
                  }
                }

                final bool? update = await overwriteStartTimePopup(
                  context: context,
                  text: text,
                );

                if (update != null && update) {
                  protocolBloc.add(
                    ProtocolAddStartNumber(
                      startTime: state.startTime!,
                      forceAdd: true,
                    ),
                  );
                }
              }
            }
          },
          child: BlocBuilder<TabBloc, AppTab>(
            builder: (context, activeTab) => DefaultTabController(
              length: 3,
              child: Scaffold(
                drawer: const AppDrawer(),
                appBar: AppBar(
                  title: const _TextTitle(),
                  actions: <Widget>[
                    _FinishFilterButton(activeTab: activeTab),
                    const BluetoothButton(),
                    _MenuButton(activeTab: activeTab),
                  ],
                  bottom: TabBar(
                    onTap: (index) {
                      final bloc = context.read<TabBloc>();
                      switch (index) {
                        case 0:
                          bloc.add(const TabEvent.updated(AppTab.init));
                          break;
                        case 1:
                          bloc.add(const TabEvent.updated(AppTab.start));
                          break;
                        case 2:
                          bloc.add(const TabEvent.updated(AppTab.finish));
                          break;
                      }
                    },
                    tabs: <Widget>[
                      Tab(icon: Text(Localization.current.I18nHome_home)),
                      Tab(icon: Text(Localization.current.I18nHome_start)),
                      Tab(icon: Text(Localization.current.I18nHome_finish)),
                    ],
                  ),
                ),
                body: MultiBlocListener(
                  listeners: [
                    BlocListener<UpdateBloc, UpdateState>(
                      listenWhen: (previousState, state) {
                        // ловим показ наличия обновления
                        if (previousState is UpdateInitial &&
                            state is UpdateAvailable) {
                          return true;
                          // ловим показ ченджлога
                        } else if (previousState is UpdateInitial &&
                            state is UpdateInitial) {
                          return true;
                        } else {
                          return false;
                        }
                      },
                      listener: (context, state) async {
                        if (state is UpdateAvailable &&
                            !Scaffold.of(context).isDrawerOpen) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                Localization.current
                                    .I18nHome_updateAvailable(state.version),
                              ),
                              action: SnackBarAction(
                                onPressed: () {
                                  BlocProvider.of<UpdateBloc>(context)
                                      .add(const DownloadUpdate());
                                  Scaffold.of(context).openDrawer();
                                },
                                label: Localization.current.I18nHome_update,
                              ),
                            ),
                          );
                        } else if (state is UpdateInitial &&
                            state.showChangelog != null &&
                            state.showChangelog!.show) {
                          await showChangelogAtStartup(
                            context,
                            state.showChangelog!.previousVersion!,
                          );
                        }
                      },
                    ),
                  ],
                  child: const TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      InitScreen(),
                      StartScreen(),
                      FinishScreen(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

class _TextTitle extends StatelessWidget {
  const _TextTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ProtocolBloc, ProtocolState>(
        builder: (context, protocolState) =>
            protocolState is ProtocolSelectedState
                ? Text(basenameWithoutExtension(protocolState.databasePath))
                : const Text('Entime'),
      );
}

class _FinishFilterButton extends StatelessWidget {
  const _FinishFilterButton({
    Key? key,
    required this.activeTab,
  }) : super(key: key);

  final AppTab activeTab;

  @override
  Widget build(BuildContext context) {
    final settingsBloc = context.read<SettingsBloc>();
    final settings = settingsBloc.state.settings;
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, protocolState) {
        if (activeTab == AppTab.finish) {
          final menuItems = <PopupMenuEntry<FilterFinish>>[
            CheckedPopupMenuItem(
              value: FilterFinish.hideMarked,
              checked: !settings.hideMarked,
              child: Text(Localization.current.I18nHome_hideMarked),
            ),
            CheckedPopupMenuItem(
              value: FilterFinish.hideNumbers,
              checked: !settings.hideNumbers,
              child: Text(Localization.current.I18nHome_hideNumbers),
            ),
            CheckedPopupMenuItem(
              value: FilterFinish.hideManual,
              checked: !settings.hideManual,
              child: Text(Localization.current.I18nHome_hideManual),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              value: FilterFinish.setDefaults,
              child: ListTile(
                leading: const SizedBox(width: 0, height: 0),
                title: Text(Localization.current.I18nHome_setDefaults),
              ),
            )
          ];
          return PopupMenuButton<FilterFinish>(
            icon: const Icon(Icons.filter_list),
            itemBuilder: (context) => menuItems,
            onSelected: (value) async {
              switch (value) {
                case FilterFinish.hideMarked:
                  settingsBloc.add(
                    SettingsEventUpdate(
                      settings:
                          settings.copyWith(hideMarked: !settings.hideMarked),
                    ),
                  );
                  break;
                case FilterFinish.hideNumbers:
                  settingsBloc.add(
                    SettingsEventUpdate(
                      settings: settings.copyWith(
                        hideNumbers: !settings.hideNumbers,
                      ),
                    ),
                  );
                  break;
                case FilterFinish.hideManual:
                  settingsBloc.add(
                    SettingsEventUpdate(
                      settings:
                          settings.copyWith(hideManual: !settings.hideManual),
                    ),
                  );
                  break;
                case FilterFinish.setDefaults:
                  settingsBloc.add(
                    SettingsEventUpdate(
                      settings: settings.copyWith(
                        hideMarked: true,
                        hideNumbers: false,
                        hideManual: false,
                      ),
                    ),
                  );
                  break;
              }
            },
          );
        }
        return const SizedBox(width: 0, height: 0);
      },
    );
  }
}

class _MenuButton extends StatelessWidget {
  final AppTab activeTab;

  const _MenuButton({Key? key, required this.activeTab}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => BlocBuilder<ProtocolBloc, ProtocolState>(
          builder: (context, protocolState) {
            final settingsBloc = context.read<SettingsBloc>();
            final settings = settingsBloc.state.settings;
            final protocolBloc = context.read<ProtocolBloc>();
            final menuItems = <PopupMenuEntry<MenuButton>>[];
            if (activeTab == AppTab.start || activeTab == AppTab.finish) {
              if (protocolState is ProtocolSelectedState) {
                if (activeTab == AppTab.start) {
                  menuItems.add(
                    PopupMenuItem(
                      value: MenuButton.addRacer,
                      child: ListTile(
                        leading: const Icon(Icons.add),
                        title: Text(Localization.current.I18nHome_addRacer),
                      ),
                    ),
                  );
                }
                menuItems.add(
                  PopupMenuItem(
                    value: MenuButton.share,
                    child: ListTile(
                      leading: const Icon(Icons.share),
                      title: Text(Localization.current.I18nHome_share),
                    ),
                  ),
                );
              } else {
                menuItems.add(
                  PopupMenuItem(
                    value: MenuButton.selectStartProtocol,
                    child: ListTile(
                      leading: const Icon(MdiIcons.database),
                      title: Text(
                        Localization.current.I18nHome_selectStartProtocol,
                      ),
                    ),
                  ),
                );
              }
              if (activeTab == AppTab.start) {
                menuItems.add(
                  PopupMenuItem(
                    value: MenuButton.countdown,
                    child: ListTile(
                      leading: const Icon(MdiIcons.timer),
                      title: Text(Localization.current.I18nHome_countdown),
                    ),
                  ),
                );
              }
              menuItems.add(
                PopupMenuItem(
                  value: MenuButton.fab,
                  child: ListTile(
                    leading: const Icon(MdiIcons.handBackLeft),
                    title: Text(Localization.current.I18nHome_fab),
                  ),
                ),
              );
            } else {
              menuItems
                ..add(
                  PopupMenuItem(
                    value: MenuButton.selectStartProtocol,
                    child: ListTile(
                      leading: const Icon(MdiIcons.database),
                      title: Text(
                        Localization.current.I18nHome_selectStartProtocol,
                      ),
                    ),
                  ),
                )
                ..add(
                  PopupMenuItem(
                    value: MenuButton.bluetooth,
                    child: ListTile(
                      leading: const Icon(Icons.bluetooth),
                      title: Text(Localization.current.I18nHome_bluetooth),
                    ),
                  ),
                );
            }
            if (protocolState is ProtocolSelectedState &&
                activeTab == AppTab.start) {
              menuItems.add(
                PopupMenuItem(
                  value: MenuButton.importCsv,
                  child: ListTile(
                    leading: const Icon(MdiIcons.import),
                    title: Text(
                      Localization.current.I18nHome_importStartProtocolCsv,
                    ),
                  ),
                ),
              );
            }

            return PopupMenuButton<MenuButton>(
              itemBuilder: (context) => menuItems,
              onSelected: (value) async {
                switch (value) {
                  case MenuButton.share:
                    if (activeTab == AppTab.start) {
                      protocolBloc.add(const ProtocolShareStart());
                    } else if (activeTab == AppTab.finish) {
                      protocolBloc.add(const ProtocolShareFinish());
                    }
                    break;
                  case MenuButton.fab:
                    if (activeTab == AppTab.start) {
                      settingsBloc.add(
                        SettingsEventUpdate(
                          settings:
                              settings.copyWith(startFab: !settings.startFab),
                        ),
                      );
                    } else if (activeTab == AppTab.finish) {
                      settingsBloc.add(
                        SettingsEventUpdate(
                          settings: settings.copyWith(
                            finishFab: !settings.finishFab,
                          ),
                        ),
                      );
                    }
                    break;
                  case MenuButton.addRacer:
                    await addRacerPopup(context);
                    break;
                  case MenuButton.selectStartProtocol:
                    await routeToSelectFileScreen(context);
                    break;
                  case MenuButton.bluetooth:
                    await selectBluetoothDevice(context);
                    break;
                  case MenuButton.countdown:
                    settingsBloc.add(
                      SettingsEventUpdate(
                        settings:
                            settings.copyWith(countdown: !settings.countdown),
                      ),
                    );
                    break;
                  case MenuButton.importCsv:
                    protocolBloc.add(const ProtocolLoadStartFromCsv());
                    break;
                }
              },
            );
          },
        ),
      );
}
