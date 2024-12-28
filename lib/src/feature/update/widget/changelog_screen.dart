import 'package:flutter/material.dart';

import '../../../common/localization/localization.dart';
import 'changelog_markdown.dart';

class ChangelogScreen extends StatelessWidget {
  const ChangelogScreen({required this.markdownData, super.key});
  final String markdownData;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(Localization.current.I18nUpdate_changelog)),
    body: SafeArea(child: changelogMarkdown(markdownData)),
  );
}
