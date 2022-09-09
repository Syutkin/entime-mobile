import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/helper.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../../../common/widget/sliver_sub_header_delegate.dart';
import '../../countdown/countdown.dart';
import '../../settings/settings.dart';
import '../bloc/database_bloc.dart';
import '../drift/app_database.dart';
import 'start_item_tile.dart';

part 'popup/add_racer_popup.dart';
part 'popup/edit_start_time_popup.dart';
part 'popup/overwrite_start_time_popup.dart';

class StartListPage extends StatefulWidget {
  final Stage stage;

  const StartListPage({
    required this.stage,
    Key? key,
  }) : super(key: key);

  @override
  State<StartListPage> createState() => _StartListPage();
}

class _StartListPage extends State<StartListPage> {
  final GlobalKey _stackKey = GlobalKey();
  final GlobalKey _countdownKey = GlobalKey();

  @override
  Widget build(BuildContext context) =>
      BlocListener<DatabaseBloc, DatabaseState>(
        listener: (context, state) {
          state.mapOrNull(
            initialized: (state) {
              // обновлять обратный отсчёт при любом изменении состояния DatabaseBloc
              // context
              //     .read<CountdownBloc>()
              //     .add(CountdownEvent.start(stageId: widget.stage.raceId));

              // Добавление нового стартового времени
              // Если стартовое время уже присвоено другому номеру
              final databaseBloc = context.read<DatabaseBloc>();
              state.notification?.mapOrNull(
                updateNumber: (notification) async {
                  String text = '';
                  for (final element
                      in notification.existedStartingParticipants) {
                    if (element.automaticStartTime == null &&
                        element.manualStartTime == null) {
                      text += Localization.current.I18nHome_equalStartTime(
                        notification.startTime,
                        element.number,
                        notification.number,
                      );
                    } else {
                      if (element.automaticStartTime != null) {
                        text += Localization.current
                            .I18nHome_updateAutomaticStartCorrection(
                          notification.number,
                          element.automaticStartTime!,
                        );
                      } else if (element.manualStartTime != null) {
                        text += Localization.current
                            .I18nHome_updateAutomaticStartCorrection(
                          notification.number,
                          element.manualStartTime!,
                        );
                      } else {
                        text +=
                            Localization.current.I18nHome_errorAddParticipant(
                          MaterialLocalizations.of(context).cancelButtonLabel,
                        );
                      }
                    }
                  }
                  final update = await overwriteStartTimePopup(
                    context: context,
                    text: text,
                  );

                  if (update ?? false) {
                    databaseBloc.add(
                      DatabaseEvent.addStartNumber(
                        stage: widget.stage,
                        number: notification.number,
                        startTime: notification.startTime,
                        forceAdd: true,
                      ),
                    );
                  }
                },
              );
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.stage.name),
            actions: [
              PopupMenuButton<int>(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => <PopupMenuEntry<int>>[
                  PopupMenuItem<int>(
                    value: 1,
                    child: ListTile(
                      leading: const Icon(Icons.add),
                      title: Text(Localization.current.I18nHome_addRacer),
                    ),
                  ),
                ],
                onSelected: (value) async {
                  switch (value) {
                    case 1:
                      await addRacerPopup(
                        context: context,
                        stage: widget.stage,
                      );
                      break;
                  }
                },
              ),
            ],
          ),
          body: BlocBuilder<DatabaseBloc, DatabaseState>(
            builder: (context, state) => state.map(
              initial: (state) => const SizedBox.shrink(),
              //   return Column(
              //     children: [
              //       CreateOrSelectProtocolWidget(
              //         onTap: () => routeToSelectFileScreen(context),
              //       ),
              //     ],
              //   );
              initialized: (state) => Stack(
                key: _stackKey,
                children: [
                  _startList(state.participants),
                  _showCountdown(),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: BlocBuilder<SettingsBloc, SettingsState>(
            buildWhen: (previous, current) =>
                previous.settings.startFab != current.settings.startFab,
            builder: (
              context,
              settingsState,
            ) {
              if (settingsState.settings.startFab) {
                return SizedBox(
                  height: settingsState.settings.startFabSize,
                  width: settingsState.settings.startFabSize,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () => _addManualStartTime(context),
                      child: const Icon(MdiIcons.handBackLeft),
                    ),
                  ),
                );
              } else {
                return const SizedBox(width: 0, height: 0);
              }
            },
          ),
          // persistentFooterButtons:
          //     kReleaseMode ? null : _persistentFooterButtons(context),
        ),
      );

  // List<Widget> _persistentFooterButtons(BuildContext context) => <Widget>[
  //       TextButton(
  //         onPressed: () {
  //           BlocProvider.of<BluetoothBloc>(context).add(
  //             BluetoothEvent.messageReceived(message:  'V${DateFormat('HH:mm:ss').format(DateTime.now())}#',
  //             ),
  //           );
  //         },
  //         child: const Icon(Icons.record_voice_over_rounded),
  //       ),
  //       TextButton(
  //         onPressed: () {
  //           BlocProvider.of<BluetoothBloc>(context).add(
  //             BluetoothEvent.messageReceived(message:  'B${DateFormat('HH:mm:ss').format(DateTime.now())}#',
  //             ),
  //           );
  //         },
  //         child: const Icon(Icons.volume_up),
  //       ),
  //       // TextButton(
  //       //   onPressed: () async {
  //       //     BlocProvider.of<ProtocolBloc>(context)
  //       //         .add(const ProtocolClearStartResultsDebug());
  //       //   },
  //       //   child: const Icon(Icons.clear_all),
  //       // ),
  //       TextButton(
  //         onPressed: () {
  //           final AutomaticStart automaticStart = AutomaticStart(
  //             DateFormat('HH:mm:ss,S').format(DateTime.now()),
  //             1234,
  //             DateTime.now(),
  //           );
  //           BlocProvider.of<ProtocolBloc>(context).add(
  //             ProtocolUpdateAutomaticCorrection(
  //               automaticStart: automaticStart,
  //             ),
  //           );
  //         },
  //         child: const Icon(Icons.play_arrow),
  //       ),
  //       TextButton(
  //         onPressed: () {
  //           BlocProvider.of<ProtocolBloc>(context).add(
  //             const ProtocolEvent.addStartNumber(
  //               startTime: StartTime('15:31:00', 111),
  //               forceAdd: true,
  //             ),
  //           );
  //           // final AutomaticStart automaticStart = AutomaticStart(
  //           //   DateFormat('HH:mm:ss,S').format(DateTime.now()),
  //           //   1234,
  //           //   DateTime.now(),
  //           // );
  //           // BlocProvider.of<ProtocolBloc>(context).add(
  //           //   ProtocolEvent.updateAutomaticCorrection(
  //           //     forceUpdate: true,
  //           //     automaticStart: AutomaticStart(
  //           //       '15:31:00',
  //           //       Random().nextInt(9999) - 5000,
  //           //       DateTime.now(),
  //           //     ),
  //           //   ),
  //           // );
  //           final int cor = Random().nextInt(9999) - 5000;
  //           BlocProvider.of<BluetoothBloc>(context).add(
  //             BluetoothEvent.messageReceived(
  //               message: r'$' '15:31:01,121;$cor#',
  //             ),
  //           );
  //         },
  //         child: const Icon(Icons.bluetooth),
  //       ),
  //     ];

  Widget _startList(List<GetParticipantsAtStartResult> startList) =>
      CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverSubHeaderDelegate(
              minHeight: 56,
              maxHeight: 56,
              child: _SliverStartSubHeader(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: startList.length,
              (context, index) {
                final item = startList[index];
                return BlocBuilder<CountdownBloc, CountdownState>(
                  builder: (context, countdownState) {
                    final isHighlighted =
                        item.startTime == _activeStartTime(countdownState);
                    // print('item.startTime: ${item.startTime}, _activeStartTime(countdownState): ${_activeStartTime(countdownState)}');
                    return BlocBuilder<SettingsBloc, SettingsState>(
                      builder: (
                        context,
                        settingsState,
                      ) =>
                          StartItemTile(
                        item: item,
                        onTap: () async {
                          await editStartTime(context, item);
                        },
                        //ToDo:
                        // onDismissed: (direction) {
                        //   BlocProvider.of<ProtocolBloc>(context)
                        //       .add(ProtocolSetDNS(number: item.number));
                        // },
                        isHighlighted: isHighlighted,
                        countdown:
                            settingsState.settings.countdownAtStartTime &&
                                    isHighlighted
                                ? _countdownFromState(countdownState)
                                : null,
                      ),
                    );
                  },
                );
              },
              // childCount: startList.length,
            ),
          ),
        ],
      );

