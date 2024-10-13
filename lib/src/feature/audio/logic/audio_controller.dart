import 'package:intl/intl.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/consts.dart';
import '../../../common/utils/helper.dart';
import '../../database/drift/app_database.dart';
import '../../settings/settings.dart';
import '../audio.dart';

abstract class IAudioController {
  Future<void> playCountdown({required String time, required int stageId});

  Future<void> callParticipant({required String time, required int stageId});
}

class AudioController implements IAudioController {
  final IAudioService _audioService;
  final SettingsProvider _settingsProvider;

  final AppDatabase _db;

  // для голоса
  bool _isStarted = false;
  bool _isBetweenCategory = false;

  AudioController({
    required IAudioService audioService,
    required AppDatabase database,
    required SettingsProvider settingsProvider,
  })  : _audioService = audioService,
        _db = database,
        _settingsProvider = settingsProvider;

  @override
  Future<void> playCountdown({
    required String time,
    required int stageId,
  }) async {
    if (await _db.checkParticipantAroundStartTime(
          time: time,
          stageId: stageId,
        ) >
        0) {
      await _audioService.countdown();
      logger.i('Bluetooth -> Beep start $time');
    } else {
      logger.i(
        'Bluetooth -> Cannot find participant with start time around $time',
      );
    }
  }

  @override
  Future<void> callParticipant({
    required String time,
    required int stageId,
  }) async {
    logger.i('StartPage -> Voice time: $time');
    final List<String> start = [];
    String newVoiceText = '';

    //высчитываем диапазоны времени участников
    DateTime? dateTime = time.toDateTime();
    if (dateTime != null) {
      start.add(DateFormat(shortTimeFormat).format(dateTime));
      dateTime = dateTime.add(const Duration(minutes: 1));
      start.add(DateFormat(shortTimeFormat).format(dateTime));
    }
    var participant =
        await _db.getStartingParticipants(time: time, stageId: stageId);
    if (participant.isNotEmpty) {
      _isStarted = true;
      _isBetweenCategory = false;
      logger.d(
        'First participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
      );
      newVoiceText = 'На старт приглашается номер ${participant.first.number}';
      // Имена участников, которые были добавлены автоматически на старте,
      // начинаются с номера. Такие имена не произносим
      _settingsProvider.settings.voiceName &&
              !RegExp(r'^[0-9]').hasMatch(participant.first.name)
          ? newVoiceText += ', ${participant.first.name}.'
          : newVoiceText += '.';
      participant =
          await _db.getStartingParticipants(time: start[1], stageId: stageId);
      if (participant.isNotEmpty) {
        newVoiceText += ' Следующий номер ${participant.first.number}';
        // Имена участников, которые были добавлены автоматически на старте,
        // начинаются с номера. Такие имена не произносим
        if (_settingsProvider.settings.voiceName &&
            !RegExp(r'^[0-9]').hasMatch(participant.first.name)) {
          newVoiceText += ', ${participant.first.name}.';
        } else {
          newVoiceText += '.';
        }
      }
    } else {
      participant =
          await _db.getStartingParticipants(time: start[1], stageId: stageId);
      if (participant.isNotEmpty) {
        _isStarted = true;
        _isBetweenCategory = false;
        logger.d(
          'Second participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
        );
        newVoiceText = 'Готовится номер ${participant.first.number}';
        // Имена участников, которые были добавлены автоматически на старте,
        // начинаются с номера. Такие имена не произносим
        if (_settingsProvider.settings.voiceName &&
            !RegExp(r'^[0-9]').hasMatch(participant.first.name)) {
          newVoiceText += ', ${participant.first.name}.';
        } else {
          newVoiceText += '.';
        }
      } else {
        // если нет стартов в следующие две минуты,
        // сообщить сколько времени до старта след участника
        if (_isStarted && !_isBetweenCategory) {
          logger.d(
            'Between category: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
          );
          final participants = await _db
              .getNextStartingParticipants(time: start.first, stageId: stageId)
              .get();
          if (participants.isNotEmpty) {
            _isBetweenCategory = true;
            final DateTime? lastStart = start.first.toDateTime();
            DateTime? nextStart;
            // if (participants.first.startTime != null) {
            nextStart = participants.first.startTime.toDateTime();
            // }
            if (lastStart != null && nextStart != null) {
              final Duration delay = nextStart.difference(lastStart);
              newVoiceText =
                  'Старт следующего участника номер ${participants.first.number}, ';
              newVoiceText += 'через ${delay.inMinutes} мин 30 с';
            }
          } else {
            // если это был последний старт (следующий участник не найден),
            // сообщить об окончании стартов
            _isStarted = false;
            newVoiceText = 'Старты окончены, спасибо';
          }
        }
      }
    }
    await _audioService.speak(newVoiceText);
  }
}
