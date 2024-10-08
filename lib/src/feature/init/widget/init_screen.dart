import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/header_widget.dart';
import '../../bluetooth/bluetooth.dart';
import '../../database/bloc/database_bloc.dart';
import '../../database/widget/races_list_page.dart';
import '../../log/log.dart';
import '../../module_settings/module_settings.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({
    super.key,
  });

  @override
  State<InitScreen> createState() => _InitScreen();
}

class _InitScreen extends State<InitScreen> {
  @override
  Widget build(BuildContext context) => ListView(
        children: <Widget>[
          const _SelectRaceWidget(),
          _selectBluetooth(),
          !kReleaseMode
              ? const Header(text: 'Debug')
              : const SizedBox(width: 0, height: 0),
          !kReleaseMode
              ? _DebugAddLogButton(context: context)
              : const SizedBox(width: 0, height: 0),
          !kReleaseMode
              ? _DebugLogButton(context: context)
              : const SizedBox(width: 0, height: 0),
          !kReleaseMode
              ? _DebugCountdownButton(context: context)
              : const SizedBox(width: 0, height: 0),
          !kReleaseMode
              ? const _DebugVoiceButton()
              : const SizedBox(width: 0, height: 0),
          !kReleaseMode
              ? const _DebugNewDatabase()
              : const SizedBox(width: 0, height: 0),
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

class _DebugLogButton extends StatelessWidget {
  const _DebugLogButton({
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => LogScreen(
                  //moduleSettings: moduleSettings,
                  ),
            ),
          );
        },
        child: const Text('Show Log'),
      );
}

class _DebugAddLogButton extends StatelessWidget {
  const _DebugAddLogButton({
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          BlocProvider.of<LogBloc>(context).add(
            const LogEvent.add(
              level: LogLevel.error,
              source: LogSource.bluetooth,
              rawData: 'rawData',
              direction: LogSourceDirection.input,
            ),
          );
        },
        child: const Text('Add Log'),
      );
}

class _DebugCountdownButton extends StatelessWidget {
  const _DebugCountdownButton({
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) => TextButton(
        // _device = event.device;
        // ignore: no-empty-block
        onPressed: () {
          // BlocProvider.of<BluetoothBloc>(context)
          //     .add(MessageReceived('B19:00:56#'));
          // showChangelogAtStartup(context, '0.3.2');

          // BlocProvider.of<BluetoothBloc>(context).audioService.countdown();
        },
        child: const Text('Countdown Test'),
      );
}

class _DebugVoiceButton extends StatelessWidget {
  const _DebugVoiceButton();

  @override
  Widget build(BuildContext context) => TextButton(
        // ignore: no-empty-block
        onPressed: () {
          // BlocProvider.of<BluetoothBloc>(context)
          //     .audioService
          //     .speak('Это тестовое сообщение');
        },
        child: const Text('Voice Test'),
      );
}

class _DebugNewDatabase extends StatelessWidget {
  const _DebugNewDatabase();

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => const RacesListPage(),
            ),
          );
        },
        child: const Text('New database'),
      );
}

class _SelectRaceWidget extends StatelessWidget {
  const _SelectRaceWidget();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, databaseState) => ListTile(
            //ToDo: select race
            // onTap: () => routeToSelectFileScreen(context),
            leading: IconButton(
              icon: Icon(MdiIcons.database),
              //ToDo: select race
              onPressed: () {},
              // onPressed: () => routeToSelectFileScreen(context),
            ),
            title: Text(Localization.current.I18nInit_startProtocol),
            subtitle: databaseState.map(
              initial: (_) {
                return Text(Localization.current.I18nInit_pressToSelect);
              },
              initialized: (state) {
                var race = state.race;
                var stage = state.stage;
                if (race == null) {
                  return Text(Localization.current.I18nInit_pressToSelect);
                } else {
                  if (stage == null) {
                    return Text(race.name);
                  } else {
                    return Text(stage.name);
                  }
                }
              },
            )),
      );
}
