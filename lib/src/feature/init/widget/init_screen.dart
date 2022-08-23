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
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      _selectProtocol(),
      _selectBluetooth(),
      !kReleaseMode
          ? const Header(text: 'Debug')
          : const SizedBox(width: 0, height: 0),
      !kReleaseMode
          ? _debugAddLogButton(context)
          : const SizedBox(width: 0, height: 0),
      !kReleaseMode
          ? _debugLogButton(context)
          : const SizedBox(width: 0, height: 0),
      !kReleaseMode
          ? _debugCountdownButton(context)
          : const SizedBox(width: 0, height: 0),
      !kReleaseMode
          ? _debugVoiceButton(context)
          : const SizedBox(width: 0, height: 0),
    ]);
  }

  Widget _selectProtocol() {
    final Widget title = Text(Localization.current.I18nInit_startProtocol);
    return BlocBuilder<ProtocolBloc, ProtocolState>(
        builder: (context, protocolState) {
      return ListTile(
        onTap: () => routeToSelectFileScreen(context),
        leading: IconButton(
          icon: const Icon(MdiIcons.database),
          onPressed: () => routeToSelectFileScreen(context),
        ),
        title: title,
        subtitle: protocolState is ProtocolSelectedState
            ? Text(basename(protocolState.databasePath))
            : Text(Localization.current.I18nInit_pressToSelect),
      );
    });
  }

  Widget _selectBluetooth() {
    final Widget title = Text(Localization.current.I18nInit_bluetoothModule);
    return BlocBuilder<BluetoothBloc, BluetoothConnectionState>(
        builder: (context, state) {
      return ListTile(
        onTap: () => selectBluetoothDevice(context),
        leading: BluetoothButton(
          context: context,
        ),
        title: title,
        subtitle: Text(
            BlocProvider.of<BluetoothBloc>(context).bluetoothDevice?.name ??
                Localization.current.I18nInit_pressToSelect),
        trailing: state is BluetoothConnectedState
            ? _bluetoothButtons(context)
            : null,
      );
    });
  }

  Widget _bluetoothButtons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(MdiIcons.formatListBulleted),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (context) {
              return LogScreen(
                  //moduleSettings: moduleSettings,
                  );
            }));
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
  }

  void _moduleSettings(BuildContext context) {
    BlocProvider.of<BluetoothBloc>(context)
        .add(const SendMessage('{"Read": true}'));
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (context) {
        return const ModuleSettingsInitScreen();
      }),
    );
  }

  Widget _debugLogButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute<void>(builder: (context) {
            return LogScreen(
                //moduleSettings: moduleSettings,
                );
          }));
        },
        child: const Text('Show Log'));
  }

  Widget _debugAddLogButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          BlocProvider.of<LogBloc>(context).add(const LogAdd(
            level: LogLevel.error,
            source: LogSource.bluetooth,
            rawData: 'rawData',
            direction: LogSourceDirection.input,
          ));
        },
        child: const Text('Add Log'));
  }

  Widget _debugCountdownButton(BuildContext context) {
    return TextButton(
        // _device = event.device;
        onPressed: () {
          // BlocProvider.of<BluetoothBloc>(context)
          //     .add(MessageReceived('B19:00:56#'));
          // showChangelogAtStartup(context, '0.3.2');

          BlocProvider.of<BluetoothBloc>(context).audioService.countdown();
        },
        child: const Text('Countdown Test'));
  }

  Widget _debugVoiceButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          BlocProvider.of<BluetoothBloc>(context).audioService.speak('Это тестовое сообщение');
        },
        child: const Text('Voice Test'));
  }
}
