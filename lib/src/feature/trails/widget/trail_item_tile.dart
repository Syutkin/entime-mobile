import 'package:entime/src/feature/trails/widget/trail_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../database/database.dart';
import '../bloc/trails_bloc.dart';

class TrailItemTile extends StatelessWidget {
  const TrailItemTile({
    super.key,
    required this.trail,
  });

  final Trail trail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(trail.name),
      leading: trail.fileExtension != null
          ? Icon(MdiIcons.mapMarkerOutline)
          : Icon(MdiIcons.mapMarkerOffOutline),
      trailing: PopupMenuButton<void>(
        icon: const Icon(Icons.more_vert),
        itemBuilder: (context) => <PopupMenuEntry<void>>[
          PopupMenuItem<void>(
            onTap: () {
              updateTrailPopup(context, trail);
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
                .read<TrailsBloc>()
                .add(TrailsEvent.deleteTrail(trail.id)),
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
