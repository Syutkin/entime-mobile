import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../countdown/countdown.dart';
import '../database.dart';

class StagesItemTile extends StatelessWidget {
  const StagesItemTile({
    super.key,
    required this.stage,
  });

  final Stage stage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(stage.name),
      onTap: () {
        context.read<DatabaseBloc>().add(DatabaseEvent.selectStage(stage));
        context
            .read<CountdownBloc>()
            .add(CountdownEvent.start(stageId: stage.id));
      },
      trailing: PopupMenuButton<void>(
        icon: const Icon(Icons.more_vert),
        itemBuilder: (context) => <PopupMenuEntry<void>>[
          PopupMenuItem<void>(
            onTap: () {
              updateStagePopup(context, stage: stage);
            },
            child: ListTile(
              leading: const Icon(Icons.edit),
              title: Text(Localization.current.I18nCore_edit),
            ),
          ),
          PopupMenuDivider(),
          PopupMenuItem<void>(
            // ToDo: confirmation dialog
            onTap: () => context
                .read<DatabaseBloc>()
                .add(DatabaseEvent.deleteStage(stage.id)),
            child: ListTile(
              leading: const Icon(Icons.delete),
              title: Text(Localization.current.I18nCore_delete),
            ),
          ),
        ],
      ),
    );
  }
}
