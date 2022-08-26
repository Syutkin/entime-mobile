import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String strip(String? str) {
  if (str == null || str == 'null') {
    return '';
  }
  return str;
}

DateTime? strTimeToDateTime(String time) {
  final now = DateTime.now();
  final dateFormatted = DateFormat('yyyy-MM-dd').format(now);
  final DateTime? result = DateTime.tryParse('$dateFormatted $time');
  return result;
}

String formatDate(DateTime dateTime) {
  if (dateTime.year == DateTime.now().year) {
    return DateFormat('MMMMd', 'ru_RU').format(dateTime);
  } else {
    return DateFormat('yMMMMd', 'ru_RU').format(dateTime);
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

TextStyle dBmTextStyle(int rssi) {
  /*  */ if (rssi >= -35) {
    return TextStyle(color: Colors.greenAccent[700]);
  } else if (rssi >= -45) {
    return TextStyle(
      color: Color.lerp(
        Colors.greenAccent[700],
        Colors.lightGreen,
        -(rssi + 35) / 10,
      ),
    );
  } else if (rssi >= -55) {
    return TextStyle(
      color: Color.lerp(Colors.lightGreen, Colors.lime[600], -(rssi + 45) / 10),
    );
  } else if (rssi >= -65) {
    return TextStyle(
      color: Color.lerp(Colors.lime[600], Colors.amber, -(rssi + 55) / 10),
    );
  } else if (rssi >= -75) {
    return TextStyle(
      color: Color.lerp(
        Colors.amber,
        Colors.deepOrangeAccent,
        -(rssi + 65) / 10,
      ),
    );
  } else if (rssi >= -85) {
    return TextStyle(
      color: Color.lerp(
        Colors.deepOrangeAccent,
        Colors.redAccent,
        -(rssi + 75) / 10,
      ),
    );
  } else {
    return const TextStyle(color: Colors.redAccent);
  }
}
