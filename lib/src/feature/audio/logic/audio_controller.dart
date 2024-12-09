import 'package:intl/intl.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/extensions.dart';
import '../../../constants/date_time_formats.dart';
import '../../database/drift/app_database.dart';
import '../../settings/settings.dart';
import '../audio.dart';

abstract class IAudioController {
  Future<void> beep();

  Future<void> playCountdown({required String time, required int stageId});

  Future<void> callParticipant({required String time, required int stageId});
}

class AudioController implements IAudioController {
  AudioController({
    required IAudioService audioService,
    required AppDatabase database,
    required SettingsProvider settingsProvider,
  })  : _audioService = audioService,
        _db = database,
        _settingsProvider = settingsProvider;
  final IAudioService _audioService;
  final SettingsProvider _settingsProvider;

  final AppDatabase _db;

  // для голоса
  bool _isStarted = false;
  bool _isBetweenCategory = false;

  @override
  Future<void> beep() async {
    await _audioService.countdown();
    logger.i('AudioController -> Playing beep');
  }

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
      logger.i('AudioController -> Beep start $time');
    } else {
      logger.i(
        'AudioController -> Cannot find participant with start time around $time',
      );
    }
  }

  @override
  Future<void> callParticipant({
    required String time,
    required int stageId,
  }) async {
    logger.i('AudioController -> Voice time: $time');
    final start = <String>[];
    var newVoiceText = '';

    //высчитываем диапазоны времени участников
    var dateTime = time.toDateTime();
    if (dateTime != null) {
      start.add(DateFormat(shortTimeFormat).format(dateTime));
      dateTime = dateTime.add(const Duration(minutes: 1));
      start.add(DateFormat(shortTimeFormat).format(dateTime));
    }
    var participants =
        await _db.getStartingParticipants(time: time, stageId: stageId);
    if (participants.isNotEmpty) {
      _isStarted = true;
      _isBetweenCategory = false;
      logger.d(
        'First participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
      );
      newVoiceText = 'На старт приглашается номер ${participants.first.number}';
      // Имена участников, которые были добавлены автоматически на старте,
      // начинаются с номера. Такие имена не произносим
      _settingsProvider.settings.voiceName &&
              !RegExp('^[0-9]').hasMatch(participants.first.name)
          ? newVoiceText += ', ${participants.first.name}.'
          : newVoiceText += '.';
      participants =
          await _db.getStartingParticipants(time: start[1], stageId: stageId);
      if (participants.isNotEmpty) {
        newVoiceText += ' Следующий номер ${participants.first.number}';
        // Имена участников, которые были добавлены автоматически на старте,
        // начинаются с номера. Такие имена не произносим
        if (_settingsProvider.settings.voiceName &&
            !RegExp('^[0-9]').hasMatch(participants.first.name)) {
          newVoiceText += ', ${participants.first.name}.';
        } else {
          newVoiceText += '.';
        }
      }
    } else {
      participants =
          await _db.getStartingParticipants(time: start[1], stageId: stageId);
      if (participants.isNotEmpty) {
        _isStarted = true;
        _isBetweenCategory = false;
        logger.d(
          'Second participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
        );
        newVoiceText = 'Готовится номер ${participants.first.number}';
        // Имена участников, которые были добавлены автоматически на старте,
        // начинаются с номера. Такие имена не произносим
        if (_settingsProvider.settings.voiceName &&
            !RegExp('^[0-9]').hasMatch(participants.first.name)) {
          newVoiceText += ', ${participants.first.name}.';
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
            final lastStart = start.first.toDateTime();
            DateTime? nextStart;
            // if (participants.first.startTime != null) {
            nextStart = participants.first.startTime.toDateTime();
            // }
            if (lastStart != null && nextStart != null) {
              final delay = nextStart.difference(lastStart);
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
