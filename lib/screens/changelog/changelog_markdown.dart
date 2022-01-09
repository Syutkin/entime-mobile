import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

Widget changelogMarkdown(String data) {
  Future<void> linkOnTapHandler(String? href) async {
    if (href != null) {
      if (await canLaunch(href)) {
        await launch(href);
      } else {
        final Error error = ArgumentError('Could not launch $href');
        throw error;
      }
    }
  }

  return Markdown(
    data: data,
    onTapLink: (text, href, title) => linkOnTapHandler(href),
  );
}
