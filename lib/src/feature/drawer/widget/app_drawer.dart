import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../app_info/app_info.dart';
import '../../help/widget/help_screen.dart';
import '../../home/widget/about_popup.dart';
import '../../settings/widget/settings_screen.dart';
import '../../update/widget/updater_widget.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
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
              contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
              title: Text(Localization.current.I18nDrawer_settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
              title: Text(Localization.current.I18nDrawer_help),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const HelpPage(),
                  ),
                );
              },
            ),
            const Updater(),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
              title: Text(Localization.current.I18nDrawer_about),
              onTap: () {
                showDialog<void>(
                  context: context,
                  builder: (context) => const AboutPopup(),
                );
              },
            ),
            BlocBuilder<AppInfoCubit, AppInfoProvider>(
              builder: (context, appInfo) => Padding(
                padding: const EdgeInsets.fromLTRB(0, 24, 24, 8),
                child: Text(
                  Localization.current.I18nDrawer_version(appInfo.version),
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      );
}
