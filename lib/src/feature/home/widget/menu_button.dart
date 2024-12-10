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
  const MenuButton({required this.activeTab, super.key});
  final AppTab activeTab;

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
                menuItems
                  ..add(
                    PopupMenuItem(
                      value: HomeMenuButton.addRacer,
                      child: ListTile(
                        leading: const Icon(Icons.add),
                        title: Text(Localization.current.I18nHome_addRacer),
                      ),
                    ),
                  )
                  ..add(const PopupMenuDivider())
                  ..add(
                    PopupMenuItem(
                      value: HomeMenuButton.countdownPage,
                      child: ListTile(
                        leading: Icon(MdiIcons.timer),
                        title:
                            Text(Localization.current.I18nHome_countdownPage),
                      ),
                    ),
                  )
                  ..add(
                    PopupMenuItem(
                      value: HomeMenuButton.countdown,
                      child: ListTile(
                        leading: Icon(MdiIcons.timer),
                        title: Text(Localization.current.I18nHome_countdown),
                      ),
                    ),
                  );
              }
              if (activeTab == AppTab.finish) {
                menuItems..add(
                  PopupMenuItem(
                    value: HomeMenuButton.showFinishDifference,
                    child: ListTile(
                      leading: Icon(MdiIcons.timer),
                      title: Text(Localization.current.I18nHome_showFinishDifference),
                    ),
                  ),
                )
                ..add(
                  PopupMenuItem(
                    value: HomeMenuButton.showColorFinishDifference,
                    child: ListTile(
                      leading: Icon(MdiIcons.palette),
                      title: Text(Localization.current.I18nHome_showColorFinishDifference),
                    ),
                  ),
                );
              }
              menuItems
                ..add(
                  PopupMenuItem(
                    value: HomeMenuButton.fab,
                    child: ListTile(
                      leading: Icon(MdiIcons.handBackLeft),
                      title: Text(Localization.current.I18nHome_fab),
                    ),
                  ),
                )
                ..add(const PopupMenuDivider())
                ..add(
                  PopupMenuItem(
                    value: HomeMenuButton.share,
                    child: ListTile(
                      leading: const Icon(Icons.share),
                      title: Text(Localization.current.I18nCore_share),
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
                      databaseBloc.add(const DatabaseEvent.shareStart());
                    } else if (activeTab == AppTab.finish) {
                      databaseBloc.add(const DatabaseEvent.shareFinish());
                    }
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
                  case HomeMenuButton.addRacer:
                    final stage = databaseBloc.state.stage;
                    if (stage != null) {
                      await addRacerPopup(
                        context: context,
                        stage: stage,
                      );
                    }
                  case HomeMenuButton.selectRace:
                    await Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const RacesListPage(),
                      ),
                    );
                  case HomeMenuButton.bluetooth:
                    await selectBluetoothDevice(context);
                  case HomeMenuButton.countdown:
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings:
                            settings.copyWith(countdown: !settings.countdown),
                      ),
                    );
                  case HomeMenuButton.countdownPage:
                    await Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const CountdownPage(),
                      ),
                    );
                  case HomeMenuButton.showFinishDifference:
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settings.copyWith(
                            showFinishDifference:
                                !settings.showFinishDifference),
                      ),
                    );
                  case HomeMenuButton.showColorFinishDifference:
                    settingsBloc.add(
                      SettingsEvent.update(
                        settings: settings.copyWith(
                            showColorFinishDifference:
                                !settings.showColorFinishDifference),
                      ),
                    );
                }
              },
            );
          },
        ),
      );
}
