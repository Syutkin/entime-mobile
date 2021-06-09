import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';

import '../blocs/blocs.dart';
import '../models/models.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';
import '../utils/helper.dart';

class InitScreen extends StatefulWidget {
  InitScreen({
    Key? key,
  }) : super(key: key);

  @override
  _InitScreen createState() => _InitScreen();
}

class _InitScreen extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: <Widget>[
        _selectProtocol(),
        _selectBluetooth(),
        !kReleaseMode ? Header(text: 'Debug') : Container(width: 0, height: 0),
        !kReleaseMode
            ? _debugAddLogButton(context)
            : Container(width: 0, height: 0),
        !kReleaseMode
            ? _debugLogButton(context)
            : Container(width: 0, height: 0),
        !kReleaseMode
            ? _debugTestButton(context)
            : Container(width: 0, height: 0),
        !kReleaseMode
            ? _debugBleTestButton(context)
            : Container(width: 0, height: 0),
      ]),
    );
  }

  Widget _selectProtocol() {
    final Widget title = Text('Стартовый протокол');
    return BlocBuilder<ProtocolBloc, ProtocolState>(
        builder: (context, protocolState) {
      return ListTile(
        onTap: () => RouteToSelectFileScreen(context),
        leading: IconButton(
          icon: const Icon(MdiIcons.database),
          onPressed: () => RouteToSelectFileScreen(context),
        ),
        title: title,
        subtitle: protocolState is ProtocolSelectedState
            ? Text(basename(protocolState.databasePath))
            : Text('Нажмите чтобы выбрать'),
      );
    });
  }

  Widget _selectBluetooth() {
    final Widget title = Text('Bluetooth модуль');
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
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
    BlocProvider.of<BluetoothBloc>(context).add(SendMessage('{"Read": true}'));
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return ModuleSettingsInitScreen(
            //moduleSettings: moduleSettings,
            );
      }),
    );
  }

  Widget _debugLogButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return LogScreen(
                //moduleSettings: moduleSettings,
                );
          }));
        },
        child: Text('Show Log'));
  }

  Widget _debugAddLogButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          BlocProvider.of<LogBloc>(context).add(LogAdd(
            level: LogLevel.Error,
            source: LogSource.Bluetooth,
            rawData: 'rawData',
            direction: LogSourceDirection.In,
          ));
        },
        child: Text('Add Log'));
  }

  Widget _debugTestButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          // BlocProvider.of<BluetoothBloc>(context)
          //     .add(MessageReceived('B19:00:56#'));
          // showChangelogAtStartup(context, '0.3.2');
          BlocProvider.of<AudioBloc>(context).add(Countdown());
        },
        child: Text('Voice Test'));
  }

  Widget _debugBleTestButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          selectBleDevice(context);
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //   return SelectBleDeviceScreen();
          // }));

          // SelectBleDeviceScreen();
        },
        child: Text('BLE Scanner'));
  }
}
