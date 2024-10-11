import 'dart:convert';

import 'package:file_picker/file_picker.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../model/race_csv.dart';
import '../model/start_item_csv.dart';

class StartlistProvider {
  Future<RaceCsv?> getStartCsv([PlatformFile? file]) async {
    file ??= await _pickCsv();
    if (file == null || file.bytes == null) {
      return null;
    }

    final csv = utf8.decode(file.bytes!).trim();

    try {
      var maps = CsvToMapConverter(fieldDelimiter: ';', eol: '\n').convert(csv);
      // Если конвертация не принесла успеха, то
      // пробуем сконвертировать с окончанием строки по умолчанию: '\r\n'
      if (maps.isEmpty) {
        maps = CsvToMapConverter(fieldDelimiter: ';').convert(csv);
      }
      final List<StartItemCsv> riders = [];
      for (var map in maps) {
        final rider = StartItemCsv.fromMap(map);
        riders.add(rider);
      }

      return RaceCsv(
        fileName: file.name,
        stageNames: riders.first.startTimes?.keys.toList() ?? [],
        startItems: riders,
      );
    } on Error catch (e) {
      logger.e('CSV -> Error at parsing starting list: $e '
          'StackTrace: ${e.stackTrace}');
      return null;
    }
  }

  Future<PlatformFile?> _pickCsv() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
      withData: true,
    );
    return result?.files.first;
  }
}
