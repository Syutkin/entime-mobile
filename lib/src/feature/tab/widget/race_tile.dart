import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../countdown/bloc/countdown_bloc.dart';
import '../../database/bloc/database_bloc.dart';
import '../../database/widget/race_and_stage_selector.dart';
import '../model/race_menu_button.dart';

class RaceTile extends StatelessWidget {
  const RaceTile({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<DatabaseBloc, DatabaseState>(
    builder: (context, databaseState) {
      Future<void> routeToSelectRace() async {
        if (databaseState.race != null && databaseState.stage != null) {
          context.read<DatabaseBloc>().add(const DatabaseEvent.deselectRace());
          context.read<CountdownBloc>().add(const CountdownEvent.stop());
        }
        await Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => const RaceAndStageSelector()));
      }

      return ListTile(
        onTap: routeToSelectRace,
        leading: IconButton(icon: Icon(MdiIcons.flagCheckered), onPressed: routeToSelectRace),
        title: databaseState.race == null
            ? Text(Localization.current.I18nInit_selectRace)
            : Text(databaseState.race!.name),
        subtitle: databaseState.stage == null
            ? Text(Localization.current.I18nInit_selectStage)
            : Text(databaseState.stage!.name),
        trailing: const _RaceMenuButton(),
      );
    },
  );
}

class _RaceMenuButton extends StatelessWidget {
  const _RaceMenuButton();

  @override
  Widget build(BuildContext context) {
    final databaseBloc = context.read<DatabaseBloc>();
    final menuItems = <PopupMenuEntry<RaceMenuButton>>[
      PopupMenuItem(
        value: RaceMenuButton.import,
        child: ListTile(
          leading: Icon(MdiIcons.fileImportOutline),
          title: Text(Localization.current.I18nInit_importFromCsv),
        ),
      ),
    ];
    return PopupMenuButton<RaceMenuButton>(
      itemBuilder: (context) => menuItems,
      onSelected: (value) async {
        switch (value) {
          case RaceMenuButton.import:
            databaseBloc.add(const DatabaseEvent.createRaceFromFile());
        }
      },
    );
  }
}
