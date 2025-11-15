import 'package:entime/src/feature/trails/widget/trails_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/filesize.dart';
import '../../database/database.dart';
import '../bloc/trails_bloc.dart';

class TrailItemTile extends StatelessWidget {
  const TrailItemTile({required this.trail, super.key});

  final TrailInfo trail;

  @override
  Widget build(BuildContext context) {
    final timestamp = trail.timestamp;
    final fileSize = trail.fileSize;
    final subtitle = <String>[
      if (timestamp != null) DateFormat.yMMMd().format(timestamp),
      if (fileSize != null) filesize(fileSize),
    ];
    return ListTile(
      title: Text(trail.name),
      subtitle:
          subtitle.isNotEmpty
              ? Text(subtitle.join(', '), style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.75))
              : null,
      leading: trail.fileId != null ? Icon(MdiIcons.mapMarkerOutline) : Icon(MdiIcons.mapMarkerOffOutline),
      trailing: PopupMenuButton<void>(
        icon: const Icon(Icons.more_vert),
        itemBuilder:
            (context) => <PopupMenuEntry<void>>[
              if (trail.fileExtension != null && trail.fileExtension!.isNotEmpty)
                PopupMenuItem<void>(
                  onTap: () async {
                    context.read<DatabaseBloc>().add(DatabaseEvent.shareTrack(trail: trail));
                  },
                  child: ListTile(leading: const Icon(Icons.share), title: Text(Localization.current.I18nCore_share)),
                ),
              PopupMenuItem<void>(
                onTap: () async {
                  await updateTrailPopup(context, trail);
                },
                child: ListTile(leading: const Icon(Icons.edit), title: Text(Localization.current.I18nCore_edit)),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<void>(
                onTap: () async {
                  final bloc = context.read<TrailsBloc>();
                  final deleteTrail = await deleteTrailPopup(context: context, trailName: trail.name);
                  if (deleteTrail ?? false) {
                    bloc.add(TrailsEvent.deleteTrail(trail.id));
                  }
                },
                child: ListTile(leading: const Icon(Icons.delete), title: Text(Localization.current.I18nCore_delete)),
              ),
            ],
      ),
    );
  }
}
