import 'dart:io';

import 'package:entime/src/common/exceptions/known_exception.dart';
import 'package:entime/src/common/utils/text_decoder.dart';
import 'package:flutter/services.dart';
import 'package:test/test.dart';

void main() {
  group('decodeBytes', () {
    test('uses provided decoder first', () async {
      final result = await decodeBytesForTesting(
        Uint8List.fromList([1, 2, 3]),
        decoder: (_) async => 'decoded',
      );

      expect(result, 'decoded');
    });

    test('uses Linux system detector when platform decoder is unavailable', () async {
      if (!Platform.isLinux) {
        markTestSkipped('Linux-only charset fallback');
      }

      const text =
          'Категория;Номер;Имя;Старт\r\n'
          'Девушки;2;Алексахина Варвара;00:00:00\r\n'
          'Любители;9;Гадолин Мечислав;10:05:00\r\n'
          'Элита;1;Абушаев Лев;10:30:30';

      final result = await _decodeOrSkip(
        () => decodeBytesForTesting(
          windows1251Encode(text),
          decoder: (_) async => throw MissingPluginException(),
        ),
        skippedValue: text,
      );

      expect(result, text);
    });
  });

  group('decodeWithLinuxSystemCharsetDetector', () {
    test('decodes windows-1251 bytes on Linux when system libraries are available', () async {
      if (!Platform.isLinux) {
        markTestSkipped('Linux-only charset detector');
      }

      const text =
          'Категория;Номер;Имя;Старт\r\n'
          'Девушки;2;Алексахина Варвара;00:00:00\r\n'
          'Любители;9;Гадолин Мечислав;10:05:00\r\n'
          'Элита;1;Абушаев Лев;10:30:30';

      final result = await _decodeOrSkip(
        () => decodeWithLinuxSystemCharsetDetector(windows1251Encode(text)),
        skippedValue: text,
      );

      expect(result, text);
    });
  });
}

Future<String> _decodeOrSkip(Future<String> Function() decode, {required String skippedValue}) async {
  try {
    return await decode();
  } on KnownException catch (e) {
    if (_isLinuxSystemDecoderUnavailable(e)) {
      markTestSkipped('Linux charset detector system libraries are unavailable');
      return skippedValue;
    }
    rethrow;
  }
}

bool _isLinuxSystemDecoderUnavailable(KnownException exception) {
  return switch (exception) {
    TextDecodeUchardetLibraryMissingException() ||
    TextDecodeUchardetSymbolsMissingException() ||
    TextDecodeIconvLibraryMissingException() => true,
    _ => false,
  };
}

Uint8List windows1251Encode(String value) {
  return Uint8List.fromList([
    for (final rune in value.runes) _windows1251Byte(rune),
  ]);
}

int _windows1251Byte(int rune) {
  if (rune < 0x80) {
    return rune;
  }
  if (rune >= 0x0410 && rune <= 0x044F) {
    return 0xC0 + rune - 0x0410;
  }
  if (rune == 0x0401) {
    return 0xA8;
  }
  if (rune == 0x0451) {
    return 0xB8;
  }
  throw UnsupportedError('Unsupported test character: $rune');
}
