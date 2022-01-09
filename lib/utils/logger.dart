import 'package:logger/logger.dart';

Logger logger = Logger(
  printer: PrettyPrinter(
    printTime: false,
    colors: false,
    noBoxingByDefault: true,
    printEmojis: false,
    methodCount: 0,
  ),
);
