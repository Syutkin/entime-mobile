import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../database.dart';

enum StageItemPopupMenu { edit, delete }

class StageItemTile extends StatelessWidget {
  const StageItemTile({required this.stage, required this.onSelected, super.key});

  final Stage stage;
  final ValueChanged<Stage> onSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(stage.name),
      enabled: stage.isActive,
      onTap: () => onSelected(stage),
      trailing: PopupMenuButton<StageItemPopupMenu>(
        icon: const Icon(Icons.more_vert),
        itemBuilder: (context) => <PopupMenuEntry<StageItemPopupMenu>>[
          PopupMenuItem<StageItemPopupMenu>(
            value: StageItemPopupMenu.edit,
            child: ListTile(leading: const Icon(Icons.edit), title: Text(Localization.current.I18nCore_edit)),
          ),
          const PopupMenuDivider(),
          PopupMenuItem<StageItemPopupMenu>(
            value: StageItemPopupMenu.delete,
            child: ListTile(leading: const Icon(Icons.delete), title: Text(Localization.current.I18nCore_delete)),
          ),
        ],
        onSelected: (value) async {
          switch (value) {
            case StageItemPopupMenu.edit:
              await updateStagePopup(context, stage: stage);
            case StageItemPopupMenu.delete:
              final bloc = context.read<DatabaseBloc>();
              final deleteTrail = await deleteStagePopup(context: context, stageName: stage.name);
              if (deleteTrail ?? false) {
                bloc.add(DatabaseEvent.deleteStage(stage.id));
              }
          }
        },
      ),
    );
  }
}
