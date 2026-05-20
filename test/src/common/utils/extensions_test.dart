// ignore_for_file: unnecessary_nullable_for_final_variable_declarations

import 'package:entime/src/common/utils/extensions.dart';
import 'package:test/test.dart';

void main() {
  group('String? extensions tests', () {
    group('strip() tests', () {
      test('String is null', () {
        String? str;
        expect(str.strip(), '');
      });
      test('.toString() to null value', () {
        String? str;
        expect(str.toString().strip(), '');
      });
      test('String is empty', () {
        const str = '';
        expect(str.strip(), '');
      });
      test('Return input string if not empty', () {
        const str = 'input';
        expect(str.strip(), str);
      });
      test('Trim input string', () {
        const str = ' input ';
        expect(str.strip(), str.trim());
      });
    });

    group('isNullOrEmpty tests', () {
      test('Null string', () {
        String? str;
        expect(str.isNullOrEmpty, true);
      });
      test('Empty string', () {
        const str = '';
        expect(str.isNullOrEmpty, true);
      });
      test('Not empty string', () {
        const str = 'not empty';
        expect(str.isNullOrEmpty, false);
      });
    });

    group('isNotNullOrEmpty tests', () {
      test('Null string', () {
        String? str;
        expect(str.isNullOrEmpty, true);
      });
      test('Empty string', () {
        const str = '';
        expect(str.isNullOrEmpty, true);
      });
      test('Not empty string', () {
        const str = 'not empty';
        expect(str.isNullOrEmpty, false);
      });
    });

    group('isValidEmail tests', () {
      test('Null string', () {
        String? str;
        expect(str.isValidEmail, false);
      });
      test('Empty string', () {
        const str = '';
        expect(str.isValidEmail, false);
      });
      test('Not email string', () {
        const str = 'not empty';
        expect(str.isValidEmail, false);
      });
      test('Not email string with @', () {
        const str = 'not@emp';
        expect(str.isValidEmail, false);
      });
      test('Valid email string', () {
        const str = 'not@emp.emp';
        expect(str.isValidEmail, true);
      });
      test('Valid email string with dots', () {
        const str = 'n.o.t@emp.emp';
        expect(str.isValidEmail, true);
      });
      test('Valid email string with symbols', () {
        const str = 'n_o.t@emp.emp';
        expect(str.isValidEmail, true);
      });
    });

    group('isValidUrl tests', () {
      test('Null string', () {
        String? str;
        expect(str.isValidUrl, false);
      });
      test('Empty string', () {
        const str = '';
        expect(str.isValidUrl, false);
      });
      test('Not url string', () {
        const str = 'not empty';
        expect(str.isValidUrl, false);
      });
      test('Url string', () {
        const str = 'url.str';
        expect(str.isValidUrl, true);
      });
      test('Url with subdomains', () {
        const str = 'url.url.url.url.url.url.str';
        expect(str.isValidUrl, true);
      });
      test('Long domain', () {
        const str = 'emp.emperor';
        expect(str.isValidUrl, false);
      });
      test('Cyrillic url', () {
        const str = 'мой.домен';
        expect(str.isValidUrl, true);
      });
    });

    group('isValidIp tests', () {
      test('Null string', () {
        String? str;
        expect(str.isValidIp, false);
      });
      test('Empty string', () {
        const str = '';
        expect(str.isValidIp, false);
      });
      test('Not ip string', () {
        const str = 'not.ip';
        expect(str.isValidIp, false);
      });
      test('Missing octet', () {
        const str = '1.1.1';
        expect(str.isValidIp, false);
      });
      test('Extra octet', () {
        const str = '1.1.1.1.1';
        expect(str.isValidIp, false);
      });
      test('Non-numeric octet', () {
        const str = '1.1.a.1';
        expect(str.isValidIp, false);
      });
      test('Out of range octet', () {
        const str = '256.1.1.1';
        expect(str.isValidIp, false);
      });
      test('Negative octet', () {
        const str = '-1.1.1.1';
        expect(str.isValidIp, false);
      });
      test('Valid ip', () {
        const str = '192.168.1.10';
        expect(str.isValidIp, true);
      });
      test('Boundary values', () {
        const minIp = '0.0.0.0';
        const maxIp = '255.255.255.255';
        expect(minIp.isValidIp, true);
        expect(maxIp.isValidIp, true);
      });
      test('Leading zeros', () {
        const str = '01.002.003.004';
        expect(str.isValidIp, true);
      });
    });

    group('toDateTime() tests', () {
      test('String is null', () {
        String? str;
        expect(str.toDateTime(), null);
      });
      test('String is empty', () {
        const str = '';
        expect(str.toDateTime(), null);
      });
      test('Incorrect time', () {
        const str = 'time';
        expect(str.toDateTime(), null);
      });
      test('Correct time', () {
        const str = '10:10:02';
        final now = DateTime.now();
        expect(str.toDateTime(), DateTime(now.year, now.month, now.day, 10, 10, 2));
      });
      test('Time with milliseconds', () {
        const str = '10:10:02,123';
        final now = DateTime.now();
        expect(str.toDateTime(), DateTime(now.year, now.month, now.day, 10, 10, 2, 123));
      });
      test('Short time', () {
        const str = '10:10';
        final now = DateTime.now();
        expect(str.toDateTime(), DateTime(now.year, now.month, now.day, 10, 10));
      });
      test('Very short time', () {
        const str = '10';
        final now = DateTime.now();
        expect(str.toDateTime(), DateTime(now.year, now.month, now.day, 10));
      });
      test('Negative short time', () {
        const str = '-10';
        expect(str.toDateTime(), null);
      });
      test('Negative time', () {
        const str = '-10:00:00';
        expect(str.toDateTime(), null);
      });
    });
  });

  group('Duration extensions tests', () {
    group('format() tests', () {
      test('Positive duration', () {
        var duration = const Duration(hours: 1).format();
        expect(duration, '01:00:00');

        duration = const Duration(hours: 100).format();
        expect(duration, '100:00:00');

        duration = const Duration(hours: 2, minutes: 55, seconds: 34).format();
        expect(duration, '02:55:34');

        duration = const Duration(seconds: 1, milliseconds: 1).format();
        expect(duration, '00:00:01');

        duration = Duration.zero.format();
        expect(duration, '00:00:00');

        duration = const Duration(milliseconds: 1).format();
        expect(duration, '00:00:00');
      });

      test('Negative duration', () {
        var duration = const Duration(hours: -1).format();
        expect(duration, '-01:00:00');

        duration = const Duration(hours: -100).format();
        expect(duration, '-100:00:00');

        duration = const Duration(hours: -2, minutes: -55, seconds: -34).format();
        expect(duration, '-02:55:34');

        duration = const Duration(seconds: -1, milliseconds: -1).format();
        expect(duration, '-00:00:01');

        duration = const Duration(milliseconds: -1).format();
        expect(duration, '-00:00:00');
      });
    });
  });

  group('Object? extensions tests', () {
    group('asString() tests', () {
      test('Return string for string input', () {
        const Object? value = 'input';
        expect(value.asString(), 'input');
      });

      test('Return null for non-string input', () {
        const Object? value = 12;
        expect(value.asString(), null);
      });
    });

    group('asInt() tests', () {
      test('Return int for int input', () {
        const Object? value = 12;
        expect(value.asInt(), 12);
      });

      test('Return int from num input', () {
        const Object? value = 12.9;
        expect(value.asInt(), 12);
      });

      test('Return int from string input', () {
        const Object? value = '42';
        expect(value.asInt(), 42);
      });

      test('Return null for invalid string', () {
        const Object? value = '42a';
        expect(value.asInt(), null);
      });

      test('Return null for non-numeric type', () {
        const Object? value = true;
        expect(value.asInt(), null);
      });
    });

    group('asDouble() tests', () {
      test('Return double for double input', () {
        const Object? value = 12.5;
        expect(value.asDouble(), 12.5);
      });

      test('Return double from num input', () {
        const Object? value = 12;
        expect(value.asDouble(), 12.0);
      });

      test('Return double from string input', () {
        const Object? value = '12.75';
        expect(value.asDouble(), 12.75);
      });

      test('Return null for invalid string', () {
        const Object? value = '12.7a';
        expect(value.asDouble(), null);
      });
    });

    group('asBool() tests', () {
      test('Return bool for bool input', () {
        const Object? value = false;
        expect(value.asBool(), false);
      });

      test('Return true for "true" string', () {
        const Object? value = 'true';
        expect(value.asBool(), true);
      });

      test('Return false for "false" string', () {
        const Object? value = 'false';
        expect(value.asBool(), false);
      });

      test('Return bool for mixed case strings', () {
        const Object? value = 'TrUe';
        expect(value.asBool(), true);
      });

      test('Return null for non-bool string', () {
        const Object? value = 'yes';
        expect(value.asBool(), null);
      });
    });

    group('asMap() tests', () {
      test('Return map for Map<String, Object?> input', () {
        final Object? value = <String, Object?>{'a': 1, 'b': 'c'};
        expect(value.asMap(), {'a': 1, 'b': 'c'});
      });

      test('Return map for Map<String, dynamic> input', () {
        final Object? value = <String, dynamic>{'a': 1, 'b': 'c'};
        expect(value.asMap(), {'a': 1, 'b': 'c'});
      });

      test('Return map for dynamic map with string keys', () {
        final Object? value = <dynamic, dynamic>{'a': 1, 'b': 'c'};
        expect(value.asMap(), {'a': 1, 'b': 'c'});
      });

      test('Preserve nulls for Map<String, dynamic> input', () {
        final Object? value = <String, dynamic>{'a': null, 'b': 2};
        expect(value.asMap(), {'a': null, 'b': 2});
      });

      test('Return null for non-string keys', () {
        final Object? value = <int, dynamic>{1: 'a', 2: 'b'};
        expect(value.asMap(), null);
      });

      test('Allow nested values without conversion', () {
        final Object? value = <String, dynamic>{
          'a': <String, dynamic>{'b': 1},
          'c': [1, 2, 3],
        };
        expect(value.asMap(), {
          'a': {'b': 1},
          'c': [1, 2, 3],
        });
      });

      test('Return null for non-map input', () {
        final Object? value = ['a', 'b'];
        expect(value.asMap(), null);
      });
    });

    group('asStringList() tests', () {
      test('Return list of strings from list input', () {
        final Object? value = ['a', 'b'];
        expect(value.asStringList(), ['a', 'b']);
      });

      test('Return only strings from mixed list', () {
        final Object? value = ['a', 2, 'b', true];
        expect(value.asStringList(), ['a', 'b']);
      });

      test('Skip nested lists and nulls', () {
        final Object? value = [
          'a',
          null,
          ['b'],
          'c',
        ];
        expect(value.asStringList(), ['a', 'c']);
      });

      test('Return null for non-list input', () {
        final Object? value = {'a': 'b'};
        expect(value.asStringList(), null);
      });
    });
  });
}
