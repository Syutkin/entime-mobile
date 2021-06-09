// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screens/screens.dart';

export 'package:filesize/filesize.dart';

String strip(String str) {
  if (str == null || str == 'null') {
    str = '';
  }
  return str;
}

DateTime strTimeToDateTime(String time) {
  var now = DateTime.now();
  var dateFormatted = DateFormat('yyyy-MM-dd').format(now);
  DateTime result = DateTime.tryParse(dateFormatted + ' ' + time);
  return result;
}

//Difference diff = Difference();
//
//// Высчитываем разницу между локальным временем и временем в RTC
//class Difference {
//  List<int> _deltas;
//  static Duration _duration;
//
//  Difference() {
//    _deltas = List<int>();
//    _duration = Duration(milliseconds: 0);
//  }
//
//  Duration get duration => _duration;
//
//  void addDeltaAsString(String time) {
//    var now = DateTime.now();
//    var dateTime = strTimeToDateTime(time);
//    Duration diffDur = dateTime.difference(now);
//    _addDelta(diffDur.inMilliseconds);
//  }
//
//  void addDeltaAsDateTime(DateTime time) {
//    var now = DateTime.now();
//    Duration diffDur = time.difference(now);
//    _addDelta(diffDur.inMilliseconds);
//  }
//
//  void _addDelta(int value) {
//    _deltas.insert(0, value);
//    _duration = Duration(milliseconds: _getAverage());
//  }
//
//  // Считается как среднее арифметическое за последние 10 значений
//  int _getAverage() {
//    if (_deltas != null) {
//      int sum = 0;
//      if (_deltas.length > 10) {
//        _deltas.length = 10;
//      }
//      for (int n in _deltas) {
//        sum += n;
//      }
//      sum = (sum / _deltas.length).round();
//      return sum;
//    } else {
//      return 0;
//    }
//  }
//}

String formatDate(DateTime dateTime) {
  String result;
  if (dateTime.year == DateTime.now().year) {
    result = DateFormat('MMMMd', 'ru_RU').format(dateTime);
    return result;
  } else {
    result = DateFormat('yMMMMd', 'ru_RU').format(dateTime);
    return result;
  }
}

/// Scrolls lists to end
void scrollToEnd(ScrollController scrollController) {
  scrollController.animateTo(
    scrollController.position.maxScrollExtent,
    duration: const Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
  );
}

void RouteToSelectFileScreen(BuildContext context) async {
  await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return SelectFileScreen();
  }));
}
