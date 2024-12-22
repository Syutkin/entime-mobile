import 'package:dropdown_search/dropdown_search.dart';
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
  required List<Rider> riders,
}) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => EditRacerPopup(
      item: participantAtStart,
      riders: riders,
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

class EditRacerPopup extends StatefulWidget {
  const EditRacerPopup({required this.item, required this.riders, super.key});

  final ParticipantAtStart item;
  final List<Rider> riders;

  @override
  State<EditRacerPopup> createState() => _EditRacerPopupState();
}

class _EditRacerPopupState extends State<EditRacerPopup> {
  final formKey = GlobalKey<FormState>();

  final dropdownKey = GlobalKey<DropdownSearchState<Rider>>();

  final categoryController = TextEditingController();

  final nameController = TextEditingController();

  final nicknameController = TextEditingController();

  final birthdayController = TextEditingController();

  final teamController = TextEditingController();

  final cityController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  final commentController = TextEditingController();

  final riders = <Rider>[];

  @override
  void initState() {
    riders.addAll(widget.riders);
    categoryController.text = widget.item.category ?? '';
    nicknameController.text = widget.item.nickname ?? '';
    birthdayController.text = widget.item.birthday ?? '';
    teamController.text = widget.item.team ?? '';
    cityController.text = widget.item.city ?? '';
    emailController.text = widget.item.email ?? '';
    phoneController.text = widget.item.phone ?? '';
    commentController.text = widget.item.comment ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandedAlertDialog(
      scrollable: true,
      title: Text(['№${widget.item.number}', widget.item.name].join(', ')),
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
            DropdownSearch<Rider>(
              key: dropdownKey,
              selectedItem:
                  riders.firstWhere((rider) => rider.id == widget.item.riderId),
              items: (f, cs) => riders,
              itemAsString: (value) => value.name,
              compareFn: (item1, item2) => item1.id == item2.id,
              // При выборе райдера из существующего списка, обновляем нижеследующие поля
              //
              onSelected: (value) {
                nicknameController.text = value?.nickname ?? '';
                birthdayController.text = value?.birthday ?? '';
                teamController.text = value?.team ?? '';
                cityController.text = value?.city ?? '';
                emailController.text = value?.email ?? '';
                phoneController.text = value?.phone ?? '';
                commentController.text = value?.comment ?? '';
              },
              validator: validateRider,
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  labelText: Localization.current.I18nDatabase_name,
                ),
              ),
              popupProps: PopupProps.autocomplete(
                searchFieldProps: TextFieldProps(controller: nameController),
                fit: FlexFit.loose,
                searchDelay: Duration.zero,
                emptyBuilder: (context, query) {
                  return TextButton(
                    onPressed: () {
                      final rider =
                          Rider(id: -1, name: query, isDeleted: false);
                      dropdownKey.currentState!.changeSelectedItem(rider);
                      dropdownKey.currentState!.closeDropDownSearch();
                      setState(() {
                        riders.insert(0, rider);
                        // searchFieldController.text = '';
                      });
                    },
                    //ToDo: красивая кнопка
                    child: const Text('add and set as selected item'),
                  );
                },
              ),
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
            final rider = dropdownKey.currentState!.getSelectedItem!;
            context.read<DatabaseBloc>().add(
                  DatabaseEvent.updateRacer(
                    riderId: rider.id,
                    participantId: widget.item.participantId,
                    category: categoryController.text,
                    name: rider.name,
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

  //ToDo:
  String? validateRider(Rider? rider) {
    if (rider == null) {
      // ToDo: localization
      return 'error';
    } else {
      return validateName(rider.name);
    }
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
