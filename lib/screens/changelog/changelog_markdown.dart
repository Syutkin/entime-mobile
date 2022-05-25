import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget changelogMarkdown(String data) {
  Future<void> linkOnTapHandler(String? href) async {
    if (href != null) {
      if (await canLaunchUrlString(href)) {
        await launchUrlString(href);
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
