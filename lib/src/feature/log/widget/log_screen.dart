import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../log.dart';

class LogScreen extends StatelessWidget {
  LogScreen({super.key});

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ToDo: фильтры в аппбаре
      appBar: AppBar(
        title: Text(Localization.current.I18nLog_bluetoothInformation),
      ),
      body: BlocBuilder<LogBloc, LogState>(
        builder: (context, state) {
          final log = state.log;
          return Scrollbar(
            // ToDo: при нажатии показывать всю инфу в попапе
            child: ListView.builder(
              controller: _scrollController,
              // shrinkWrap: true,
              itemCount: log.length,
              itemBuilder: (context, index) {
                final item = state.log[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 10,
                        child: Align(child: _LogLevelIcon(level: item.level)),
                      ),
                      Flexible(
                        flex: 10,
                        child: Align(
                          child: _LogSourceIcon(
                            source: item.source,
                            direction: item.direction,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 80,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(item.rawData ?? ''),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
      persistentFooterButtons: !kReleaseMode ? _getDebugButtons(context) : null,
    );
  }

  List<Widget> _getDebugButtons(BuildContext context) => <Widget>[
    Row(
      children: <Widget>[
        TextButton(
          onPressed: () async {
            final settingsBloc = context.read<SettingsBloc>();
            final stageId = settingsBloc.state.settings.stageId;
            BlocProvider.of<BluetoothBloc>(context).add(
              BluetoothEvent.messageReceived(
                message: 'F12:12:12,121#',
                stageId: stageId,
              ),
            );
          },
          child: const Icon(Icons.build),
        ),
      ],
    ),
  ];
}

class _LogSourceIcon extends StatelessWidget {
  const _LogSourceIcon({required this.source, required this.direction});

  final LogSource source;
  final LogSourceDirection? direction;

  @override
  Widget build(BuildContext context) {
    switch (source) {
      case LogSource.bluetooth:
        switch (direction) {
          case LogSourceDirection.input:
            return Icon(MdiIcons.bluetoothTransfer);
          case LogSourceDirection.output:
            return Icon(MdiIcons.bluetoothTransfer);
          case LogSourceDirection.undefined:
            return Icon(MdiIcons.bluetooth);
          case null:
            return Icon(MdiIcons.bluetooth);
        }
      case LogSource.other:
        return Icon(MdiIcons.cloudPrintOutline);
      case LogSource.unknown:
        return const Icon(Icons.help_outline);
      case LogSource.app:
        // ToDo: change icon
        return const Icon(Icons.settings_applications);
    }
  }
}

class _LogLevelIcon extends StatelessWidget {
  const _LogLevelIcon({required this.level});

  final LogLevel level;

  @override
  Widget build(BuildContext context) {
    switch (level) {
      case LogLevel.error:
        return Icon(MdiIcons.alertOctagon);
      case LogLevel.warning:
        return const Icon(Icons.warning);
      case LogLevel.information:
        return const Icon(Icons.info_outline);
      case LogLevel.debug:
        return Icon(MdiIcons.debugStepInto);
      case LogLevel.verbose:
        return const Icon(Icons.circle_notifications);
    }
  }
}
