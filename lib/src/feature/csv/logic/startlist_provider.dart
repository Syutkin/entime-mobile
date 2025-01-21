import 'dart:convert';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:windows1251/windows1251.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../model/race_csv.dart';
import '../model/stages_csv.dart';
import '../model/start_item_csv.dart';
import '../model/start_number_and_times_csv.dart';
import 'file_picker.dart';

class StartlistProvider {
  RaceCsv? getRaceFromCsv(String csv, String fileName) {
    try {
      final maps = _convertCsv(csv);
      final riders = <StartItemCsv>[];
      for (final map in maps) {
        final rider = StartItemCsv.fromMap(map);
        riders.add(rider);
      }

      return RaceCsv(
        fileName:fileName,
        stageNames: riders.first.startTimes?.keys.toList() ?? [],
        startItems: riders,
      );
    } on Exception catch (e) {
      logger.e('CSV -> Exception while parsing starting list', error: e);
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

  Future<StagesCsv?> getStagesFromCsv(String csv) async {
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
      logger.e('CSV -> Exception while parsing starting list', error: e);
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

  List<Map<String, dynamic>> _convertCsv(String csv) {
    print(csv.allMatches('\r\n').length);
    var maps = CsvToMapConverter(fieldDelimiter: ';', eol: '\n').convert(csv);
    // Если конвертация не принесла успеха, то
    // пробуем сконвертировать с окончанием строки по умолчанию: '\r\n'
    if (maps.isEmpty) {
      maps = CsvToMapConverter(fieldDelimiter: ';').convert(csv);
    }
    return maps;
  }
}
