import 'package:flutter/material.dart';

import 'changelog_markdown.dart';

class ChangelogScreen extends StatelessWidget {
  final String markdownData;

  const ChangelogScreen({required this.markdownData, Key? key})
      : super(key: key);

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
