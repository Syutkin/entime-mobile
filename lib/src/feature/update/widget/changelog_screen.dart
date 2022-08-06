import 'package:flutter/material.dart';

import '../../../common/localization/i18n.dart';
import 'changelog_markdown.dart';

class ChangelogScreen extends StatelessWidget {
  final String markdownData;

  const ChangelogScreen({required this.markdownData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18nUpdate.changelog),
      ),
      body: SafeArea(
        child: changelogMarkdown(markdownData),
      ),
    );
  }
}
