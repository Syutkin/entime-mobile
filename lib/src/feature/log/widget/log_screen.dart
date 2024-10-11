import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/helper.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../log.dart';

class LogScreen extends StatelessWidget {
  final _scrollController = ScrollController();

  LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LogBloc>(context).add(const LogEvent.show());
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        BlocProvider.of<LogBloc>(context).add(const LogEvent.hide());
      },
      child: Scaffold(
        // ToDo: фильтры в аппбаре
        appBar: AppBar(
          title: Text(Localization.current.I18nLog_bluetoothInformation),
        ),
        body: BlocBuilder<LogBloc, LogState>(
          builder: (context, state) {
            return state.map(initial: (_) {
              return const CircularProgressIndicator();
            }, initialized: (state) {
              if (state.log != null) {
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
                                  source: item.source.name,
                                  direction: item.direction.name,
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
            });
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
    required this.source,
    required this.direction,
  });

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
    required this.level,
  });

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
      default:
        return Icon(MdiIcons.closeCircleOutline);
    }
  }
}
