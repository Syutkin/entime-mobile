import 'package:entime/src/common/utils/extensions.dart';

import '../../../common/localization/localization.dart';
import '../database.dart';

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
  if (RegExp(r'^[ a-zA-Zа-яёА-ЯЁ0-9._-]+$', caseSensitive: false)
      .hasMatch(name!)) {
    return null;
  }
  return Localization.current.I18nStart_incorrectName;
}

String? validateNickname(String? nickname) {
  if (nickname.isNullOrEmpty) {
    return null;
  }
  if (RegExp(r'^[ a-zA-Zа-яёА-ЯЁ0-9._-]+$', caseSensitive: false)
      .hasMatch(nickname!)) {
    return null;
  }
  return Localization.current.I18nStart_incorrectNickname;
}

String? validateBirthday(String? birthday) {
  if (birthday.isNullOrEmpty) {
    return null;
  }
  final date = DateTime.tryParse(birthday!);
  if (date != null && 1900 < date.year && date.year < DateTime.now().year) {
    return null;
  }
  final year = int.tryParse(birthday);
  if (year != null && 1900 < year && year < DateTime.now().year) {
    return null;
  }
  // Если не год/дата, а возраст
  if (year != null && 0 < year && year < 150) {
    return null;
  }
  return Localization.current.I18nStart_incorrectBirthday;
}

String? validateCity(String? city) {
  if (city.isNullOrEmpty) {
    return null;
  }
  if (RegExp(r'^[ a-zA-Zа-яёА-ЯЁ0-9._-]+$', caseSensitive: false)
      .hasMatch(city!)) {
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