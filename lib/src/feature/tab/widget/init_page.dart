import 'package:entime/src/feature/tab/widget/race_tile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../bluetooth/bluetooth.dart';
import '../../log/log.dart';
import '../../module_settings/module_settings.dart';
import 'debug_init_widgets.dart';

class InitPage extends StatefulWidget {
  const InitPage({
    super.key,
  });

  @override
  State<InitPage> createState() => _InitPage();
}

class _InitPage extends State<InitPage> {
  @override
  Widget build(BuildContext context) => ListView(
        children: <Widget>[
          const RaceTile(),
          _selectBluetooth(),
          if (!kReleaseMode) ...debugButtons(),
        ],
      );

  Widget _selectBluetooth() => BlocBuilder<BluetoothBloc, BluetoothBlocState>(
        builder: (context, state) => ListTile(
          onTap: () => selectBluetoothDevice(context),
          leading: const BluetoothButton(),
          title: Text(Localization.current.I18nInit_bluetoothModule),
          subtitle: Text(
            BlocProvider.of<BluetoothBloc>(context).bluetoothDevice?.name ??
                Localization.current.I18nInit_pressToSelect,
          ),
          trailing: state is BluetoothConnectedState
              ? _bluetoothButtons(context)
              : null,
        ),
      );

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




