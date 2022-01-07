import 'dart:convert';

/*
{
'id': 'http://json-schema.org/geo',
'$schema': 'http://json-schema.org/draft-06/schema#',
'description': 'Start time with correction',
'type': 'object',
'properties': {
'id': {
'type': 'integer'
},
'number': {
'type': 'integer'
},
'starttime': {
'type': 'string'
},
'correction': {
'type': 'string'
}
}
}
*/

/*
CREATE TABLE 'main' (
	'id'	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	'number'	INTEGER UNIQUE,
	'starttime'	VARCHAR,
	'gotime'	VARCHAR,
	'correction'	INTEGER
);
*/

//https://app.quicktype.io/#l=dart

StartItem startFromJson(String str) => StartItem.fromMap(json.decode(str));

String startToJson(StartItem data) => json.encode(data.toMap());

//
// Start time with correction
//
class StartItem {
  String? automaticstarttime;
  int? automaticcorrection;
  String? automaticphonetime;
  String? finishtime;
  int id;
  int? manualcorrection;
  String? manualstarttime;
  String? name;
  int number;
  String? category;
  String? nickname;
  String? age;
  String? team;
  String? city;
  String? starttime;

  StartItem({
    this.automaticstarttime,
    this.automaticcorrection,
    this.automaticphonetime,
    this.finishtime,
    required this.id,
    this.manualcorrection,
    this.manualstarttime,
    this.name,
    required this.number,
    this.category,
    this.nickname,
    this.age,
    this.team,
    this.city,
    this.starttime,
  });

  factory StartItem.fromMap(Map<String, dynamic> json) => StartItem(
        automaticstarttime: json['automaticstarttime'],
        automaticcorrection: json['automaticcorrection'],
        automaticphonetime: json['automaticphonetime'],
        finishtime: json['finishtime'],
        id: json['id'],
        manualcorrection: json['manualcorrection'],
        manualstarttime: json['manualstarttime'],
        name: json['name'],
        number: json['number'],
        category: json['category'],
        nickname: json['nickname'],
        age: json['age'],
        team: json['team'],
        city: json['city'],
        starttime: json['starttime'],
      );

  Map<String, dynamic> toMap() => {
        'automaticstarttime': automaticstarttime,
        'automaticcorrection': automaticcorrection,
        'automaticphonetime': automaticphonetime,
        'finishtime': finishtime,
        'id': id,
        'manualcorrection': manualcorrection,
        'manualstarttime': manualstarttime,
        'name': name,
        'number': number,
        'category': category,
        'nickname': nickname,
        'age': age,
        'team': team,
        'city': city,
        'starttime': starttime,
      };
}

FinishItem finishFromJson(String str) => FinishItem.fromMap(json.decode(str));

String finishToJson(FinishItem data) => json.encode(data.toMap());

class FinishItem {
  int id;
  int? number;
  String finishtime;
  String? phonetime;
  int? set;
  int? manual;

  FinishItem({
    required this.id,
    this.number,
    required this.finishtime,
    this.phonetime,
    this.set,
    this.manual,
  });

  factory FinishItem.fromMap(Map<String, dynamic> json) => FinishItem(
        id: json['id'],
        number: json['number'],
        finishtime: json['finishtime'],
        phonetime: json['phonetime'],
        set: json['set'],
        manual: json['manual'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'number': number,
        'finishtime': finishtime,
        'phonetime': phonetime,
        'set': set,
        'manual': manual,
      };
}
