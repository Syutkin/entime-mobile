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
      builder:
          (context, state) => ListTile(
            enabled: switch (state) {
              BluetoothBlocStateNotInitialized() => false,
              BluetoothBlocStateNotAvailable() => false,
              BluetoothBlocStateNotEnabled() => false,
              BluetoothBlocState() => true,
            },
            onTap: () => selectBluetoothDevice(context),
            leading: const BluetoothButton(),
            title: switch (state) {
              BluetoothBlocStateNotAvailable() => Text(Localization.current.I18nBluetooth_bluetoothNotAvailable),
              BluetoothBlocState() => Text(Localization.current.I18nInit_bluetoothModule),
            },
            subtitle: switch (state) {
              BluetoothBlocStateNotAvailable() => null,
              BluetoothBlocState() => Text(
                BlocProvider.of<BluetoothBloc>(context).bluetoothDevice?.name ??
                    Localization.current.I18nInit_pressToSelect,
              ),
            },
            trailing: switch (state) {
              BluetoothBlocStateConnected() => _bluetoothButtons(context),
              BluetoothBlocState() => null,
            },
          ),
    );
  }

  Widget _bluetoothButtons(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        icon: Icon(MdiIcons.formatListBulleted),
        onPressed: () async {
          await Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => LogScreen()));
        },
      ),
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () async {
          await _moduleSettings(context);
        },
      ),
    ],
  );

  Future<void> _moduleSettings(BuildContext context) async {
    BlocProvider.of<BluetoothBloc>(context).add(const BluetoothEvent.sendMessage(message: '{"Read": true}'));
    await Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => const ModuleSettingsInitScreen()));
  }
}
