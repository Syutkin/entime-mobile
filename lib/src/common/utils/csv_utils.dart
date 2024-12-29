import 'package:csv/csv.dart';
import 'package:csv/csv_settings_autodetection.dart';

/// Convert a list of maps to csv
String? mapListToCsv(
  List<Map<String, dynamic>>? mapList, {
  ListToCsvConverter? converter,
  String? eol,
}) {
  if (mapList == null) {
    return null;
  }
  converter ??= const ListToCsvConverter(fieldDelimiter: ';');
  final data = <List<dynamic>>[];
  final keys = <String>[];
  final keyIndexMap = <String, int>{};

  // Add the key and fix previous records
  int addKey(String key) {
    final index = keys.length;
    keyIndexMap[key] = index;
    keys.add(key);
    for (final dataRow in data) {
      dataRow.add(null);
    }
    return index;
  }

  for (final map in mapList) {
    // This list might grow if a new key is found
    var dataRow = <dynamic>[]..length = keyIndexMap.length;
    // Fix missing key
    map.forEach((key, dynamic value) {
      var keyIndex = keyIndexMap[key];
      if (keyIndex == null) {
        // New key is found
        // Add it and fix previous data
        keyIndex = addKey(key);
        // grow our list
        dataRow = List<dynamic>.from(dataRow)..add(value);
      } else {
        dataRow[keyIndex] = value;
      }
    });
    data.add(dataRow);
  }
  return converter.convert(<List<dynamic>>[keys, ...data], eol: eol);
}

//CSV to List<Map<String, String>> instead of the normal List<List<String>> scheme of the original csv package
class CsvToMapConverter {
  CsvToMapConverter({
    String? fieldDelimiter = defaultFieldDelimiter,
    String? textDelimiter = defaultTextDelimiter,
    String? textEndDelimiter,
    String? eol = defaultEol,
    CsvSettingsDetector? csvSettingsDetector,
    bool? shouldParseNumbers,
    bool? allowInvalid,
  }) {
    converter = CsvToListConverter(
      fieldDelimiter: fieldDelimiter,
      textDelimiter: textDelimiter,
      textEndDelimiter: textEndDelimiter,
      eol: eol,
      csvSettingsDetector: csvSettingsDetector,
      shouldParseNumbers: shouldParseNumbers,
      allowInvalid: allowInvalid,
    );
  }

  late CsvToListConverter converter;

  List<Map<String, dynamic>> convert(String csv) {
    final list = converter.convert<dynamic>(csv);
    final List<dynamic> legend =
        list.first.map((dynamic category) => category.toString()).toList();
    final maps = <Map<String, dynamic>>[];
    list.sublist(1).forEach((l) {
      final map = <String, dynamic>{};
      for (var i = 0; i < legend.length; i++) {
        map.putIfAbsent('${legend[i]}', () => l[i]);
      }
      maps.add(map);
    });
    return maps;
  }
}
