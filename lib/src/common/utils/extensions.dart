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
    if (self is Map<String, Object?>) {
      return self;
    }
    if (self is Map<String, dynamic>) {
      return self.map((key, value) => MapEntry(key, value as Object?));
    }
    return null;
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
