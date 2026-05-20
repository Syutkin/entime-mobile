import 'dart:typed_data';

import 'package:intl/intl.dart';

import '../../constants/date_time_formats.dart';

const minUtcOffsetMinutes = -720;
const maxUtcOffsetMinutes = 840;

/// Matches UTC offset [String] input as whole hours (`3`, `-8`) or hours and minutes (`5:45`, `-3:30`).
final _utcOffsetPattern = RegExp(r'^([+-])?(\d+)(?::([0-5]\d))?$');

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
        RegExp(r'^[a-z0-9а-яё]+([\-\.]{1}[a-z0-9а-яё]+)*\.[a-zа-яё]{2,6}$', caseSensitive: false).hasMatch(this!);
  }

  /// Return true if given [String] is valid IPv4 address and not empty or null
  bool get isValidIp {
    if (isNullOrEmpty) {
      return false;
    }
    final match = RegExp(r'^(\d{1,3}\.){3}\d{1,3}$').firstMatch(this!);
    if (match == null) {
      return false;
    }
    final parts = this!.split('.');
    for (final part in parts) {
      final value = int.tryParse(part);
      if (value == null || value < 0 || value > 255) {
        return false;
      }
    }
    return true;
  }

  /// Return UTC offset minutes from [String] with whole hours or `hours:minutes`.
  ///
  /// Examples: `3` -> `180`, `5:45` -> `345`, `-3:30` -> `-210`.
  /// Return null if [String] does not match the expected format.
  int? toUtcOffsetMinutes() {
    final input = this;
    if (input == null) {
      return null;
    }
    final match = _utcOffsetPattern.firstMatch(input.trim());
    if (match == null) {
      return null;
    }

    final sign = match.group(1) == '-' ? -1 : 1;
    final hours = int.parse(match.group(2)!);
    final minutes = int.parse(match.group(3) ?? '0');
    return sign * (hours * 60 + minutes);
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

extension UtcOffsetMinutesExtensions on int {
  /// Format UTC offset [int] minutes to [String] for editing.
  ///
  /// Examples: `180` -> `3`, `345` -> `5:45`, `-210` -> `-3:30`.
  String formatUtcOffset() {
    final sign = this < 0 ? '-' : '';
    final absoluteMinutes = abs();
    final hours = absoluteMinutes ~/ 60;
    final minutes = absoluteMinutes % 60;

    if (minutes == 0) {
      return '$sign$hours';
    }

    return '$sign$hours:${minutes.toString().padLeft(2, '0')}';
  }
}

extension DurationExtensions on Duration {
  String _format() {
    return toString().split('.').first.padLeft(8, '0');
  }

  /// Formats [Duration] to HH:mm:ss String
  String format() {
    if (isNegative) {
      return '-${(-this)._format()}';
    } else {
      return _format();
    }
  }
}

extension DateTimeExt on DateTime {
  /// Format [DateTime] to string [pattern]
  String format(String pattern) {
    return DateFormat(pattern).format(this);
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

extension ObjectParsingExtensions on Object? {
  /// Return [String] if value is a [String], otherwise null.
  String? asString() {
    final self = this;
    return self is String ? self : null;
  }

  /// Return [int] if value is [int]/[num] or parses from [String], otherwise null.
  int? asInt() {
    final self = this;
    if (self is int) {
      return self;
    }
    if (self is num) {
      return self.toInt();
    }
    if (self is String) {
      return int.tryParse(self);
    }
    return null;
  }

  /// Return [double] if value is [double]/[num] or parses from [String], otherwise null.
  double? asDouble() {
    final self = this;
    if (self is double) {
      return self;
    }
    if (self is num) {
      return self.toDouble();
    }
    if (self is String) {
      return double.tryParse(self);
    }
    return null;
  }

  /// Return [bool] if value is [bool] or parses from 'true'/'false', otherwise null.
  bool? asBool() {
    final self = this;
    if (self is bool) {
      return self;
    }
    if (self is String) {
      final normalized = self.toLowerCase();
      if (normalized == 'true') {
        return true;
      }
      if (normalized == 'false') {
        return false;
      }
    }
    return null;
  }

  /// Return [Map<String, Object?>] if value can be safely cast, otherwise null.
  Map<String, Object?>? asMap() {
    final self = this;
    if (self is! Map) {
      return null;
    }
    final result = <String, Object?>{};
    for (final entry in self.entries) {
      final key = entry.key;
      if (key is! String) {
        return null;
      }
      result[key] = entry.value as Object?;
    }
    return result;
  }

  /// Return [List<String>] if value is a list, keeping only [String] entries.
  List<String>? asStringList() {
    final self = this;
    if (self is List) {
      return self.whereType<String>().toList();
    }
    return null;
  }
}
