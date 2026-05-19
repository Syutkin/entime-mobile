import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

import '../../../common/localization/localization.dart';
import '../../database/widget/riders_list_page.dart';

class RidersTile extends StatelessWidget {
  const RidersTile({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> routeToRidersListPage() async {
      await Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => RidersListPage()));
    }

    return ListTile(
      onTap: routeToRidersListPage,
      leading: IconButton(icon: const Icon(MdiIcons.faceMan), onPressed: routeToRidersListPage),
      title: Text(Localization.current.I18nInit_riders),
    );
  }
}
