import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger(
  level: kReleaseMode ? Level.error : Level.trace,
  printer: PrettyPrinter(
    colors: false,
    noBoxingByDefault: true,
    printEmojis: false,
    methodCount: 0,
  ),
);
