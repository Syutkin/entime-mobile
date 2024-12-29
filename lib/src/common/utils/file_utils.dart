import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../logger/logger.dart';

/// Save csv to file
Future<File?> saveCsv(String csv, String filename) async {
  final directory =
      Platform.isAndroid
          ? await getExternalStorageDirectory()
          : await getApplicationDocumentsDirectory();
  if (directory == null) {
    return null;
  }
  final file = File('${directory.path}/$filename.csv');
  await file.writeAsString(csv);
  logger.i('saveCsv -> Saved csv to file ${file.path}');
  return file;
}
