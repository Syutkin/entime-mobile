import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/header_widget.dart';
import '../../bluetooth/bluetooth.dart';
import '../../log/log.dart';
import '../../module_settings/module_settings.dart';
import '../../protocol/protocol.dart';
import 'select_file_screen.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreen();
}

class _InitScreen extends State<InitScreen> {
  @override
  Widget build(BuildContext context) => ListView(
        children: <Widget>[
          const _SelectProtocolWidget(),
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
        ],
      );

  Widget _selectBluetooth() =>
      BlocBuilder<BluetoothBloc, BluetoothConnectionState>(
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
            icon: const Icon(MdiIcons.formatListBulleted),
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
        .add(const SendMessage('{"Read": true}'));
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const ModuleSettingsInitScreen(),
      ),
    );
  }
}

class _DebugLogButton extends StatelessWidget {
  const _DebugLogButton({
    Key? key,
    required this.context,
  }) : super(key: key);

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
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          BlocProvider.of<LogBloc>(context).add(
            const LogAdd(
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
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) => TextButton(
        // _device = event.device;
        onPressed: () {
          // BlocProvider.of<BluetoothBloc>(context)
          //     .add(MessageReceived('B19:00:56#'));
          // showChangelogAtStartup(context, '0.3.2');

          BlocProvider.of<BluetoothBloc>(context).audioService.countdown();
        },
        child: const Text('Countdown Test'),
      );
}

class _DebugVoiceButton extends StatelessWidget {
  const _DebugVoiceButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          BlocProvider.of<BluetoothBloc>(context)
              .audioService
              .speak('Это тестовое сообщение');
        },
        child: const Text('Voice Test'),
      );
}

class _SelectProtocolWidget extends StatelessWidget {
  const _SelectProtocolWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ProtocolBloc, ProtocolState>(
        builder: (context, protocolState) => ListTile(
          onTap: () => routeToSelectFileScreen(context),
          leading: IconButton(
            icon: const Icon(MdiIcons.database),
            onPressed: () => routeToSelectFileScreen(context),
          ),
          title: Text(Localization.current.I18nInit_startProtocol),
          subtitle: protocolState is ProtocolSelectedState
              ? Text(basename(protocolState.databasePath))
              : Text(Localization.current.I18nInit_pressToSelect),
        ),
      );
}
