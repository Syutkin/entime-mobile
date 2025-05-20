import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/logic/validators.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() {
    Localization.delegate.load(const Locale('ru'));
    initializeDateFormatting();
  });

  group('Validators tests', () {
    group('validateCorrection tests', () {
      test('Correction is null', () {
        String? correction;
        final validator = validateCorrection(correction);
        expect(validator, null);
      });
      test('Correction is empty', () {
        const correction = '';
        final validator = validateCorrection(correction);
        expect(validator, null);
      });
      test('Correct correction', () {
        const correction = '1234';
        final validator = validateCorrection(correction);
        expect(validator, null);
      });

      test('Incorrect correction', () {
        const correction = 'Incorrect correction';
        final validator = validateCorrection(correction);
        expect(validator, Localization.current.I18nStart_incorrectCorrection);
      });
    });

    group('validateStartTime tests', () {
      test('StartTime is null', () {
        String? startTime;
        final validator = validateStartTime(startTime);
        expect(validator, null);
      });
      test('StartTime is empty', () {
        const startTime = '';
        final validator = validateStartTime(startTime);
        expect(validator, null);
      });
      test('Correct StartTime', () {
        const startTime = '10:10:10,123';
        final validator = validateStartTime(startTime);
        expect(validator, null);
      });

      test('Incorrect StartTime', () {
        const startTime = 'Incorrect StartTime';
        final validator = validateStartTime(startTime);
        expect(validator, Localization.current.I18nStart_incorrectTime);
      });
    });

    group('validateDelay tests', () {
      test('Delay is null', () {
        String? delay;
        final validator = validateDelay(delay);
        expect(validator, Localization.current.I18nSettings_incorrectDelay);
      });
      test('Delay is empty', () {
        const delay = '';
        final validator = validateDelay(delay);
        expect(validator, Localization.current.I18nSettings_incorrectDelay);
      });
      test('Delay is negative', () {
        const delay = '-1';
        final validator = validateDelay(delay);
        expect(validator, Localization.current.I18nSettings_incorrectDelay);
      });
      test('Delay is zero', () {
        const delay = '0';
        final validator = validateDelay(delay);
        expect(validator, null);
      });
      test('Correct delay', () {
        const delay = '100';
        final validator = validateDelay(delay);
        expect(validator, null);
      });
      test('Incorrect delay', () {
        const delay = 'Incorrect delay';
        final validator = validateDelay(delay);
        expect(validator, Localization.current.I18nSettings_incorrectDelay);
      });
    });

    group('validateDelta tests', () {
      test('Delta is null', () {
        String? delta;
        final validator = validateDelta(delta);
        expect(validator, Localization.current.I18nSettings_incorrectStartDelta);
      });
      test('Delta is empty', () {
        const delta = '';
        final validator = validateDelta(delta);
        expect(validator, Localization.current.I18nSettings_incorrectStartDelta);
      });
      test('Delta is negative', () {
        const delta = '-1';
        final validator = validateDelta(delta);
        expect(validator, Localization.current.I18nSettings_incorrectStartDelta);
      });
      test('Delta is zero', () {
        const delta = '0';
        final validator = validateDelta(delta);
        expect(validator, null);
      });
      test('Correct delta', () {
        const delta = '100';
        final validator = validateDelta(delta);
        expect(validator, null);
      });
      test('Incorrect delta', () {
        const delta = 'Incorrect delay';
        final validator = validateDelta(delta);
        expect(validator, Localization.current.I18nSettings_incorrectStartDelta);
      });
    });

    group('validateRider tests', () {
      test('Rider is null', () {
        Rider? rider;
        final validator = validateRider(rider);
        expect(validator, Localization.current.I18nStart_emptyName);
      });
      test('Rider not null, with valid name', () {
        const rider = Rider(id: 1, name: 'name', isDeleted: false);
        final validator = validateRider(rider);
        expect(validator, null);
      });
    });

    group('validateName tests', () {
      test('Correct name, pass letters, digits, symbols: [.-_] and space', () {
        const name = 'NamE 9. -21 Фыва_0';
        expect(validateName(name), null);
      });

      test('Null name', () {
        String? name;
        expect(validateName(name), Localization.current.I18nStart_emptyName);
      });

      test('Empty name', () {
        expect(validateName(''), Localization.current.I18nStart_emptyName);
      });

      test('Some forbidden characters in name name', () {
        expect(validateName('sdf,sdf'), Localization.current.I18nStart_incorrectName);
        expect(validateName('sdf!s!f'), Localization.current.I18nStart_incorrectName);
        expect(validateName('sdf^sdf'), Localization.current.I18nStart_incorrectName);
        expect(validateName('s@f,sdf'), Localization.current.I18nStart_incorrectName);
        expect(validateName('sdfsd?f'), Localization.current.I18nStart_incorrectName);
      });
    });

    group('validateNickname tests', () {
      test('Correct nickname, pass letters, digits, symbols: [.-_] and space', () {
        const nickname = 'NamE 9. -21 Фыва_0';
        expect(validateNickname(nickname), null);
      });

      test('Nickname can be null', () {
        String? nickname;
        expect(validateNickname(nickname), null);
      });

      test('Nickname can be empty', () {
        expect(validateNickname(''), null);
      });

      test('Some forbidden characters in nickname', () {
        expect(validateNickname('sdf,sdf'), Localization.current.I18nStart_incorrectNickname);
        expect(validateNickname('sdf!s!f'), Localization.current.I18nStart_incorrectNickname);
        expect(validateNickname('sdf^sdf'), Localization.current.I18nStart_incorrectNickname);
        expect(validateNickname('s@f,sdf'), Localization.current.I18nStart_incorrectNickname);
        expect(validateNickname('sdfsd?f'), Localization.current.I18nStart_incorrectNickname);
      });
    });

    group('validateBirthday tests', () {
      test('Birthday can be null', () {
        String? birthday;
        expect(validateBirthday(birthday), null);
      });

      test('Birthday can be empty', () {
        expect(validateBirthday(''), null);
      });

      test('Correct age', () {
        expect(validateBirthday('1'), null);
        expect(validateBirthday('20'), null);
        expect(validateBirthday('149'), null);
      });

      test('Incorrect age', () {
        expect(validateBirthday('0'), Localization.current.I18nStart_incorrectAge);
        expect(validateBirthday('150'), Localization.current.I18nStart_incorrectAge);
        expect(validateBirthday('-1'), Localization.current.I18nStart_incorrectAge);
      });

      test('Correct birthday', () {
        expect(validateBirthday('1990-6-12'), null);
        expect(validateBirthday('1990/6/12'), null);
        expect(validateBirthday('1990 6 12'), null);
        expect(validateBirthday('12-11-1991'), null);
        expect(validateBirthday('12/11-1991'), null);
        expect(validateBirthday('12-11 1991'), null);
      });

      test('Incorrect birthday', () {
        expect(validateBirthday('0 13 3'), Localization.current.I18nStart_incorrectBirthday);
        expect(validateBirthday('0-13 32'), Localization.current.I18nStart_incorrectBirthday);
      });
    });

    group('validateCity tests', () {
      test('City can be null', () {
        String? city;
        expect(validateCity(city), null);
      });

      test('City can be empty', () {
        expect(validateCity(''), null);
      });

      test('Correct city name, pass letters, digits, symbols: [-_] and space', () {
        const city = 'NamE 9 -21 Фыва_0';
        expect(validateCity(city), null);
      });

      test('Some forbidden characters in city name', () {
        const city = 'NamE, 9 -21! Фыва_0';
        expect(validateCity(city), Localization.current.I18nStart_incorrectCity);
      });
    });

    group('validateEmail tests', () {
      test('Email can be null', () {
        String? email;
        expect(validateEmail(email), null);
      });

      test('Email can be empty', () {
        expect(validateEmail(''), null);
      });

      test('Correct email', () {
        const city = 'm.ai_l@mail.mail';
        expect(validateEmail(city), null);
      });

      test('Incorrect email', () {
        const city = 'mail!mail!mail.mail';
        expect(validateEmail(city), Localization.current.I18nStart_incorrectEmail);
      });
    });
    group('validateShift tests', () {
      test('Shift can be null', () {
        String? shift;
        expect(validateShift(shift), null);
      });

      test('Shift can be empty', () {
        expect(validateShift(''), null);
      });

      test('Incorrect shift', () {
        expect(validateShift('a'), Localization.current.I18nStart_incorrectShiftMinutes);
      });

      test('Incorrect range for shift', () {
        expect(validateShift('-121'), Localization.current.I18nStart_wrongRangeShiftMinutes);
        expect(validateShift('700'), Localization.current.I18nStart_wrongRangeShiftMinutes);
      });

      test('Correct shift', () {
        expect(validateShift('-10'), null);
        expect(validateShift('60'), null);
      });
    });
  });
}
