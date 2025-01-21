import 'package:entime/src/feature/csv/logic/text_decoder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../common/localization/localization.dart';
import '../../csv/csv.dart';
import '../../csv/logic/file_picker.dart';
import '../database.dart';

class RaceItemTile extends StatelessWidget {
  const RaceItemTile({required this.race, super.key});

  final Race race;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat.yMd(
      Localizations.localeOf(context).languageCode,
    );
    return ListTile(
      title: Text(race.name),
      subtitle:
          (race.startDate != null && race.finishDate != null)
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
        itemBuilder: _menuEntryList,
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
      PopupMenuItem<void>(
        onTap: () async {
          final bloc = context.read<DatabaseBloc>();
          final file = await pickCsvFile();
          if (file != null) {
            final csv = decodeBytes(file.bytes!);
          final stages = await StartlistProvider().getStagesFromCsv(csv);
          if (stages != null) {
            bloc.add(
              DatabaseEvent.createStagesFromStagesCsv(
                raceId: race.id,
                stages: stages,
              ),
            );
          }}
        },
        child: ListTile(
          leading: const Icon(Icons.add),
          title: Text(Localization.current.I18nHome_importStagesCsv),
        ),
      ),
      const PopupMenuDivider(),
      PopupMenuItem<void>(
        onTap: () async {
          final bloc = context.read<DatabaseBloc>();
          final deleteRace = await deleteRacePopup(
            context: context,
            raceName: race.name,
          );
          if (deleteRace ?? false) {
            bloc.add(DatabaseEvent.deleteRace(race.id));
          }
        },
        child: ListTile(
          leading: const Icon(Icons.delete),
          title: Text(Localization.current.I18nCore_delete),
        ),
      ),
    ];
  }
}
