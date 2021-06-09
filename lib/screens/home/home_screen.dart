import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';

// import 'package:share_extend/share_extend.dart';

import 'package:entime/blocs/blocs.dart';

import 'package:entime/models/models.dart';
import 'package:entime/screens/screens.dart';
import 'package:entime/widgets/widgets.dart';

import '../../utils/helper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Следим за повторной установкой стартового времени для участника
    return BlocListener<ProtocolBloc, ProtocolState>(
      listener: (context, state) async {
        if (state is ProtocolSelectedState) {
          // Обновление автоматического времени старта
          if (state.automaticStart != null && state.automaticStart!.updating) {
            String text = 'Участнику под номером '
                '${state.previousStart!.first.number} '
                'уже установлена стартовая поправка '
                '${state.previousStart!.first.automaticcorrection}. '
                'Обновить её на ${state.automaticStart!.correction}?';
            final bool? update = await overwriteStartTime(
              context: context,
              text: text,
            );
            if (update != null && update) {
              BlocProvider.of<ProtocolBloc>(context)
                  .add(ProtocolUpdateAutomaticCorrection(
                state.automaticStart!,
                forceUpdate: true,
              ));
            }
          }
          // Добавление нового стартового времени
          if (state.previousStart != null && state.startTime != null) {
            // Если стартовое время уже присвоено другому номеру
            String text = '';

            state.previousStart!.forEach((element) {
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
                      '"${MaterialLocalizations.of(context).cancelButtonLabel}"\n';
                }
              }
            });

            final bool? update = await overwriteStartTime(
              context: context,
              text: text,
            );

            if (update != null && update) {
              BlocProvider.of<ProtocolBloc>(context)
                  .add(ProtocolAddStartNumber(state.startTime!, true));
            }
          }
        }
      },
      child: BlocBuilder<TabBloc, AppTab>(builder: (context, activeTab) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            drawer: AppDrawer(),
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
                          .add(TabUpdated(AppTab.init));
                      break;
                    case 1:
                      BlocProvider.of<TabBloc>(context)
                          .add(TabUpdated(AppTab.start));
                      break;
                    case 2:
                      BlocProvider.of<TabBloc>(context)
                          .add(TabUpdated(AppTab.finish));
                      break;
                  }
                },
                tabs: <Widget>[
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
              child: TabBarView(
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
        return Text('Entime');
      }
    });
  }

  Widget _menuButton(BuildContext context, var activeTab) {
    return BlocBuilder<ProtocolBloc, ProtocolState>(
        builder: (context, protocolState) {
      var menuItems = <PopupMenuEntry<MenuButton>>[];
      if (activeTab == AppTab.start || activeTab == AppTab.finish) {
        if (protocolState is ProtocolSelectedState) {
          if (activeTab == AppTab.start) {
            menuItems.add(
              PopupMenuItem(
                  value: MenuButton.addRacer,
                  child: ListTile(
                    leading: const Icon(Icons.add),
                    title: Text('Добавить'),
                  )),
            );
          }
          menuItems.add(
            PopupMenuItem(
                value: MenuButton.share,
                child: ListTile(
                  leading: const Icon(Icons.share),
                  title: Text('Поделиться'),
                )),
          );
        } else {
          menuItems.add(
            PopupMenuItem(
                value: MenuButton.selectStartProtocol,
                child: ListTile(
                  leading: const Icon(MdiIcons.database),
                  title: Text('Стартовый протокол'),
                )),
          );
        }
        if (activeTab == AppTab.start) {
          menuItems.add(
            PopupMenuItem(
                value: MenuButton.countdown,
                child: ListTile(
                  leading: const Icon(MdiIcons.timer),
                  title: Text('Обратный отсчёт'),
                )),
          );
        }
        menuItems.add(
          PopupMenuItem(
              value: MenuButton.fab,
              child: ListTile(
                leading: const Icon(MdiIcons.hand),
                title: Text('FAB'),
              )),
        );
      } else {
        menuItems.add(
          PopupMenuItem(
              value: MenuButton.selectStartProtocol,
              child: ListTile(
                leading: const Icon(MdiIcons.database),
                title: Text('Стартовый протокол'),
              )),
        );
        menuItems.add(
          PopupMenuItem(
              value: MenuButton.bluetooth,
              child: ListTile(
                leading: const Icon(Icons.bluetooth),
                title: Text('Bluetooth'),
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
                RouteToSelectFileScreen(context);
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
            }
          });
    });
  }

  Widget _finishFilterButton(BuildContext context, var activeTab) {
    var _bloc = BlocProvider.of<SettingsBloc>(context);
    return BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, protocolState) {
      if (activeTab == AppTab.finish) {
        var menuItems = <PopupMenuEntry<FilterFinish>>[];
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideMarked,
            checked: !_bloc.state.hideMarked,
            child: Text('Скрытые'),
          ),
        );
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideNumbers,
            checked: !_bloc.state.hideNumbers,
            child: Text('С номерами'),
          ),
        );
        menuItems.add(
          CheckedPopupMenuItem(
            value: FilterFinish.hideManual,
            checked: !_bloc.state.hideManual,
            child: Text('Ручная отсечка'),
          ),
        );
        menuItems.add(PopupMenuDivider());
        menuItems.add(
          PopupMenuItem(
            value: FilterFinish.setDefaults,
            child: ListTile(
              leading: Container(width: 0, height: 0),
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
                  _bloc.add(
                      SetBoolValueEvent(hideMarked: !_bloc.state.hideMarked));
                  break;
                case FilterFinish.hideNumbers:
                  _bloc.add(
                      SetBoolValueEvent(hideNumbers: !_bloc.state.hideNumbers));
                  break;
                case FilterFinish.hideManual:
                  _bloc.add(
                      SetBoolValueEvent(hideManual: !_bloc.state.hideManual));
                  break;
                case FilterFinish.setDefaults:
                  _bloc.add(SetBoolValueEvent(
                    hideMarked: true,
                    hideNumbers: false,
                    hideManual: false,
                  ));
                  break;
              }
            });
      }
      return Container(width: 0, height: 0);
    });
  }
}
