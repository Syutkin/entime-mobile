import 'package:entime/src/common/utils/extensions.dart';
import 'package:test/test.dart';

void main() {
  group('String? tests', () {
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
        expect(
          str.toDateTime(),
          DateTime(now.year, now.month, now.day, 10, 10, 2),
        );
      });
      test('Time with milliseconds', () {
        const str = '10:10:02,123';
        final now = DateTime.now();
        expect(
          str.toDateTime(),
          DateTime(now.year, now.month, now.day, 10, 10, 2, 123),
        );
      });
      test('Short time', () {
        const str = '10:10';
        final now = DateTime.now();
        expect(
          str.toDateTime(),
          DateTime(now.year, now.month, now.day, 10, 10),
        );
      });
      test('Very short time', () {
        const str = '10';
        final now = DateTime.now();
        expect(
          str.toDateTime(),
          DateTime(now.year, now.month, now.day, 10),
        );
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
}
