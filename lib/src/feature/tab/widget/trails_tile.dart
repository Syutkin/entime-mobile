import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../trails/widget/trails_list_page.dart';

class TrailsTile extends StatelessWidget {
  const TrailsTile({super.key});

  @override
  Widget build(BuildContext context) {
    void routeToTrailsListPage() {
      Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => TrailsListPage()));
    }

    return ListTile(
      onTap: routeToTrailsListPage,
      leading: IconButton(icon: Icon(MdiIcons.mapMarkerOutline), onPressed: routeToTrailsListPage),
      title: Text(Localization.current.I18nInit_trails),
      // subtitle: Text(Localization.current.I18nInit_selectStage),
    );
  }
}
