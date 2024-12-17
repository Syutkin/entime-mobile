part of '../finish_list_page_test.dart';

/// isHidden	  isManual  number
/// FALSE       FALSE
/// FALSE	      FALSE     1
/// TRUE	      FALSE
/// TRUE	      FALSE	    2
/// FALSE	      TRUE
/// FALSE	      TRUE	    3
/// TRUE	      TRUE
/// TRUE	      TRUE	    4
List<Finish> finishes([int? n]) {
  final list = <Finish>[
    Finish(
      id: 1,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 2,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
      number: 1,
    ),
    Finish(
      id: 3,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: true,
      isManual: false,
    ),
    Finish(
      id: 4,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: true,
      isManual: false,
      number: 2,
    ),
    Finish(
      id: 5,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: true,
    ),
    Finish(
      id: 6,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: true,
      number: 3,
    ),
    Finish(
      id: 7,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: true,
      isManual: true,
    ),
    Finish(
      id: 8,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: true,
      isManual: true,
      number: 4,
    ),
    Finish(
      id: 9,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 10,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 11,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 12,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 13,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 14,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 15,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 16,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 17,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 18,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 19,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
    Finish(
      id: 20,
      stageId: 1,
      timestamp: '10:01:02,234'.toDateTime()!,
      ntpOffset: 1000,
      finishTime: '10:01:04,567',
      isHidden: false,
      isManual: false,
    ),
  ];

  if (n == null || n < 0) {
    return list;
  } else {
    return list.take(n).toList();
  }
}

class MockQueryRow extends Mock implements QueryRow {}

final row = MockQueryRow();

List<StartingParticipant> numbersOnTrace([int n = 10]) {
  assert(n >= 0, 'n must be positive or zero');
  return List<StartingParticipant>.generate(n, (index) {
    final i = index + 1;
    return StartingParticipant(
      row: row,
      startId: i,
      stageId: 1,
      participantId: i,
      startTime: '10:0$index:00',
      startStatus: ParticipantStatus.active.index,
      raceId: 1,
      riderId: i,
      number: i,
      participantStatus: ParticipantStatus.active.index,
    );
  });
}
