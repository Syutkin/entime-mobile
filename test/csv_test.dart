import 'dart:io';

import 'package:entime/src/common/csv/csv_utils.dart';
import 'package:entime/src/common/logger/logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File testFile = File(join(directory.path, 'test_csv.csv'));
  final referenceFile = File('test/startlist.csv');
  logger.d(testFile.path);
  if (testFile.existsSync()) {
    testFile.deleteSync();
  }

  group('csv_utils:', () {
    final csv = referenceFile.readAsStringSync();
    test('CsvToMapConverter and mapListToCsv', () async {
      // Считываем тестовый файл, конвертим из csv и обратно,
      // вырезаем первую строку с заголовками,
      // сравниваем получившиеся списки

      final csvMap = CsvToMapConverter(fieldDelimiter: ';').convert(csv);
      final csvMapCsv = mapListToCsv(csvMap);
      logger.d(csvMapCsv);
      testFile.writeAsStringSync(csvMapCsv ?? '');

      logger..d('testFile: ${testFile.readAsLinesSync()}')
      ..d('referenceFile: ${testFile.readAsLinesSync()}');

      final referenceLines = referenceFile.readAsLinesSync()..removeAt(0);
      final testLines = testFile.readAsLinesSync()..removeAt(0);
      expect(testLines, referenceLines);
    });

    // test('saveCsv', ()  {
    //   saveCsv(csv, 'suffix', 'filePath');
    // });
  });
}
