class StartItemCsv {
  String? category;
  int number;
  String? name;
  String? nickname;
  String? age;
  String? team;
  String? city;
  String? starttime;

  StartItemCsv({
    this.category,
    required this.number,
    this.name,
    this.nickname,
    this.age,
    this.team,
    this.city,
    this.starttime,
  });

  Map<String, dynamic> toMap() => {
        'category': category,
        'number': number,
        'name': name,
        'nickname': nickname,
        'age': age,
        'team': team,
        'city': city,
        'starttime': starttime,
      };

  factory StartItemCsv.fromMap(Map<String, dynamic> cvs) => StartItemCsv(
    category: cvs['category']?.toString(),
    number: cvs['number'] is int ? cvs['number'] : 0,
    name: cvs['name']?.toString(),
    nickname: cvs['nickname']?.toString(),
    age: cvs['age']?.toString(),
    team: cvs['team']?.toString(),
    city: cvs['city']?.toString(),
    starttime: cvs['starttime']?.toString(),
  );

  @override
  String toString() =>
      'StartItemCsv { category: $category, number: $number, name: $name, nickname: $nickname, age: $age, team: $team, city: $city, starttime: $starttime, }';
}
