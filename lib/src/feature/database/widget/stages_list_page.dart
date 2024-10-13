import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../../countdown/countdown.dart';
import '../bloc/database_bloc.dart';
import '../drift/app_database.dart';

part 'popup/add_stage_popup.dart';

class StagesListPage extends StatelessWidget {
  final Race race;
  const StagesListPage({required this.race, super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(race.name),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            addStagePopup(context, raceId: race.id!);
          },
        ),
        body: BlocBuilder<DatabaseBloc, DatabaseState>(
          builder: (context, state)  {
              final count = state.stages.length;
              return ListView.builder(
                itemCount: count,
                itemBuilder: (context, index) {
                  final stage = state.stages[index];
                  return ListTile(
                    title: Text(stage.name),
                    onTap: () {
                      // context
                      //     .read<DatabaseBloc>()
                      //     .add(DatabaseEvent.getParticipantsAtStart(stage.id!));
                      context
                          .read<DatabaseBloc>()
                          .add(DatabaseEvent.selectStage(stage));
                      context
                          .read<CountdownBloc>()
                          .add(CountdownEvent.start(stageId: stage.id!));
                      // Navigator.of(context).push(
                      //   MaterialPageRoute<void>(
                      //     builder: (context) => StartListPage(),
                      //   ),
                      // );
                    },
                    trailing: PopupMenuButton<void>(
                      icon: const Icon(Icons.more_vert),
                      itemBuilder: (context) => <PopupMenuEntry<void>>[
                        PopupMenuItem<void>(
                          onTap: () => context
                              .read<DatabaseBloc>()
                              .add(DatabaseEvent.deleteStage(stage.id!)),
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
