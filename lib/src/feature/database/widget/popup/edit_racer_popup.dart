import 'package:dropdown_search/dropdown_search.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/common/widget/cancel_ok_buttons.dart';
import 'package:entime/src/common/widget/expanded_alert_dialog.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../logic/validators.dart';

Future<void> editRacerPopup({
  required BuildContext context,
  required ParticipantAtStart participantAtStart,
  required List<Rider> riders,
  required List<String?> categories,
}) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => EditRacerPopup(
      item: participantAtStart,
      riders: riders,
      categories: categories,
    ),
  );
}

class EditRacerPopup extends StatefulWidget {
  const EditRacerPopup({
    required this.item,
    required this.riders,
    required this.categories,
    super.key,
  });

  final ParticipantAtStart item;
  final List<Rider> riders;
  final List<String?> categories;

  @override
  State<EditRacerPopup> createState() => _EditRacerPopupState();
}

class _EditRacerPopupState extends State<EditRacerPopup> {
  final formKey = GlobalKey<FormState>();
  final categoryDropdownKey = GlobalKey<DropdownSearchState<String?>>();
  final riderDropdownKey = GlobalKey<DropdownSearchState<Rider>>();
  final teamDropdownKey = GlobalKey<DropdownSearchState<String?>>();
  final cityDropdownKey = GlobalKey<DropdownSearchState<String?>>();
  final nicknameController = TextEditingController();
  final birthdayController = TextEditingController();
  final teamController = TextEditingController();
  final cityController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final commentController = TextEditingController();
  final riders = <Rider>[];
  final categories = <String?>[];
  late final List<String?> teams;
  late final List<String?> cities;

  @override
  void initState() {
    riders.addAll(widget.riders);
    teams = riders
        .map((e) {
          if (e.team.isNotNullOrEmpty) {
            return e.team;
          }
        })
        .toSet()
        .toList()
      ..remove(null);
    cities = riders
        .map((e) {
          if (e.city.isNotNullOrEmpty) {
            return e.city;
          }
        })
        .toSet()
        .toList()
      ..remove(null);
    categories.addAll(widget.categories);
    nicknameController.text = widget.item.nickname ?? '';
    birthdayController.text = widget.item.birthday ?? '';
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
            DropdownSearch<String?>(
              key: categoryDropdownKey,
              selectedItem: widget.item.category,
              items: (f, cs) => categories,
              compareFn: (item1, item2) => item1 == item2,
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  labelText: Localization.current.I18nDatabase_category,
                ),
              ),
              // ToDo: потом заменить на PopupProps.autocomplete
              // Но пока сыпет ошибку если жать бекспейс при пустом поле
              // И не срабатывает валидатор
              popupProps: PopupProps.menu(
                showSearchBox: true,
                fit: FlexFit.loose,
                searchDelay: Duration.zero,
                emptyBuilder: (context, query) {
                  return ListTile(
                    title: Text(Localization.current.I18nDatabase_newCategory),
                    trailing: TextButton(
                      onPressed: () {
                        categoryDropdownKey.currentState!
                            .changeSelectedItem(query);
                        categoryDropdownKey.currentState!.closeDropDownSearch();
                        setState(() {
                          categories.insert(0, query);
                        });
                      },
                      child: Text(Localization.current.I18nCore_yes),
                    ),
                  );
                },
              ),
            ),
            DropdownSearch<Rider>(
              key: riderDropdownKey,
              selectedItem:
                  riders.firstWhere((rider) => rider.id == widget.item.riderId),
              items: (f, cs) => riders,
              itemAsString: (value) => value.name,
              compareFn: (item1, item2) => item1.id == item2.id,
              // При выборе райдера из существующего списка, обновляем нижеследующие поля
              onChanged: (value) {
                nicknameController.text = value?.nickname ?? '';
                birthdayController.text = value?.birthday ?? '';
                teamDropdownKey.currentState!.changeSelectedItem(value?.team);
                cityDropdownKey.currentState!.changeSelectedItem(value?.city);
                emailController.text = value?.email ?? '';
                phoneController.text = value?.phone ?? '';
                commentController.text = value?.comment ?? '';
              },
              validator: validateRider,
              autoValidateMode: AutovalidateMode.always,
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  labelText: Localization.current.I18nDatabase_name,
                ),
              ),
              popupProps: PopupProps.menu(
                showSearchBox: true,
                fit: FlexFit.loose,
                searchDelay: Duration.zero,
                emptyBuilder: (context, query) {
                  return ListTile(
                    title: Text(Localization.current.I18nDatabase_newRider),
                    trailing: TextButton(
                      onPressed: () {
                        final rider =
                            Rider(id: -1, name: query, isDeleted: false);
                        riderDropdownKey.currentState!
                            .changeSelectedItem(rider);
                        riderDropdownKey.currentState!.closeDropDownSearch();
                        setState(() {
                          riders.insert(0, rider);
                        });
                      },
                      child: Text(Localization.current.I18nCore_yes),
                    ),
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),

            /// Команда
            DropdownSearch<String?>(
              key: teamDropdownKey,
              selectedItem: widget.item.team,
              items: (f, cs) => teams,
              compareFn: (item1, item2) => item1 == item2,
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  labelText: Localization.current.I18nDatabase_team,
                ),
              ),
              popupProps: PopupProps.menu(
                showSearchBox: true,
                fit: FlexFit.loose,
                searchDelay: Duration.zero,
                searchFieldProps: TextFieldProps(controller: teamController),
                emptyBuilder: (context, query) {
                  return ListTile(
                    title: Text(teamController.text),
                    onTap: () {
                      teamDropdownKey.currentState!.changeSelectedItem(query);
                      teamDropdownKey.currentState!.closeDropDownSearch();
                      teamController.text = '';
                      setState(() {
                        teams.insert(0, query);
                      });
                    },
                  );
                },
              ),
            ),

            /// Город
            DropdownSearch<String?>(
              key: cityDropdownKey,
              selectedItem: widget.item.city,
              items: (f, cs) => cities,
              compareFn: (item1, item2) => item1 == item2,
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  labelText: Localization.current.I18nDatabase_city,
                ),
              ),
              validator: validateCity,
              autoValidateMode: AutovalidateMode.always,
              popupProps: PopupProps.menu(
                showSearchBox: true,
                fit: FlexFit.loose,
                searchDelay: Duration.zero,
                emptyBuilder: (context, query) {
                  return ListTile(
                    title: Text(cityController.text),
                    onTap: () {
                      cityDropdownKey.currentState!.changeSelectedItem(query);
                      cityDropdownKey.currentState!.closeDropDownSearch();
                      cityController.text = '';
                      setState(() {
                        cities.insert(0, query);
                      });
                    },
                  );
                },
              ),
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
            final rider = riderDropdownKey.currentState!.getSelectedItem!;
            final category = categoryDropdownKey.currentState!.getSelectedItem;
            context.read<DatabaseBloc>().add(
                  DatabaseEvent.updateRacer(
                    riderId: rider.id,
                    participantId: widget.item.participantId,
                    category: category,
                    name: rider.name,
                    nickname: nicknameController.text,
                    birthday: birthdayController.text,
                    team: teamDropdownKey.currentState!.getSelectedItem,
                    city: cityDropdownKey.currentState!.getSelectedItem,
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
}
