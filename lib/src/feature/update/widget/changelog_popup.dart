import 'package:flutter/material.dart';

import '../../../common/localization/i18n.dart';
import 'changelog_markdown.dart';

Future<void> showChangelogAtStartup(
  BuildContext context,
  String markdown,
) async {
  return showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          // scrollable: true,
          title: Text(I18nUpdate.whatsNew),
          // content: changelogMarkdown(markdownData),
          // workaround with width, see https://github.com/flutter/flutter/issues/18108
          content: SizedBox(
            width: double.maxFinite,
            child: changelogMarkdown(markdown),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        ),
  );
  // }
}
