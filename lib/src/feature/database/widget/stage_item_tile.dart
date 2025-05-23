import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../countdown/countdown.dart';
import '../database.dart';

class StageItemTile extends StatelessWidget {
  const StageItemTile({required this.stage, super.key});

  final Stage stage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(stage.name),
      enabled: stage.isActive,
      onTap: () {
        context.read<DatabaseBloc>().add(DatabaseEvent.selectStage(stage));
        context.read<CountdownBloc>().add(CountdownEvent.start(stageId: stage.id));
        Navigator.of(context).pop();
      },
      trailing: PopupMenuButton<void>(
        icon: const Icon(Icons.more_vert),
        itemBuilder:
            (context) => <PopupMenuEntry<void>>[
              PopupMenuItem<void>(
                onTap: () {
                  updateStagePopup(context, stage: stage);
                },
                child: ListTile(leading: const Icon(Icons.edit), title: Text(Localization.current.I18nCore_edit)),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<void>(
                onTap: () async {
                  final bloc = context.read<DatabaseBloc>();
                  final deleteTrail = await deleteStagePopup(context: context, stageName: stage.name);
                  if (deleteTrail ?? false) {
                    bloc.add(DatabaseEvent.deleteStage(stage.id));
                  }
                },
                child: ListTile(leading: const Icon(Icons.delete), title: Text(Localization.current.I18nCore_delete)),
              ),
            ],
      ),
    );
  }
}
