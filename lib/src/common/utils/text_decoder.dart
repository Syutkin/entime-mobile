import 'dart:typed_data';

import 'package:flutter_charset_detector/flutter_charset_detector.dart';

Future<String> decodeBytes(Uint8List bytes) async {
  final result = await CharsetDetector.autoDecode(bytes);
  return result.string;
}
