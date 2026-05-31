import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/cancel_ok_buttons.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../../trails/bloc/trails_bloc.dart';
import '../database.dart';

part 'popup/add_or_update_stage_popup.dart';
part 'popup/delete_stage_popup.dart';

class StagesListPage extends StatelessWidget {
  const StagesListPage({required this.race, required this.onStageSelected, super.key});

  final Race race;
  final ValueChanged<Stage> onStageSelected;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(race.name)),
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () async {
        await addStagePopup(context, race: race);
      },
    ),
    body: BlocBuilder<DatabaseBloc, DatabaseState>(
      builder: (context, state) {
        final stages = state.stages.where((stage) => stage.raceId == race.id).toList();
        final count = stages.length;
        return ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            final stage = stages[index];
            return StageItemTile(stage: stage, onSelected: onStageSelected);
          },
        );
      },
    ),
  );
}
