import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../constants/pubspec.yaml.g.dart';
import '../../bluetooth/bluetooth.dart';
import '../../database/bloc/database_bloc.dart';
import '../../database/model/filter_finish.dart';
import '../../database/widget/races_list_page.dart';
import '../../database/widget/start_list_page.dart';
import '../../drawer/widget/app_drawer.dart';
import '../../module_settings/module_settings.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../../tab/tab.dart';
import '../../tab/widget/finish_page.dart';
import '../../tab/widget/init_page.dart';
import '../../tab/widget/start_page.dart';
import '../../update/update.dart';
import '../model/menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      // Следим за поступающей информацией от Bluetooth
      BlocListener<BluetoothBloc, BluetoothBlocState>(
        listener: (context, state) {
          state.whenOrNull(
            connected: (message) {
              message?.whenOrNull(
                automaticStart: (automaticStart) {
                  var databaseBloc = context.read<DatabaseBloc>();
                  var stageId = databaseBloc.state
                      .mapOrNull(initialized: (state) => state.stage?.id);
                  if (stageId != null) {
                    databaseBloc.add(
                      DatabaseEvent.updateAutomaticCorrection(
                        stageId: stageId,
                        startTime: automaticStart.time,
                        correction: automaticStart.correction,
                        timeStamp: automaticStart.timeStamp,
                        forceUpdate: automaticStart.updating,
                      ),
                    );
                  }
                },
                finish: (time, timeStamp) {
                  var databaseBloc = context.read<DatabaseBloc>();
                  var stage = databaseBloc.state
                      .mapOrNull(initialized: (state) => state.stage);
                  if (stage != null) {
                    databaseBloc.add(
                      DatabaseEvent.addFinishTime(
                        stage: stage,
                        finishTime: time,
                        timeStamp: timeStamp,
                      ),
                    );
                  }
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
        child: BlocListener<DatabaseBloc, DatabaseState>(
          listener: (context, state) async {
            final databaseBloc = context.read<DatabaseBloc>();
            databaseBloc.state.mapOrNull(initialized: (state) async {
              // Обновление автоматического времени старта
              final notification = state.notification;
              if (notification != null) {
                notification.mapOrNull(updateAutomaticCorrection: (data) async {
                  final prevCorrection =
                      data.previousStarts.first.automaticCorrection;
                  // Если новая поправка для номера отличается от предыдущей
                  // более чем на две секунды, то уточняем, точно ли обновлять?
                  // Если разница менее двух секунд, то молча игнорируем отсечку
                  final updateStartCorrectionDelay = context
                      .read<SettingsBloc>()
                      .state
                      .settings
                      .updateStartCorrectionDelay;
                  if (prevCorrection != null &&
                      data.correction - prevCorrection >
                          updateStartCorrectionDelay) {
                    final String text =
                        Localization.current.I18nHome_updateAutomaticCorrection(
                      data.number,
                      data.previousStarts.first.automaticCorrection!,
                      data.correction,
                    );
                    final bool? update = await overwriteStartTimePopup(
                      context: context,
                      text: text,
                    );
                    if (update ?? false) {
                      databaseBloc.add(
                        DatabaseEvent.updateAutomaticCorrection(
                          stageId: data.previousStarts.first.stageId,
                          startTime: data.startTime,
                          timeStamp: data.timeStamp,
                          correction: data.correction,
                          forceUpdate: true,
                        ),
                      );
                    }
                  }
                });
              }
              // if (state.automaticStart != null &&
              //     state.automaticStart!.updating) {
              //   final String text =
              //       Localization.current.I18nHome_updateAutomaticCorrection(
              //     state.previousStart!.first.number,
              //     state.previousStart!.first.automaticCorrection!,
              //     state.automaticStart!.correction,
              //   );
              //   final bool? update = await overwriteStartTimePopup(
              //     context: context,
              //     text: text,
              //   );
              //   final stageId = state.stage?.id;
              //   if (update != null && update && stageId != null) {
              //     databaseBloc.add(
              //       DatabaseEvent.updateAutomaticCorrection(
              //         stageId: stageId,
              //         automaticStart: state.automaticStart!,
              //         forceUpdate: true,
              //       ),
              //     );
              //   }
              // }
            });
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
                      InitPage(),
                      StartPage(),
                      FinishPage(),
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
  const _TextTitle();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<DatabaseBloc, DatabaseState>(
          builder: (context, state) => state.map(initial: (_) {
                return const Text(Pubspec.name);
              }, initialized: (state) {
                final stage = state.stage;
                if (stage != null) {
                  return Text(stage.name);
                } else {
                  final race = state.race;
                  if (race != null) {
                    return Text(race.name);
                  } else {
                    return Text(Pubspec.name);
                  }
                }
              })
          // protocolState is ProtocolSelectedState
          //     ? Text(basenameWithoutExtension(protocolState.databasePath))
          );
}

class _FinishFilterButton extends StatelessWidget {
  const _FinishFilterButton({
    required this.activeTab,
  });

  final AppTab activeTab;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
        final settingsBloc = context.read<SettingsBloc>();
        final settings = settingsState.settings;
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
            ),
          ];
          return PopupMenuButton<FilterFinish>(
            icon: const Icon(Icons.filter_list),
            itemBuilder: (context) => menuItems,
            onSelected: (value) async {
              switch (value) {
                case FilterFinish.hideMarked:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settings.copyWith(hideMarked: !settings.hideMarked),
                    ),
                  );
                  break;
                case FilterFinish.hideNumbers:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(
                        hideNumbers: !settings.hideNumbers,
                      ),
                    ),
                  );
                  break;
                case FilterFinish.hideManual:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settings.copyWith(hideManual: !settings.hideManual),
                    ),
                  );
                  break;
                case FilterFinish.setDefaults:
                  settingsBloc.add(
                    SettingsEvent.update(
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

  const _MenuButton({required this.activeTab});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => BlocBuilder<DatabaseBloc, DatabaseState>(
          builder: (context, protocolState) {
            final settingsBloc = context.read<SettingsBloc>();
            final settings = settingsBloc.state.settings;
            final databaseBloc = context.read<DatabaseBloc>();
            final menuItems = <PopupMenuEntry<MenuButton>>[];
            if (activeTab == AppTab.start || activeTab == AppTab.finish) {
              databaseBloc.state.mapOrNull(initialized: (state) async {
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
                  menuItems.add(PopupMenuDivider());
                }
              });
              if (activeTab == AppTab.start) {
                menuItems.add(
                  PopupMenuItem(
                    value: MenuButton.countdown,
                    child: ListTile(
                      leading: Icon(MdiIcons.timer),
                      title: Text(Localization.current.I18nHome_countdown),
                    ),
                  ),
                );
              }
              menuItems.add(
                PopupMenuItem(
                  value: MenuButton.fab,
                  child: ListTile(
                    leading: Icon(MdiIcons.handBackLeft),
                    title: Text(Localization.current.I18nHome_fab),
                  ),
                ),
              );
              menuItems.add(PopupMenuDivider());
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
                  value: MenuButton.bluetooth,
                  child: ListTile(
                    leading: const Icon(Icons.bluetooth),
                    title: Text(Localization.current.I18nHome_bluetooth),
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
                      databaseBloc.add(DatabaseEvent.shareStart());
                    } else if (activeTab == AppTab.finish) {
                      databaseBloc.add(DatabaseEvent.shareFinish());
                    }
                    break;
                  case MenuButton.fab:
                    if (activeTab == AppTab.start) {
                      settingsBloc.add(
                        SettingsEvent.update(
                          settings:
                              settings.copyWith(startFab: !settings.startFab),
                        ),
                      );
                    } else if (activeTab == AppTab.finish) {
                      settingsBloc.add(
                        SettingsEvent.update(
                          settings: settings.copyWith(
                            finishFab: !settings.finishFab,
                          ),
                        ),
                      );
                    }
                    break;
                  case MenuButton.addRacer:
                    databaseBloc.state.mapOrNull(initialized: (state) async {
                      final stage = state.stage;
                      if (stage != null) {
                        await addRacerPopup(
                          context: context,
                          stage: stage,
                        );
                      }
                    });
                    break;
                  case MenuButton.selectRace:
                    await Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const RacesListPage(),
                      ),
                    );
                    break;
                  case MenuButton.bluetooth:
                    await selectBluetoothDevice(context);
                    break;
                  case MenuButton.countdown:
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings:
                            settings.copyWith(countdown: !settings.countdown),
                      ),
                    );
                    break;
                }
              },
            );
          },
        ),
      );
}
