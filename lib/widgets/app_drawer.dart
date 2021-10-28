import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/screens.dart';
import 'package:entime/widgets/widgets.dart';
import 'package:entime/data_providers/app_info/app_info_provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Image.asset('assets/fraction_logo.png'),
          ),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24.0, 0.0, 8.0, 0.0),
            title: const Text('Настройки'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const SettingsScreen()));
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24.0, 0.0, 8.0, 0.0),
            title: const Text('Помощь'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const HelpPage()));
            },
          ),
          const Updater(),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24.0, 0.0, 8.0, 0.0),
            title: const Text('О программе'),
            onTap: () {
              showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return const AboutPopup();
                  });
            },
          ),
          BlocBuilder<AppInfoCubit, AppInfoProvider>(
            builder: (context, appInfo) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 24.0, 24.0, 8.0),
                child: Text(
                  'v${appInfo.version}',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.right,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
