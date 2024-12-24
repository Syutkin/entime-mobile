import 'package:flutter/services.dart';

class ChangelogProvider {
  Future<String> changelog([
    String? currentVersion,
    String fromVersion = '0.0.0',
  ]) async {
    final prev = '[$fromVersion]';
    final markdown = await rootBundle.loadString('CHANGELOG.md');
    var current = '';
    currentVersion != null
        ? current = '[$currentVersion]'
        : current = RegExp(r'\[\d+\.\d+.\d+\]').firstMatch(markdown)![0]!;

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
