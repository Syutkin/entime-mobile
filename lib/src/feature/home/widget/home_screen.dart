import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';

import '../../../common/localization/localization.dart';
import '../../bluetooth/bluetooth.dart';
import '../../drawer/widget/app_drawer.dart';
import '../../init/init.dart';
import '../../protocol/protocol.dart';
import '../../protocol_screens/protocol_screens.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../../tab/tab.dart';
import '../../update/update.dart';
import 'add_racer_popup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Следим за повторной установкой стартового времени для участника
    return BlocListener<ProtocolBloc, ProtocolState>(
      listener: (context, state) async {
        final protocolBloc = context.read<ProtocolBloc>();
        final materialLocalization = MaterialLocalizations.of(context);
        if (state is ProtocolSelectedState) {
          // Обновление автоматического времени старта
          if (state.automaticStart != null && state.automaticStart!.updating) {
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
              protocolBloc.add(ProtocolUpdateAutomaticCorrection(
                state.automaticStart!,
                forceUpdate: true,
              ));
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
                      materialLocalization.cancelButtonLabel);
                }
              }
            }

            final bool? update = await overwriteStartTimePopup(
              context: context,
              text: text,
            );

            if (update != null && update) {
              protocolBloc.add(
                  ProtocolAddStartNumber(state.startTime!, forceAdd: true));
            }
          }
        }
      },
      child: BlocBuilder<TabBloc, AppTab>(builder: (context, activeTab) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            drawer: const AppDrawer(),
            appBar: AppBar(
              title: _title(context),
              actions: <Widget>[
                _finishFilterButton(context, activeTab),
                BluetoothButton(context: context),
                _menuButton(context, activeTab),
              ],
              bottom: TabBar(
                isScrollable: false,
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
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(Localization.current
                            .I18nHome_updateAvailable(state.version)),
                        action: SnackBarAction(
                          onPressed: () {
                            BlocProvider.of<UpdateBloc>(context)
                                .add(DownloadUpdate());
                            Scaffold.of(context).openDrawer();
                          },
                          label: Localization.current.I18nHome_update,
                        ),
                      ));
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
        );
      }),
    );
  }

  Widget _title(BuildContext context) {
    return BlocBuilder<ProtocolBloc, ProtocolState>(
        builder: (context, protocolState) {
      if (protocolState is ProtocolSelectedState) {
        return Text(basenameWithoutExtension(protocolState.databasePath));
      } else {
        return const Text('Entime');
      }
    });
  }

  Widget _menuButton(BuildContext context, AppTab activeTab) {
    return BlocBuilder<ProtocolBloc, ProtocolState>(
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
                  )),
            );
          }
          menuItems.add(
            PopupMenuItem(
                value: MenuButton.share,
                child: ListTile(
                  leading: const Icon(Icons.share),
                  title: Text(Localization.current.I18nHome_share),
                )),
          );
        } else {
          menuItems.add(
            PopupMenuItem(
                value: MenuButton.selectStartProtocol,
                child: ListTile(
                  leading: const Icon(MdiIcons.database),
                  title:
                      Text(Localization.current.I18nHome_selectStartProtocol),
                )),
          );
        }
        if (activeTab == AppTab.start) {
          menuItems.add(
            PopupMenuItem(
                value: MenuButton.countdown,
                child: ListTile(
                  leading: const Icon(MdiIcons.timer),
                  title: Text(Localization.current.I18nHome_countdown),
                )),
          );
        }
        menuItems.add(
          PopupMenuItem(
              value: MenuButton.fab,
              child: ListTile(
                leading: const Icon(MdiIcons.handBackLeft),
                title: Text(Localization.current.I18nHome_fab),
              )),
        );
      } else {
        menuItems.add(
          PopupMenuItem(
              value: MenuButton.selectStartProtocol,
              child: ListTile(
                leading: const Icon(MdiIcons.database),
                title: Text(Localization.current.I18nHome_selectStartProtocol),
              )),
        );
        menuItems.add(
          PopupMenuItem(
              value: MenuButton.bluetooth,
              child: ListTile(
                leading: const Icon(Icons.bluetooth),
                title: Text(Localization.current.I18nHome_bluetooth),
              )),
        );
      }
      if (protocolState is ProtocolSelectedState && activeTab == AppTab.start) {
        menuItems.add(
          PopupMenuItem(
              value: MenuButton.importCsv,
              child: ListTile(
                leading: const Icon(MdiIcons.import),
                title:
                    Text(Localization.current.I18nHome_importStartProtocolCsv),
              )),
        );
      }

      return PopupMenuButton<MenuButton>(
          itemBuilder: (context) => menuItems,
          onSelected: (value) async {
            switch (value) {
              case MenuButton.share:
                if (activeTab == AppTab.start) {
                  protocolBloc.add(ProtocolShareStart());
                } else if (activeTab == AppTab.finish) {
                  protocolBloc.add(ProtocolShareFinish());
                }
                break;
              case MenuButton.fab:
                if (activeTab == AppTab.start) {
                  settingsBloc.add(SettingsEventUpdate(
                      settings:
                          settings.copyWith(startFab: !settings.startFab)));
                } else if (activeTab == AppTab.finish) {
                  settingsBloc.add(SettingsEventUpdate(
                      settings:
                          settings.copyWith(finishFab: !settings.finishFab)));
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
                settingsBloc.add(SettingsEventUpdate(
                    settings:
                        settings.copyWith(countdown: !settings.countdown)));
                break;
              case MenuButton.importCsv:
                protocolBloc.add(const ProtocolLoadStartFromCsv());
                break;
            }
          });
    });
  }

  Widget _finishFilterButton(BuildContext context, AppTab activeTab) {
    final settingsBloc = context.read<SettingsBloc>();
    final settings = settingsBloc.state.settings;
    return BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, protocolState) {
      if (activeTab == AppTab.finish) {
        final menuItems = <PopupMenuEntry<FilterFinish>>[];
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideMarked,
            checked: !settings.hideMarked,
            child: Text(Localization.current.I18nHome_hideMarked),
          ),
        );
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideNumbers,
            checked: !settings.hideNumbers,
            child: Text(Localization.current.I18nHome_hideNumbers),
          ),
        );
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideManual,
            checked: !settings.hideManual,
            child: Text(Localization.current.I18nHome_hideManual),
          ),
        );
        menuItems.add(const PopupMenuDivider());
        menuItems.add(
          PopupMenuItem(
            value: FilterFinish.setDefaults,
            child: ListTile(
              leading: const SizedBox(width: 0, height: 0),
              title: Text(Localization.current.I18nHome_setDefaults),
            ),
          ),
        );
        return PopupMenuButton<FilterFinish>(
            icon: const Icon(Icons.filter_list),
            itemBuilder: (context) => menuItems,
            onSelected: (value) async {
              switch (value) {
                case FilterFinish.hideMarked:
                  settingsBloc.add(SettingsEventUpdate(
                      settings:
                          settings.copyWith(hideMarked: !settings.hideMarked)));
                  break;
                case FilterFinish.hideNumbers:
                  settingsBloc.add(SettingsEventUpdate(
                      settings: settings.copyWith(
                          hideNumbers: !settings.hideNumbers)));
                  break;
                case FilterFinish.hideManual:
                  settingsBloc.add(SettingsEventUpdate(
                      settings:
                          settings.copyWith(hideManual: !settings.hideManual)));
                  break;
                case FilterFinish.setDefaults:
                  settingsBloc.add(SettingsEventUpdate(
                      settings: settings.copyWith(
                    hideMarked: true,
                    hideNumbers: false,
                    hideManual: false,
                  )));
                  break;
              }
            });
      }
      return const SizedBox(width: 0, height: 0);
    });
  }
}
