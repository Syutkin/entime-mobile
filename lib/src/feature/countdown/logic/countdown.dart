import 'dart:async';

import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/utils/extensions.dart';
import '../../../constants/date_time_formats.dart';
import '../../database/drift/app_database.dart';
import '../model/tick.dart';

class CountdownAtStart {
  CountdownAtStart({required AppDatabase database}) : _db = database;
  final AppDatabase _db;
  Timer? _timer;

  BehaviorSubject<Tick> value = BehaviorSubject();

  NextStartingParticipant? _nextStartingParticipant;
  bool _isFinished = false;

  void setStageId(int stageId) {
    start(stageId);
  }

  Future<void> start(int stageId) async {
    //subscribe to changes at starts table
    _db.getParticipantsAtStart(stageId: stageId).watch().listen((event) async {
      _isFinished = false;
      _nextStartingParticipant = await _getNextStartingParticipant(
        time: DateTime.now(),
        stageId: stageId,
      );
    });

    _timer?.cancel();
    _nextStartingParticipant = await _getNextStartingParticipant(
      time: DateTime.now(),
      stageId: stageId,
    );
    _isFinished = false;
    await _countdown(stageId: stageId);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _countdown(stageId: stageId);
    });
  }

  void stop() {
    _timer?.cancel();
  }

  Future<void> close() async {
    await value.close();
  }

  Future<void> _countdown({required int stageId}) async {
    final now = DateTime.now();
    final second = now.second;
    final nextStartingParticipant = _nextStartingParticipant;
    if (nextStartingParticipant != null) {
      final nextStartTime = nextStartingParticipant.startTime.toDateTime();
      if (nextStartTime != null) {
        if (nextStartTime.isAfter(now)) {
          value.add(
            Tick(
              second: second,
              text: _formatDuration(nextStartTime.difference(now)),
              nextStartTime: nextStartTime,
              number: nextStartingParticipant.number,
            ),
          );
        } else {
          if (nextStartTime
              .isAfter(now.subtract(const Duration(seconds: 10)))) {
            value.add(
              Tick(
                second: second,
                text: 'GO',
                nextStartTime: nextStartTime,
                number: nextStartingParticipant.number,
              ),
            );
          } else {
            _nextStartingParticipant = null;
          }
        }
      }
    } else {
      if (!_isFinished) {
        _nextStartingParticipant =
            await _getNextStartingParticipant(time: now, stageId: stageId);
        if (_nextStartingParticipant == null) {
          _isFinished = true;
          value.add(Tick(second: second, text: 'Fin'));
        }
      }
    }
  }

  Future<NextStartingParticipant?> _getNextStartingParticipant({
    required DateTime time,
    required int stageId,
  }) async {
    final nextStart = await _db
        .getNextStartingParticipants(
          stageId: stageId,
          time: DateFormat(shortTimeFormat).format(time),
        )
        .get();
    // .startTime.toDateTime()
    return nextStart.isNotEmpty ? nextStart.first : null;
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours > 0) {
      return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
    } else if (duration.inMinutes > 0) {
      return '$twoDigitMinutes:$twoDigitSeconds';
    } else if (duration.inSeconds > 0) {
      return '${duration.inSeconds}';
    } else {
      return 'GO';
    }
  }
}
