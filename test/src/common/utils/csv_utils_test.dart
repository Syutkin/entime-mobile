import 'package:entime/src/common/utils/csv_utils.dart';
import 'package:flutter_test/flutter_test.dart';

import 'startlist_csv.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  late String csv;

  group('csv_utils:', () {
    setUpAll(() {
      csv = startlistCsv;
    });

    test('CsvToMapConverter and mapListToCsv', () {
      final csvMap = CsvToMapConverter(
        fieldDelimiter: ';',
        eol: '\n',
      ).convert(csv);
      final converted = mapListToCsv(csvMap, eol: '\n');
      expect(converted, csv);
    });
  });
}
