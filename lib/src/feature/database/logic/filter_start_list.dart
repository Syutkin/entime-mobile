import '../database.dart';

List<ParticipantAtStart> filterStartList(
  List<ParticipantAtStart> list, {
  required bool showDNS,
  required bool showDNF,
  required bool showDSQ,
}) {
  // Do not apply filters to list
  if (showDNS && showDNF && showDSQ) {
    return list;
  } else {
    return list.where((e) {
      final result = (e.statusId == ParticipantStatus.active.index &&
              e.participantStatusId == ParticipantStatus.active.index) ||
          (showDNS &&
              (e.participantStatusId == ParticipantStatus.dns.index ||
                  e.statusId == ParticipantStatus.dns.index)) ||
          (showDNF &&
              (e.participantStatusId == ParticipantStatus.dnf.index ||
                  e.statusId == ParticipantStatus.dnf.index)) ||
          (showDSQ &&
              (e.participantStatusId == ParticipantStatus.dsq.index ||
                  e.statusId == ParticipantStatus.dsq.index));
      return result;
    }).toList();
  }
}
