import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'changelog_markdown.dart';

Future<void> showChangelogAtStartup(
    BuildContext context, String fromVersion) async {
  String markdownData = await rootBundle.loadString('CHANGELOG.md');
  // Обрезает ченджлог ниже ранее запущенной версии
  // В противном случае показывает весь
  var i = markdownData.indexOf(fromVersion);
  if (i > -1) {
    // i-3 убирает окончание "# ["
    // Пример: # [0.1.2], где fromVersion = 0.1.2
    // markdownData = markdownData.substring(0, i - 3).trim();
    markdownData = markdownData.substring(0, i);
    // Убирает последнюю строчку с мусором (всё что после переноса строки)
    i = markdownData.lastIndexOf('\n');
    if (i > -1) {
      markdownData = markdownData.substring(0, i);
    }
  }
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        // scrollable: true,
        title: const Text('Что нового'),
        // content: changelogMarkdown(markdownData),
        // workaround with width, see https://github.com/flutter/flutter/issues/18108
        content: SizedBox(
          width: double.maxFinite,
          child: changelogMarkdown(markdownData),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
        ],
      );
    },
  );
}
