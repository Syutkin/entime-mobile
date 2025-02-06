import 'dart:async';

import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/utils/extensions.dart';
import '../../../constants/date_time_formats.dart';
import '../../database/drift/app_database.dart';
import '../../settings/settings.dart';
import '../model/tick.dart';

class CountdownAtStart {
  CountdownAtStart({required this.database, required this.settingsProvider});
  final AppDatabase database;
  final ISettingsProvider settingsProvider;
  Timer? _timer;

  BehaviorSubject<Tick> ticks = BehaviorSubject();

  NextStartingParticipant? _nextStartingParticipant;
  bool _isFinished = false;

  @visibleForTesting
  DateTime? customTimeNow;

  Future<void> start(int stageId) async {
    //subscribe to changes at starts table
    database
        .getParticipantsAtStart(stageId: stageId)
        .watch()
        .listen((event) async {
      _isFinished = false;
      _nextStartingParticipant = await _getNextStartingParticipant(
        time: customTimeNow ?? DateTime.now(),
        stageId: stageId,
      );
    });

    _timer?.cancel();
    _nextStartingParticipant = await _getNextStartingParticipant(
      time: customTimeNow ?? DateTime.now(),
      stageId: stageId,
    );

    _isFinished = false;
    await _countdown(stageId: stageId);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      customTimeNow = customTimeNow?.add(const Duration(seconds: 1));
      _countdown(stageId: stageId);
    });
  }

  void stop() {
    _timer?.cancel();
  }

  Future<void> close() async {
    await ticks.close();
  }

  Future<void> _countdown({required int stageId}) async {
    final now = customTimeNow ?? DateTime.now();
    final second = now.second;
    final nextStartingParticipant = _nextStartingParticipant;
    if (nextStartingParticipant != null) {
      final nextStartTime = nextStartingParticipant.startTime.toDateTime();
      if (nextStartTime != null) {
        final text = _formatDuration(
          nextStartTime.difference(now),
        );
        if (nextStartTime.isAfter(now)) {
          ticks.add(
            Tick(
              second: second,
              text: text,
              nextStartTime: nextStartTime,
              number: nextStartingParticipant.number,
            ),
          );
        } else {
          if (nextStartTime.isAfter(
            now.subtract(
              Duration(seconds: settingsProvider.settings.deltaInSeconds - 1),
            ),
          )) {
            ticks.add(
              Tick(
                second: second,
                text: text,
                nextStartTime: nextStartTime,
                number: nextStartingParticipant.number,
              ),
            );
          } else {
            ticks.add(
              Tick(
                second: second,
                text: text,
                nextStartTime: nextStartTime,
                number: nextStartingParticipant.number,
                callNextParticipant: true,
              ),
            );
            _nextStartingParticipant = null;
          }
        }
      }
    } else {
      if (!_isFinished) {
        _nextStartingParticipant = await _getNextStartingParticipant(
          time: now,
          stageId: stageId,
        );
        final nextStartingParticipant = _nextStartingParticipant;
        if (nextStartingParticipant != null) {
          final nextStartTime = nextStartingParticipant.startTime.toDateTime();
          if (nextStartTime != null) {
            ticks.add(
              Tick(
                second: second,
                text: _formatDuration(nextStartTime.difference(now)),
                nextStartTime: nextStartTime,
                number: nextStartingParticipant.number,
              ),
            );
          }
        } else {
          _isFinished = true;
          ticks.add(Tick(second: second, text: 'Fin'));
        }
      }
    }
  }

  Future<NextStartingParticipant?> _getNextStartingParticipant({
    required DateTime time,
    required int stageId,
  }) async {
    final nextStart = await database
        .getNextStartingParticipants(
          stageId: stageId,
          time: DateFormat(shortTimeFormat).format(time),
        )
        .get();
    return nextStart.isNotEmpty ? nextStart.first : null;
  }

  String _formatDuration(Duration duration) {
    // Добавить одну секунду из-за отбрасывания миллисекунд
    final fixDuration = duration + const Duration(seconds: 1);
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(fixDuration.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(fixDuration.inSeconds.remainder(60));
    if (fixDuration.inHours > 0) {
      return '${twoDigits(fixDuration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
    } else if (fixDuration.inMinutes > 0) {
      return '$twoDigitMinutes:$twoDigitSeconds';
    } else if (fixDuration.inSeconds > 0) {
      return '${fixDuration.inSeconds}';
    } else {
      return 'GO';
    }
  }
}
