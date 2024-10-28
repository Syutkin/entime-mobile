import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../csv/csv.dart';
import '../../database/bloc/database_bloc.dart';
import '../../database/widget/races_list_page.dart';
import '../../database/widget/stages_list_page.dart';
import '../model/race_menu_button.dart';

class RaceTile extends StatelessWidget {
  const RaceTile({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<DatabaseBloc, DatabaseState>(
          builder: (context, databaseState) {
        void routeToSelectRace() {
          if (databaseState.race != null && databaseState.stage != null) {
            context.read<DatabaseBloc>().add(DatabaseEvent.deselectRace());
          }
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (context) => const _SelectRaceRouterWidget()),
          );
        }

        return ListTile(
          onTap: () => routeToSelectRace(),
          leading: IconButton(
            icon: Icon(MdiIcons.flagCheckered),
            onPressed: () {
              routeToSelectRace();
            },
          ),
          title: databaseState.race == null
              ? Text(Localization.current.I18nInit_selectRace)
              : Text(databaseState.race!.name),
          subtitle: databaseState.stage == null
              ? Text(Localization.current.I18nInit_selectStage)
              : Text(databaseState.stage!.name),
          trailing: _RaceMenuButton(),
        );
      });
}

class _SelectRaceRouterWidget extends StatelessWidget {
  const _SelectRaceRouterWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        BlocBuilder<DatabaseBloc, DatabaseState>(builder: (context, state) {
      var race = state.race;
      var stage = state.stage;
      if (race == null) {
        return RacesListPage();
      } else {
        if (stage == null) {
          return StagesListPage(
            race: race,
          );
        } else {
          _onWidgetDidBuild(() {
            Navigator.pop(context);
          });
        }
      }
      return const SizedBox();
    }));
  }

  void _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }
}

class _RaceMenuButton extends StatelessWidget {
  const _RaceMenuButton();

  @override
  Widget build(BuildContext context) {
    final databaseBloc = context.read<DatabaseBloc>();
    final menuItems = <PopupMenuEntry<RaceMenuButton>>[];
    menuItems.add(
      PopupMenuItem(
        value: RaceMenuButton.import,
        child: ListTile(
          leading: Icon(MdiIcons.fileImportOutline),
          title: Text(Localization.current.I18nInit_importFromCsv),
        ),
      ),
    );
    return PopupMenuButton<RaceMenuButton>(
      itemBuilder: (context) => menuItems,
      onSelected: (value) async {
        switch (value) {
          case RaceMenuButton.import:
            var race = await StartlistProvider().getStartCsv();
            if (race != null) {
              databaseBloc.add(DatabaseEvent.createRaceFromRaceCsv(race: race));
            }
            break;
        }
      },
    );
  }
}
