import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../database/widget/riders_list_page.dart';

class RidersTile extends StatelessWidget {
  const RidersTile({super.key});

  @override
  Widget build(BuildContext context) {
    void routeToRidersListPage() {
      Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => RidersListPage()));
    }

    return ListTile(
      onTap: routeToRidersListPage,
      leading: IconButton(icon: Icon(MdiIcons.faceMan), onPressed: routeToRidersListPage),
      title: Text(Localization.current.I18nInit_riders),
    );
  }
}
