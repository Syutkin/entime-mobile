import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

import '../../../common/localization/localization.dart';
import '../../trails/widget/trails_list_page.dart';

class TrailsTile extends StatelessWidget {
  const TrailsTile({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> routeToTrailsListPage() async {
      await Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => const TrailsListPage()));
    }

    return ListTile(
      onTap: routeToTrailsListPage,
      leading: IconButton(icon: const Icon(MdiIcons.mapMarkerOutline), onPressed: routeToTrailsListPage),
      title: Text(Localization.current.I18nInit_trails),
      // subtitle: Text(Localization.current.I18nInit_selectStage),
    );
  }
}
