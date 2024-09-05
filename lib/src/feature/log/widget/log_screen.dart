import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/helper.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../bloc/log_bloc.dart';

class LogScreen extends StatelessWidget {
  final _scrollController = ScrollController();

  LogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LogBloc>(context).add(const ShowLog());
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<LogBloc>(context).add(const HideLog());
        return true;
      },
      child: Scaffold(
        // ToDo: фильтры в аппбаре
        appBar: AppBar(
          title: Text(Localization.current.I18nLog_bluetoothInformation),
        ),
        body: BlocBuilder<LogBloc, LogState>(
          builder: (context, state) {
            if (state is LogOpen && state.log != null) {
              // скролл на последнюю запись
              SchedulerBinding.instance.addPostFrameCallback((_) {
                scrollToEnd(_scrollController);
              });
              return Scrollbar(
                // ToDo: при нажатии показывать всю инфу в попапе
                // child: ListView.separated(
                child: ListView.builder(
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemCount: state.log!.length,
                  itemBuilder: (context, index) {
                    final item = state.log![index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 10,
                            child: Align(
                              child: _LogLevelIcon(level: item.level),
                            ),
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
                              child: Text(item.rawData),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  // separatorBuilder: (BuildContext context, int index) =>
                  //     const Divider(
                  //   indent: 10,
                  //   endIndent: 10,
                  //   thickness: 2,
                  // ),
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
        persistentFooterButtons:
            !kReleaseMode ? _getDebugButtons(context) : null,
      ),
    );
  }

  List<Widget> _getDebugButtons(BuildContext context) => <Widget>[
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () async {
                BlocProvider.of<BluetoothBloc>(context).add(
                  const BluetoothEvent.messageReceived(
                    message: 'F12:12:12,121#',
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
  const _LogSourceIcon({
    Key? key,
    required this.source,
    required this.direction,
  }) : super(key: key);

  final String source;
  final String? direction;

  @override
  Widget build(BuildContext context) {
    switch (source) {
      case 'Bluetooth':
        switch (direction) {
          case 'In':
            return Icon(MdiIcons.bluetoothTransfer);
          case 'Out':
            return Icon(MdiIcons.bluetoothTransfer);
          case 'Undefined':
            return Icon(MdiIcons.bluetooth);
          default:
            return Icon(MdiIcons.bluetooth);
        }
      case 'Other':
        return Icon(MdiIcons.cloudPrintOutline);
      case 'Unknown':
        return const Icon(Icons.help_outline);
      default:
        return const Icon(Icons.help_outline);
    }
  }
}

class _LogLevelIcon extends StatelessWidget {
  const _LogLevelIcon({
    Key? key,
    required this.level,
  }) : super(key: key);

  final String level;

  @override
  Widget build(BuildContext context) {
    switch (level) {
      case 'Error':
        return Icon(MdiIcons.alertOctagon);
      case 'Warning':
        return const Icon(Icons.warning);
      case 'Information':
        return const Icon(Icons.info_outline);
      case 'Debug':
        return Icon(MdiIcons.debugStepInto);
      case 'Verbose':
        return const Icon(Icons.circle_notifications);
      default:
        return Icon(MdiIcons.closeCircleOutline);
    }
  }
}
