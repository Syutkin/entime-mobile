import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../common/localization/localization.dart';
import '../../../constants/pubspec.yaml.g.dart';
import '../../bluetooth/bluetooth.dart';
import '../../countdown/bloc/countdown_bloc.dart';
import '../../database/bloc/database_bloc.dart';
import '../../database/model/filter_finish.dart';
import '../../database/widget/start_list_page.dart';
import '../../module_settings/module_settings.dart';
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
                _FinishFilterButton(activeTab: activeTab),
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
                  final stageId = databaseBloc.state.stage?.id;
                  if (stageId != null) {
                    databaseBloc.add(
                      DatabaseEvent.updateAutomaticCorrection(
                        stageId: stageId,
                        startTime: automaticStart.time,
                        correction: automaticStart.correction,
                        timestamp: automaticStart.timestamp,
                        forceUpdate: automaticStart.updating,
                      ),
                    );
                  }
                },
                finish: (time, timestamp) {
                  final databaseBloc = context.read<DatabaseBloc>();
                  final stage = databaseBloc.state.stage;
                  if (stage != null) {
                    databaseBloc.add(
                      DatabaseEvent.addFinishTime(
                        stage: stage,
                        finishTime: time,
                        timestamp: timestamp,
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
          final databaseBloc = context.read<DatabaseBloc>();
          // Обновление автоматического времени старта
          final notification = state.notification;
          if (notification != null) {
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
                    data.correction - prevCorrection >
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
          // ловим показ наличия обновления
          if (previousState is UpdateInitial && state is UpdateAvailable) {
            return true;
            // ловим показ ченджлога
          } else if (previousState is UpdateInitial && state is UpdateInitial) {
            return true;
          } else {
            return false;
          }
        },
        listener: (context, state) async {
          if (state is UpdateAvailable && !Scaffold.of(context).isDrawerOpen) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  Localization.current.I18nHome_updateAvailable(state.version),
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
          } else if (state is UpdateInitial) {
            final showChangelog = state.showChangelog;
            final previousVersion = showChangelog?.previousVersion;
            if (showChangelog != null &&
                showChangelog.show &&
                previousVersion != null) {
              await showChangelogAtStartup(context, previousVersion);
            }
          }
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
                case FilterFinish.hideMarked:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settings.copyWith(hideMarked: !settings.hideMarked),
                    ),
                  );
                case FilterFinish.hideNumbers:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings: settings.copyWith(
                        hideNumbers: !settings.hideNumbers,
                      ),
                    ),
                  );
                case FilterFinish.hideManual:
                  settingsBloc.add(
                    SettingsEvent.update(
                      settings:
                          settings.copyWith(hideManual: !settings.hideManual),
                    ),
                  );
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
              }
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
