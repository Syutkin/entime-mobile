import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(
    printTime: false,
    colors: false,
    noBoxingByDefault: true,
    printEmojis: false,
    methodCount: 0,
  ),
);
