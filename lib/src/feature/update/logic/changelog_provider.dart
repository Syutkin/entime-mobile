import 'package:flutter/services.dart';

class ChangelogProvider {
  ChangelogProvider({AssetBundle? bundle}) : _bundle = bundle ?? rootBundle;

  final AssetBundle _bundle;

  Future<String> changelog([String? currentVersion, String fromVersion = '0.0.0']) async {
    final prev = '[$fromVersion]';
    final markdown = await _bundle.loadString('CHANGELOG.md');
    var current = '';
    currentVersion != null
        ? current = '[$currentVersion]'
        : current = RegExp(r'\[\d+\.\d+.\d+\]').firstMatch(markdown)?.group(0) ?? '';

    if (current.isEmpty) {
      return '';
    }

    var addLine = false;
    final result = <String>[];
    final list = markdown.split('\n');
    for (final string in list) {
      if (string.contains(current)) {
        addLine = true;
      }
      if (string.contains(prev)) {
        addLine = false;
      }
      if (addLine) {
        result.add(string);
      }
    }
    return result.join('\n');
  }
}
