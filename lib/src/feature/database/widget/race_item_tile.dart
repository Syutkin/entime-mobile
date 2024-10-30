import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../common/localization/localization.dart';
import '../database.dart';

class RaceItemTile extends StatelessWidget {
  const RaceItemTile({
    super.key,
    required this.race,
  });

  final Race race;

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter =
        DateFormat.yMd(Localizations.localeOf(context).languageCode);
    return ListTile(
      title: Text(race.name),
      subtitle: (race.startDate != null && race.finishDate != null)
          ? Text(
              '${formatter.format(DateTime.parse(race.startDate!))} - '
              '${formatter.format(DateTime.parse(race.finishDate!))}',
            )
          : const SizedBox.shrink(),
      onTap: () {
        context.read<DatabaseBloc>().add(DatabaseEvent.selectRace(race));
      },
      trailing: PopupMenuButton<void>(
        icon: const Icon(Icons.more_vert),
        itemBuilder: (context) => _menuEntryList(context),
      ),
    );
  }

  List<PopupMenuEntry<void>> _menuEntryList(BuildContext context) {
    return <PopupMenuEntry<void>>[
      PopupMenuItem<void>(
        onTap: () {
          updateRacePopup(context, race);
        },
        child: ListTile(
          leading: const Icon(Icons.edit),
          title: Text(Localization.current.I18nCore_edit),
        ),
      ),
      PopupMenuDivider(),
      PopupMenuItem<void>(
        // ToDo: confirmation dialog
        onTap: () =>
            context.read<DatabaseBloc>().add(DatabaseEvent.deleteRace(race.id)),
        child: ListTile(
          leading: const Icon(Icons.delete),
          title: Text(Localization.current.I18nCore_delete),
        ),
      ),
    ];
  }
}
