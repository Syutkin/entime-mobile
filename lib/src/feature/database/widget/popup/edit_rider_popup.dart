part of '../riders_list_page.dart';

Future<void> editRiderPopup({
  required BuildContext context,
  required Rider rider,
  required List<String?> teams,
  required List<String?> cities,
}) async {
  return showDialog<void>(
    context: context,
    builder:
        (BuildContext context) =>
            EditRiderPopup(rider: rider, teams: teams, cities: cities),
  );
}

class EditRiderPopup extends StatefulWidget {
  const EditRiderPopup({
    required this.rider,
    required this.teams,
    required this.cities,
    super.key,
  });

  final Rider rider;
  final List<String?> teams;
  final List<String?> cities;

  @override
  State<EditRiderPopup> createState() => _EditRiderPopupState();
}

class _EditRiderPopupState extends State<EditRiderPopup> {
  final formKey = GlobalKey<FormState>();
  final riderDropdownKey = GlobalKey<DropdownSearchState<Rider>>();
  final teamDropdownKey = GlobalKey<DropdownSearchState<String?>>();
  final cityDropdownKey = GlobalKey<DropdownSearchState<String?>>();
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  final birthdayController = TextEditingController();
  final teamController = TextEditingController();
  final cityController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final commentController = TextEditingController();
  final riders = <Rider>[];
  // late final List<String?> teams;
  // late final List<String?> cities;

  @override
  void initState() {
    nameController.text = widget.rider.name;
    nicknameController.text = widget.rider.nickname ?? '';
    birthdayController.text = widget.rider.birthday ?? '';
    emailController.text = widget.rider.email ?? '';
    phoneController.text = widget.rider.phone ?? '';
    commentController.text = widget.rider.comment ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandedAlertDialog(
      scrollable: true,
      title: Text(Localization.current.I18nDatabase_editRider),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: nameController,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),

            /// Команда
            DropdownSearch<String?>(
              key: teamDropdownKey,
              selectedItem: widget.rider.team,
              items: (f, cs) => widget.teams,
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
                        widget.teams.insert(0, query);
                      });
                    },
                  );
                },
              ),
            ),

            /// Город
            DropdownSearch<String?>(
              key: cityDropdownKey,
              selectedItem: widget.rider.city,
              items: (f, cs) => widget.cities,
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
                        widget.cities.insert(0, query);
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
            // final rider = riderDropdownKey.currentState!.getSelectedItem!;
            context.read<DatabaseBloc>().add(
              DatabaseEvent.updateRider(
                riderId: widget.rider.id,
                name: nameController.text,
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
