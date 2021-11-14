import 'dart:io';

import 'package:csv/csv.dart';
import 'package:csv/csv_settings_autodetection.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'logger.dart';

/// Convert a map list to csv
String? mapListToCsv(List<Map<String, dynamic>>? mapList,
    {ListToCsvConverter? converter}) {
  if (mapList == null) {
    return null;
  }
  converter ??= const ListToCsvConverter(fieldDelimiter: ';');
  var data = <List>[];
  var keys = <String>[];
  var keyIndexMap = <String, int>{};

  // Add the key and fix previous records
  int _addKey(String key) {
    var index = keys.length;
    keyIndexMap[key] = index;
    keys.add(key);
    for (var dataRow in data) {
      dataRow.add(null);
    }
    return index;
  }

  for (var map in mapList) {
    // This list might grow if a new key is found
    var dataRow = [];
    dataRow.length = keyIndexMap.length;
    // Fix missing key
    map.forEach((key, value) {
      var keyIndex = keyIndexMap[key];
      if (keyIndex == null) {
        // New key is found
        // Add it and fix previous data
        keyIndex = _addKey(key);
        // grow our list
        dataRow = List.from(dataRow, growable: true)..add(value);
      } else {
        dataRow[keyIndex] = value;
      }
    });
    data.add(dataRow);
  }
  return converter.convert(<List>[keys, ...data]);
}

// Save csv to file
Future<String?> saveCsv(String csv, String suffix, String filePath) async {
  final directory = await getExternalStorageDirectory();
  if (directory == null) {
    assert(directory != null);
    return null;
  }
  final file = File(
      '${directory.path}/${basenameWithoutExtension(filePath)}-$suffix.csv');
  await file.writeAsString(csv);
  logger.i('saveCsv -> Saved csv to file ${file.path}');
  return file.path;
}

//CSV to List<Map<String, String>> instead of the normal List<List<String>> scheme of the original csv package
class CsvToMapConverter {
  late CsvToListConverter converter;
  CsvToMapConverter(
      {String? fieldDelimiter = defaultFieldDelimiter,
        String? textDelimiter = defaultTextDelimiter,
        String? textEndDelimiter,
        String? eol = defaultEol,
        CsvSettingsDetector? csvSettingsDetector,
        bool? shouldParseNumbers,
        bool? allowInvalid}) {
    converter = CsvToListConverter(
        fieldDelimiter: fieldDelimiter,
        textDelimiter: textDelimiter,
        textEndDelimiter: textEndDelimiter,
        eol: eol,
        csvSettingsDetector: csvSettingsDetector,
        shouldParseNumbers: shouldParseNumbers,
        allowInvalid: allowInvalid);
  }
  List<Map<String, dynamic>> convert(String csv) {
    List<List<dynamic>> list = converter.convert(csv);
    List legend = list[0].map((category)=>category.toLowerCase()).toList();
    List<Map<String, dynamic>> maps = [];
    list.sublist(1).forEach((List l) {
      Map<String, dynamic> map = {};
      for (int i = 0; i < legend.length; i++) {
        map.putIfAbsent('${legend[i]}', () => l[i]);
      }
      maps.add(map);
    });
    return maps;
  }
}