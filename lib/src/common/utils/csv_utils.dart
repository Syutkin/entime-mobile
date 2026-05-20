import 'package:csv/csv.dart';

/// Convert a list of maps to csv
String? mapListToCsv(List<Map<String, dynamic>>? mapList, {CsvEncoder? converter, String? eol}) {
  if (mapList == null) {
    return null;
  }
  final encoder = _encoderFor(converter: converter, eol: eol);
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
  return encoder.convert(<List<dynamic>>[keys, ...data]);
}

CsvEncoder _encoderFor({CsvEncoder? converter, String? eol}) {
  if (converter == null) {
    return CsvEncoder(fieldDelimiter: ';', lineDelimiter: eol ?? '\r\n');
  }
  if (eol == null || eol == converter.lineDelimiter) {
    return converter;
  }

  return CsvEncoder(
    fieldDelimiter: converter.fieldDelimiter,
    lineDelimiter: eol,
    quoteCharacter: converter.quoteCharacter,
    escapeCharacter: converter.escapeCharacter,
    quoteMode: converter.quoteMode,
    addBom: converter.addBom,
    fieldTransform: converter.fieldTransform,
  );
}

// CSV to List<Map<String, dynamic>> instead of the normal List<List<dynamic>> scheme of the csv package.
class CsvToMapConverter {
  CsvToMapConverter({
    String? fieldDelimiter = ',',
    String textDelimiter = '"',
    String? textEndDelimiter,
    String? eol = '\r\n',
    Object? csvSettingsDetector,
    bool? shouldParseNumbers,
  }) {
    converter = Csv(
      fieldDelimiter: fieldDelimiter ?? ',',
      lineDelimiter: eol ?? '\r\n',
      quoteCharacter: textDelimiter,
      escapeCharacter: textEndDelimiter == null ? null : textDelimiter,
      autoDetect: fieldDelimiter == null || csvSettingsDetector != null,
      parseHeaders: true,
      decoderTransform: shouldParseNumbers ?? true ? _parseNumber : null,
    );
  }

  late Csv converter;

  List<Map<String, dynamic>> convert(String csv) {
    return [
      for (final row in converter.decodeWithHeaders(csv)) row.toMap(),
    ];
  }
}

dynamic _parseNumber(dynamic field, int index, String? header) {
  if (field is! String) {
    return field;
  }

  return int.tryParse(field) ?? double.tryParse(field) ?? field;
}
