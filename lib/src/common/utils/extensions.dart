import 'dart:typed_data';

import 'package:intl/intl.dart';

import '../../constants/date_time_formats.dart';

extension StringExtensions on String? {
  String strip() {
    if (this == null || this == 'null') {
      return '';
    } else {
      return this!.trim();
    }
  }

  /// Return true if given [String] is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Return true if given [String] is not null or empty
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// Return true if given [String] is valid email and not empty or null
  bool get isValidEmail {
    return isNotNullOrEmpty &&
        RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
        ).hasMatch(this!);
  }

  /// Return true if given [String] is valid url and not empty or null
  bool get isValidUrl {
    // Простой валидатор домена
    return isNotNullOrEmpty &&
        RegExp(
          r'^[a-z0-9а-яё]+([\-\.]{1}[a-z0-9а-яё]+)*\.[a-zа-яё]{2,6}$',
          caseSensitive: false,
        ).hasMatch(this!);
  }

  /// Return [DateTime] from [String] with time only.
  ///
  /// Return null if fails
  DateTime? toDateTime() {
    if (isNullOrEmpty) return null;
    final now = DateTime.now();
    final dateFormatted = DateFormat(shortDateFormat).format(now);
    return DateTime.tryParse('$dateFormatted $this');
  }
}

/// Formats Duration to HH:mm:ss String
extension DurationExtensions on Duration {
  String _format() {
    return toString().split('.').first.padLeft(8, '0');
  }

  String format() {
    if (isNegative) {
      return '-${(-this)._format()}';
    } else {
      return _format();
    }
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
