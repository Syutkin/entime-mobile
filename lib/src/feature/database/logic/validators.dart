import 'package:any_date/any_date.dart';
import 'package:entime/src/common/utils/extensions.dart';

import '../../../common/localization/localization.dart';
import '../database.dart';

String? validateCorrection(String? value) {
  if (value == '' || value == null) {
    return null;
  }
  if (int.tryParse(value) == null) {
    return Localization.current.I18nStart_incorrectCorrection;
  }
  return null;
}

String? validateStartTime(String? value) {
  if (value == '' || value == null) {
    return null;
  }
  if (value.toDateTime() == null) {
    return Localization.current.I18nStart_incorrectTime;
  }
  return null;
}

String? validateDelay(String? delay) {
  if (delay == null) {
    return Localization.current.I18nSettings_incorrectDelay;
  }
  final integer = int.tryParse(delay);
  if (integer == null || integer < 0) {
    return Localization.current.I18nSettings_incorrectDelay;
  }
  return null;
}

String? validateDelta(String? delta) {
  if (delta == null) {
    return Localization.current.I18nSettings_incorrectStartDelta;
  }
  final integer = int.tryParse(delta);
  if (integer == null || integer < 0) {
    return Localization.current.I18nSettings_incorrectStartDelta;
  }
  return null;
}

String? validateRider(Rider? rider) {
  if (rider == null) {
    return Localization.current.I18nStart_emptyName;
  }
  return validateName(rider.name);
}

String? validateName(String? name) {
  if (name.isNullOrEmpty) {
    return Localization.current.I18nStart_emptyName;
  }
  if (RegExp(r'^[ a-zA-Zа-яёА-ЯЁ0-9._-]+$', caseSensitive: false).hasMatch(name!)) {
    return null;
  }
  return Localization.current.I18nStart_incorrectName;
}

String? validateNickname(String? nickname) {
  if (nickname.isNullOrEmpty) {
    return null;
  }
  if (RegExp(r'^[ a-zA-Zа-яёА-ЯЁ0-9._-]+$', caseSensitive: false).hasMatch(nickname!)) {
    return null;
  }
  return Localization.current.I18nStart_incorrectNickname;
}

String? validateBirthday(String? birthday) {
  if (birthday.isNullOrEmpty) {
    return null;
  }
  // Год рождения или возраст
  final year = int.tryParse(birthday!);
  if (year != null) {
    if (1900 < year && year < DateTime.now().year) {
      return null;
    }
    // Если не год, а возраст
    if (0 < year && year < 150) {
      return null;
    }
    return Localization.current.I18nStart_incorrectAge;
  } else {
    // Пробуем распарсить как дату
    // ToDo: очень много всего пропускает, но пока так
    final date = const AnyDate().tryParse(birthday);
    if (date != null && 1900 < date.year && date.year < DateTime.now().year) {
      return null;
    }
    return Localization.current.I18nStart_incorrectBirthday;
  }
}

String? validateCity(String? city) {
  if (city.isNullOrEmpty) {
    return null;
  }
  if (RegExp(r'^[ a-zA-Zа-яёА-ЯЁ0-9_-]+$', caseSensitive: false).hasMatch(city!)) {
    return null;
  }
  return Localization.current.I18nStart_incorrectCity;
}

String? validateEmail(String? email) {
  if (email.isNullOrEmpty) {
    return null;
  }
  if (email.isValidEmail) {
    return null;
  }
  return Localization.current.I18nStart_incorrectEmail;
}

String? validateShift(String? minutes) {
  if (minutes.isNullOrEmpty) {
    return null;
  }
  final result = int.tryParse(minutes!);
  if (result == null) {
    return Localization.current.I18nStart_incorrectShiftMinutes;
  } else {
    if (!(-120 <= result && result <= 600)) {
      return Localization.current.I18nStart_wrongRangeShiftMinutes;
    }
  }
  return null;
}
