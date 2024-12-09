import 'package:entime/src/common/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../database.dart';

// part 'popup/add_race_popup.dart';
part 'popup/add_or_update_race_popup.dart';

class RacesListPage extends StatelessWidget {
  const RacesListPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              return RaceItemTile(race: race);
            },
          );
        },
      ),
    );
  }
}
