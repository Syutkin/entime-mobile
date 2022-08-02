import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/helper/helper.dart';
import '../../init/widget/select_file_screen.dart';

class CreateOrSelectProtocolWidget extends StatelessWidget {
  final void Function() onTap;

  const CreateOrSelectProtocolWidget({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        ListTile(
          onTap: () => routeToSelectFileScreen(context),
          title: const Text('Выбрать протокол'),
          leading: const Icon(MdiIcons.database),
        ),
        ListTile(
          onTap: () => createNewProtocolFile(context),
          title: const Text('Создать новый пустой протокол'),
          leading: const Icon(MdiIcons.filePlusOutline),
        ),
        ListTile(
          onTap: () => loadFile(context),
          title: const Text('Импортировать протокол или список участников'),
          leading: const Icon(MdiIcons.fileImportOutline),
        ),
      ],
    );
  }
}
