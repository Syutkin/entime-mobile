import 'dart:typed_data';

import 'package:entime/src/feature/csv/logic/text_decoder.dart';
import 'package:file_picker/file_picker.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../model/race_csv.dart';
import '../model/stages_csv.dart';
import '../model/start_item_csv.dart';
import '../model/start_number_and_times_csv.dart';
import 'file_picker.dart';

class StartlistProvider {
  const StartlistProvider({
    this.filepicker = pickFile,
    this.decoder = decodeBytes,
  });

  final Future<PlatformFile?> Function() filepicker;
  final Future<String> Function(Uint8List bytes) decoder;

  List<Map<String, dynamic>> _convertCsv(String csv) {
    final List<Map<String, dynamic>> maps;
    if (csv.contains('\r\n')) {
      maps = CsvToMapConverter(fieldDelimiter: ';').convert(csv);
    } else if (csv.contains('\n')) {
      maps = CsvToMapConverter(fieldDelimiter: ';', eol: '\n').convert(csv);
    } else {
      maps = CsvToMapConverter(fieldDelimiter: ';', eol: '\r').convert(csv);
    }
    return maps;
  }

  Future<RaceCsv?> getRaceFromFile() async {
    final file = await filepicker();
    if (file != null) {
      final csv = await decoder(file.bytes!);
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
    return null;
  }

  Future<StagesCsv?> getStagesFromCsv() async {
    final file = await filepicker();
    if (file != null) {
      final csv = await decoder(file.bytes!);
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
    return null;
  }
}
