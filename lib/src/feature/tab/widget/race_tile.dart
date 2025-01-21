import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../csv/csv.dart';
import '../../csv/logic/file_picker.dart';
import '../../csv/logic/text_decoder.dart';
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
              context.read<DatabaseBloc>().add(
                    const DatabaseEvent.deselectRace(),
                  );
            }
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => const _SelectRaceRouterWidget(),
              ),
            );
          }

          return ListTile(
            onTap: routeToSelectRace,
            leading: IconButton(
              icon: Icon(MdiIcons.flagCheckered),
              onPressed: routeToSelectRace,
            ),
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

class _SelectRaceRouterWidget extends StatelessWidget {
  const _SelectRaceRouterWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          final race = state.race;
          final stage = state.stage;
          if (race == null) {
            return const RacesListPage();
          } else {
            if (stage == null) {
              return StagesListPage(race: race);
            } else {
              _onWidgetDidBuild(() {
                Navigator.pop(context);
              });
            }
          }
          return const SizedBox();
        },
      ),
    );
  }

  void _onWidgetDidBuild(void Function() callback) {
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
            final file = await pickCsvFile();
            if (file != null) {
              final csv = decodeBytes(file.bytes!);
              final race = StartlistProvider().getRaceFromCsv(csv, file.name);
              // final race = await StartlistProvider().getRaceCsv();
              if (race != null) {
                databaseBloc
                    .add(DatabaseEvent.createRaceFromRaceCsv(race: race));
              }
            }
        }
      },
    );
  }
}
