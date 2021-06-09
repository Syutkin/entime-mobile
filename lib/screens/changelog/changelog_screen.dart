import 'package:flutter/material.dart';

import 'changelog_markdown.dart';

class ChangelogScreen extends StatelessWidget {
  final String markdownData;

  ChangelogScreen(this.markdownData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список изменений'),
      ),
      body: SafeArea(
        child: changelogMarkdown(markdownData),
      ),
    );
  }
}
