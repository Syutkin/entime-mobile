import 'package:logger/logger.dart';

final Logger logger = Logger(
  printer: PrettyPrinter(
    colors: false,
    noBoxingByDefault: true,
    printEmojis: false,
    methodCount: 0,
  ),
);