  Widget _showCountdown() => BlocBuilder<SettingsBloc, SettingsState>(
        //ребилдим, только если изменяются настройки, касаемые обратного отсчёта в круге
        buildWhen: (previous, current) =>
            previous.settings.countdown != current.settings.countdown ||
            previous.settings.countdownTop != current.settings.countdownTop ||
            previous.settings.countdownLeft != current.settings.countdownLeft ||
            previous.settings.countdownSize != current.settings.countdownSize,
        builder: (
          context,
          settingsState,
        ) {
          if (settingsState.settings.countdown) {
            return Positioned(
              left: settingsState.settings.countdownLeft,
              top: settingsState.settings.countdownTop,
              child: BlocBuilder<CountdownBloc, CountdownState>(
                builder: (context, state) => state.maybeMap(
                  working: (state) {
                    final countdownWidget = CountdownWidget(
                      key: _countdownKey,
                      size: settingsState.settings.countdownSize,
                      text: state.text,
                    );
                    return Draggable(
                      feedback: countdownWidget,
                      childWhenDragging: const SizedBox(width: 0, height: 0),
                      onDragEnd: (dragDetails) =>
                          _placeCountdownWidget(dragDetails),
                      child: countdownWidget,
                    );
                  },
                  orElse: () {
                    final countdownWidget = CountdownWidget(
                      key: _countdownKey,
                      size: settingsState.settings.countdownSize,
                    );
                    return Draggable(
                      feedback: countdownWidget,
                      childWhenDragging: const SizedBox(width: 0, height: 0),
                      onDragEnd: (dragDetails) =>
                          _placeCountdownWidget(dragDetails),
                      child: countdownWidget,
                    );
                  },
                ),
              ),
            );
          } else {
            return const SizedBox(width: 0, height: 0);
          }
        },
      );

