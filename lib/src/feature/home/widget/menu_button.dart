import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/countdown/widget/countdown_page.dart';
import 'package:entime/src/feature/database/bloc/database_bloc.dart';
import 'package:entime/src/feature/database/widget/start_list_page.dart';
import 'package:entime/src/feature/home/model/home_menu_button.dart';
import 'package:entime/src/feature/tab/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../settings/settings.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({required this.activeTab, super.key});
  final AppTab activeTab;

  @override
  Widget build(BuildContext context) => BlocBuilder<SettingsCubit, AppSettings>(
    builder: (context, state) => BlocBuilder<DatabaseBloc, DatabaseState>(
      builder: (context, protocolState) {
        final settingsCubit = context.read<SettingsCubit>();
        final settings = settingsCubit.state;
        final databaseBloc = context.read<DatabaseBloc>();
        final menuItems = <PopupMenuEntry<HomeMenuButton>>[];
        if (activeTab == AppTab.start || activeTab == AppTab.finish) {
          if (activeTab == AppTab.start) {
            menuItems
              ..add(
                PopupMenuItem(
                  value: HomeMenuButton.addRacer,
                  enabled: databaseBloc.state.stage != null,
                  child: ListTile(leading: const Icon(Icons.add), title: Text(Localization.current.I18nHome_addRacer)),
                ),
              )
              ..add(
                PopupMenuItem(
                  value: HomeMenuButton.countdownPage,
                  enabled: databaseBloc.state.stage != null,
                  child: ListTile(
                    leading: Icon(MdiIcons.timer),
                    title: Text(Localization.current.I18nHome_countdownPage),
                  ),
                ),
              )
              ..add(const PopupMenuDivider())
              ..add(
                PopupMenuItem(
                  value: HomeMenuButton.countdown,
                  child: ListTile(
                    leading: settings.countdown ? const Icon(Icons.check) : const SizedBox.shrink(),
                    // leading: Icon(MdiIcons.timer),
                    title: Text(Localization.current.I18nHome_countdown),
                  ),
                ),
              );
          }
          if (activeTab == AppTab.finish) {
            menuItems
              ..add(
                PopupMenuItem(
                  value: HomeMenuButton.showFinishDifference,
                  child: ListTile(
                    leading: settings.showFinishDifference ? const Icon(Icons.check) : const SizedBox.shrink(),
                    title: Text(Localization.current.I18nHome_showFinishDifference),
                  ),
                ),
              )
              ..add(
                PopupMenuItem(
                  value: HomeMenuButton.showColorFinishDifference,
                  child: ListTile(
                    leading: settings.showColorFinishDifference ? const Icon(Icons.check) : const SizedBox.shrink(),
                    title: Text(Localization.current.I18nHome_showColorFinishDifference),
                  ),
                ),
              );
          }
          final checkedFAB =
              (activeTab == AppTab.start && settings.startFab) || (activeTab == AppTab.finish && settings.finishFab);
          menuItems
            ..add(
              PopupMenuItem(
                value: HomeMenuButton.fab,
                child: ListTile(
                  leading: checkedFAB ? const Icon(Icons.check) : const SizedBox.shrink(),
                  // leading: Icon(MdiIcons.handBackLeft),
                  title: Text(Localization.current.I18nHome_fab),
                ),
              ),
            )
            ..add(const PopupMenuDivider())
            ..add(
              PopupMenuItem(
                value: HomeMenuButton.share,
                enabled: databaseBloc.state.stage != null,
                child: ListTile(leading: const Icon(Icons.share), title: Text(Localization.current.I18nCore_share)),
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
            final useTimestampForAutomaticStamps = context.read<SettingsCubit>().state.useTimestampForAutomaticStamps;
            switch (value) {
              case HomeMenuButton.share:
                if (activeTab == AppTab.start) {
                  databaseBloc.add(
                    DatabaseEvent.shareStart(
                      useTimestamp: useTimestampForAutomaticStamps,
                      numberName: Localization.current.I18nProtocol_number,
                      starttimeName: Localization.current.I18nHome_start,
                      correctionName: Localization.current.I18nCore_correction,
                      text: Localization.current.I18nProtocol_shareStartResults(
                        databaseBloc.state.race?.name ?? '',
                        databaseBloc.state.stage?.name ?? '',
                      ),
                    ),
                  );
                } else if (activeTab == AppTab.finish) {
                  databaseBloc.add(
                    DatabaseEvent.shareFinish(
                      useTimestamp: useTimestampForAutomaticStamps,
                      numberName: Localization.current.I18nProtocol_number,
                      finishtimeName: Localization.current.I18nHome_finish,
                      text: Localization.current.I18nProtocol_shareFinishResults(
                        databaseBloc.state.race?.name ?? '',
                        databaseBloc.state.stage?.name ?? '',
                      ),
                    ),
                  );
                }
              case HomeMenuButton.fab:
                if (activeTab == AppTab.start) {
                  settingsCubit.update(settings.copyWith(startFab: !settings.startFab));
                } else if (activeTab == AppTab.finish) {
                  settingsCubit.update(settings.copyWith(finishFab: !settings.finishFab));
                }
              case HomeMenuButton.addRacer:
                final stage = databaseBloc.state.stage;
                if (stage != null) {
                  await addRacerPopup(context: context, stage: stage);
                }
              case HomeMenuButton.bluetooth:
                await selectBluetoothDevice(context);
              case HomeMenuButton.countdown:
                settingsCubit.update(settings.copyWith(countdown: !settings.countdown));
              case HomeMenuButton.countdownPage:
                await Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => const CountdownPage()));
              case HomeMenuButton.showFinishDifference:
                settingsCubit.update(settings.copyWith(showFinishDifference: !settings.showFinishDifference));
              case HomeMenuButton.showColorFinishDifference:
                settingsCubit.update(settings.copyWith(showColorFinishDifference: !settings.showColorFinishDifference));
            }
          },
        );
      },
    ),
  );
}
