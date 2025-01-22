part of '../app_database_test.dart';

class PopDB {
  PopDB() {
    queries
      ..add('''
INSERT INTO races (id, name) VALUES
(1, 'гонка1'),
(2, 'гонка2');''')
      ..add('''
INSERT INTO stages (id, race_id, name) VALUES
(1, 1, 'СУ1'),
(2, 1, 'СУ2'),
(3, 1, 'СУ3'),
(4, 1, 'СУ4'),
(5, 2, 'СУ1'),
(6, 2, 'СУ2'),
(7, 2, 'СУ3'),
(8, 2, 'СУ4');''')
      ..add('''
INSERT INTO riders (id, name, nickname, birthday, team, city) VALUES
(1,"Алексахина Варвара","Zoenor",35,"ТимАк","Занаду"),
(2,"Берестова Владислава","Marsica",41,"ТимАк","Ктесифон"),
(3,"Григолюк Изабелла","Isopy",31,"РысакиТекс","Тикаль"),
(4,"Игнатьева Розалия","Amsie",34,"ТимАльянс","Ктесифон"),
(5,"Костина Ангелина","Evecy",28,"СтройРысаки","Тикаль"),
(6,"Левицкая Инга","Emirah",30,NULL,"Фивы"),
(7,"Лялюшкина Арина","Emloe",42,"ТимАльянс","Занаду"),
(8,"Рыбалкина Каролина","Frelda",25,NULL,"Занаду"),
(9,"Сухиха Зоя","Lece",45,"ГорРысаки","Занаду"),
(10,"Урусова Евдокия","Ruber",23,NULL,"Карфаген"),
(11,"Гадолин Мечислав","Benlix",51,NULL,"Фивы"),
(12,"Голов Степан","Arter",55,NULL,"Ктесифон"),
(13,"Дуркин Наум","Ausott",28,NULL,"Тикаль"),
(14,"Каценеленбоген Ерофей","Jentian",43,NULL,"Занаду"),
(15,"Коваленко Артемий","Harbas",47,"ТимДор","Багерхат"),
(16,"Коломийцев Никанор","Aarel",25,NULL,"Тикаль"),
(17,"Летов Измаил","Stantin",31,"МигТим","Ктесифон"),
(18,"Миков Бронислав","Tedmed",22,NULL,"Тикаль"),
(19,"Нестеров Семен","Charcar",54,NULL,"Виджаянагар"),
(20,"Стариков Севастьян","Charfie",51,"ГорРысаки","Карфаген"),
(21,"Стиплин Сергей","Leobas",21,"ТимАльянс","Занаду"),
(22,"Удом Клавдий","Conhim",21,NULL,"Ктесифон"),
(23,"Хомичев Николай","Theoward",27,"РусРысаки","Фивы"),
(24,"Чернобровин Иван","Edlie",25,"ТимАк","Занаду"),
(25,"Чкалов Евсей","Cacas",30,NULL,"Багерхат"),
(26,"Ярославцев Олег","Stanrick",33,"РысакиТекс","Фивы"),
(27,"Беляев Кирилл","Thorick",18,NULL,"Тикаль"),
(28,"Дубинин Лавр","Frekie",18,NULL,"Тикаль"),
(29,"Ельцов Валерьян","Stanter",16,"РусРысаки","Багерхат"),
(30,"Жестакова Андрон","Fetin",21,NULL,"Виджаянагар"),
(31,"Луговой Феофан","Arler",16,NULL,"Карфаген"),
(32,"Решетилов Эммануил","Dalliam",17,NULL,"Тикаль"),
(33,"Шагубатов Вадим","Mohan",20,NULL,"Карфаген"),
(34,"Якин Самсон","Geornor",21,"ТимАльянс","Багерхат"),
(35,"Яров Всеслав","Gablay",19,NULL,"Багерхат"),
(36,"Алифанов Самуил","Tothur",27,NULL,"Фивы"),
(37,"Баландин Игнат","Stanny",30,"МигТим","Карфаген"),
(38,"Васильев Михей","Sonbert",32,"ЮгТим","Фивы"),
(39,"Ельченко Касьян","Harricar",43,NULL,"Ктесифон"),
(40,"Ивкин Адам","Osvey",26,NULL,"Багерхат"),
(41,"Казаринов Ким","Luchie",42,"МигТим","Ктесифон"),
(42,"Катков Тимофей","Tedfie",51,"ТимДор","Карфаген"),
(43,"Кондраков Денис","Elison",23,NULL,"Ктесифон"),
(44,"Молчанов Валерий","Ronden",29,NULL,"Багерхат"),
(45,"Рубцов Вениамин","Wison",30,NULL,"Фивы"),
(46,"Терёшин Кирилл","Mover",21,NULL,"Виджаянагар"),
(47,"Турчанинов Харитон","Auscar",54,NULL,"Фивы"),
(48,"Уткин Демьян","Edand",51,NULL,"Багерхат"),
(49,"Форофонтов Сократ","Milan",29,"РысакиТекс","Занаду"),
(50,"Штыков Никифор","Reume",35,"ГорРысаки","Виджаянагар"),
(51,"Якшин Мирон","Thoben",39,"ЮгТим","Тикаль"),
(52,"Яржемковский Марк","Wigan",29,NULL,"Ктесифон"),
(53,"Яценковский Виссарион","Charham",43,NULL,"Фивы"),
(54,"Глоба Викентий","Reulay",29,"ТимАк","Виджаянагар"),
(55,"Корепанов Никифор","Freel",50,NULL,"Фивы"),
(56,"Лагошин Фадей","Tothur",50,NULL,"Карфаген"),
(57,"Медведев Емельян","Lini",48,NULL,"Тикаль"),
(58,"Симонов Григорий","Gabmes",26,NULL,"Занаду"),
(59,"Смелоч Антон","Milix",52,"ТимДор","Багерхат"),
(60,"Фламин Матвей","Arham",54,"ЮгТим","Виджаянагар"),
(61,"Якушев Дементий","Rovey",40,"ТимДор","Виджаянагар"),
(62,"Абушаев Лев","Cade",21,"НикоРысаки","Ктесифон"),
(63,"Баренцев Святослав","Cales",48,NULL,"Виджаянагар"),
(64,"Горяинов Поликарп","Rohim",55,"НикоРысаки","Тикаль"),
(65,"Графов Модест","Fincob",29,NULL,"Фивы"),
(66,"Кайпанов Зиновий","Harrilliam",44,NULL,"Багерхат"),
(67,"Ковпак Владлен","Matver",27,NULL,"Виджаянагар"),
(68,"Луньков Лаврентий","Lukelix",54,NULL,"Карфаген"),
(69,"Мамин Радислав","Isaacvid",55,NULL,"Занаду"),
(70,"Песков Пимен","Samy",53,"МигТим","Тикаль"),
(71,"Потапов Лукьян","Feja",48,"СтройРысаки","Карфаген"),
(72,"Родин Изяслав","Lewlie",27,NULL,"Ктесифон"),
(73,"Ряполов Марк","Dymy",23,NULL,"Карфаген"),
(74,"Сафронов Кир","Finlie",25,NULL,"Виджаянагар"),
(75,"Стаин Максимильян","Theoden",54,"РусРысаки","Виджаянагар"),
(76,"Угольников Елисей","Witian",44,"СтройРысаки","Занаду"),
(77,"Шилов Мирон","Aaran",23,"ЮгТим","Багерхат"),
(78,"Эмин Евграф","Fredcha",33,"НикоРысаки","Ктесифон"),
(79,"Яковлев Филипп","Ronthan",49,NULL,"Карфаген");''')
      ..add('''
INSERT INTO participants (race_id, rider_id, number, category) VALUES
(1,1,2,"Девушки"),
(1,2,7,"Девушки"),
(1,3,14,"Девушки"),
(1,4,21,"Девушки"),
(1,5,31,"Девушки"),
(1,6,33,"Девушки"),
(1,7,37,"Девушки"),
(1,8,48,"Девушки"),
(1,9,56,"Девушки"),
(1,10,61,"Девушки"),
(1,11,9,"Любители"),
(1,12,11,"Любители"),
(1,13,16,"Любители"),
(1,14,25,"Любители"),
(1,15,26,"Любители"),
(1,16,28,"Любители"),
(1,17,34,"Любители"),
(1,18,40,"Любители"),
(1,19,42,"Любители"),
(1,20,54,"Любители"),
(1,21,55,"Любители"),
(1,22,60,"Любители"),
(1,23,65,"Любители"),
(1,24,66,"Любители"),
(1,25,67,"Любители"),
(1,26,78,"Любители"),
(1,27,6,"Юниоры"),
(1,28,15,"Юниоры"),
(1,29,17,"Юниоры"),
(1,30,19,"Юниоры"),
(1,31,35,"Юниоры"),
(1,32,45,"Юниоры"),
(1,33,68,"Юниоры"),
(1,34,72,"Юниоры"),
(1,35,77,"Юниоры"),
(1,36,3,"Юниоры"),
(1,37,4,"Юниоры"),
(1,38,8,"Юниоры"),
(1,39,18,"Юниоры"),
(1,40,20,"Юниоры"),
(1,41,22,"Юниоры"),
(1,42,24,"Юниоры"),
(1,43,29,"Юниоры"),
(1,44,41,"Юниоры"),
(1,45,47,"Юниоры"),
(1,46,57,"Юниоры"),
(1,47,58,"Юниоры"),
(1,48,62,"Юниоры"),
(1,49,64,"Мастера"),
(1,50,70,"Мастера"),
(1,51,75,"Мастера"),
(1,52,76,"Мастера"),
(1,53,79,"Мастера"),
(1,54,10,"Мастера"),
(1,55,30,"Мастера"),
(1,56,32,"Мастера"),
(1,57,39,"Мастера"),
(1,58,51,"Мастера"),
(1,59,52,"Мастера"),
(1,60,63,"Мастера"),
(1,61,74,"Мастера"),
(1,62,1,"Элита"),
(1,63,5,"Элита"),
(1,64,12,"Элита"),
(1,65,13,"Элита"),
(1,66,23,"Элита"),
(1,67,27,"Элита"),
(1,68,36,"Элита"),
(1,69,38,"Элита"),
(1,70,43,"Элита"),
(1,71,44,"Элита"),
(1,72,46,"Элита"),
(1,73,49,"Элита"),
(1,74,50,"Элита"),
(1,75,53,"Элита"),
(1,76,59,"Элита"),
(1,77,69,"Элита"),
(1,78,71,"Элита"),
(1,79,73,"Элита");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(1,1,"10:00:00"),
(1,2,"10:01:00"),
(1,3,"10:02:00"),
(1,4,"10:03:00"),
(1,5,"10:04:00"),
(1,6,"10:05:00"),
(1,7,"10:06:00"),
(1,8,"10:07:00"),
(1,9,"10:08:00"),
(1,10,"10:09:00"),
(1,11,"10:15:00"),
(1,12,"10:16:00"),
(1,13,"10:17:00"),
(1,14,"10:18:00"),
(1,15,"10:19:00"),
(1,16,"10:20:00"),
(1,17,"10:21:00"),
(1,18,"10:22:00"),
(1,19,"10:23:00"),
(1,20,"10:24:00"),
(1,21,"10:25:00"),
(1,22,"10:26:00"),
(1,23,"10:27:00"),
(1,24,"10:28:00"),
(1,25,"10:29:00"),
(1,26,"10:30:00"),
(1,27,"10:35:00"),
(1,28,"10:36:00"),
(1,29,"10:37:00"),
(1,30,"10:38:00"),
(1,31,"10:39:00"),
(1,32,"10:41:00"),
(1,33,"10:42:00"),
(1,34,"10:43:00"),
(1,35,"10:44:00"),
(1,36,"10:45:00"),
(1,37,"10:46:00"),
(1,38,"10:47:00"),
(1,39,"10:48:00"),
(1,40,"10:49:00"),
(1,41,"10:50:00"),
(1,42,"10:51:00"),
(1,43,"10:52:00"),
(1,44,"10:53:00"),
(1,45,"10:54:00"),
(1,46,"10:55:00"),
(1,47,"10:56:00"),
(1,48,"10:57:00"),
(1,49,"11:08:00"),
(1,50,"11:09:00"),
(1,51,"11:10:00"),
(1,52,"11:11:00"),
(1,53,"11:12:00"),
(1,54,"11:13:00"),
(1,55,"11:14:00"),
(1,56,"11:15:00"),
(1,57,"11:16:00"),
(1,58,"11:17:00"),
(1,59,"11:18:00"),
(1,60,"11:19:00"),
(1,61,"11:20:00"),
(1,62,"11:31:00"),
(1,63,"11:32:00"),
(1,64,"11:33:00"),
(1,65,"11:34:00"),
(1,66,"11:35:00"),
(1,67,"11:36:00"),
(1,68,"11:37:00"),
(1,69,"11:38:00"),
(1,70,"11:39:00"),
(1,71,"11:40:00"),
(1,72,"11:41:00"),
(1,73,"11:42:00"),
(1,74,"11:43:00"),
(1,75,"11:44:00"),
(1,76,"11:45:00"),
(1,77,"11:46:00"),
(1,78,"11:47:00"),
(1,79,"11:48:00");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(2,1,"00:00:00"),
(2,2,"11:01:00"),
(2,3,"11:02:00"),
(2,4,"11:03:00"),
(2,5,"11:04:00"),
(2,6,"11:05:00"),
(2,7,"11:06:00"),
(2,8,"11:07:00"),
(2,9,"11:08:00"),
(2,10,"11:09:00"),
(2,11,"11:10:00"),
(2,12,"11:11:00"),
(2,13,"11:12:00"),
(2,14,"11:13:00"),
(2,15,"11:14:00"),
(2,16,"11:15:00"),
(2,17,"11:16:00"),
(2,18,"11:17:00"),
(2,19,"11:18:00"),
(2,20,"11:19:00"),
(2,21,"11:20:00"),
(2,22,"11:21:00"),
(2,23,"11:22:00"),
(2,24,"11:23:00"),
(2,25,"11:24:00"),
(2,26,"11:25:00"),
(2,27,"11:26:00"),
(2,28,"11:27:00"),
(2,29,"11:28:00"),
(2,30,"11:29:00"),
(2,31,"11:30:00"),
(2,32,"11:31:00"),
(2,33,"11:32:00"),
(2,34,"11:33:00"),
(2,35,"11:34:00"),
(2,36,"11:35:00"),
(2,37,"11:36:00"),
(2,38,"11:37:00"),
(2,39,"11:38:00"),
(2,40,"11:39:00"),
(2,41,"11:40:00"),
(2,42,"11:41:00"),
(2,43,"11:42:00"),
(2,44,"11:43:00"),
(2,45,"11:44:00"),
(2,46,"11:45:00"),
(2,47,"11:46:00"),
(2,48,"11:47:00"),
(2,49,"11:48:00"),
(2,50,"11:49:00"),
(2,51,"11:50:00"),
(2,52,"11:51:00"),
(2,53,"11:52:00"),
(2,54,"11:53:00"),
(2,55,"11:54:00"),
(2,56,"11:55:00"),
(2,57,"11:56:00"),
(2,58,"11:57:00"),
(2,59,"11:58:00"),
(2,60,"11:59:00"),
(2,61,"12:00:00"),
(2,62,"12:01:00"),
(2,63,"12:02:00"),
(2,64,"12:03:00"),
(2,65,"12:04:00"),
(2,66,"12:05:00"),
(2,67,"12:06:00"),
(2,68,"12:07:00"),
(2,69,"12:08:00"),
(2,70,"12:09:00"),
(2,71,"12:10:00"),
(2,72,"12:11:00"),
(2,73,"12:12:00"),
(2,74,"12:13:00"),
(2,75,"12:14:00"),
(2,76,"12:15:00"),
(2,77,"12:16:00"),
(2,78,"12:17:00"),
(2,79,"12:18:00");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(3,1,"12:00:00"),
(3,2,"12:01:00"),
(3,3,"12:02:00"),
(3,4,"12:03:00"),
(3,5,"12:04:00"),
(3,6,"12:05:00"),
(3,7,"12:06:00"),
(3,8,"12:07:00"),
(3,9,"12:08:00"),
(3,10,"12:09:00"),
(3,11,"12:10:00"),
(3,12,"12:11:00"),
(3,13,"12:12:00"),
(3,14,"12:13:00"),
(3,15,"12:14:00"),
(3,16,"12:15:00"),
(3,17,"12:16:00"),
(3,18,"12:17:00"),
(3,19,"12:18:00"),
(3,20,"12:19:00"),
(3,21,"12:20:00"),
(3,22,"12:21:00"),
(3,23,"12:22:00"),
(3,24,"12:23:00"),
(3,25,"12:24:00"),
(3,26,"12:25:00"),
(3,27,"12:26:00"),
(3,28,"12:27:00"),
(3,29,"12:28:00"),
(3,30,"12:29:00"),
(3,31,"12:30:00"),
(3,32,"12:31:00"),
(3,33,"12:32:00"),
(3,34,"12:33:00"),
(3,35,"12:34:00"),
(3,36,"12:35:00"),
(3,37,"12:36:00"),
(3,38,"12:37:00"),
(3,39,"12:38:00"),
(3,40,"12:39:00"),
(3,41,"12:40:00"),
(3,42,"12:41:00"),
(3,43,"12:42:00"),
(3,44,"12:43:00"),
(3,45,"12:44:00"),
(3,46,"12:45:00"),
(3,47,"12:46:00"),
(3,48,"12:47:00"),
(3,49,"12:48:00"),
(3,50,"12:49:00"),
(3,51,"12:50:00"),
(3,52,"12:51:00"),
(3,53,"12:52:00"),
(3,54,"12:53:00"),
(3,55,"12:54:00"),
(3,56,"12:55:00"),
(3,57,"12:56:00"),
(3,58,"12:57:00"),
(3,59,"12:58:00"),
(3,60,"12:59:00"),
(3,61,"13:00:00"),
(3,62,"13:01:00"),
(3,63,"13:02:00"),
(3,64,"13:03:00"),
(3,65,"13:04:00"),
(3,66,"13:05:00"),
(3,67,"13:06:00"),
(3,68,"13:07:00"),
(3,69,"13:08:00"),
(3,70,"13:09:00"),
(3,71,"13:10:00"),
(3,72,"13:11:00"),
(3,73,"13:12:00"),
(3,74,"13:13:00"),
(3,75,"13:14:00"),
(3,76,"13:15:00"),
(3,77,"13:16:00"),
(3,78,"13:17:00"),
(3,79,"13:18:00");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(4,1,"13:00:00"),
(4,2,"13:01:00"),
(4,3,"13:02:00"),
(4,4,"13:03:00"),
(4,5,"13:04:00"),
(4,6,"13:05:00"),
(4,7,"13:06:00"),
(4,8,"13:07:00"),
(4,9,"13:08:00"),
(4,10,"13:09:00"),
(4,11,"13:10:00"),
(4,12,"13:11:00"),
(4,13,"13:12:00"),
(4,14,"13:13:00"),
(4,15,"13:14:00"),
(4,16,"13:15:00"),
(4,17,"13:16:00"),
(4,18,"13:17:00"),
(4,19,"13:18:00"),
(4,20,"13:19:00"),
(4,21,"13:20:00"),
(4,22,"13:21:00"),
(4,23,"13:22:00"),
(4,24,"13:23:00"),
(4,25,"13:24:00"),
(4,26,"13:25:00"),
(4,27,"13:26:00"),
(4,28,"13:27:00"),
(4,29,"13:28:00"),
(4,30,"13:29:00"),
(4,31,"13:30:00"),
(4,32,"13:31:00"),
(4,33,"13:32:00"),
(4,34,"13:33:00"),
(4,35,"13:34:00"),
(4,36,"13:35:00"),
(4,37,"13:36:00"),
(4,38,"13:37:00"),
(4,39,"13:38:00"),
(4,40,"13:39:00"),
(4,41,"13:40:00"),
(4,42,"13:41:00"),
(4,43,"13:42:00"),
(4,44,"13:43:00"),
(4,45,"13:44:00"),
(4,46,"13:45:00"),
(4,47,"13:46:00"),
(4,48,"13:47:00"),
(4,49,"13:48:00"),
(4,50,"13:49:00"),
(4,51,"13:50:00"),
(4,52,"13:51:00"),
(4,53,"13:52:00"),
(4,54,"13:53:00"),
(4,55,"13:54:00"),
(4,56,"13:55:00"),
(4,57,"13:56:00"),
(4,58,"13:57:00"),
(4,59,"13:58:00"),
(4,60,"13:59:00"),
(4,61,"14:00:00"),
(4,62,"14:01:00"),
(4,63,"14:02:00"),
(4,64,"14:03:00"),
(4,65,"14:04:00"),
(4,66,"14:05:00"),
(4,67,"14:06:00"),
(4,68,"14:07:00"),
(4,69,"14:08:00"),
(4,70,"14:09:00"),
(4,71,"14:10:00"),
(4,72,"14:11:00"),
(4,73,"14:12:00"),
(4,74,"14:13:00"),
(4,75,"14:14:00"),
(4,76,"14:15:00"),
(4,77,"14:16:00"),
(4,78,"14:17:00"),
(4,79,"14:18:00");''')
      ..add('''
INSERT INTO participants (race_id, rider_id, number, category) VALUES
(2,1,2,"Девушки"),
(2,2,7,"Девушки"),
(2,3,14,"Девушки"),
(2,4,21,"Девушки"),
(2,5,31,"Девушки"),
(2,6,33,"Девушки"),
(2,7,37,"Девушки"),
(2,8,48,"Девушки"),
(2,9,56,"Девушки"),
(2,10,61,"Девушки"),
(2,11,9,"Любители"),
(2,12,11,"Любители"),
(2,13,16,"Любители"),
(2,14,25,"Любители"),
(2,15,26,"Любители"),
(2,16,28,"Любители"),
(2,17,34,"Любители"),
(2,18,40,"Любители"),
(2,19,42,"Любители"),
(2,20,54,"Любители"),
(2,21,55,"Любители"),
(2,22,60,"Любители"),
(2,23,65,"Любители"),
(2,24,66,"Любители"),
(2,25,67,"Любители"),
(2,26,78,"Любители"),
(2,27,6,"Юниоры"),
(2,28,15,"Юниоры"),
(2,29,17,"Юниоры"),
(2,30,19,"Юниоры"),
(2,31,35,"Юниоры"),
(2,32,45,"Юниоры"),
(2,33,68,"Юниоры"),
(2,34,72,"Юниоры"),
(2,35,77,"Юниоры"),
(2,36,3,"Юниоры"),
(2,37,4,"Юниоры"),
(2,38,8,"Юниоры"),
(2,39,18,"Юниоры"),
(2,40,20,"Юниоры"),
(2,41,22,"Юниоры"),
(2,42,24,"Юниоры"),
(2,43,29,"Юниоры"),
(2,44,41,"Юниоры"),
(2,45,47,"Юниоры"),
(2,46,57,"Юниоры"),
(2,47,58,"Юниоры"),
(2,48,62,"Юниоры"),
(2,49,64,"Мастера"),
(2,50,70,"Мастера"),
(2,51,75,"Мастера"),
(2,52,76,"Мастера"),
(2,53,79,"Мастера"),
(2,54,10,"Мастера"),
(2,55,30,"Мастера"),
(2,56,32,"Мастера"),
(2,57,39,"Мастера"),
(2,58,51,"Мастера"),
(2,59,52,"Мастера"),
(2,60,63,"Мастера"),
(2,61,74,"Мастера"),
(2,62,1,"Элита"),
(2,63,5,"Элита"),
(2,64,12,"Элита"),
(2,65,13,"Элита"),
(2,66,23,"Элита"),
(2,67,27,"Элита"),
(2,68,36,"Элита"),
(2,69,38,"Элита"),
(2,70,43,"Элита"),
(2,71,44,"Элита"),
(2,72,46,"Элита"),
(2,73,49,"Элита"),
(2,74,50,"Элита"),
(2,75,53,"Элита"),
(2,76,59,"Элита"),
(2,77,69,"Элита"),
(2,78,71,"Элита"),
(2,79,73,"Элита");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(5,1,"10:00:00"),
(5,2,"10:01:00"),
(5,3,"10:02:00"),
(5,4,"10:03:00"),
(5,5,"10:04:00"),
(5,6,"10:05:00"),
(5,7,"10:06:00"),
(5,8,"10:07:00"),
(5,9,"10:08:00"),
(5,10,"10:09:00"),
(5,11,"10:10:00"),
(5,12,"10:11:00"),
(5,13,"10:12:00"),
(5,14,"10:13:00"),
(5,15,"10:14:00"),
(5,16,"10:15:00"),
(5,17,"10:16:00"),
(5,18,"10:17:00"),
(5,19,"10:18:00"),
(5,20,"10:19:00"),
(5,21,"10:20:00"),
(5,22,"10:21:00"),
(5,23,"10:22:00"),
(5,24,"10:23:00"),
(5,25,"10:24:00"),
(5,26,"10:25:00"),
(5,27,"10:26:00"),
(5,28,"10:27:00"),
(5,29,"10:28:00"),
(5,30,"10:29:00"),
(5,31,"10:30:00"),
(5,32,"10:31:00"),
(5,33,"10:32:00"),
(5,34,"10:33:00"),
(5,35,"10:34:00"),
(5,36,"10:35:00"),
(5,37,"10:36:00"),
(5,38,"10:37:00"),
(5,39,"10:38:00"),
(5,40,"10:39:00"),
(5,41,"10:40:00"),
(5,42,"10:41:00"),
(5,43,"10:42:00"),
(5,44,"10:43:00"),
(5,45,"10:44:00"),
(5,46,"10:45:00"),
(5,47,"10:46:00"),
(5,48,"10:47:00"),
(5,49,"10:48:00"),
(5,50,"10:49:00"),
(5,51,"10:50:00"),
(5,52,"10:51:00"),
(5,53,"10:52:00"),
(5,54,"10:53:00"),
(5,55,"10:54:00"),
(5,56,"10:55:00"),
(5,57,"10:56:00"),
(5,58,"10:57:00"),
(5,59,"10:58:00"),
(5,60,"10:59:00"),
(5,61,"11:00:00"),
(5,62,"11:01:00"),
(5,63,"11:02:00"),
(5,64,"11:03:00"),
(5,65,"11:04:00"),
(5,66,"11:05:00"),
(5,67,"11:06:00"),
(5,68,"11:07:00"),
(5,69,"11:08:00"),
(5,70,"11:09:00"),
(5,71,"11:10:00"),
(5,72,"11:11:00"),
(5,73,"11:12:00"),
(5,74,"11:13:00"),
(5,75,"11:14:00"),
(5,76,"11:15:00"),
(5,77,"11:16:00"),
(5,78,"11:17:00"),
(5,79,"11:18:00");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(6,1,"11:00:00"),
(6,2,"11:01:00"),
(6,3,"11:02:00"),
(6,4,"11:03:00"),
(6,5,"11:04:00"),
(6,6,"11:05:00"),
(6,7,"11:06:00"),
(6,8,"11:07:00"),
(6,9,"11:08:00"),
(6,10,"11:09:00"),
(6,11,"11:10:00"),
(6,12,"11:11:00"),
(6,13,"11:12:00"),
(6,14,"11:13:00"),
(6,15,"11:14:00"),
(6,16,"11:15:00"),
(6,17,"11:16:00"),
(6,18,"11:17:00"),
(6,19,"11:18:00"),
(6,20,"11:19:00"),
(6,21,"11:20:00"),
(6,22,"11:21:00"),
(6,23,"11:22:00"),
(6,24,"11:23:00"),
(6,25,"11:24:00"),
(6,26,"11:25:00"),
(6,27,"11:26:00"),
(6,28,"11:27:00"),
(6,29,"11:28:00"),
(6,30,"11:29:00"),
(6,31,"11:30:00"),
(6,32,"11:31:00"),
(6,33,"11:32:00"),
(6,34,"11:33:00"),
(6,35,"11:34:00"),
(6,36,"11:35:00"),
(6,37,"11:36:00"),
(6,38,"11:37:00"),
(6,39,"11:38:00"),
(6,40,"11:39:00"),
(6,41,"11:40:00"),
(6,42,"11:41:00"),
(6,43,"11:42:00"),
(6,44,"11:43:00"),
(6,45,"11:44:00"),
(6,46,"11:45:00"),
(6,47,"11:46:00"),
(6,48,"11:47:00"),
(6,49,"11:48:00"),
(6,50,"11:49:00"),
(6,51,"11:50:00"),
(6,52,"11:51:00"),
(6,53,"11:52:00"),
(6,54,"11:53:00"),
(6,55,"11:54:00"),
(6,56,"11:55:00"),
(6,57,"11:56:00"),
(6,58,"11:57:00"),
(6,59,"11:58:00"),
(6,60,"11:59:00"),
(6,61,"12:00:00"),
(6,62,"12:01:00"),
(6,63,"12:02:00"),
(6,64,"12:03:00"),
(6,65,"12:04:00"),
(6,66,"12:05:00"),
(6,67,"12:06:00"),
(6,68,"12:07:00"),
(6,69,"12:08:00"),
(6,70,"12:09:00"),
(6,71,"12:10:00"),
(6,72,"12:11:00"),
(6,73,"12:12:00"),
(6,74,"12:13:00"),
(6,75,"12:14:00"),
(6,76,"12:15:00"),
(6,77,"12:16:00"),
(6,78,"12:17:00"),
(6,79,"12:18:00");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(7,1,"12:00:00"),
(7,2,"12:01:00"),
(7,3,"12:02:00"),
(7,4,"12:03:00"),
(7,5,"12:04:00"),
(7,6,"12:05:00"),
(7,7,"12:06:00"),
(7,8,"12:07:00"),
(7,9,"12:08:00"),
(7,10,"12:09:00"),
(7,11,"12:10:00"),
(7,12,"12:11:00"),
(7,13,"12:12:00"),
(7,14,"12:13:00"),
(7,15,"12:14:00"),
(7,16,"12:15:00"),
(7,17,"12:16:00"),
(7,18,"12:17:00"),
(7,19,"12:18:00"),
(7,20,"12:19:00"),
(7,21,"12:20:00"),
(7,22,"12:21:00"),
(7,23,"12:22:00"),
(7,24,"12:23:00"),
(7,25,"12:24:00"),
(7,26,"12:25:00"),
(7,27,"12:26:00"),
(7,28,"12:27:00"),
(7,29,"12:28:00"),
(7,30,"12:29:00"),
(7,31,"12:30:00"),
(7,32,"12:31:00"),
(7,33,"12:32:00"),
(7,34,"12:33:00"),
(7,35,"12:34:00"),
(7,36,"12:35:00"),
(7,37,"12:36:00"),
(7,38,"12:37:00"),
(7,39,"12:38:00"),
(7,40,"12:39:00"),
(7,41,"12:40:00"),
(7,42,"12:41:00"),
(7,43,"12:42:00"),
(7,44,"12:43:00"),
(7,45,"12:44:00"),
(7,46,"12:45:00"),
(7,47,"12:46:00"),
(7,48,"12:47:00"),
(7,49,"12:48:00"),
(7,50,"12:49:00"),
(7,51,"12:50:00"),
(7,52,"12:51:00"),
(7,53,"12:52:00"),
(7,54,"12:53:00"),
(7,55,"12:54:00"),
(7,56,"12:55:00"),
(7,57,"12:56:00"),
(7,58,"12:57:00"),
(7,59,"12:58:00"),
(7,60,"12:59:00"),
(7,61,"13:00:00"),
(7,62,"13:01:00"),
(7,63,"13:02:00"),
(7,64,"13:03:00"),
(7,65,"13:04:00"),
(7,66,"13:05:00"),
(7,67,"13:06:00"),
(7,68,"13:07:00"),
(7,69,"13:08:00"),
(7,70,"13:09:00"),
(7,71,"13:10:00"),
(7,72,"13:11:00"),
(7,73,"13:12:00"),
(7,74,"13:13:00"),
(7,75,"13:14:00"),
(7,76,"13:15:00"),
(7,77,"13:16:00"),
(7,78,"13:17:00"),
(7,79,"13:18:00");''')
      ..add('''
INSERT INTO starts (stage_id, participant_id, start_time) VALUES
(8,1,"13:00:00"),
(8,2,"13:01:00"),
(8,3,"13:02:00"),
(8,4,"13:03:00"),
(8,5,"13:04:00"),
(8,6,"13:05:00"),
(8,7,"13:06:00"),
(8,8,"13:07:00"),
(8,9,"13:08:00"),
(8,10,"13:09:00"),
(8,11,"13:10:00"),
(8,12,"13:11:00"),
(8,13,"13:12:00"),
(8,14,"13:13:00"),
(8,15,"13:14:00"),
(8,16,"13:15:00"),
(8,17,"13:16:00"),
(8,18,"13:17:00"),
(8,19,"13:18:00"),
(8,20,"13:19:00"),
(8,21,"13:20:00"),
(8,22,"13:21:00"),
(8,23,"13:22:00"),
(8,24,"13:23:00"),
(8,25,"13:24:00"),
(8,26,"13:25:00"),
(8,27,"13:26:00"),
(8,28,"13:27:00"),
(8,29,"13:28:00"),
(8,30,"13:29:00"),
(8,31,"13:30:00"),
(8,32,"13:31:00"),
(8,33,"13:32:00"),
(8,34,"13:33:00"),
(8,35,"13:34:00"),
(8,36,"13:35:00"),
(8,37,"13:36:00"),
(8,38,"13:37:00"),
(8,39,"13:38:00"),
(8,40,"13:39:00"),
(8,41,"13:40:00"),
(8,42,"13:41:00"),
(8,43,"13:42:00"),
(8,44,"13:43:00"),
(8,45,"13:44:00"),
(8,46,"13:45:00"),
(8,47,"13:46:00"),
(8,48,"13:47:00"),
(8,49,"13:48:00"),
(8,50,"13:49:00"),
(8,51,"13:50:00"),
(8,52,"13:51:00"),
(8,53,"13:52:00"),
(8,54,"13:53:00"),
(8,55,"13:54:00"),
(8,56,"13:55:00"),
(8,57,"13:56:00"),
(8,58,"13:57:00"),
(8,59,"13:58:00"),
(8,60,"13:59:00"),
(8,61,"14:00:00"),
(8,62,"14:01:00"),
(8,63,"14:02:00"),
(8,64,"14:03:00"),
(8,65,"14:04:00"),
(8,66,"14:05:00"),
(8,67,"14:06:00"),
(8,68,"14:07:00"),
(8,69,"14:08:00"),
(8,70,"14:09:00"),
(8,71,"14:10:00"),
(8,72,"14:11:00"),
(8,73,"14:12:00"),
(8,74,"14:13:00"),
(8,75,"14:14:00"),
(8,76,"14:15:00"),
(8,77,"14:16:00"),
(8,78,"14:17:00"),
(8,79,"14:18:00");''');
  }

  List<String> queries = [];
}
