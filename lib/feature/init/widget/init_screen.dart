import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';

import '../../../common/widget/header_widget.dart';
import '../../audio/bloc/audio_bloc.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../../bluetooth/widget/bluetooth_button.dart';
import '../../bluetooth/widget/select_bonded_device.dart';
import '../../log/bloc/log_bloc.dart';
import '../../log/model/log_level.dart';
import '../../log/model/log_source.dart';
import '../../log/model/log_source_direction.dart';
import '../../log/widget/log_screen.dart';
import '../../module_settings/widget/module_settings_screen.dart';
import '../../protocol/bloc/protocol_bloc.dart';
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
          ? _debugTestButton(context)
          : const SizedBox(width: 0, height: 0),
    ]);
  }

  Widget _selectProtocol() {
    const Widget title = Text('Стартовый протокол');
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
            : const Text('Нажмите чтобы выбрать'),
      );
    });
  }

  Widget _selectBluetooth() {
    const Widget title = Text('Bluetooth модуль');
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
                'Нажмите чтобы выбрать'),
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

  Widget _debugTestButton(BuildContext context) {
    return TextButton(
        // _device = event.device;
        onPressed: () {
          // BlocProvider.of<BluetoothBloc>(context)
          //     .add(MessageReceived('B19:00:56#'));
          // showChangelogAtStartup(context, '0.3.2');
          BlocProvider.of<AudioBloc>(context).add(Countdown());
        },
        child: const Text('Voice Test'));
  }
}
