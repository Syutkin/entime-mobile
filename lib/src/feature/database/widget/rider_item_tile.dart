import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/feature/database/widget/riders_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../database/database.dart';

class RiderItemTile extends StatelessWidget {
  const RiderItemTile({
    required this.rider,
    super.key,
  });

  final Rider rider;

  @override
  Widget build(BuildContext context) {
    final subtitle = <String>[
      if (rider.birthday != null) rider.birthday!,
      if (rider.city != null) rider.city!,
    ];
    return ListTile(
      title: Text(rider.name),
      subtitle: subtitle.isNotEmpty
          ? Text(
              subtitle.join(', '),
              style: DefaultTextStyle.of(context).style.apply(
                    fontSizeFactor: 0.75,
                  ),
            )
          : null,
      trailing: PopupMenuButton<void>(
        icon: const Icon(Icons.more_vert),
        itemBuilder: (context) => <PopupMenuEntry<void>>[
          PopupMenuItem<void>(
            onTap: () async {
              await editRacer(context);
            },
            child: ListTile(
              leading: const Icon(Icons.edit),
              title: Text(Localization.current.I18nCore_edit),
            ),
          ),
        ],
      ),
      onTap: () async {
        await editRacer(context);
      },
    );
  }

  Future<void> editRacer(BuildContext context) async {
    final riders = context.read<DatabaseBloc>().state.riders;
    final teams = riders
        .map((e) {
          if (e.team.isNotNullOrEmpty) {
            return e.team;
          }
        })
        .toSet()
        .toList()
      ..remove(null);
    final cities = riders
        .map((e) {
          if (e.city.isNotNullOrEmpty) {
            return e.city;
          }
        })
        .toSet()
        .toList()
      ..remove(null);
    await editRiderPopup(
      context: context,
      rider: rider,
      cities: cities,
      teams: teams,
    );
  }
}
