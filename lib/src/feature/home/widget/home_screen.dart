import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../common/localization/localization.dart';
import '../../../constants/pubspec.yaml.g.dart';
import '../../bluetooth/bluetooth.dart';
import '../../countdown/bloc/countdown_bloc.dart';
import '../../database/bloc/database_bloc.dart';
import '../../database/model/filter_finish.dart';
import '../../database/model/filter_start.dart';
import '../../database/widget/start_list_page.dart';
import '../../module_settings/module_settings.dart';
import '../../ntp/bloc/ntp_bloc.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../../tab/tab.dart';
import '../../tab/widget/finish_page.dart';
import '../../tab/widget/init_page.dart';
import '../../tab/widget/start_page.dart';
import '../../update/update.dart';
import 'app_drawer.dart';
import 'menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<TabBloc, AppTab>(
        builder: (context, activeTab) => DefaultTabController(
          length: 3,
          child: Scaffold(
            drawer: const AppDrawer(),
            appBar: AppBar(
              title: const _TextTitle(),
              actions: <Widget>[
                _FilterButton(activeTab: activeTab),
                const BluetoothButton(),
                MenuButton(
                  key: const Key('HomeAppBarMenuButton'),
                  activeTab: activeTab,
                ),
              ],
              bottom: TabBar(
                key: const Key('TabBar'),
                onTap: (index) {
                  final bloc = context.read<TabBloc>();
                  switch (index) {
                    case 0:
                      bloc.add(const TabEvent.updated(AppTab.init));
                    case 1:
                      bloc.add(const TabEvent.updated(AppTab.start));
                    case 2:
                      bloc.add(const TabEvent.updated(AppTab.finish));
                  }
                },
                tabs: <Widget>[
                  Tab(
                    key: const Key('InitTab'),
                    icon: Text(Localization.current.I18nHome_home),
                  ),
                  Tab(
                    key: const Key('StartTab'),
                    icon: Text(Localization.current.I18nHome_start),
                  ),
                  Tab(
                    key: const Key('FinishTab'),
                    icon: Text(Localization.current.I18nHome_finish),
                  ),
                ],
              ),
            ),
            body: MultiBlocListener(
              listeners: [
                // Следим за поступающей информацией от Bluetooth
                _listenToBluetooth(),
                // Следим за повторной установкой стартового времени для участника
                _listenToNewStartTime(),
                // Используем обратный отсчёт из приложения для звуковых эффектов
                _listenToCountdownEvents(),
                // Следим за наличием новой версии
                _listenToUpdater(),
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
      );

  SingleChildWidget _listenToBluetooth() =>
      BlocListener<BluetoothBloc, BluetoothBlocState>(
        listener: (context, state) {
          state.whenOrNull(
            connected: (message) {
              message?.whenOrNull(
                automaticStart: (automaticStart) {
                  final databaseBloc = context.read<DatabaseBloc>();
                  final offset = context.read<NtpBloc>().state.offset;
                  final stageId = databaseBloc.state.stage?.id;
                  if (stageId != null) {
                    databaseBloc.add(
                      DatabaseEvent.updateAutomaticCorrection(
                        stageId: stageId,
                        startTime: automaticStart.time,
                        correction: automaticStart.correction,
                        timestamp: automaticStart.timestamp,
                        ntpOffset: offset,
                        forceUpdate: automaticStart.updating,
                      ),
                    );
                  }
                },
                finish: (time, timestamp) {
                  final databaseBloc = context.read<DatabaseBloc>();
                  final offset = context.read<NtpBloc>().state.offset;
                  final stage = databaseBloc.state.stage;
                  if (stage != null) {
                    databaseBloc.add(
                      DatabaseEvent.addFinishTime(
                        stage: stage,
                        finishTime: time,
                        timestamp: timestamp,
                        ntpOffset: offset,
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
      );

  SingleChildWidget _listenToNewStartTime() =>
      BlocListener<DatabaseBloc, DatabaseState>(
        listener: (context, state) async {
          // Обновление автоматического времени старта
          final notification = state.notification;
          if (notification != null) {
            final databaseBloc = context.read<DatabaseBloc>();
            final offset = context.read<NtpBloc>().state.offset;
            await notification.mapOrNull(
              updateAutomaticCorrection: (data) async {
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
                    prevCorrection - data.correction >
                        updateStartCorrectionDelay) {
                  final text =
                      Localization.current.I18nHome_updateAutomaticCorrection(
                    data.number,
                    data.previousStarts.first.automaticCorrection!,
                    data.correction,
                  );
                  final update = await overwriteStartTimePopup(
                    context: context,
                    text: text,
                  );
                  if (update ?? false) {
                    databaseBloc.add(
                      DatabaseEvent.updateAutomaticCorrection(
                        stageId: data.previousStarts.first.stageId,
                        startTime: data.startTime,
                        timestamp: data.timestamp,
                        ntpOffset: offset,
                        correction: data.correction,
                        forceUpdate: true,
                      ),
                    );
                  }
                }
              },
            );
          }
        },
      );

  SingleChildWidget _listenToUpdater() => BlocListener<UpdateBloc, UpdateState>(
        listenWhen: (previousState, state) {
          // // ловим показ наличия обновления
          // if (previousState is UpdateInitial && state is UpdateAvailable) {
          //   return true;
          //   // ловим показ ченджлога
          // } else if (previousState is UpdateInitial && state is UpdateInitial) {
          //   return true;
          // } else {
          //   return false;
          // }
          return previousState.maybeMap(
            initial: (initial) {
              return state.maybeMap(
                initial: (_) {
                  return true;
                },
                updateAvailable: (_) {
                  return true;
                },
                orElse: () {
                  return false;
                },
              );
            },
            orElse: () {
              return false;
            },
          );
        },
        listener: (context, state) async {
          await state.whenOrNull(
            updateAvailable: (version) {
              if (!Scaffold.of(context).isDrawerOpen) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      Localization.current.I18nHome_updateAvailable(version),
                    ),
                    action: SnackBarAction(
                      onPressed: () {
                        BlocProvider.of<UpdateBloc>(context)
                            .add(const UpdateEvent.downloadUpdate());
                        Scaffold.of(context).openDrawer();
                      },
                      label: Localization.current.I18nHome_update,
                    ),
                  ),
                );
              }
            },
            initial: (changelog) async {
              if (changelog != null) {
                await showChangelogAtStartup(context, changelog);
              }
            },
          );
        },
      );

  SingleChildWidget _listenToCountdownEvents() {
    return BlocListener<CountdownBloc, CountdownState>(
      listener: (context, state) {
        if (context.read<SettingsBloc>().state.settings.beepFromApp) {
          state.whenOrNull(
            working: (tick) {
              // за три секунды до старта запускаем "бип"
              if (tick.text == '3') {
                context.read<CountdownBloc>().add(const CountdownEvent.beep());
              }
            },
          );
        }
        if (context.read<SettingsBloc>().state.settings.voiceFromApp) {
          state.whenOrNull(
            working: (tick) {
              // на 15 секунде ищем участников для голосового вызова
              if (tick.second == 15) {
                final stageId = context.read<DatabaseBloc>().state.stage?.id;
                if (stageId != null) {
                  context
                      .read<CountdownBloc>()
                      .add(CountdownEvent.callParticipant(stageId: stageId));
                }
              }
            },
          );
        }
      },
    );
  }
}

class _TextTitle extends StatelessWidget {
  const _TextTitle();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          final stage = state.stage;
          if (stage != null) {
            return Text(stage.name);
          } else {
            final race = state.race;
            if (race != null) {
              return Text(race.name);
            } else {
              return const Text(Pubspec.name);
            }
          }
        },
      );
}

class _FilterButton extends StatelessWidget {
  const _FilterButton({
    required this.activeTab,
  });

  final AppTab activeTab;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
        final settingsBloc = context.read<SettingsBloc>();
        final settings = settingsState.settings;
        if (activeTab == AppTab.start) {
          final menuItems = <PopupMenuEntry<FilterStart>>[
            CheckedPopupMenuItem(
              value: FilterStart.showDNS,
              checked: settings.showDNS,
              child: Text(Localization.current.I18nHome_showDNS),
            ),
            CheckedPopupMenuItem(
              value: FilterStart.showDNF,
              checked: settings.showDNF,
              child: Text(Localization.current.I18nHome_showDNF),
            ),
            CheckedPopupMenuItem(
              value: FilterStart.showDSQ,
              checked: settings.showDSQ,
              child: Text(Localization.current.I18nHome_showDSQ),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              value: FilterStart.setDefaults,
              child: ListTile(
                leading: const SizedBox.shrink(),
                title: Text(Localization.current.I18nHome_setDefaults),
              ),
            ),
          ];
          return PopupMenuButton<FilterStart>(
            icon: const Icon(Icons.filter_list),
            itemBuilder: (context) => menuItems,
            onSelected: (value) async {
              switch (value) {
                case FilterStart.showDNS:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(showDNS: !settings.showDNS),
                    ),
                  );
                case FilterStart.showDNF:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(
                        showDNF: !settings.showDNF,
                      ),
                    ),
                  );
                case FilterStart.showDSQ:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(showDSQ: !settings.showDSQ),
                    ),
                  );
                case FilterStart.setDefaults:
                  const defaults = AppSettings.defaults();
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(
                        showDNS: defaults.showDNS,
                        showDNF: defaults.showDNF,
                        showDSQ: defaults.showDSQ,
                      ),
                    ),
                  );
              }
            },
          );
        } else if (activeTab == AppTab.finish) {
          final menuItems = <PopupMenuEntry<FilterFinish>>[
            CheckedPopupMenuItem(
              value: FilterFinish.showHidden,
              checked: settings.showHidden,
              child: Text(Localization.current.I18nHome_showHidden),
            ),
            CheckedPopupMenuItem(
              value: FilterFinish.showNumbers,
              checked: settings.showNumbers,
              child: Text(Localization.current.I18nHome_showNumbers),
            ),
            CheckedPopupMenuItem(
              value: FilterFinish.showManual,
              checked: settings.showManual,
              child: Text(Localization.current.I18nHome_showManual),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              value: FilterFinish.setDefaults,
              child: ListTile(
                leading: const SizedBox.shrink(),
                title: Text(Localization.current.I18nHome_setDefaults),
              ),
            ),
          ];
          return PopupMenuButton<FilterFinish>(
            icon: const Icon(Icons.filter_list),
            itemBuilder: (context) => menuItems,
            onSelected: (value) async {
              switch (value) {
                case FilterFinish.showHidden:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settings.copyWith(showHidden: !settings.showHidden),
                    ),
                  );
                case FilterFinish.showNumbers:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(
                        showNumbers: !settings.showNumbers,
                      ),
                    ),
                  );
                case FilterFinish.showManual:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settings.copyWith(showManual: !settings.showManual),
                    ),
                  );
                case FilterFinish.setDefaults:
                  const defaults = AppSettings.defaults();
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(
                        showHidden: defaults.showHidden,
                        showNumbers: defaults.showNumbers,
                        showManual: defaults.showManual,
                      ),
                    ),
                  );
              }
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
