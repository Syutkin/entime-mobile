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

extension StrTimeToDateTime on String {
  DateTime? toDateTime() {
    final now = DateTime.now();
    final dateFormatted = DateFormat(shortDateFormat).format(now);
    return DateTime.tryParse('$dateFormatted $this');
  }
}
