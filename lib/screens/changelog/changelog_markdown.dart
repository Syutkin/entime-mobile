import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

Widget changelogMarkdown(String data) {
  void linkOnTapHandler(String href) async {
    if (await canLaunch(href)) {
      await launch(href);
    } else {
      throw 'Could not launch $href';
    }
  }

  return Markdown(
    data: data,
    onTapLink: (text, href, title) => linkOnTapHandler(href),
  );
}
