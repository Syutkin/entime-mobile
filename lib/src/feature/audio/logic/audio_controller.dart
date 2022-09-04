import 'package:intl/intl.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/helper.dart';
import '../../protocol/protocol.dart';
import '../../settings/settings.dart';
import '../audio.dart';

abstract class IAudioController {
  Future<void> playCountdown(String time);
  Future<void> callParticipant(String time);
}

class AudioController implements IAudioController {
  final IAudioService _audioService;
  final IProtocolProvider _protocolProvider;
  final SettingsProvider _settingsProvider;

  // для голоса
  bool _isStarted = false;
  bool _isBetweenCategory = false;

  AudioController({
    required IAudioService audioService,
    required IProtocolProvider protocolProvider,
    required SettingsProvider settingsProvider,
  })  : _audioService = audioService,
        _protocolProvider = protocolProvider,
        _settingsProvider = settingsProvider;

  @override
  Future<void> playCountdown(String time) async {
    await _protocolProvider.state.value.map(
      notSelected: (value) {
        logger.i('Bluetooth -> Protocol not selected');
      },
      selected: (value) async {
        if (await _protocolProvider.getStart(time) > 0) {
          await _audioService.countdown();
          logger.i('Bluetooth -> Beep start $time');
        } else {
          logger.i(
            'Bluetooth -> Cannot find participant with start time around $time',
          );
        }
      },
    );
  }

  @override
  Future<void> callParticipant(String time) async {
    logger.i('StartPage -> Voice time: $time');
    // if (sound && voice) {
    await _protocolProvider.state.value.map(
      selected: (value) async {
        List<StartItem> participant;
        final List<String> start = [];
        String newVoiceText = '';

        //высчитываем диапазоны времени участников
        DateTime? dateTime = strTimeToDateTime(time);
        if (dateTime != null) {
          start.add(DateFormat('HH:mm:ss').format(dateTime));
          dateTime = dateTime.add(const Duration(minutes: 1));
          start.add(DateFormat('HH:mm:ss').format(dateTime));
        }
        participant =
            await _protocolProvider.getStartingParticipants(start.first);
        if (participant.isNotEmpty) {
          _isStarted = true;
          _isBetweenCategory = false;
          logger.d(
            'First participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
          );
          newVoiceText =
              'На старт приглашается номер ${participant.first.number}';
          _settingsProvider.settings.voiceName && participant.first.name != null
              ? newVoiceText += ', ${participant.first.name}.'
              : newVoiceText += '.';
          participant =
              await _protocolProvider.getStartingParticipants(start[1]);
          if (participant.isNotEmpty) {
            newVoiceText += ' Следующий номер ${participant.first.number}';
            if (_settingsProvider.settings.voiceName &&
                participant.first.name != null) {
              newVoiceText += ', ${participant.first.name}.';
            } else {
              newVoiceText += '.';
            }
          }
        } else {
          participant =
              await _protocolProvider.getStartingParticipants(start[1]);
          if (participant.isNotEmpty) {
            _isStarted = true;
            _isBetweenCategory = false;
            logger.d(
              'Second participant: isStarted: $_isStarted, isBetweenCategory: $_isBetweenCategory',
            );
            newVoiceText = 'Готовится номер ${participant.first.number}';
            if (_settingsProvider.settings.voiceName &&
                participant.first.name != null) {
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
              participant =
                  await _protocolProvider.getNextParticipants(start.first);
              if (participant.isNotEmpty) {
                _isBetweenCategory = true;
                final DateTime? lastStart = strTimeToDateTime(start.first);
                DateTime? nextStart;
                if (participant.first.starttime != null) {
                  nextStart = strTimeToDateTime(participant.first.starttime!);
                }
                if (lastStart != null && nextStart != null) {
                  final Duration delay = nextStart.difference(lastStart);
                  newVoiceText =
                      'Старт следующего участника номер ${participant.first.number}, ';
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
      },
      notSelected: (value) {
        logger.i('Bluetooth -> Protocol not selected');
      },
    );
  }
}
