import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';

import '../../../models/menu_button.dart';
import '../../bluetooth/widget/bluetooth_button.dart';
import '../../bluetooth/widget/select_bonded_device.dart';
import '../../drawer/widget/app_drawer.dart';
import '../../finish/widget/finish_screen.dart';
import '../../init/widget/init_screen.dart';
import '../../init/widget/select_file_screen.dart';
import '../../protocol/bloc/protocol_bloc.dart';
import '../../protocol/model/filter_finish.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../../start/widget/overwrite_start_time_popup.dart';
import '../../start/widget/start_screen.dart';
import '../../tab/bloc/tab_bloc.dart';
import '../../tab/model/app_tab.dart';
import '../../update/bloc/update_bloc.dart';
import '../../update/widget/changelog_popup.dart';
import 'add_racer_popup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Следим за повторной установкой стартового времени для участника
    return BlocListener<ProtocolBloc, ProtocolState>(
      listener: (context, state) async {
        final protocolBloc = BlocProvider.of<ProtocolBloc>(context);
        final materialLocalization = MaterialLocalizations.of(context);
        if (state is ProtocolSelectedState) {
          // Обновление автоматического времени старта
          if (state.automaticStart != null && state.automaticStart!.updating) {
            final String text = 'Участнику под номером '
                '${state.previousStart!.first.number} '
                'уже установлена стартовая поправка '
                '${state.previousStart!.first.automaticcorrection}. '
                'Обновить её на ${state.automaticStart!.correction}?';
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
                text += 'Стартовое время ${state.startTime!.time} уже '
                    'присвоено номеру ${element.number}. '
                    'Вы уверены что хотите установить одинаковое стартовое время '
                    'для номеров ${state.startTime!.number} и '
                    '${element.number}?\n';
              } else {
                if (element.automaticstarttime != null) {
                  text += 'У номера ${state.startTime!.number} уже проставлена '
                      'автоматическая стартовая отсечка: '
                      '${element.automaticstarttime}. '
                      'Установить новое стартовое время и удалить предыдущее значение?\n';
                } else if (element.manualstarttime != null) {
                  text += 'У номера ${state.startTime!.number} уже проставлена '
                      'ручная стартовая отсечка: '
                      '${element.manualstarttime}. '
                      'Установить новое стартовое время и удалить предыдущее значение?\n';
                } else {
                  text +=
                      'Ошибка при добавлении участника! Для продолжения нажмите '
                      '"${materialLocalization.cancelButtonLabel}"\n';
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
                  switch (index) {
                    case 0:
                      BlocProvider.of<TabBloc>(context)
                          .add(const TabUpdated(AppTab.init));
                      break;
                    case 1:
                      BlocProvider.of<TabBloc>(context)
                          .add(const TabUpdated(AppTab.start));
                      break;
                    case 2:
                      BlocProvider.of<TabBloc>(context)
                          .add(const TabUpdated(AppTab.finish));
                      break;
                  }
                },
                tabs: const <Widget>[
                  Tab(icon: Text('Начало')),
                  Tab(icon: Text('Старт')),
                  Tab(icon: Text('Финиш')),
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
                        content: Text('Доступна новая версия ${state.version}'),
                        action: SnackBarAction(
                          onPressed: () {
                            BlocProvider.of<UpdateBloc>(context)
                                .add(DownloadUpdate());
                            Scaffold.of(context).openDrawer();
                          },
                          label: 'Обновить',
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
      final menuItems = <PopupMenuEntry<MenuButton>>[];
      if (activeTab == AppTab.start || activeTab == AppTab.finish) {
        if (protocolState is ProtocolSelectedState) {
          if (activeTab == AppTab.start) {
            menuItems.add(
              const PopupMenuItem(
                  value: MenuButton.addRacer,
                  child: ListTile(
                    leading: Icon(Icons.add),
                    title: Text('Добавить'),
                  )),
            );
          }
          menuItems.add(
            const PopupMenuItem(
                value: MenuButton.share,
                child: ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Поделиться'),
                )),
          );
        } else {
          menuItems.add(
            const PopupMenuItem(
                value: MenuButton.selectStartProtocol,
                child: ListTile(
                  leading: Icon(MdiIcons.database),
                  title: Text('Стартовый протокол'),
                )),
          );
        }
        if (activeTab == AppTab.start) {
          menuItems.add(
            const PopupMenuItem(
                value: MenuButton.countdown,
                child: ListTile(
                  leading: Icon(MdiIcons.timer),
                  title: Text('Обратный отсчёт'),
                )),
          );
        }
        menuItems.add(
          const PopupMenuItem(
              value: MenuButton.fab,
              child: ListTile(
                leading: Icon(MdiIcons.handBackLeft),
                title: Text('FAB'),
              )),
        );
      } else {
        menuItems.add(
          const PopupMenuItem(
              value: MenuButton.selectStartProtocol,
              child: ListTile(
                leading: Icon(MdiIcons.database),
                title: Text('Стартовый протокол'),
              )),
        );
        menuItems.add(
          const PopupMenuItem(
              value: MenuButton.bluetooth,
              child: ListTile(
                leading: Icon(Icons.bluetooth),
                title: Text('Bluetooth'),
              )),
        );
      }
      if (protocolState is ProtocolSelectedState && activeTab == AppTab.start) {
        menuItems.add(
          const PopupMenuItem(
              value: MenuButton.importCsv,
              child: ListTile(
                leading: Icon(MdiIcons.import),
                title: Text('Импорт стартового протокола'),
              )),
        );
      }

      return PopupMenuButton<MenuButton>(
          itemBuilder: (context) => menuItems,
          onSelected: (value) async {
            switch (value) {
              case MenuButton.share:
                if (activeTab == AppTab.start) {
                  BlocProvider.of<ProtocolBloc>(context)
                      .add(ProtocolShareStart());
                } else if (activeTab == AppTab.finish) {
                  BlocProvider.of<ProtocolBloc>(context)
                      .add(ProtocolShareFinish());
                }
                break;
              case MenuButton.fab:
                if (activeTab == AppTab.start) {
                  BlocProvider.of<SettingsBloc>(context).add(SetBoolValueEvent(
                      startFab: !BlocProvider.of<SettingsBloc>(context)
                          .state
                          .startFab));
                } else if (activeTab == AppTab.finish) {
                  BlocProvider.of<SettingsBloc>(context).add(SetBoolValueEvent(
                      finishFab: !BlocProvider.of<SettingsBloc>(context)
                          .state
                          .finishFab));
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
                BlocProvider.of<SettingsBloc>(context).add(SetBoolValueEvent(
                    countdown: !BlocProvider.of<SettingsBloc>(context)
                        .state
                        .countdown));
                break;
              case MenuButton.importCsv:
                BlocProvider.of<ProtocolBloc>(context)
                    .add(const ProtocolLoadStartFromCsv());
                break;
            }
          });
    });
  }

  Widget _finishFilterButton(BuildContext context, AppTab activeTab) {
    final bloc = BlocProvider.of<SettingsBloc>(context);
    return BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, protocolState) {
      if (activeTab == AppTab.finish) {
        final menuItems = <PopupMenuEntry<FilterFinish>>[];
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideMarked,
            checked: !bloc.state.hideMarked,
            child: const Text('Скрытые'),
          ),
        );
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideNumbers,
            checked: !bloc.state.hideNumbers,
            child: const Text('С номерами'),
          ),
        );
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideManual,
            checked: !bloc.state.hideManual,
            child: const Text('Ручная отсечка'),
          ),
        );
        menuItems.add(const PopupMenuDivider());
        menuItems.add(
          const PopupMenuItem(
            value: FilterFinish.setDefaults,
            child: ListTile(
              leading: SizedBox(width: 0, height: 0),
              title: Text('По умолчанию'),
            ),
          ),
        );
        return PopupMenuButton<FilterFinish>(
            icon: const Icon(Icons.filter_list),
            itemBuilder: (context) => menuItems,
            onSelected: (value) async {
              switch (value) {
                case FilterFinish.hideMarked:
                  bloc.add(
                      SetBoolValueEvent(hideMarked: !bloc.state.hideMarked));
                  break;
                case FilterFinish.hideNumbers:
                  bloc.add(
                      SetBoolValueEvent(hideNumbers: !bloc.state.hideNumbers));
                  break;
                case FilterFinish.hideManual:
                  bloc.add(
                      SetBoolValueEvent(hideManual: !bloc.state.hideManual));
                  break;
                case FilterFinish.setDefaults:
                  bloc.add(const SetBoolValueEvent(
                    hideMarked: true,
                    hideNumbers: false,
                    hideManual: false,
                  ));
                  break;
              }
            });
      }
      return const SizedBox(width: 0, height: 0);
    });
  }
}
