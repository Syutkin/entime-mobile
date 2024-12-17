import 'dart:convert';

import 'package:file_picker/file_picker.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../model/race_csv.dart';
import '../model/stages_csv.dart';
import '../model/start_item_csv.dart';
import '../model/start_number_and_times_csv.dart';

class StartlistProvider {
  Future<RaceCsv?> getRaceCsv([PlatformFile? file]) async {
    file ??= await _pickCsv();
    if (file == null || file.bytes == null) {
      return null;
    }

    final csv = utf8.decode(file.bytes!).trim();

    try {
      final maps = _convertCsv(csv);
      final riders = <StartItemCsv>[];
      for (final map in maps) {
        final rider = StartItemCsv.fromMap(map);
        riders.add(rider);
      }

      return RaceCsv(
        fileName: file.name,
        stageNames: riders.first.startTimes?.keys.toList() ?? [],
        startItems: riders,
      );
    } on Exception catch (e) {
      logger.e(
        'CSV -> Exception while parsing starting list',
        error: e,
      );
      return null;
    } catch (e, st) {
      logger.e(
        'CSV -> Error at parsing starting list',
        error: e,
        stackTrace: st,
      );
      return null;
    }
  }

  Future<StagesCsv?> getStagesCsv([PlatformFile? file]) async {
    file ??= await _pickCsv();
    if (file == null || file.bytes == null) {
      return null;
    }
    final csv = utf8.decode(file.bytes!).trim();

    try {
      final maps = _convertCsv(csv);
      final stages = <StartNumberAndTimesCsv>[];
      for (final map in maps) {
        final rider = StartNumberAndTimesCsv.fromMap(map);
        stages.add(rider);
      }

      return StagesCsv(
        stageNames: stages.first.startTimes?.keys.toList() ?? [],
        startItems: stages,
      );
    } on Exception catch (e) {
      logger.e(
        'CSV -> Exception while parsing starting list',
        error: e,
      );
      return null;
    } catch (e, st) {
      logger.e(
        'CSV -> Error at parsing starting list',
        error: e,
        stackTrace: st,
      );
      return null;
    }
  }

  Future<PlatformFile?> _pickCsv() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
      withData: true,
    );
    return result?.files.first;
  }

  List<Map<String, dynamic>> _convertCsv(String csv) {
    var maps = CsvToMapConverter(fieldDelimiter: ';', eol: '\n').convert(csv);
    // Если конвертация не принесла успеха, то
    // пробуем сконвертировать с окончанием строки по умолчанию: '\r\n'
    if (maps.isEmpty) {
      maps = CsvToMapConverter(fieldDelimiter: ';').convert(csv);
    }
    return maps;
  }
}
