import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../log/log.dart';
import '../../module_settings/module_settings.dart';
import '../bluetooth.dart';

class BluetoothTile extends StatelessWidget {
  const BluetoothTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BluetoothBloc, BluetoothBlocState>(
      builder: (context, state) => ListTile(
        enabled: state is! BluetoothNotEnabled,
        onTap: () => selectBluetoothDevice(context),
        leading: const BluetoothButton(),
        title: Text(Localization.current.I18nInit_bluetoothModule),
        subtitle: Text(
          BlocProvider.of<BluetoothBloc>(context).bluetoothDevice?.name ??
              Localization.current.I18nInit_pressToSelect,
        ),
        trailing: state is BluetoothConnected
            ? _bluetoothButtons(context)
            : null,
      ),
    );
  }

  Widget _bluetoothButtons(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(MdiIcons.formatListBulleted),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => LogScreen(
                      //moduleSettings: moduleSettings,
                      ),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              _moduleSettings(context);
            },
          ),
        ],
      );

  void _moduleSettings(BuildContext context) {
    BlocProvider.of<BluetoothBloc>(context)
        .add(const BluetoothEvent.sendMessage(message: '{"Read": true}'));
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const ModuleSettingsInitScreen(),
      ),
    );
  }
}