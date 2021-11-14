import 'dart:convert';
import 'package:file_picker/file_picker.dart';

import 'package:entime/models/start_protocol.dart';
import 'package:entime/utils/csv_utils.dart';
import 'package:entime/utils/logger.dart';

Future<List<StartItemCsv>> getStartList() async {
  PlatformFile? file = await _pickCsv();
  if (file == null || file.bytes == null) {
    return [];
  }
  try {
    var start = CsvToMapConverter(fieldDelimiter: ';')
        .convert(utf8.decode(file.bytes!));
    List<StartItemCsv> startList = start.isNotEmpty
        ? start.map((c) => StartItemCsv.fromMap(c)).toList()
        : [];
    return startList;
  } catch (e) {
    logger.e('getStartList: Error: $e');
    return [];
  }
}

Future<PlatformFile?> _pickCsv() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowMultiple: false,
    allowedExtensions: ['csv'],
    withData: true,
  );
  return result?.files.first;
}
