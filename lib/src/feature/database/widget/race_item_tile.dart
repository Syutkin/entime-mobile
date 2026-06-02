import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../common/localization/localization.dart';
import '../database.dart';

enum RaceItemPopupMenu { edit, importStages, delete }

class RaceItemTile extends StatelessWidget {
  const RaceItemTile({required this.race, required this.onSelected, super.key});

  final Race race;
  final ValueChanged<Race> onSelected;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat.yMd(Localizations.localeOf(context).languageCode);
    return ListTile(
      title: Text(race.name),
      subtitle: (race.startDate != null && race.finishDate != null)
          ? Text(
              '${formatter.format(DateTime.parse(race.startDate!))} - '
              '${formatter.format(DateTime.parse(race.finishDate!))}',
            )
          : const SizedBox.shrink(),
      onTap: () => onSelected(race),
      trailing: PopupMenuButton<RaceItemPopupMenu>(
        icon: const Icon(Icons.more_vert),
        itemBuilder: _menuEntryList,
        onSelected: (value) async {
          switch (value) {
            case RaceItemPopupMenu.edit:
              await updateRacePopup(context, race);
            case RaceItemPopupMenu.importStages:
              context.read<DatabaseBloc>().add(DatabaseEvent.createStagesFromFile(raceId: race.id));
            case RaceItemPopupMenu.delete:
              final bloc = context.read<DatabaseBloc>();
              final deleteRace = await deleteRacePopup(context: context, raceName: race.name);
              if (deleteRace ?? false) {
                bloc.add(DatabaseEvent.deleteRace(race.id));
              }
          }
        },
      ),
    );
  }

  List<PopupMenuEntry<RaceItemPopupMenu>> _menuEntryList(BuildContext context) {
    return <PopupMenuEntry<RaceItemPopupMenu>>[
      PopupMenuItem<RaceItemPopupMenu>(
        value: RaceItemPopupMenu.edit,
        child: ListTile(leading: const Icon(Icons.edit), title: Text(Localization.current.I18nCore_edit)),
      ),
      PopupMenuItem<RaceItemPopupMenu>(
        value: RaceItemPopupMenu.importStages,
        child: ListTile(leading: const Icon(Icons.add), title: Text(Localization.current.I18nHome_importStagesCsv)),
      ),
      const PopupMenuDivider(),
      PopupMenuItem<RaceItemPopupMenu>(
        value: RaceItemPopupMenu.delete,
        child: ListTile(leading: const Icon(Icons.delete), title: Text(Localization.current.I18nCore_delete)),
      ),
    ];
  }
}
