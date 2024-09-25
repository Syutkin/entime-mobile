import 'dart:io';

import 'package:entime/src/common/utils/csv_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final Directory directory = await getApplicationDocumentsDirectory();
  final File testFile = File(join(directory.path, 'test_csv.csv'));
  final referenceFile = File('test/src/common/utils/startlist.csv');
  if (testFile.existsSync()) {
    testFile.deleteSync();
  }

  group('csv_utils:', () {
    final csv = Platform.isLinux
        ? referenceFile.readAsLinesSync().join('\r\n') //Linux EOL hack
        : referenceFile.readAsStringSync();
    test('saveCsv', () async {
      // Сохраняем с использованием saveCsv,
      // потом считываем и сравниваем с исходником
      final saveCsvFile = await saveCsv(csv, 'suffix', 'filePath');
      expect(saveCsvFile != null, true);
      expect(saveCsvFile!.readAsStringSync(), csv);
      saveCsvFile.deleteSync();
      expect(saveCsvFile.existsSync(), false);
    });

    test('CsvToMapConverter and mapListToCsv', () {
      // Считываем тестовый файл, конвертим из csv и обратно,
      // вырезаем первую строку с заголовками,
      // сравниваем получившиеся списки
      final csvMap = CsvToMapConverter(fieldDelimiter: ';').convert(csv);
      final csvMapCsv = mapListToCsv(csvMap);
      testFile.writeAsStringSync(csvMapCsv ?? '');

      final referenceLines = referenceFile.readAsLinesSync()..removeAt(0);
      final testLines = testFile.readAsLinesSync()..removeAt(0);
      expect(testLines, referenceLines);
      testFile.deleteSync();
      expect(testFile.existsSync(), false);
    });
  });
}
