import 'dart:typed_data';

import 'package:intl/intl.dart';

import '../../constants/date_time_formats.dart';

extension Strip on String? {
  String strip() {
    if (this == null || this == 'null') {
      return '';
    } else {
      return this!.trim();
    }
  }
}

extension StringExt on String {
  DateTime? toDateTime() {
    final now = DateTime.now();
    final dateFormatted = DateFormat(shortDateFormat).format(now);
    return DateTime.tryParse('$dateFormatted $this');
  }

  bool get isUrl {
    final regExp = RegExp(
      // ToDo: пропускать русские домены
      // Простой валидатор домена
      r'^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}$',
      caseSensitive: false,
    );
    return regExp.hasMatch(this);
  }
}

/// Converts a `List<int>` to a [Uint8List].
///
/// Attempts to cast to a [Uint8List] first to avoid creating an unnecessary
/// copy.
extension AsUint8List on List<int> {
  Uint8List asUint8List() {
    final self = this; // Local variable to allow automatic type promotion.
    return (self is Uint8List) ? self : Uint8List.fromList(this);
  }
}
