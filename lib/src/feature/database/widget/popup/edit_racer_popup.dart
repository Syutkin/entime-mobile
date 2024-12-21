import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/common/widget/cancel_ok_buttons.dart';
import 'package:entime/src/common/widget/expanded_alert_dialog.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';

Future<void> editRacerPopup({
  required BuildContext context,
  required ParticipantAtStart participantAtStart,
}) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => EditRacerPopup(
      item: participantAtStart,
    ),
  );
}

// category
// name
// nickname
// birthday
// team
// city
// email
// phone
// comment

class EditRacerPopup extends StatelessWidget {
  EditRacerPopup({required this.item, super.key});
  final ParticipantAtStart item;

  final formKey = GlobalKey<FormState>();

  final categoryController = TextEditingController();
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  final birthdayController = TextEditingController();
  final teamController = TextEditingController();
  final cityController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    categoryController.text = item.category ?? '';
    nameController.text = item.name;
    nicknameController.text = item.nickname ?? '';
    birthdayController.text = item.birthday ?? '';
    teamController.text = item.team ?? '';
    cityController.text = item.city ?? '';
    emailController.text = item.email ?? '';
    phoneController.text = item.phone ?? '';
    commentController.text = item.comment ?? '';

    return ExpandedAlertDialog(
      scrollable: true,
      title: Text(['№${item.number}', item.name].join(', ')),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              //ToDo: dropdown_search
              controller: categoryController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_category,
              ),
            ),
            // ToDo: dropdown_search
            // ToDo: выбор из существующих riders
            // Если выбрали - обновлять нижеследующие поля
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_name,
              ),
              validator: validateName,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            TextFormField(
              controller: nicknameController,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_nickname,
              ),
              validator: validateNickname,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            TextFormField(
              controller: birthdayController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_birthday,
              ),
              validator: validateBirthday,
              autovalidateMode: AutovalidateMode.onUnfocus,
            ),
            TextFormField(
              //ToDo: dropdown_search
              controller: teamController,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_team,
              ),
            ),
            TextFormField(
              //ToDo: dropdown_search
              controller: cityController,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_city,
              ),
              validator: validateCity,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_email,
              ),
              validator: validateEmail,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            // ToDo: https://pub.dev/packages/intl_phone_number_input
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_phone,
              ),
              // validator: validatePhone,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              // inputFormatters: phoneFormatter,
            ),
            TextFormField(
              controller: commentController,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_comment,
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
      actions: cancelOkButtons(
        context: context,
        onCancelPressed: () {
          Navigator.of(context).pop();
        },
        onOkPressed: () {
          if (formKey.currentState!.validate()) {
            context.read<DatabaseBloc>().add(
                  DatabaseEvent.updateRacer(
                    riderId: item.riderId,
                    participantId: item.participantId,
                    category: categoryController.text,
                    name: nameController.text,
                    nickname: nicknameController.text,
                    birthday: birthdayController.text,
                    team: teamController.text,
                    city: cityController.text,
                    email: emailController.text,
                    phone: phoneController.text,
                    comment: commentController.text,
                  ),
                );
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }

  String? validateName(String? name) {
    if (name.isNullOrEmpty) {
      return Localization.current.I18nStart_emptyName;
    }
    if (RegExp(r'^[ a-zA-Zа-яёА-ЯЁ0-9._-]+$', caseSensitive: false)
        .hasMatch(name!)) {
      return null;
    } else {
      return Localization.current.I18nStart_incorrectName;
    }
  }

  // ToDo:
  String? validateNickname(String? name) {
    return null;
  }

  // ToDo:
  String? validateBirthday(String? name) {
    return null;
  }

  // ToDo:
  String? validateCity(String? name) {
    return null;
  }

  // ToDo:
  String? validateEmail(String? name) {
    return null;
  }
}
