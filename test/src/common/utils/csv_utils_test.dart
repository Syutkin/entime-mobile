import 'package:csv/csv.dart';
import 'package:entime/src/common/utils/csv_utils.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/startlist.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  late String csv;

  group('csv_utils:', () {
    setUpAll(() {
      csv = startlist;
    });

    test('CsvToMapConverter and mapListToCsv', () {
      final csvMap = CsvToMapConverter(fieldDelimiter: ';', eol: '\n').convert(csv);
      final converted = mapListToCsv(csvMap, eol: '\n');
      expect(converted, csv);
    });

    test('mapListToCsv returns null for null input', () {
      expect(mapListToCsv(null), isNull);
    });

    test('mapListToCsv keeps dynamic headers and fills missing values', () {
      final converted = mapListToCsv([
        {'number': 1, 'name': 'Alice'},
        {'name': 'Bob', 'team': 'Fast'},
      ], eol: '\n');

      expect(converted, 'number;name;team\n1;Alice;\n;Bob;Fast');
    });

    test('mapListToCsv supports a custom encoder and eol override', () {
      final converted = mapListToCsv(
        [
          {'number': 1, 'name': 'Alice'},
          {'number': 2, 'name': 'Bob'},
        ],
        converter: const CsvEncoder(fieldDelimiter: '|'),
        eol: '\n',
      );

      expect(converted, 'number|name\n1|Alice\n2|Bob');
    });

    test('CsvToMapConverter parses numbers by default', () {
      final maps = CsvToMapConverter(fieldDelimiter: ';', eol: '\n').convert('number;name;ratio\n7;Rider;3.5');

      expect(maps, [
        {'number': 7, 'name': 'Rider', 'ratio': 3.5},
      ]);
      expect(maps.first['number'], isA<int>());
      expect(maps.first['ratio'], isA<double>());
    });

    test('CsvToMapConverter can keep numbers as strings', () {
      final maps = CsvToMapConverter(
        fieldDelimiter: ';',
        eol: '\n',
        shouldParseNumbers: false,
      ).convert('number;name\n7;Rider');

      expect(maps, [
        {'number': '7', 'name': 'Rider'},
      ]);
    });

    test('CsvToMapConverter and mapListToCsv round-trip quoted fields', () {
      final source = [
        {
          'name': 'A;B',
          'comment': 'quoted "text"',
          'note': 'line\nbreak',
        },
        {
          'name': 'plain',
          'comment': '',
          'note': 'last',
        },
      ];

      final converted = mapListToCsv(source, eol: '\n');
      final maps = CsvToMapConverter(fieldDelimiter: ';', eol: '\n').convert(converted!);

      expect(maps, source);
    });
  });
}
