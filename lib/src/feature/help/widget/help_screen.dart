import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../../common/localization/localization.dart';

class HelpPage extends StatelessWidget {
  String get _markdownData => Localization.current.I18nHelp_manualMd;

  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(Localization.current.I18nHelp_manual),
        ),
        body: SafeArea(
          child: Markdown(
            data: _markdownData,
          ),
        ),
      );
}
