import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../bloc/database_bloc.dart';

part 'popup/add_race_popup.dart';

class RacesListPage extends StatelessWidget {
  const RacesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter =
        DateFormat.yMd(Localizations.localeOf(context).languageCode);
    return Scaffold(
      appBar: AppBar(title: Text(Localization.current.I18nDatabase_races)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          addRacePopup(context);
        },
      ),
      body: BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          final count = state.races.length;
          return ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              final race = state.races[index];
              return ListTile(
                title: Text(race.name),
                subtitle: (race.startDate != null && race.finishDate != null)
                    ? Text(
                        '${formatter.format(DateTime.parse(race.startDate!))} - ${formatter.format(DateTime.parse(race.finishDate!))}',
                      )
                    : const SizedBox.shrink(),
                onTap: () {
                  context
                      .read<DatabaseBloc>()
                      .add(DatabaseEvent.selectRace(race));
                },
                trailing: PopupMenuButton<void>(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => <PopupMenuEntry<void>>[
                    PopupMenuItem<void>(
                      onTap: () => context
                          .read<DatabaseBloc>()
                          .add(DatabaseEvent.deleteRace(race.id)),
                      child: ListTile(
                        leading: const Icon(Icons.delete),
                        title: Text(Localization.current.I18nCore_delete),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
