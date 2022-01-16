import 'package:logger/logger.dart';

final Logger logger = Logger(
  printer: PrettyPrinter(
    printTime: false,
    colors: false,
    noBoxingByDefault: true,
    printEmojis: false,
    methodCount: 0,
  ),
);
