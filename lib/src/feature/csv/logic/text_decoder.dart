import 'dart:convert';
import 'dart:typed_data';

import 'package:windows1251/windows1251.dart';

import '../../../common/logger/logger.dart';

String decodeBytes(Uint8List bytes) {
  var csv = '';
  try {
    csv = utf8.decode(bytes).trim();
  } on FormatException catch (e) {
    logger
      ..e('StartlistProvider -> Error converting to utf8: $e')
      ..i('StartlistProvider -> Trying from cp1251...');
    try {
      csv = windows1251.decode(bytes).trim();
    } on Exception {
      rethrow;
    }
  }
  return csv;
}