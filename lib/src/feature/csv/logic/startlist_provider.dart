import 'dart:typed_data';

import 'package:entime/src/common/utils/text_decoder.dart';
import 'package:file_picker/file_picker.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../../../common/utils/file_picker_provider.dart';
import '../model/race_csv.dart';
import '../model/stages_csv.dart';
import '../model/start_item_csv.dart';
import '../model/start_number_and_times_csv.dart';

class StartlistProvider {
  const StartlistProvider({required this.filepicker, this.decoder = decodeBytes});

  final IFilePickerProvider filepicker;
  final Future<String?> Function(Uint8List bytes) decoder;

  Future<RaceCsv?> getRaceFromFile() async {
    final file = await filepicker.pickFile(allowedExtensions: ['csv'], type: FileType.custom);
    if (file != null) {
      late final String? csv;
      try {
        csv = await decoder(file.bytes!);
      } catch (e, st) {
        logger.e('CSV -> Error while decoding starting list', error: e, stackTrace: st);
        return null;
      }
      if (csv == null) {
        logger.e('CSV -> Error while decoding starting list');
        return null;
      }

      try {
        final maps = csvToMaps(csv, fieldDelimiter: ';');
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
      } catch (e, st) {
        logger.e('CSV -> Error while parsing starting list', error: e, stackTrace: st);
        return null;
      }
    }
    return null;
  }

  Future<StagesCsv?> getStagesFromFile() async {
    final file = await filepicker.pickFile(allowedExtensions: ['csv'], type: FileType.custom);
    if (file != null) {
      late final String? csv;
      try {
        csv = await decoder(file.bytes!);
      } catch (e, st) {
        logger.e('CSV -> Error while decoding stages list', error: e, stackTrace: st);
        return null;
      }
      if (csv == null) {
        logger.e('CSV -> Error while decoding stages list');
        return null;
      }

      try {
        final maps = csvToMaps(csv, fieldDelimiter: ';');
        final stages = <StartNumberAndTimesCsv>[];
        for (final map in maps) {
          final rider = StartNumberAndTimesCsv.fromMap(map);
          stages.add(rider);
        }

        return StagesCsv(stageNames: stages.first.startTimes?.keys.toList() ?? [], startItems: stages);
      } catch (e, st) {
        logger.e('CSV -> Error at parsing starting list', error: e, stackTrace: st);
        return null;
      }
    }
    return null;
  }
}