  void _placeCountdownWidget(DraggableDetails dragDetails) {
    final stackRenderBox = _getRenderBox(_stackKey);
    final stackOffset = stackRenderBox.localToGlobal(Offset.zero);
    final stackSize = stackRenderBox.size;
    final countdownRenderBox = _getRenderBox(_countdownKey);

    var dx = dragDetails.offset.dx;
    var dy = dragDetails.offset.dy - stackOffset.dy;

    if (dx < stackOffset.dx) {
      dx = stackOffset.dx;
    }
    if (dx > stackSize.width - countdownRenderBox.size.width) {
      dx = stackSize.width - countdownRenderBox.size.width;
    }
    if (dy < 0) {
      dy = 0;
    }
    if (dy > stackSize.height - countdownRenderBox.size.height) {
      dy = stackSize.height - countdownRenderBox.size.height;
    }

    final settingsBloc = context.read<SettingsBloc>();
    final settings = settingsBloc.state.settings;
    settingsBloc.add(
      SettingsEventUpdate(
        settings: settings.copyWith(
          countdownLeft: dx,
          countdownTop: dy,
        ),
      ),
    );
  }

  RenderBox _getRenderBox(GlobalKey key) =>
      key.currentContext!.findRenderObject() as RenderBox;

  Future<void> _addManualStartTime(BuildContext context) async {
    final time = DateTime.now();
    context.read<DatabaseBloc>().add(
          DatabaseEvent.updateManualStartTime(
            stageId: widget.stage.id!,
            time: time,
          ),
        );
  }

  String? _activeStartTime(CountdownState countdownState) {
    countdownState.mapOrNull(
      working: (state) => state.nextStartTime,
    );
    return null;
  }

  String? _countdownFromState(CountdownState countdownState) {
    countdownState.mapOrNull(
      working: (state) => state.text,
    );
    return null;
  }
}

class _SliverStartSubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.all(2),
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 20,
                child: Align(
                  child: Text(Localization.current.I18nStart_sliverNumber),
                ),
              ),
              Flexible(
                flex: 30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(Localization.current.I18nStart_sliverStart),
                ),
              ),
              Flexible(
                flex: 25,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Localization.current.I18nStart_sliverManualCorrection,
                  ),
                ),
              ),
              Flexible(
                flex: 25,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Localization.current.I18nStart_sliverAutomaticCorrection,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
