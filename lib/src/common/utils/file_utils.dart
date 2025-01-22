import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../logger/logger.dart';

/// Save csv to file
Future<File?> saveToFile(String content, String filename, [String extension = 'csv']) async {
  final directory =
      Platform.isAndroid
          ? await getExternalStorageDirectory()
          : await getApplicationDocumentsDirectory();
  if (directory == null) {
    return null;
  }
  final file = File('${directory.path}/$filename.$extension');
  await file.writeAsString(content);
  logger.i('saveToFile -> Saved $extension to file ${file.path}');
  return file;
}


/// Pick file from filesystem
Future<PlatformFile?> pickFile([List<String> extensions = const ['csv']]) async {
  final file = (await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: extensions,
    withData: true,
  ))?.files.first;

  if (file == null || file.bytes == null) {
    return null;
  }
  return file;
}
