import 'package:drift/drift.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/logic/filter_start_list.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockQueryRow extends Mock implements QueryRow {}

void main() {
  late bool showDNS;
  late bool showDNF;
  late bool showDSQ;
  late List<ParticipantAtStart> list;

  setUpAll(() {
    list = [
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.active.index,
        name: 'active1',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.active.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.dns.index,
        name: 'dns1',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.active.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.dnf.index,
        name: 'dnf1',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.active.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.dsq.index,
        name: 'dsq1',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.active.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.active.index,
        name: 'dns1',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.dns.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.active.index,
        name: 'dnf1',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.dnf.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.active.index,
        name: 'dsq1',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.dsq.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.active.index,
        name: 'active2',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.active.index,
      ),
      ParticipantAtStart(
        row: MockQueryRow(),
        riderId: 1,
        raceId: 1,
        number: 1,
        participantStatusId: ParticipantStatus.active.index,
        name: 'active3',
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: '10:00:00',
        statusId: ParticipantStatus.active.index,
      ),
    ];
  });

  setUp(() {
    showDNS = true;
    showDNF = true;
    showDSQ = true;
  });

  group(
    'filterStartList tests',
    () {
      test(
        'Show all',
        () async {
          final result = filterStartList(
            list,
            showDNS: showDNS,
            showDNF: showDNF,
            showDSQ: showDSQ,
          );
          expect(result.length, 9);
        },
      );
      test(
        'Hide DNS',
        () async {
          showDNS = false;
          final result = filterStartList(
            list,
            showDNS: showDNS,
            showDNF: showDNF,
            showDSQ: showDSQ,
          );
          expect(result.length, 7);
        },
      );
      test(
        'Hide DNF',
        () async {
          showDNF = false;
          final result = filterStartList(
            list,
            showDNS: showDNS,
            showDNF: showDNF,
            showDSQ: showDSQ,
          );
          expect(result.length, 7);
        },
      );
      test(
        'Hide DSQ',
        () async {
          showDSQ = false;
          final result = filterStartList(
            list,
            showDNS: showDNS,
            showDNF: showDNF,
            showDSQ: showDSQ,
          );
          expect(result.length, 7);
        },
      );
      test(
        'Hide DNS+DNF',
        () async {
          showDNS = false;
          showDNF = false;
          final result = filterStartList(
            list,
            showDNS: showDNS,
            showDNF: showDNF,
            showDSQ: showDSQ,
          );
          expect(result.length, 5);
        },
      );
      test(
        'Hide DNS+DSQ',
        () async {
          showDNS = false;
          showDSQ = false;
          final result = filterStartList(
            list,
            showDNS: showDNS,
            showDNF: showDNF,
            showDSQ: showDSQ,
          );
          expect(result.length, 5);
        },
      );

      test(
        'Hide DNS+DNF+DSQ',
        () async {
          showDNS = false;
          showDNF = false;
          showDSQ = false;
          final result = filterStartList(
            list,
            showDNS: showDNS,
            showDNF: showDNF,
            showDSQ: showDSQ,
          );
          expect(result.length, 3);
        },
      );
    },
  );
}
