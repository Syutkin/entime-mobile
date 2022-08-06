import 'dart:convert';

import 'package:file_picker/file_picker.dart';

import '../../../common/csv/csv_utils.dart';
import '../../../common/logger/logger.dart';
import '../../protocol/model/start_protocol.dart';

Future<List<StartItemCsv>> getStartList([PlatformFile? file]) async {
  file ??= await _pickCsv();
  if (file == null || file.bytes == null) {
    return [];
  }
  try {
    final start = CsvToMapConverter(fieldDelimiter: ';')
        .convert(utf8.decode(file.bytes!));
    final List<StartItemCsv> startList = start.isNotEmpty
        ? start.map((c) => StartItemCsv.fromMap(c)).toList()
        : [];
    return startList;
  } on Exception catch (e) {
    logger.e('getStartList: Error: $e');
    return [];
  }
}

Future<PlatformFile?> _pickCsv() async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowMultiple: false,
    allowedExtensions: ['csv'],
    withData: true,
  );
  return result?.files.first;
}