// To parse this JSON data, do
//
//     final log = logFromJson(jsonString);

import 'dart:convert';

Log logFromMap(String str) => Log.fromMap(json.decode(str));

String logToMap(Log data) => json.encode(data.toMap());

///
/// Logging format
///
class Log {
  Log({
    required this.id,
    required this.level,
    required this.timeStamp,
    required this.source,
    this.direction,
    required this.rawData,
  });

  int id;
  String level;
  String timeStamp;
  String source;
  String? direction;
  String rawData;

  factory Log.fromMap(Map<String, dynamic> json) => Log(
        id: json['id'],
        level: json['level'],
        timeStamp: json['timeStamp'],
        source: json['source'],
        direction: json['direction'],
        rawData: json['rawData'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'level': level,
        'timeStamp': timeStamp,
        'source': source,
        'direction': direction,
        'rawData': rawData,
      };
}
