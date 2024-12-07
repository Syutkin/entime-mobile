import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/countdown/widget/countdown_page.dart';
import 'package:entime/src/feature/database/bloc/database_bloc.dart';
import 'package:entime/src/feature/database/widget/races_list_page.dart';
import 'package:entime/src/feature/database/widget/start_list_page.dart';
import 'package:entime/src/feature/home/model/home_menu_button.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/tab/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuButton extends StatelessWidget {
  final AppTab activeTab;

  const MenuButton({super.key, required this.activeTab});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => BlocBuilder<DatabaseBloc, DatabaseState>(
          builder: (context, protocolState) {
            final settingsBloc = context.read<SettingsBloc>();
            final settings = settingsBloc.state.settings;
            final databaseBloc = context.read<DatabaseBloc>();
            final menuItems = <PopupMenuEntry<HomeMenuButton>>[];
            if (activeTab == AppTab.start || activeTab == AppTab.finish) {
              if (activeTab == AppTab.start) {
                menuItems.add(
                  PopupMenuItem(
                    value: HomeMenuButton.addRacer,
                    child: ListTile(
                      leading: const Icon(Icons.add),
                      title: Text(Localization.current.I18nHome_addRacer),
                    ),
                  ),
                );
                menuItems.add(PopupMenuDivider());
                menuItems.add(
                  PopupMenuItem(
                    value: HomeMenuButton.countdownPage,
                    child: ListTile(
                      leading: Icon(MdiIcons.timer),
                      title: Text(Localization.current.I18nHome_countdownPage),
                    ),
                  ),
                );
                menuItems.add(
                  PopupMenuItem(
                    value: HomeMenuButton.countdown,
                    child: ListTile(
                      leading: Icon(MdiIcons.timer),
                      title: Text(Localization.current.I18nHome_countdown),
                    ),
                  ),
                );
              }
              menuItems.add(
                PopupMenuItem(
                  value: HomeMenuButton.fab,
                  child: ListTile(
                    leading: Icon(MdiIcons.handBackLeft),
                    title: Text(Localization.current.I18nHome_fab),
                  ),
                ),
              );
              menuItems.add(PopupMenuDivider());
              menuItems.add(
                PopupMenuItem(
                  value: HomeMenuButton.share,
                  child: ListTile(
                    leading: const Icon(Icons.share),
                    title: Text(Localization.current.I18nHome_share),
                  ),
                ),
              );
            } else {
              menuItems.add(
                PopupMenuItem(
                  value: HomeMenuButton.bluetooth,
                  child: ListTile(
                    leading: const Icon(Icons.bluetooth),
                    title: Text(Localization.current.I18nHome_bluetooth),
                  ),
                ),
              );
            }

            return PopupMenuButton<HomeMenuButton>(
              itemBuilder: (context) => menuItems,
              onSelected: (value) async {
                switch (value) {
                  case HomeMenuButton.share:
                    if (activeTab == AppTab.start) {
                      databaseBloc.add(DatabaseEvent.shareStart());
                    } else if (activeTab == AppTab.finish) {
                      databaseBloc.add(DatabaseEvent.shareFinish());
                    }
                    break;
                  case HomeMenuButton.fab:
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
                  case HomeMenuButton.addRacer:
                    final stage = databaseBloc.state.stage;
                    if (stage != null) {
                      await addRacerPopup(
                        context: context,
                        stage: stage,
                      );
                    }
                    break;
                  case HomeMenuButton.selectRace:
                    await Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const RacesListPage(),
                      ),
                    );
                    break;
                  case HomeMenuButton.bluetooth:
                    await selectBluetoothDevice(context);
                    break;
                  case HomeMenuButton.countdown:
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings:
                            settings.copyWith(countdown: !settings.countdown),
                      ),
                    );
                    break;
                  case HomeMenuButton.countdownPage:
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const CountdownPage(),
                      ),
                    );
                }
              },
            );
          },
        ),
      );
}
