import '../database.dart';

List<Finish> filterFinishList(
    List<Finish> list, {
      required bool showHidden,
      required bool showManual,
      required bool showNumbers,
    }) {
  // Do not apply filters to list
  if (showHidden && showManual && showNumbers) {
    return list;
  } else {
    return list.where((e) {
      final list = <bool>[
        true, // show all by default
        if (!showHidden) showHidden == e.isHidden,
        if (!showManual) showManual == e.isManual,
        if (!showNumbers) e.number == null,
      ];
      return list.reduce((a, b) => a & b);
    }).toList();
  }
}
