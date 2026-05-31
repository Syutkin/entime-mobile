import 'dart:io';

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

      final result = await decodeBytesForTesting(
        windows1251Encode(text),
        decoder: (_) async => throw MissingPluginException(),
      );

      if (result == null) {
        markTestSkipped('Linux charset detector system libraries are unavailable');
      }
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

      final result = await decodeWithLinuxSystemCharsetDetector(windows1251Encode(text));

      if (result == null) {
        markTestSkipped('Linux charset detector system libraries are unavailable');
      }
      expect(result, text);
    });
  });
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
