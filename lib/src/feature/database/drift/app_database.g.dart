// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class Races extends Table with TableInfo<Races, Race> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Races(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  late final GeneratedColumn<String> startDate = GeneratedColumn<String>(
      'start_date', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _finishDateMeta =
      const VerificationMeta('finishDate');
  late final GeneratedColumn<String> finishDate = GeneratedColumn<String>(
      'finish_date', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT FALSE',
      defaultValue: const CustomExpression('FALSE'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, startDate, finishDate, location, isDeleted];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'races';
  @override
  VerificationContext validateIntegrity(Insertable<Race> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('finish_date')) {
      context.handle(
          _finishDateMeta,
          finishDate.isAcceptableOrUnknown(
              data['finish_date']!, _finishDateMeta));
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Race map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Race(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}start_date']),
      finishDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}finish_date']),
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  Races createAlias(String alias) {
    return Races(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Race extends DataClass implements Insertable<Race> {
  final int? id;
  final String name;
  final String? startDate;
  final String? finishDate;
  final String? location;
  final bool isDeleted;
  const Race(
      {this.id,
      required this.name,
      this.startDate,
      this.finishDate,
      this.location,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<String>(startDate);
    }
    if (!nullToAbsent || finishDate != null) {
      map['finish_date'] = Variable<String>(finishDate);
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  RacesCompanion toCompanion(bool nullToAbsent) {
    return RacesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      finishDate: finishDate == null && nullToAbsent
          ? const Value.absent()
          : Value(finishDate),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      isDeleted: Value(isDeleted),
    );
  }

  factory Race.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Race(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      startDate: serializer.fromJson<String?>(json['start_date']),
      finishDate: serializer.fromJson<String?>(json['finish_date']),
      location: serializer.fromJson<String?>(json['location']),
      isDeleted: serializer.fromJson<bool>(json['is_deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
      'start_date': serializer.toJson<String?>(startDate),
      'finish_date': serializer.toJson<String?>(finishDate),
      'location': serializer.toJson<String?>(location),
      'is_deleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Race copyWith(
          {Value<int?> id = const Value.absent(),
          String? name,
          Value<String?> startDate = const Value.absent(),
          Value<String?> finishDate = const Value.absent(),
          Value<String?> location = const Value.absent(),
          bool? isDeleted}) =>
      Race(
        id: id.present ? id.value : this.id,
        name: name ?? this.name,
        startDate: startDate.present ? startDate.value : this.startDate,
        finishDate: finishDate.present ? finishDate.value : this.finishDate,
        location: location.present ? location.value : this.location,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  Race copyWithCompanion(RacesCompanion data) {
    return Race(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      finishDate:
          data.finishDate.present ? data.finishDate.value : this.finishDate,
      location: data.location.present ? data.location.value : this.location,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Race(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('finishDate: $finishDate, ')
          ..write('location: $location, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, startDate, finishDate, location, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Race &&
          other.id == this.id &&
          other.name == this.name &&
          other.startDate == this.startDate &&
          other.finishDate == this.finishDate &&
          other.location == this.location &&
          other.isDeleted == this.isDeleted);
}

class RacesCompanion extends UpdateCompanion<Race> {
  final Value<int?> id;
  final Value<String> name;
  final Value<String?> startDate;
  final Value<String?> finishDate;
  final Value<String?> location;
  final Value<bool> isDeleted;
  const RacesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.startDate = const Value.absent(),
    this.finishDate = const Value.absent(),
    this.location = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  RacesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.startDate = const Value.absent(),
    this.finishDate = const Value.absent(),
    this.location = const Value.absent(),
    this.isDeleted = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Race> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? startDate,
    Expression<String>? finishDate,
    Expression<String>? location,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (startDate != null) 'start_date': startDate,
      if (finishDate != null) 'finish_date': finishDate,
      if (location != null) 'location': location,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  RacesCompanion copyWith(
      {Value<int?>? id,
      Value<String>? name,
      Value<String?>? startDate,
      Value<String?>? finishDate,
      Value<String?>? location,
      Value<bool>? isDeleted}) {
    return RacesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      finishDate: finishDate ?? this.finishDate,
      location: location ?? this.location,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<String>(startDate.value);
    }
    if (finishDate.present) {
      map['finish_date'] = Variable<String>(finishDate.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RacesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('finishDate: $finishDate, ')
          ..write('location: $location, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }
}

class Trails extends Table with TableInfo<Trails, Trail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Trails(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _distanceMeta =
      const VerificationMeta('distance');
  late final GeneratedColumn<int> distance = GeneratedColumn<int>(
      'distance', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _elevationMeta =
      const VerificationMeta('elevation');
  late final GeneratedColumn<int> elevation = GeneratedColumn<int>(
      'elevation', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _gpxTrackMeta =
      const VerificationMeta('gpxTrack');
  late final GeneratedColumn<Uint8List> gpxTrack = GeneratedColumn<Uint8List>(
      'gpx_track', aliasedName, true,
      type: DriftSqlType.blob,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, distance, elevation, gpxTrack, link, comment];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trails';
  @override
  VerificationContext validateIntegrity(Insertable<Trail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('distance')) {
      context.handle(_distanceMeta,
          distance.isAcceptableOrUnknown(data['distance']!, _distanceMeta));
    }
    if (data.containsKey('elevation')) {
      context.handle(_elevationMeta,
          elevation.isAcceptableOrUnknown(data['elevation']!, _elevationMeta));
    }
    if (data.containsKey('gpx_track')) {
      context.handle(_gpxTrackMeta,
          gpxTrack.isAcceptableOrUnknown(data['gpx_track']!, _gpxTrackMeta));
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Trail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Trail(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      distance: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}distance']),
      elevation: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}elevation']),
      gpxTrack: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}gpx_track']),
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link']),
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment']),
    );
  }

  @override
  Trails createAlias(String alias) {
    return Trails(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Trail extends DataClass implements Insertable<Trail> {
  final int? id;
  final String name;
  final int? distance;
  final int? elevation;
  final Uint8List? gpxTrack;
  final String? link;
  final String? comment;
  const Trail(
      {this.id,
      required this.name,
      this.distance,
      this.elevation,
      this.gpxTrack,
      this.link,
      this.comment});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || distance != null) {
      map['distance'] = Variable<int>(distance);
    }
    if (!nullToAbsent || elevation != null) {
      map['elevation'] = Variable<int>(elevation);
    }
    if (!nullToAbsent || gpxTrack != null) {
      map['gpx_track'] = Variable<Uint8List>(gpxTrack);
    }
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String>(link);
    }
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    return map;
  }

  TrailsCompanion toCompanion(bool nullToAbsent) {
    return TrailsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
      distance: distance == null && nullToAbsent
          ? const Value.absent()
          : Value(distance),
      elevation: elevation == null && nullToAbsent
          ? const Value.absent()
          : Value(elevation),
      gpxTrack: gpxTrack == null && nullToAbsent
          ? const Value.absent()
          : Value(gpxTrack),
      link: link == null && nullToAbsent ? const Value.absent() : Value(link),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
    );
  }

  factory Trail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Trail(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      distance: serializer.fromJson<int?>(json['distance']),
      elevation: serializer.fromJson<int?>(json['elevation']),
      gpxTrack: serializer.fromJson<Uint8List?>(json['gpx_track']),
      link: serializer.fromJson<String?>(json['link']),
      comment: serializer.fromJson<String?>(json['comment']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
      'distance': serializer.toJson<int?>(distance),
      'elevation': serializer.toJson<int?>(elevation),
      'gpx_track': serializer.toJson<Uint8List?>(gpxTrack),
      'link': serializer.toJson<String?>(link),
      'comment': serializer.toJson<String?>(comment),
    };
  }

  Trail copyWith(
          {Value<int?> id = const Value.absent(),
          String? name,
          Value<int?> distance = const Value.absent(),
          Value<int?> elevation = const Value.absent(),
          Value<Uint8List?> gpxTrack = const Value.absent(),
          Value<String?> link = const Value.absent(),
          Value<String?> comment = const Value.absent()}) =>
      Trail(
        id: id.present ? id.value : this.id,
        name: name ?? this.name,
        distance: distance.present ? distance.value : this.distance,
        elevation: elevation.present ? elevation.value : this.elevation,
        gpxTrack: gpxTrack.present ? gpxTrack.value : this.gpxTrack,
        link: link.present ? link.value : this.link,
        comment: comment.present ? comment.value : this.comment,
      );
  Trail copyWithCompanion(TrailsCompanion data) {
    return Trail(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      distance: data.distance.present ? data.distance.value : this.distance,
      elevation: data.elevation.present ? data.elevation.value : this.elevation,
      gpxTrack: data.gpxTrack.present ? data.gpxTrack.value : this.gpxTrack,
      link: data.link.present ? data.link.value : this.link,
      comment: data.comment.present ? data.comment.value : this.comment,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Trail(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('distance: $distance, ')
          ..write('elevation: $elevation, ')
          ..write('gpxTrack: $gpxTrack, ')
          ..write('link: $link, ')
          ..write('comment: $comment')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, distance, elevation,
      $driftBlobEquality.hash(gpxTrack), link, comment);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Trail &&
          other.id == this.id &&
          other.name == this.name &&
          other.distance == this.distance &&
          other.elevation == this.elevation &&
          $driftBlobEquality.equals(other.gpxTrack, this.gpxTrack) &&
          other.link == this.link &&
          other.comment == this.comment);
}

class TrailsCompanion extends UpdateCompanion<Trail> {
  final Value<int?> id;
  final Value<String> name;
  final Value<int?> distance;
  final Value<int?> elevation;
  final Value<Uint8List?> gpxTrack;
  final Value<String?> link;
  final Value<String?> comment;
  const TrailsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.distance = const Value.absent(),
    this.elevation = const Value.absent(),
    this.gpxTrack = const Value.absent(),
    this.link = const Value.absent(),
    this.comment = const Value.absent(),
  });
  TrailsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.distance = const Value.absent(),
    this.elevation = const Value.absent(),
    this.gpxTrack = const Value.absent(),
    this.link = const Value.absent(),
    this.comment = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Trail> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? distance,
    Expression<int>? elevation,
    Expression<Uint8List>? gpxTrack,
    Expression<String>? link,
    Expression<String>? comment,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (distance != null) 'distance': distance,
      if (elevation != null) 'elevation': elevation,
      if (gpxTrack != null) 'gpx_track': gpxTrack,
      if (link != null) 'link': link,
      if (comment != null) 'comment': comment,
    });
  }

  TrailsCompanion copyWith(
      {Value<int?>? id,
      Value<String>? name,
      Value<int?>? distance,
      Value<int?>? elevation,
      Value<Uint8List?>? gpxTrack,
      Value<String?>? link,
      Value<String?>? comment}) {
    return TrailsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      distance: distance ?? this.distance,
      elevation: elevation ?? this.elevation,
      gpxTrack: gpxTrack ?? this.gpxTrack,
      link: link ?? this.link,
      comment: comment ?? this.comment,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (distance.present) {
      map['distance'] = Variable<int>(distance.value);
    }
    if (elevation.present) {
      map['elevation'] = Variable<int>(elevation.value);
    }
    if (gpxTrack.present) {
      map['gpx_track'] = Variable<Uint8List>(gpxTrack.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrailsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('distance: $distance, ')
          ..write('elevation: $elevation, ')
          ..write('gpxTrack: $gpxTrack, ')
          ..write('link: $link, ')
          ..write('comment: $comment')
          ..write(')'))
        .toString();
  }
}

class Stages extends Table with TableInfo<Stages, Stage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Stages(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _trailIdMeta =
      const VerificationMeta('trailId');
  late final GeneratedColumn<int> trailId = GeneratedColumn<int>(
      'trail_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _raceIdMeta = const VerificationMeta('raceId');
  late final GeneratedColumn<int> raceId = GeneratedColumn<int>(
      'race_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT TRUE',
      defaultValue: const CustomExpression('TRUE'));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT FALSE',
      defaultValue: const CustomExpression('FALSE'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, trailId, raceId, name, isActive, isDeleted];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stages';
  @override
  VerificationContext validateIntegrity(Insertable<Stage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('trail_id')) {
      context.handle(_trailIdMeta,
          trailId.isAcceptableOrUnknown(data['trail_id']!, _trailIdMeta));
    }
    if (data.containsKey('race_id')) {
      context.handle(_raceIdMeta,
          raceId.isAcceptableOrUnknown(data['race_id']!, _raceIdMeta));
    } else if (isInserting) {
      context.missing(_raceIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Stage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Stage(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      trailId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}trail_id']),
      raceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}race_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  Stages createAlias(String alias) {
    return Stages(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(trail_id)REFERENCES trails(id)',
        'FOREIGN KEY(race_id)REFERENCES races(id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Stage extends DataClass implements Insertable<Stage> {
  final int? id;
  final int? trailId;
  final int raceId;
  final String name;
  final bool isActive;
  final bool isDeleted;
  const Stage(
      {this.id,
      this.trailId,
      required this.raceId,
      required this.name,
      required this.isActive,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || trailId != null) {
      map['trail_id'] = Variable<int>(trailId);
    }
    map['race_id'] = Variable<int>(raceId);
    map['name'] = Variable<String>(name);
    map['is_active'] = Variable<bool>(isActive);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  StagesCompanion toCompanion(bool nullToAbsent) {
    return StagesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      trailId: trailId == null && nullToAbsent
          ? const Value.absent()
          : Value(trailId),
      raceId: Value(raceId),
      name: Value(name),
      isActive: Value(isActive),
      isDeleted: Value(isDeleted),
    );
  }

  factory Stage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Stage(
      id: serializer.fromJson<int?>(json['id']),
      trailId: serializer.fromJson<int?>(json['trail_id']),
      raceId: serializer.fromJson<int>(json['race_id']),
      name: serializer.fromJson<String>(json['name']),
      isActive: serializer.fromJson<bool>(json['is_active']),
      isDeleted: serializer.fromJson<bool>(json['is_deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'trail_id': serializer.toJson<int?>(trailId),
      'race_id': serializer.toJson<int>(raceId),
      'name': serializer.toJson<String>(name),
      'is_active': serializer.toJson<bool>(isActive),
      'is_deleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Stage copyWith(
          {Value<int?> id = const Value.absent(),
          Value<int?> trailId = const Value.absent(),
          int? raceId,
          String? name,
          bool? isActive,
          bool? isDeleted}) =>
      Stage(
        id: id.present ? id.value : this.id,
        trailId: trailId.present ? trailId.value : this.trailId,
        raceId: raceId ?? this.raceId,
        name: name ?? this.name,
        isActive: isActive ?? this.isActive,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  Stage copyWithCompanion(StagesCompanion data) {
    return Stage(
      id: data.id.present ? data.id.value : this.id,
      trailId: data.trailId.present ? data.trailId.value : this.trailId,
      raceId: data.raceId.present ? data.raceId.value : this.raceId,
      name: data.name.present ? data.name.value : this.name,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Stage(')
          ..write('id: $id, ')
          ..write('trailId: $trailId, ')
          ..write('raceId: $raceId, ')
          ..write('name: $name, ')
          ..write('isActive: $isActive, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, trailId, raceId, name, isActive, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stage &&
          other.id == this.id &&
          other.trailId == this.trailId &&
          other.raceId == this.raceId &&
          other.name == this.name &&
          other.isActive == this.isActive &&
          other.isDeleted == this.isDeleted);
}

class StagesCompanion extends UpdateCompanion<Stage> {
  final Value<int?> id;
  final Value<int?> trailId;
  final Value<int> raceId;
  final Value<String> name;
  final Value<bool> isActive;
  final Value<bool> isDeleted;
  const StagesCompanion({
    this.id = const Value.absent(),
    this.trailId = const Value.absent(),
    this.raceId = const Value.absent(),
    this.name = const Value.absent(),
    this.isActive = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  StagesCompanion.insert({
    this.id = const Value.absent(),
    this.trailId = const Value.absent(),
    required int raceId,
    required String name,
    this.isActive = const Value.absent(),
    this.isDeleted = const Value.absent(),
  })  : raceId = Value(raceId),
        name = Value(name);
  static Insertable<Stage> custom({
    Expression<int>? id,
    Expression<int>? trailId,
    Expression<int>? raceId,
    Expression<String>? name,
    Expression<bool>? isActive,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (trailId != null) 'trail_id': trailId,
      if (raceId != null) 'race_id': raceId,
      if (name != null) 'name': name,
      if (isActive != null) 'is_active': isActive,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  StagesCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? trailId,
      Value<int>? raceId,
      Value<String>? name,
      Value<bool>? isActive,
      Value<bool>? isDeleted}) {
    return StagesCompanion(
      id: id ?? this.id,
      trailId: trailId ?? this.trailId,
      raceId: raceId ?? this.raceId,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (trailId.present) {
      map['trail_id'] = Variable<int>(trailId.value);
    }
    if (raceId.present) {
      map['race_id'] = Variable<int>(raceId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StagesCompanion(')
          ..write('id: $id, ')
          ..write('trailId: $trailId, ')
          ..write('raceId: $raceId, ')
          ..write('name: $name, ')
          ..write('isActive: $isActive, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }
}

class Riders extends Table with TableInfo<Riders, Rider> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Riders(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _birthdayMeta =
      const VerificationMeta('birthday');
  late final GeneratedColumn<String> birthday = GeneratedColumn<String>(
      'birthday', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _teamMeta = const VerificationMeta('team');
  late final GeneratedColumn<String> team = GeneratedColumn<String>(
      'team', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, nickname, birthday, team, city, email, phone, comment];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'riders';
  @override
  VerificationContext validateIntegrity(Insertable<Rider> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    }
    if (data.containsKey('birthday')) {
      context.handle(_birthdayMeta,
          birthday.isAcceptableOrUnknown(data['birthday']!, _birthdayMeta));
    }
    if (data.containsKey('team')) {
      context.handle(
          _teamMeta, team.isAcceptableOrUnknown(data['team']!, _teamMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Rider map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Rider(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname']),
      birthday: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}birthday']),
      team: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment']),
    );
  }

  @override
  Riders createAlias(String alias) {
    return Riders(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Rider extends DataClass implements Insertable<Rider> {
  final int? id;
  final String name;
  final String? nickname;
  final String? birthday;
  final String? team;
  final String? city;
  final String? email;
  final String? phone;
  final String? comment;
  const Rider(
      {this.id,
      required this.name,
      this.nickname,
      this.birthday,
      this.team,
      this.city,
      this.email,
      this.phone,
      this.comment});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nickname != null) {
      map['nickname'] = Variable<String>(nickname);
    }
    if (!nullToAbsent || birthday != null) {
      map['birthday'] = Variable<String>(birthday);
    }
    if (!nullToAbsent || team != null) {
      map['team'] = Variable<String>(team);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    return map;
  }

  RidersCompanion toCompanion(bool nullToAbsent) {
    return RidersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
      nickname: nickname == null && nullToAbsent
          ? const Value.absent()
          : Value(nickname),
      birthday: birthday == null && nullToAbsent
          ? const Value.absent()
          : Value(birthday),
      team: team == null && nullToAbsent ? const Value.absent() : Value(team),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
    );
  }

  factory Rider.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Rider(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nickname: serializer.fromJson<String?>(json['nickname']),
      birthday: serializer.fromJson<String?>(json['birthday']),
      team: serializer.fromJson<String?>(json['team']),
      city: serializer.fromJson<String?>(json['city']),
      email: serializer.fromJson<String?>(json['email']),
      phone: serializer.fromJson<String?>(json['phone']),
      comment: serializer.fromJson<String?>(json['comment']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
      'nickname': serializer.toJson<String?>(nickname),
      'birthday': serializer.toJson<String?>(birthday),
      'team': serializer.toJson<String?>(team),
      'city': serializer.toJson<String?>(city),
      'email': serializer.toJson<String?>(email),
      'phone': serializer.toJson<String?>(phone),
      'comment': serializer.toJson<String?>(comment),
    };
  }

  Rider copyWith(
          {Value<int?> id = const Value.absent(),
          String? name,
          Value<String?> nickname = const Value.absent(),
          Value<String?> birthday = const Value.absent(),
          Value<String?> team = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> comment = const Value.absent()}) =>
      Rider(
        id: id.present ? id.value : this.id,
        name: name ?? this.name,
        nickname: nickname.present ? nickname.value : this.nickname,
        birthday: birthday.present ? birthday.value : this.birthday,
        team: team.present ? team.value : this.team,
        city: city.present ? city.value : this.city,
        email: email.present ? email.value : this.email,
        phone: phone.present ? phone.value : this.phone,
        comment: comment.present ? comment.value : this.comment,
      );
  Rider copyWithCompanion(RidersCompanion data) {
    return Rider(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      birthday: data.birthday.present ? data.birthday.value : this.birthday,
      team: data.team.present ? data.team.value : this.team,
      city: data.city.present ? data.city.value : this.city,
      email: data.email.present ? data.email.value : this.email,
      phone: data.phone.present ? data.phone.value : this.phone,
      comment: data.comment.present ? data.comment.value : this.comment,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Rider(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nickname: $nickname, ')
          ..write('birthday: $birthday, ')
          ..write('team: $team, ')
          ..write('city: $city, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('comment: $comment')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, nickname, birthday, team, city, email, phone, comment);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rider &&
          other.id == this.id &&
          other.name == this.name &&
          other.nickname == this.nickname &&
          other.birthday == this.birthday &&
          other.team == this.team &&
          other.city == this.city &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.comment == this.comment);
}

class RidersCompanion extends UpdateCompanion<Rider> {
  final Value<int?> id;
  final Value<String> name;
  final Value<String?> nickname;
  final Value<String?> birthday;
  final Value<String?> team;
  final Value<String?> city;
  final Value<String?> email;
  final Value<String?> phone;
  final Value<String?> comment;
  const RidersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nickname = const Value.absent(),
    this.birthday = const Value.absent(),
    this.team = const Value.absent(),
    this.city = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.comment = const Value.absent(),
  });
  RidersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.nickname = const Value.absent(),
    this.birthday = const Value.absent(),
    this.team = const Value.absent(),
    this.city = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.comment = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Rider> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? nickname,
    Expression<String>? birthday,
    Expression<String>? team,
    Expression<String>? city,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? comment,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nickname != null) 'nickname': nickname,
      if (birthday != null) 'birthday': birthday,
      if (team != null) 'team': team,
      if (city != null) 'city': city,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (comment != null) 'comment': comment,
    });
  }

  RidersCompanion copyWith(
      {Value<int?>? id,
      Value<String>? name,
      Value<String?>? nickname,
      Value<String?>? birthday,
      Value<String?>? team,
      Value<String?>? city,
      Value<String?>? email,
      Value<String?>? phone,
      Value<String?>? comment}) {
    return RidersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nickname: nickname ?? this.nickname,
      birthday: birthday ?? this.birthday,
      team: team ?? this.team,
      city: city ?? this.city,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      comment: comment ?? this.comment,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (birthday.present) {
      map['birthday'] = Variable<String>(birthday.value);
    }
    if (team.present) {
      map['team'] = Variable<String>(team.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RidersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nickname: $nickname, ')
          ..write('birthday: $birthday, ')
          ..write('team: $team, ')
          ..write('city: $city, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('comment: $comment')
          ..write(')'))
        .toString();
  }
}

class Statuses extends Table with TableInfo<Statuses, Status> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Statuses(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'statuses';
  @override
  VerificationContext validateIntegrity(Insertable<Status> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Status map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Status(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
    );
  }

  @override
  Statuses createAlias(String alias) {
    return Statuses(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Status extends DataClass implements Insertable<Status> {
  final int? id;
  final String type;
  const Status({this.id, required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['type'] = Variable<String>(type);
    return map;
  }

  StatusesCompanion toCompanion(bool nullToAbsent) {
    return StatusesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      type: Value(type),
    );
  }

  factory Status.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Status(
      id: serializer.fromJson<int?>(json['id']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'type': serializer.toJson<String>(type),
    };
  }

  Status copyWith({Value<int?> id = const Value.absent(), String? type}) =>
      Status(
        id: id.present ? id.value : this.id,
        type: type ?? this.type,
      );
  Status copyWithCompanion(StatusesCompanion data) {
    return Status(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Status(')
          ..write('id: $id, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Status && other.id == this.id && other.type == this.type);
}

class StatusesCompanion extends UpdateCompanion<Status> {
  final Value<int?> id;
  final Value<String> type;
  const StatusesCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
  });
  StatusesCompanion.insert({
    this.id = const Value.absent(),
    required String type,
  }) : type = Value(type);
  static Insertable<Status> custom({
    Expression<int>? id,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    });
  }

  StatusesCompanion copyWith({Value<int?>? id, Value<String>? type}) {
    return StatusesCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatusesCompanion(')
          ..write('id: $id, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class Participants extends Table with TableInfo<Participants, Participant> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Participants(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _raceIdMeta = const VerificationMeta('raceId');
  late final GeneratedColumn<int> raceId = GeneratedColumn<int>(
      'race_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _riderIdMeta =
      const VerificationMeta('riderId');
  late final GeneratedColumn<int> riderId = GeneratedColumn<int>(
      'rider_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _rfidMeta = const VerificationMeta('rfid');
  late final GeneratedColumn<String> rfid = GeneratedColumn<String>(
      'rfid', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _statusIdMeta =
      const VerificationMeta('statusId');
  late final GeneratedColumn<int> statusId = GeneratedColumn<int>(
      'status_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 1',
      defaultValue: const CustomExpression('1'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, raceId, riderId, number, category, rfid, statusId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'participants';
  @override
  VerificationContext validateIntegrity(Insertable<Participant> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('race_id')) {
      context.handle(_raceIdMeta,
          raceId.isAcceptableOrUnknown(data['race_id']!, _raceIdMeta));
    } else if (isInserting) {
      context.missing(_raceIdMeta);
    }
    if (data.containsKey('rider_id')) {
      context.handle(_riderIdMeta,
          riderId.isAcceptableOrUnknown(data['rider_id']!, _riderIdMeta));
    } else if (isInserting) {
      context.missing(_riderIdMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('rfid')) {
      context.handle(
          _rfidMeta, rfid.isAcceptableOrUnknown(data['rfid']!, _rfidMeta));
    }
    if (data.containsKey('status_id')) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableOrUnknown(data['status_id']!, _statusIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Participant map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Participant(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      raceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}race_id'])!,
      riderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rider_id'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      rfid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rfid']),
      statusId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status_id'])!,
    );
  }

  @override
  Participants createAlias(String alias) {
    return Participants(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(rider_id)REFERENCES riders(id)',
        'FOREIGN KEY(race_id)REFERENCES races(id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Participant extends DataClass implements Insertable<Participant> {
  final int? id;
  final int raceId;
  final int riderId;
  final int number;
  final String category;
  final String? rfid;
  final int statusId;
  const Participant(
      {this.id,
      required this.raceId,
      required this.riderId,
      required this.number,
      required this.category,
      this.rfid,
      required this.statusId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['race_id'] = Variable<int>(raceId);
    map['rider_id'] = Variable<int>(riderId);
    map['number'] = Variable<int>(number);
    map['category'] = Variable<String>(category);
    if (!nullToAbsent || rfid != null) {
      map['rfid'] = Variable<String>(rfid);
    }
    map['status_id'] = Variable<int>(statusId);
    return map;
  }

  ParticipantsCompanion toCompanion(bool nullToAbsent) {
    return ParticipantsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      raceId: Value(raceId),
      riderId: Value(riderId),
      number: Value(number),
      category: Value(category),
      rfid: rfid == null && nullToAbsent ? const Value.absent() : Value(rfid),
      statusId: Value(statusId),
    );
  }

  factory Participant.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Participant(
      id: serializer.fromJson<int?>(json['id']),
      raceId: serializer.fromJson<int>(json['race_id']),
      riderId: serializer.fromJson<int>(json['rider_id']),
      number: serializer.fromJson<int>(json['number']),
      category: serializer.fromJson<String>(json['category']),
      rfid: serializer.fromJson<String?>(json['rfid']),
      statusId: serializer.fromJson<int>(json['status_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'race_id': serializer.toJson<int>(raceId),
      'rider_id': serializer.toJson<int>(riderId),
      'number': serializer.toJson<int>(number),
      'category': serializer.toJson<String>(category),
      'rfid': serializer.toJson<String?>(rfid),
      'status_id': serializer.toJson<int>(statusId),
    };
  }

  Participant copyWith(
          {Value<int?> id = const Value.absent(),
          int? raceId,
          int? riderId,
          int? number,
          String? category,
          Value<String?> rfid = const Value.absent(),
          int? statusId}) =>
      Participant(
        id: id.present ? id.value : this.id,
        raceId: raceId ?? this.raceId,
        riderId: riderId ?? this.riderId,
        number: number ?? this.number,
        category: category ?? this.category,
        rfid: rfid.present ? rfid.value : this.rfid,
        statusId: statusId ?? this.statusId,
      );
  Participant copyWithCompanion(ParticipantsCompanion data) {
    return Participant(
      id: data.id.present ? data.id.value : this.id,
      raceId: data.raceId.present ? data.raceId.value : this.raceId,
      riderId: data.riderId.present ? data.riderId.value : this.riderId,
      number: data.number.present ? data.number.value : this.number,
      category: data.category.present ? data.category.value : this.category,
      rfid: data.rfid.present ? data.rfid.value : this.rfid,
      statusId: data.statusId.present ? data.statusId.value : this.statusId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Participant(')
          ..write('id: $id, ')
          ..write('raceId: $raceId, ')
          ..write('riderId: $riderId, ')
          ..write('number: $number, ')
          ..write('category: $category, ')
          ..write('rfid: $rfid, ')
          ..write('statusId: $statusId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, raceId, riderId, number, category, rfid, statusId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Participant &&
          other.id == this.id &&
          other.raceId == this.raceId &&
          other.riderId == this.riderId &&
          other.number == this.number &&
          other.category == this.category &&
          other.rfid == this.rfid &&
          other.statusId == this.statusId);
}

class ParticipantsCompanion extends UpdateCompanion<Participant> {
  final Value<int?> id;
  final Value<int> raceId;
  final Value<int> riderId;
  final Value<int> number;
  final Value<String> category;
  final Value<String?> rfid;
  final Value<int> statusId;
  const ParticipantsCompanion({
    this.id = const Value.absent(),
    this.raceId = const Value.absent(),
    this.riderId = const Value.absent(),
    this.number = const Value.absent(),
    this.category = const Value.absent(),
    this.rfid = const Value.absent(),
    this.statusId = const Value.absent(),
  });
  ParticipantsCompanion.insert({
    this.id = const Value.absent(),
    required int raceId,
    required int riderId,
    required int number,
    required String category,
    this.rfid = const Value.absent(),
    this.statusId = const Value.absent(),
  })  : raceId = Value(raceId),
        riderId = Value(riderId),
        number = Value(number),
        category = Value(category);
  static Insertable<Participant> custom({
    Expression<int>? id,
    Expression<int>? raceId,
    Expression<int>? riderId,
    Expression<int>? number,
    Expression<String>? category,
    Expression<String>? rfid,
    Expression<int>? statusId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (raceId != null) 'race_id': raceId,
      if (riderId != null) 'rider_id': riderId,
      if (number != null) 'number': number,
      if (category != null) 'category': category,
      if (rfid != null) 'rfid': rfid,
      if (statusId != null) 'status_id': statusId,
    });
  }

  ParticipantsCompanion copyWith(
      {Value<int?>? id,
      Value<int>? raceId,
      Value<int>? riderId,
      Value<int>? number,
      Value<String>? category,
      Value<String?>? rfid,
      Value<int>? statusId}) {
    return ParticipantsCompanion(
      id: id ?? this.id,
      raceId: raceId ?? this.raceId,
      riderId: riderId ?? this.riderId,
      number: number ?? this.number,
      category: category ?? this.category,
      rfid: rfid ?? this.rfid,
      statusId: statusId ?? this.statusId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (raceId.present) {
      map['race_id'] = Variable<int>(raceId.value);
    }
    if (riderId.present) {
      map['rider_id'] = Variable<int>(riderId.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (rfid.present) {
      map['rfid'] = Variable<String>(rfid.value);
    }
    if (statusId.present) {
      map['status_id'] = Variable<int>(statusId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParticipantsCompanion(')
          ..write('id: $id, ')
          ..write('raceId: $raceId, ')
          ..write('riderId: $riderId, ')
          ..write('number: $number, ')
          ..write('category: $category, ')
          ..write('rfid: $rfid, ')
          ..write('statusId: $statusId')
          ..write(')'))
        .toString();
  }
}

class Finishes extends Table with TableInfo<Finishes, Finish> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Finishes(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _stageIdMeta =
      const VerificationMeta('stageId');
  late final GeneratedColumn<int> stageId = GeneratedColumn<int>(
      'stage_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  late final GeneratedColumn<String> timestamp = GeneratedColumn<String>(
      'timestamp', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _finishTimeMeta =
      const VerificationMeta('finishTime');
  late final GeneratedColumn<String> finishTime = GeneratedColumn<String>(
      'finish_time', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _isHiddenMeta =
      const VerificationMeta('isHidden');
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
      'is_hidden', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT FALSE',
      defaultValue: const CustomExpression('FALSE'));
  static const VerificationMeta _isManualMeta =
      const VerificationMeta('isManual');
  late final GeneratedColumn<bool> isManual = GeneratedColumn<bool>(
      'is_manual', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT FALSE',
      defaultValue: const CustomExpression('FALSE'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, stageId, number, timestamp, finishTime, isHidden, isManual];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'finishes';
  @override
  VerificationContext validateIntegrity(Insertable<Finish> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stage_id')) {
      context.handle(_stageIdMeta,
          stageId.isAcceptableOrUnknown(data['stage_id']!, _stageIdMeta));
    } else if (isInserting) {
      context.missing(_stageIdMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    }
    if (data.containsKey('finish_time')) {
      context.handle(
          _finishTimeMeta,
          finishTime.isAcceptableOrUnknown(
              data['finish_time']!, _finishTimeMeta));
    }
    if (data.containsKey('is_hidden')) {
      context.handle(_isHiddenMeta,
          isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta));
    }
    if (data.containsKey('is_manual')) {
      context.handle(_isManualMeta,
          isManual.isAcceptableOrUnknown(data['is_manual']!, _isManualMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Finish map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Finish(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      stageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stage_id'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number']),
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timestamp']),
      finishTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}finish_time']),
      isHidden: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_hidden'])!,
      isManual: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_manual'])!,
    );
  }

  @override
  Finishes createAlias(String alias) {
    return Finishes(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['FOREIGN KEY(stage_id)REFERENCES stages(id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Finish extends DataClass implements Insertable<Finish> {
  final int? id;
  final int stageId;
  final int? number;
  final String? timestamp;
  final String? finishTime;
  final bool isHidden;
  final bool isManual;
  const Finish(
      {this.id,
      required this.stageId,
      this.number,
      this.timestamp,
      this.finishTime,
      required this.isHidden,
      required this.isManual});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['stage_id'] = Variable<int>(stageId);
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<int>(number);
    }
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<String>(timestamp);
    }
    if (!nullToAbsent || finishTime != null) {
      map['finish_time'] = Variable<String>(finishTime);
    }
    map['is_hidden'] = Variable<bool>(isHidden);
    map['is_manual'] = Variable<bool>(isManual);
    return map;
  }

  FinishesCompanion toCompanion(bool nullToAbsent) {
    return FinishesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      stageId: Value(stageId),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
      finishTime: finishTime == null && nullToAbsent
          ? const Value.absent()
          : Value(finishTime),
      isHidden: Value(isHidden),
      isManual: Value(isManual),
    );
  }

  factory Finish.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Finish(
      id: serializer.fromJson<int?>(json['id']),
      stageId: serializer.fromJson<int>(json['stage_id']),
      number: serializer.fromJson<int?>(json['number']),
      timestamp: serializer.fromJson<String?>(json['timestamp']),
      finishTime: serializer.fromJson<String?>(json['finish_time']),
      isHidden: serializer.fromJson<bool>(json['is_hidden']),
      isManual: serializer.fromJson<bool>(json['is_manual']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'stage_id': serializer.toJson<int>(stageId),
      'number': serializer.toJson<int?>(number),
      'timestamp': serializer.toJson<String?>(timestamp),
      'finish_time': serializer.toJson<String?>(finishTime),
      'is_hidden': serializer.toJson<bool>(isHidden),
      'is_manual': serializer.toJson<bool>(isManual),
    };
  }

  Finish copyWith(
          {Value<int?> id = const Value.absent(),
          int? stageId,
          Value<int?> number = const Value.absent(),
          Value<String?> timestamp = const Value.absent(),
          Value<String?> finishTime = const Value.absent(),
          bool? isHidden,
          bool? isManual}) =>
      Finish(
        id: id.present ? id.value : this.id,
        stageId: stageId ?? this.stageId,
        number: number.present ? number.value : this.number,
        timestamp: timestamp.present ? timestamp.value : this.timestamp,
        finishTime: finishTime.present ? finishTime.value : this.finishTime,
        isHidden: isHidden ?? this.isHidden,
        isManual: isManual ?? this.isManual,
      );
  Finish copyWithCompanion(FinishesCompanion data) {
    return Finish(
      id: data.id.present ? data.id.value : this.id,
      stageId: data.stageId.present ? data.stageId.value : this.stageId,
      number: data.number.present ? data.number.value : this.number,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      finishTime:
          data.finishTime.present ? data.finishTime.value : this.finishTime,
      isHidden: data.isHidden.present ? data.isHidden.value : this.isHidden,
      isManual: data.isManual.present ? data.isManual.value : this.isManual,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Finish(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('number: $number, ')
          ..write('timestamp: $timestamp, ')
          ..write('finishTime: $finishTime, ')
          ..write('isHidden: $isHidden, ')
          ..write('isManual: $isManual')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, stageId, number, timestamp, finishTime, isHidden, isManual);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Finish &&
          other.id == this.id &&
          other.stageId == this.stageId &&
          other.number == this.number &&
          other.timestamp == this.timestamp &&
          other.finishTime == this.finishTime &&
          other.isHidden == this.isHidden &&
          other.isManual == this.isManual);
}

class FinishesCompanion extends UpdateCompanion<Finish> {
  final Value<int?> id;
  final Value<int> stageId;
  final Value<int?> number;
  final Value<String?> timestamp;
  final Value<String?> finishTime;
  final Value<bool> isHidden;
  final Value<bool> isManual;
  const FinishesCompanion({
    this.id = const Value.absent(),
    this.stageId = const Value.absent(),
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.finishTime = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.isManual = const Value.absent(),
  });
  FinishesCompanion.insert({
    this.id = const Value.absent(),
    required int stageId,
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.finishTime = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.isManual = const Value.absent(),
  }) : stageId = Value(stageId);
  static Insertable<Finish> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<int>? number,
    Expression<String>? timestamp,
    Expression<String>? finishTime,
    Expression<bool>? isHidden,
    Expression<bool>? isManual,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stageId != null) 'stage_id': stageId,
      if (number != null) 'number': number,
      if (timestamp != null) 'timestamp': timestamp,
      if (finishTime != null) 'finish_time': finishTime,
      if (isHidden != null) 'is_hidden': isHidden,
      if (isManual != null) 'is_manual': isManual,
    });
  }

  FinishesCompanion copyWith(
      {Value<int?>? id,
      Value<int>? stageId,
      Value<int?>? number,
      Value<String?>? timestamp,
      Value<String?>? finishTime,
      Value<bool>? isHidden,
      Value<bool>? isManual}) {
    return FinishesCompanion(
      id: id ?? this.id,
      stageId: stageId ?? this.stageId,
      number: number ?? this.number,
      timestamp: timestamp ?? this.timestamp,
      finishTime: finishTime ?? this.finishTime,
      isHidden: isHidden ?? this.isHidden,
      isManual: isManual ?? this.isManual,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stageId.present) {
      map['stage_id'] = Variable<int>(stageId.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<String>(timestamp.value);
    }
    if (finishTime.present) {
      map['finish_time'] = Variable<String>(finishTime.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (isManual.present) {
      map['is_manual'] = Variable<bool>(isManual.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FinishesCompanion(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('number: $number, ')
          ..write('timestamp: $timestamp, ')
          ..write('finishTime: $finishTime, ')
          ..write('isHidden: $isHidden, ')
          ..write('isManual: $isManual')
          ..write(')'))
        .toString();
  }
}

class Starts extends Table with TableInfo<Starts, Start> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Starts(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _stageIdMeta =
      const VerificationMeta('stageId');
  late final GeneratedColumn<int> stageId = GeneratedColumn<int>(
      'stage_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _participantIdMeta =
      const VerificationMeta('participantId');
  late final GeneratedColumn<int> participantId = GeneratedColumn<int>(
      'participant_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  late final GeneratedColumn<String> startTime = GeneratedColumn<String>(
      'start_time', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  late final GeneratedColumn<String> timestamp = GeneratedColumn<String>(
      'timestamp', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _automaticStartTimeMeta =
      const VerificationMeta('automaticStartTime');
  late final GeneratedColumn<String> automaticStartTime =
      GeneratedColumn<String>('automatic_start_time', aliasedName, true,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          $customConstraints: '');
  static const VerificationMeta _automaticCorrectionMeta =
      const VerificationMeta('automaticCorrection');
  late final GeneratedColumn<int> automaticCorrection = GeneratedColumn<int>(
      'automatic_correction', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _manualStartTimeMeta =
      const VerificationMeta('manualStartTime');
  late final GeneratedColumn<String> manualStartTime = GeneratedColumn<String>(
      'manual_start_time', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _manualCorrectionMeta =
      const VerificationMeta('manualCorrection');
  late final GeneratedColumn<int> manualCorrection = GeneratedColumn<int>(
      'manual_correction', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _statusIdMeta =
      const VerificationMeta('statusId');
  late final GeneratedColumn<int> statusId = GeneratedColumn<int>(
      'status_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 1',
      defaultValue: const CustomExpression('1'));
  static const VerificationMeta _finishIdMeta =
      const VerificationMeta('finishId');
  late final GeneratedColumn<int> finishId = GeneratedColumn<int>(
      'finish_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        stageId,
        participantId,
        startTime,
        timestamp,
        automaticStartTime,
        automaticCorrection,
        manualStartTime,
        manualCorrection,
        statusId,
        finishId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'starts';
  @override
  VerificationContext validateIntegrity(Insertable<Start> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stage_id')) {
      context.handle(_stageIdMeta,
          stageId.isAcceptableOrUnknown(data['stage_id']!, _stageIdMeta));
    } else if (isInserting) {
      context.missing(_stageIdMeta);
    }
    if (data.containsKey('participant_id')) {
      context.handle(
          _participantIdMeta,
          participantId.isAcceptableOrUnknown(
              data['participant_id']!, _participantIdMeta));
    } else if (isInserting) {
      context.missing(_participantIdMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    }
    if (data.containsKey('automatic_start_time')) {
      context.handle(
          _automaticStartTimeMeta,
          automaticStartTime.isAcceptableOrUnknown(
              data['automatic_start_time']!, _automaticStartTimeMeta));
    }
    if (data.containsKey('automatic_correction')) {
      context.handle(
          _automaticCorrectionMeta,
          automaticCorrection.isAcceptableOrUnknown(
              data['automatic_correction']!, _automaticCorrectionMeta));
    }
    if (data.containsKey('manual_start_time')) {
      context.handle(
          _manualStartTimeMeta,
          manualStartTime.isAcceptableOrUnknown(
              data['manual_start_time']!, _manualStartTimeMeta));
    }
    if (data.containsKey('manual_correction')) {
      context.handle(
          _manualCorrectionMeta,
          manualCorrection.isAcceptableOrUnknown(
              data['manual_correction']!, _manualCorrectionMeta));
    }
    if (data.containsKey('status_id')) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableOrUnknown(data['status_id']!, _statusIdMeta));
    }
    if (data.containsKey('finish_id')) {
      context.handle(_finishIdMeta,
          finishId.isAcceptableOrUnknown(data['finish_id']!, _finishIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Start map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Start(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      stageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stage_id'])!,
      participantId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}participant_id'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}start_time'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timestamp']),
      automaticStartTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}automatic_start_time']),
      automaticCorrection: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}automatic_correction']),
      manualStartTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}manual_start_time']),
      manualCorrection: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manual_correction']),
      statusId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status_id'])!,
      finishId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}finish_id']),
    );
  }

  @override
  Starts createAlias(String alias) {
    return Starts(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(stage_id)REFERENCES stages(id)',
        'FOREIGN KEY(participant_id)REFERENCES participants(id)',
        'FOREIGN KEY(finish_id)REFERENCES finishes(id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Start extends DataClass implements Insertable<Start> {
  final int? id;
  final int stageId;
  final int participantId;
  final String startTime;
  final String? timestamp;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  final int? finishId;
  const Start(
      {this.id,
      required this.stageId,
      required this.participantId,
      required this.startTime,
      this.timestamp,
      this.automaticStartTime,
      this.automaticCorrection,
      this.manualStartTime,
      this.manualCorrection,
      required this.statusId,
      this.finishId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['stage_id'] = Variable<int>(stageId);
    map['participant_id'] = Variable<int>(participantId);
    map['start_time'] = Variable<String>(startTime);
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<String>(timestamp);
    }
    if (!nullToAbsent || automaticStartTime != null) {
      map['automatic_start_time'] = Variable<String>(automaticStartTime);
    }
    if (!nullToAbsent || automaticCorrection != null) {
      map['automatic_correction'] = Variable<int>(automaticCorrection);
    }
    if (!nullToAbsent || manualStartTime != null) {
      map['manual_start_time'] = Variable<String>(manualStartTime);
    }
    if (!nullToAbsent || manualCorrection != null) {
      map['manual_correction'] = Variable<int>(manualCorrection);
    }
    map['status_id'] = Variable<int>(statusId);
    if (!nullToAbsent || finishId != null) {
      map['finish_id'] = Variable<int>(finishId);
    }
    return map;
  }

  StartsCompanion toCompanion(bool nullToAbsent) {
    return StartsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      stageId: Value(stageId),
      participantId: Value(participantId),
      startTime: Value(startTime),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
      automaticStartTime: automaticStartTime == null && nullToAbsent
          ? const Value.absent()
          : Value(automaticStartTime),
      automaticCorrection: automaticCorrection == null && nullToAbsent
          ? const Value.absent()
          : Value(automaticCorrection),
      manualStartTime: manualStartTime == null && nullToAbsent
          ? const Value.absent()
          : Value(manualStartTime),
      manualCorrection: manualCorrection == null && nullToAbsent
          ? const Value.absent()
          : Value(manualCorrection),
      statusId: Value(statusId),
      finishId: finishId == null && nullToAbsent
          ? const Value.absent()
          : Value(finishId),
    );
  }

  factory Start.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Start(
      id: serializer.fromJson<int?>(json['id']),
      stageId: serializer.fromJson<int>(json['stage_id']),
      participantId: serializer.fromJson<int>(json['participant_id']),
      startTime: serializer.fromJson<String>(json['start_time']),
      timestamp: serializer.fromJson<String?>(json['timestamp']),
      automaticStartTime:
          serializer.fromJson<String?>(json['automatic_start_time']),
      automaticCorrection:
          serializer.fromJson<int?>(json['automatic_correction']),
      manualStartTime: serializer.fromJson<String?>(json['manual_start_time']),
      manualCorrection: serializer.fromJson<int?>(json['manual_correction']),
      statusId: serializer.fromJson<int>(json['status_id']),
      finishId: serializer.fromJson<int?>(json['finish_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'stage_id': serializer.toJson<int>(stageId),
      'participant_id': serializer.toJson<int>(participantId),
      'start_time': serializer.toJson<String>(startTime),
      'timestamp': serializer.toJson<String?>(timestamp),
      'automatic_start_time': serializer.toJson<String?>(automaticStartTime),
      'automatic_correction': serializer.toJson<int?>(automaticCorrection),
      'manual_start_time': serializer.toJson<String?>(manualStartTime),
      'manual_correction': serializer.toJson<int?>(manualCorrection),
      'status_id': serializer.toJson<int>(statusId),
      'finish_id': serializer.toJson<int?>(finishId),
    };
  }

  Start copyWith(
          {Value<int?> id = const Value.absent(),
          int? stageId,
          int? participantId,
          String? startTime,
          Value<String?> timestamp = const Value.absent(),
          Value<String?> automaticStartTime = const Value.absent(),
          Value<int?> automaticCorrection = const Value.absent(),
          Value<String?> manualStartTime = const Value.absent(),
          Value<int?> manualCorrection = const Value.absent(),
          int? statusId,
          Value<int?> finishId = const Value.absent()}) =>
      Start(
        id: id.present ? id.value : this.id,
        stageId: stageId ?? this.stageId,
        participantId: participantId ?? this.participantId,
        startTime: startTime ?? this.startTime,
        timestamp: timestamp.present ? timestamp.value : this.timestamp,
        automaticStartTime: automaticStartTime.present
            ? automaticStartTime.value
            : this.automaticStartTime,
        automaticCorrection: automaticCorrection.present
            ? automaticCorrection.value
            : this.automaticCorrection,
        manualStartTime: manualStartTime.present
            ? manualStartTime.value
            : this.manualStartTime,
        manualCorrection: manualCorrection.present
            ? manualCorrection.value
            : this.manualCorrection,
        statusId: statusId ?? this.statusId,
        finishId: finishId.present ? finishId.value : this.finishId,
      );
  Start copyWithCompanion(StartsCompanion data) {
    return Start(
      id: data.id.present ? data.id.value : this.id,
      stageId: data.stageId.present ? data.stageId.value : this.stageId,
      participantId: data.participantId.present
          ? data.participantId.value
          : this.participantId,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      automaticStartTime: data.automaticStartTime.present
          ? data.automaticStartTime.value
          : this.automaticStartTime,
      automaticCorrection: data.automaticCorrection.present
          ? data.automaticCorrection.value
          : this.automaticCorrection,
      manualStartTime: data.manualStartTime.present
          ? data.manualStartTime.value
          : this.manualStartTime,
      manualCorrection: data.manualCorrection.present
          ? data.manualCorrection.value
          : this.manualCorrection,
      statusId: data.statusId.present ? data.statusId.value : this.statusId,
      finishId: data.finishId.present ? data.finishId.value : this.finishId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Start(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('participantId: $participantId, ')
          ..write('startTime: $startTime, ')
          ..write('timestamp: $timestamp, ')
          ..write('automaticStartTime: $automaticStartTime, ')
          ..write('automaticCorrection: $automaticCorrection, ')
          ..write('manualStartTime: $manualStartTime, ')
          ..write('manualCorrection: $manualCorrection, ')
          ..write('statusId: $statusId, ')
          ..write('finishId: $finishId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      stageId,
      participantId,
      startTime,
      timestamp,
      automaticStartTime,
      automaticCorrection,
      manualStartTime,
      manualCorrection,
      statusId,
      finishId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Start &&
          other.id == this.id &&
          other.stageId == this.stageId &&
          other.participantId == this.participantId &&
          other.startTime == this.startTime &&
          other.timestamp == this.timestamp &&
          other.automaticStartTime == this.automaticStartTime &&
          other.automaticCorrection == this.automaticCorrection &&
          other.manualStartTime == this.manualStartTime &&
          other.manualCorrection == this.manualCorrection &&
          other.statusId == this.statusId &&
          other.finishId == this.finishId);
}

class StartsCompanion extends UpdateCompanion<Start> {
  final Value<int?> id;
  final Value<int> stageId;
  final Value<int> participantId;
  final Value<String> startTime;
  final Value<String?> timestamp;
  final Value<String?> automaticStartTime;
  final Value<int?> automaticCorrection;
  final Value<String?> manualStartTime;
  final Value<int?> manualCorrection;
  final Value<int> statusId;
  final Value<int?> finishId;
  const StartsCompanion({
    this.id = const Value.absent(),
    this.stageId = const Value.absent(),
    this.participantId = const Value.absent(),
    this.startTime = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.automaticStartTime = const Value.absent(),
    this.automaticCorrection = const Value.absent(),
    this.manualStartTime = const Value.absent(),
    this.manualCorrection = const Value.absent(),
    this.statusId = const Value.absent(),
    this.finishId = const Value.absent(),
  });
  StartsCompanion.insert({
    this.id = const Value.absent(),
    required int stageId,
    required int participantId,
    required String startTime,
    this.timestamp = const Value.absent(),
    this.automaticStartTime = const Value.absent(),
    this.automaticCorrection = const Value.absent(),
    this.manualStartTime = const Value.absent(),
    this.manualCorrection = const Value.absent(),
    this.statusId = const Value.absent(),
    this.finishId = const Value.absent(),
  })  : stageId = Value(stageId),
        participantId = Value(participantId),
        startTime = Value(startTime);
  static Insertable<Start> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<int>? participantId,
    Expression<String>? startTime,
    Expression<String>? timestamp,
    Expression<String>? automaticStartTime,
    Expression<int>? automaticCorrection,
    Expression<String>? manualStartTime,
    Expression<int>? manualCorrection,
    Expression<int>? statusId,
    Expression<int>? finishId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stageId != null) 'stage_id': stageId,
      if (participantId != null) 'participant_id': participantId,
      if (startTime != null) 'start_time': startTime,
      if (timestamp != null) 'timestamp': timestamp,
      if (automaticStartTime != null)
        'automatic_start_time': automaticStartTime,
      if (automaticCorrection != null)
        'automatic_correction': automaticCorrection,
      if (manualStartTime != null) 'manual_start_time': manualStartTime,
      if (manualCorrection != null) 'manual_correction': manualCorrection,
      if (statusId != null) 'status_id': statusId,
      if (finishId != null) 'finish_id': finishId,
    });
  }

  StartsCompanion copyWith(
      {Value<int?>? id,
      Value<int>? stageId,
      Value<int>? participantId,
      Value<String>? startTime,
      Value<String?>? timestamp,
      Value<String?>? automaticStartTime,
      Value<int?>? automaticCorrection,
      Value<String?>? manualStartTime,
      Value<int?>? manualCorrection,
      Value<int>? statusId,
      Value<int?>? finishId}) {
    return StartsCompanion(
      id: id ?? this.id,
      stageId: stageId ?? this.stageId,
      participantId: participantId ?? this.participantId,
      startTime: startTime ?? this.startTime,
      timestamp: timestamp ?? this.timestamp,
      automaticStartTime: automaticStartTime ?? this.automaticStartTime,
      automaticCorrection: automaticCorrection ?? this.automaticCorrection,
      manualStartTime: manualStartTime ?? this.manualStartTime,
      manualCorrection: manualCorrection ?? this.manualCorrection,
      statusId: statusId ?? this.statusId,
      finishId: finishId ?? this.finishId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stageId.present) {
      map['stage_id'] = Variable<int>(stageId.value);
    }
    if (participantId.present) {
      map['participant_id'] = Variable<int>(participantId.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<String>(startTime.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<String>(timestamp.value);
    }
    if (automaticStartTime.present) {
      map['automatic_start_time'] = Variable<String>(automaticStartTime.value);
    }
    if (automaticCorrection.present) {
      map['automatic_correction'] = Variable<int>(automaticCorrection.value);
    }
    if (manualStartTime.present) {
      map['manual_start_time'] = Variable<String>(manualStartTime.value);
    }
    if (manualCorrection.present) {
      map['manual_correction'] = Variable<int>(manualCorrection.value);
    }
    if (statusId.present) {
      map['status_id'] = Variable<int>(statusId.value);
    }
    if (finishId.present) {
      map['finish_id'] = Variable<int>(finishId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StartsCompanion(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('participantId: $participantId, ')
          ..write('startTime: $startTime, ')
          ..write('timestamp: $timestamp, ')
          ..write('automaticStartTime: $automaticStartTime, ')
          ..write('automaticCorrection: $automaticCorrection, ')
          ..write('manualStartTime: $manualStartTime, ')
          ..write('manualCorrection: $manualCorrection, ')
          ..write('statusId: $statusId, ')
          ..write('finishId: $finishId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final Races races = Races(this);
  late final Trails trails = Trails(this);
  late final Stages stages = Stages(this);
  late final Riders riders = Riders(this);
  late final Statuses statuses = Statuses(this);
  late final Participants participants = Participants(this);
  late final Finishes finishes = Finishes(this);
  late final Starts starts = Starts(this);
  Selectable<Race> selectRaces() {
    return customSelect('SELECT * FROM races WHERE is_deleted = FALSE',
        variables: [],
        readsFrom: {
          races,
        }).asyncMap(races.mapFromRow);
  }

  Future<int> addRace(
      {required String name,
      String? startDate,
      String? finishDate,
      String? location}) {
    return customInsert(
      'INSERT INTO races (name, start_date, finish_date, location) VALUES (?1, ?2, ?3, ?4)',
      variables: [
        Variable<String>(name),
        Variable<String>(startDate),
        Variable<String>(finishDate),
        Variable<String>(location)
      ],
      updates: {races},
    );
  }

  Future<int> deleteRace({int? id}) {
    return customUpdate(
      'UPDATE races SET is_deleted = TRUE WHERE id = ?1',
      variables: [Variable<int>(id)],
      updates: {races},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<Stage> selectStages({required int raceId}) {
    return customSelect(
        'SELECT * FROM stages WHERE race_id = ?1 AND is_deleted = FALSE',
        variables: [
          Variable<int>(raceId)
        ],
        readsFrom: {
          stages,
        }).asyncMap(stages.mapFromRow);
  }

  Future<int> addStage(
      {int? trailId, required int raceId, required String name}) {
    return customInsert(
      'INSERT INTO stages (trail_id, race_id, name) VALUES (?1, ?2, ?3)',
      variables: [
        Variable<int>(trailId),
        Variable<int>(raceId),
        Variable<String>(name)
      ],
      updates: {stages},
    );
  }

  Future<int> deleteStage({int? id}) {
    return customUpdate(
      'UPDATE stages SET is_deleted = TRUE WHERE id = ?1',
      variables: [Variable<int>(id)],
      updates: {stages},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<GetParticipantsAtStartResult> getParticipantsAtStart(
      {required int stageId}) {
    return customSelect(
        'SELECT participants.rider_id AS rider_id, participants.race_id AS race_id, participants.number AS number, participants.category AS category, participants.rfid AS rfid, participants.status_id AS participant_status_id, riders.name AS name, riders.nickname AS nickname, riders.birthday AS birthday, riders.team AS team, riders.city AS city, riders.email AS email, riders.phone AS phone, riders.comment AS comment, starts.id AS start_id, starts.stage_id AS stage_id, starts.participant_id AS participant_id, starts.start_time AS start_time, starts.timestamp AS timestamp, starts.automatic_start_time AS automatic_start_time, starts.automatic_correction AS automatic_correction, starts.manual_start_time AS manual_start_time, starts.manual_correction AS manual_correction, starts.status_id AS status_id FROM participants,riders,starts WHERE participants.rider_id = riders.id AND starts.participant_id = participants.id AND stage_id = ?1 AND starts.status_id = 1 AND participants.status_id = 1 ORDER BY start_time ASC',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          participants,
          riders,
          starts,
        }).map((QueryRow row) => GetParticipantsAtStartResult(
          riderId: row.read<int>('rider_id'),
          raceId: row.read<int>('race_id'),
          number: row.read<int>('number'),
          category: row.read<String>('category'),
          rfid: row.readNullable<String>('rfid'),
          participantStatusId: row.read<int>('participant_status_id'),
          name: row.read<String>('name'),
          nickname: row.readNullable<String>('nickname'),
          birthday: row.readNullable<String>('birthday'),
          team: row.readNullable<String>('team'),
          city: row.readNullable<String>('city'),
          email: row.readNullable<String>('email'),
          phone: row.readNullable<String>('phone'),
          comment: row.readNullable<String>('comment'),
          startId: row.readNullable<int>('start_id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<String>('timestamp'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          statusId: row.read<int>('status_id'),
        ));
  }

  Selectable<GetExistedStartingParticipantsResult>
      getExistedStartingParticipants(
          {required int stageId,
          required String startTime,
          required int number}) {
    return customSelect(
        'SELECT * FROM starts,participants WHERE starts.participant_id = participants.id AND stage_id = ?1 AND(start_time IS ?2 OR(number IS ?3 AND(automatic_start_time NOTNULL OR manual_start_time NOTNULL)))',
        variables: [
          Variable<int>(stageId),
          Variable<String>(startTime),
          Variable<int>(number)
        ],
        readsFrom: {
          starts,
          participants,
        }).map((QueryRow row) => GetExistedStartingParticipantsResult(
          id: row.readNullable<int>('id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<String>('timestamp'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          statusId: row.read<int>('status_id'),
          finishId: row.readNullable<int>('finish_id'),
          id1: row.readNullable<int>('id'),
          raceId: row.read<int>('race_id'),
          riderId: row.read<int>('rider_id'),
          number: row.read<int>('number'),
          category: row.read<String>('category'),
          rfid: row.readNullable<String>('rfid'),
          statusId1: row.read<int>('status_id'),
        ));
  }

  Future<int> setStartingInfo(
      {required String startTime,
      String? automaticStartTime,
      int? automaticCorrection,
      String? manualStartTime,
      int? manualCorrection,
      required int stageId,
      required int participantId}) {
    return customUpdate(
      'UPDATE starts SET start_time = ?1, automatic_start_time = ?2, automatic_correction = ?3, manual_start_time = ?4, manual_correction = ?5 WHERE stage_id = ?6 AND participant_id = ?7',
      variables: [
        Variable<String>(startTime),
        Variable<String>(automaticStartTime),
        Variable<int>(automaticCorrection),
        Variable<String>(manualStartTime),
        Variable<int>(manualCorrection),
        Variable<int>(stageId),
        Variable<int>(participantId)
      ],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<Start> getParticipantAroundTime(
      {required int stageId, required String before, required String after}) {
    return customSelect(
        'SELECT * FROM starts WHERE stage_id = ?1 AND start_time BETWEEN ?2 AND ?3',
        variables: [
          Variable<int>(stageId),
          Variable<String>(before),
          Variable<String>(after)
        ],
        readsFrom: {
          starts,
        }).asyncMap(starts.mapFromRow);
  }

  Future<int> setManualStartTime(
      {String? manualStartTime,
      int? manualCorrection,
      required int participantId,
      required int stageId}) {
    return customUpdate(
      'UPDATE starts SET manual_start_time = ?1, manual_correction = ?2 WHERE participant_id = ?3 AND stage_id = ?4',
      variables: [
        Variable<String>(manualStartTime),
        Variable<int>(manualCorrection),
        Variable<int>(participantId),
        Variable<int>(stageId)
      ],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<GetNextStartingParticipantsResult> getNextStartingParticipants(
      {required int stageId, required String time}) {
    return customSelect(
        'SELECT participants.number AS number, starts.start_time AS start_time, starts.automatic_start_time AS automatic_start_time, starts.automatic_correction AS automatic_correction, starts.manual_start_time AS manual_start_time FROM starts,participants WHERE starts.participant_id = participants.id AND starts.stage_id = ?1 AND start_time > ?2 AND automatic_start_time ISNULL AND manual_start_time ISNULL AND participants.status_id = 1 AND starts.status_id = 1 ORDER BY start_time ASC',
        variables: [
          Variable<int>(stageId),
          Variable<String>(time)
        ],
        readsFrom: {
          participants,
          starts,
        }).map((QueryRow row) => GetNextStartingParticipantsResult(
          number: row.read<int>('number'),
          startTime: row.read<String>('start_time'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
        ));
  }

  Selectable<int> getForBeep(
      {required int stageId,
      required String beepTime,
      required String afterTime}) {
    return customSelect(
        'SELECT COUNT(*) AS _c0 FROM starts WHERE starts.stage_id = ?1 AND start_time BETWEEN ?2 AND ?3 AND automatic_start_time ISNULL AND status_id = 1',
        variables: [
          Variable<int>(stageId),
          Variable<String>(beepTime),
          Variable<String>(afterTime)
        ],
        readsFrom: {
          starts,
        }).map((QueryRow row) => row.read<int>('_c0'));
  }

  Selectable<GetStartingParticipantAndFollowingResult>
      getStartingParticipantAndFollowing(
          {required int stageId, required String time, required String after}) {
    return customSelect(
        'SELECT participants.number AS number, starts.start_time AS start_time, starts.automatic_start_time AS automatic_start_time, starts.automatic_correction AS automatic_correction, riders.name AS name FROM starts,participants,riders WHERE starts.participant_id = participants.id AND participants.rider_id = riders.id AND starts.stage_id = ?1 AND(start_time BETWEEN ?2 AND ?3)AND automatic_start_time ISNULL AND starts.status_id = 1',
        variables: [
          Variable<int>(stageId),
          Variable<String>(time),
          Variable<String>(after)
        ],
        readsFrom: {
          participants,
          starts,
          riders,
        }).map((QueryRow row) => GetStartingParticipantAndFollowingResult(
          number: row.read<int>('number'),
          startTime: row.read<String>('start_time'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          name: row.read<String>('name'),
        ));
  }

  Selectable<GetNumbersOnTraceNowResult> getNumbersOnTraceNow(
      {required int stageId, required String timeNow}) {
    return customSelect(
        'SELECT * FROM starts,participants WHERE starts.participant_id = participants.id AND starts.stage_id = ?1 AND julianday(time(?2)) > julianday(time(starts.start_time)) AND starts.finish_id ISNULL AND(starts.automatic_start_time NOT LIKE \'DNS\' OR starts.automatic_start_time ISNULL)ORDER BY starts.start_time ASC',
        variables: [
          Variable<int>(stageId),
          Variable<String>(timeNow)
        ],
        readsFrom: {
          starts,
          participants,
        }).map((QueryRow row) => GetNumbersOnTraceNowResult(
          id: row.readNullable<int>('id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<String>('timestamp'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          statusId: row.read<int>('status_id'),
          finishId: row.readNullable<int>('finish_id'),
          id1: row.readNullable<int>('id'),
          raceId: row.read<int>('race_id'),
          riderId: row.read<int>('rider_id'),
          number: row.read<int>('number'),
          category: row.read<String>('category'),
          rfid: row.readNullable<String>('rfid'),
          statusId1: row.read<int>('status_id'),
        ));
  }

  Selectable<String?> getLastFinishTime({required int stageId}) {
    return customSelect(
        'SELECT finish_time FROM finishes WHERE stage_id = ?1 AND is_hidden = FALSE AND is_manual = FALSE ORDER BY finish_time DESC LIMIT 1',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          finishes,
        }).map((QueryRow row) => row.readNullable<String>('finish_time'));
  }

  Selectable<String?> getLastFinishTimeWithNumber({required int stageId}) {
    return customSelect(
        'SELECT finish_time FROM finishes WHERE stage_id = ?1 AND number NOTNULL AND finish_time NOT LIKE \'DNS\' AND finish_time NOT LIKE \'DNF\' ORDER BY finish_time DESC LIMIT 1',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          finishes,
        }).map((QueryRow row) => row.readNullable<String>('finish_time'));
  }

  Future<int> _addFinishTime(
      {required int stageId,
      String? finishTime,
      String? timestamp,
      int? number,
      required bool isHidden}) {
    return customInsert(
      'INSERT INTO finishes (stage_id, finish_time, timestamp, number, is_hidden) VALUES (?1, ?2, ?3, ?4, ?5)',
      variables: [
        Variable<int>(stageId),
        Variable<String>(finishTime),
        Variable<String>(timestamp),
        Variable<int>(number),
        Variable<bool>(isHidden)
      ],
      updates: {finishes},
    );
  }

  Future<int> _setFinishInfoToStart(
      {int? finishId,
      required int raceId,
      required int stageId,
      required int number}) {
    return customUpdate(
      'UPDATE starts SET finish_id = ?1 FROM (SELECT id, number FROM participants WHERE race_id = ?2) AS p WHERE starts.participant_id = p.id AND stage_id = ?3 AND p.number = ?4',
      variables: [
        Variable<int>(finishId),
        Variable<int>(raceId),
        Variable<int>(stageId),
        Variable<int>(number)
      ],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> _addFinishTimeManual(
      {required int stageId, String? finishTime, int? number}) {
    return customInsert(
      'INSERT INTO finishes (stage_id, finish_time, timestamp, number, is_manual) VALUES (?1, ?2, ?2, ?3, TRUE)',
      variables: [
        Variable<int>(stageId),
        Variable<String>(finishTime),
        Variable<int>(number)
      ],
      updates: {finishes},
    );
  }

  Future<int> _hideFinish({int? id}) {
    return customUpdate(
      'UPDATE finishes SET is_hidden = TRUE WHERE id = ?1',
      variables: [Variable<int>(id)],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> _hideAllFinishes() {
    return customUpdate(
      'UPDATE finishes SET is_hidden = TRUE',
      variables: [],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<Finish> _getNumberAtFinishes({required int stageId, int? number}) {
    return customSelect(
        'SELECT * FROM finishes WHERE stage_id = ?1 AND number = ?2',
        variables: [
          Variable<int>(stageId),
          Variable<int>(number)
        ],
        readsFrom: {
          finishes,
        }).asyncMap(finishes.mapFromRow);
  }

  Future<int> _setNumberToFinish({int? number, int? id}) {
    return customUpdate(
      'UPDATE finishes SET number = ?1 WHERE id = ?2',
      variables: [Variable<int>(number), Variable<int>(id)],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> _clearNumberAtFinish({int? number, int? id}) {
    return customUpdate(
      'UPDATE finishes SET number = ?1 WHERE id = ?2',
      variables: [Variable<int>(number), Variable<int>(id)],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> _setStatusForNumberAtStage(
      {required int statusId,
      required int raceId,
      required int stageId,
      required int number}) {
    return customUpdate(
      'UPDATE starts SET status_id = ?1 FROM (SELECT id, number FROM participants WHERE race_id = ?2) AS p WHERE starts.participant_id = p.id AND stage_id = ?3 AND p.number = ?4',
      variables: [
        Variable<int>(statusId),
        Variable<int>(raceId),
        Variable<int>(stageId),
        Variable<int>(number)
      ],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [races, trails, stages, riders, statuses, participants, finishes, starts];
}

typedef $RacesCreateCompanionBuilder = RacesCompanion Function({
  Value<int?> id,
  required String name,
  Value<String?> startDate,
  Value<String?> finishDate,
  Value<String?> location,
  Value<bool> isDeleted,
});
typedef $RacesUpdateCompanionBuilder = RacesCompanion Function({
  Value<int?> id,
  Value<String> name,
  Value<String?> startDate,
  Value<String?> finishDate,
  Value<String?> location,
  Value<bool> isDeleted,
});

class $RacesFilterComposer extends FilterComposer<_$AppDatabase, Races> {
  $RacesFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get startDate => $state.composableBuilder(
      column: $state.table.startDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get finishDate => $state.composableBuilder(
      column: $state.table.finishDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get location => $state.composableBuilder(
      column: $state.table.location,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isDeleted => $state.composableBuilder(
      column: $state.table.isDeleted,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $RacesOrderingComposer extends OrderingComposer<_$AppDatabase, Races> {
  $RacesOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get startDate => $state.composableBuilder(
      column: $state.table.startDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get finishDate => $state.composableBuilder(
      column: $state.table.finishDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get location => $state.composableBuilder(
      column: $state.table.location,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isDeleted => $state.composableBuilder(
      column: $state.table.isDeleted,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $RacesTableManager extends RootTableManager<
    _$AppDatabase,
    Races,
    Race,
    $RacesFilterComposer,
    $RacesOrderingComposer,
    $RacesCreateCompanionBuilder,
    $RacesUpdateCompanionBuilder,
    (Race, BaseReferences<_$AppDatabase, Races, Race>),
    Race,
    PrefetchHooks Function()> {
  $RacesTableManager(_$AppDatabase db, Races table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $RacesFilterComposer(ComposerState(db, table)),
          orderingComposer: $RacesOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> startDate = const Value.absent(),
            Value<String?> finishDate = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              RacesCompanion(
            id: id,
            name: name,
            startDate: startDate,
            finishDate: finishDate,
            location: location,
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required String name,
            Value<String?> startDate = const Value.absent(),
            Value<String?> finishDate = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              RacesCompanion.insert(
            id: id,
            name: name,
            startDate: startDate,
            finishDate: finishDate,
            location: location,
            isDeleted: isDeleted,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $RacesProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Races,
    Race,
    $RacesFilterComposer,
    $RacesOrderingComposer,
    $RacesCreateCompanionBuilder,
    $RacesUpdateCompanionBuilder,
    (Race, BaseReferences<_$AppDatabase, Races, Race>),
    Race,
    PrefetchHooks Function()>;
typedef $TrailsCreateCompanionBuilder = TrailsCompanion Function({
  Value<int?> id,
  required String name,
  Value<int?> distance,
  Value<int?> elevation,
  Value<Uint8List?> gpxTrack,
  Value<String?> link,
  Value<String?> comment,
});
typedef $TrailsUpdateCompanionBuilder = TrailsCompanion Function({
  Value<int?> id,
  Value<String> name,
  Value<int?> distance,
  Value<int?> elevation,
  Value<Uint8List?> gpxTrack,
  Value<String?> link,
  Value<String?> comment,
});

class $TrailsFilterComposer extends FilterComposer<_$AppDatabase, Trails> {
  $TrailsFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get distance => $state.composableBuilder(
      column: $state.table.distance,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get elevation => $state.composableBuilder(
      column: $state.table.elevation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get gpxTrack => $state.composableBuilder(
      column: $state.table.gpxTrack,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get link => $state.composableBuilder(
      column: $state.table.link,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $TrailsOrderingComposer extends OrderingComposer<_$AppDatabase, Trails> {
  $TrailsOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get distance => $state.composableBuilder(
      column: $state.table.distance,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get elevation => $state.composableBuilder(
      column: $state.table.elevation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get gpxTrack => $state.composableBuilder(
      column: $state.table.gpxTrack,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get link => $state.composableBuilder(
      column: $state.table.link,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $TrailsTableManager extends RootTableManager<
    _$AppDatabase,
    Trails,
    Trail,
    $TrailsFilterComposer,
    $TrailsOrderingComposer,
    $TrailsCreateCompanionBuilder,
    $TrailsUpdateCompanionBuilder,
    (Trail, BaseReferences<_$AppDatabase, Trails, Trail>),
    Trail,
    PrefetchHooks Function()> {
  $TrailsTableManager(_$AppDatabase db, Trails table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $TrailsFilterComposer(ComposerState(db, table)),
          orderingComposer: $TrailsOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int?> distance = const Value.absent(),
            Value<int?> elevation = const Value.absent(),
            Value<Uint8List?> gpxTrack = const Value.absent(),
            Value<String?> link = const Value.absent(),
            Value<String?> comment = const Value.absent(),
          }) =>
              TrailsCompanion(
            id: id,
            name: name,
            distance: distance,
            elevation: elevation,
            gpxTrack: gpxTrack,
            link: link,
            comment: comment,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required String name,
            Value<int?> distance = const Value.absent(),
            Value<int?> elevation = const Value.absent(),
            Value<Uint8List?> gpxTrack = const Value.absent(),
            Value<String?> link = const Value.absent(),
            Value<String?> comment = const Value.absent(),
          }) =>
              TrailsCompanion.insert(
            id: id,
            name: name,
            distance: distance,
            elevation: elevation,
            gpxTrack: gpxTrack,
            link: link,
            comment: comment,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TrailsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Trails,
    Trail,
    $TrailsFilterComposer,
    $TrailsOrderingComposer,
    $TrailsCreateCompanionBuilder,
    $TrailsUpdateCompanionBuilder,
    (Trail, BaseReferences<_$AppDatabase, Trails, Trail>),
    Trail,
    PrefetchHooks Function()>;
typedef $StagesCreateCompanionBuilder = StagesCompanion Function({
  Value<int?> id,
  Value<int?> trailId,
  required int raceId,
  required String name,
  Value<bool> isActive,
  Value<bool> isDeleted,
});
typedef $StagesUpdateCompanionBuilder = StagesCompanion Function({
  Value<int?> id,
  Value<int?> trailId,
  Value<int> raceId,
  Value<String> name,
  Value<bool> isActive,
  Value<bool> isDeleted,
});

class $StagesFilterComposer extends FilterComposer<_$AppDatabase, Stages> {
  $StagesFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get trailId => $state.composableBuilder(
      column: $state.table.trailId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get raceId => $state.composableBuilder(
      column: $state.table.raceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isActive => $state.composableBuilder(
      column: $state.table.isActive,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isDeleted => $state.composableBuilder(
      column: $state.table.isDeleted,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $StagesOrderingComposer extends OrderingComposer<_$AppDatabase, Stages> {
  $StagesOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get trailId => $state.composableBuilder(
      column: $state.table.trailId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get raceId => $state.composableBuilder(
      column: $state.table.raceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isActive => $state.composableBuilder(
      column: $state.table.isActive,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isDeleted => $state.composableBuilder(
      column: $state.table.isDeleted,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $StagesTableManager extends RootTableManager<
    _$AppDatabase,
    Stages,
    Stage,
    $StagesFilterComposer,
    $StagesOrderingComposer,
    $StagesCreateCompanionBuilder,
    $StagesUpdateCompanionBuilder,
    (Stage, BaseReferences<_$AppDatabase, Stages, Stage>),
    Stage,
    PrefetchHooks Function()> {
  $StagesTableManager(_$AppDatabase db, Stages table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $StagesFilterComposer(ComposerState(db, table)),
          orderingComposer: $StagesOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<int?> trailId = const Value.absent(),
            Value<int> raceId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              StagesCompanion(
            id: id,
            trailId: trailId,
            raceId: raceId,
            name: name,
            isActive: isActive,
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<int?> trailId = const Value.absent(),
            required int raceId,
            required String name,
            Value<bool> isActive = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              StagesCompanion.insert(
            id: id,
            trailId: trailId,
            raceId: raceId,
            name: name,
            isActive: isActive,
            isDeleted: isDeleted,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $StagesProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Stages,
    Stage,
    $StagesFilterComposer,
    $StagesOrderingComposer,
    $StagesCreateCompanionBuilder,
    $StagesUpdateCompanionBuilder,
    (Stage, BaseReferences<_$AppDatabase, Stages, Stage>),
    Stage,
    PrefetchHooks Function()>;
typedef $RidersCreateCompanionBuilder = RidersCompanion Function({
  Value<int?> id,
  required String name,
  Value<String?> nickname,
  Value<String?> birthday,
  Value<String?> team,
  Value<String?> city,
  Value<String?> email,
  Value<String?> phone,
  Value<String?> comment,
});
typedef $RidersUpdateCompanionBuilder = RidersCompanion Function({
  Value<int?> id,
  Value<String> name,
  Value<String?> nickname,
  Value<String?> birthday,
  Value<String?> team,
  Value<String?> city,
  Value<String?> email,
  Value<String?> phone,
  Value<String?> comment,
});

class $RidersFilterComposer extends FilterComposer<_$AppDatabase, Riders> {
  $RidersFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get birthday => $state.composableBuilder(
      column: $state.table.birthday,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get team => $state.composableBuilder(
      column: $state.table.team,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get city => $state.composableBuilder(
      column: $state.table.city,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $RidersOrderingComposer extends OrderingComposer<_$AppDatabase, Riders> {
  $RidersOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get birthday => $state.composableBuilder(
      column: $state.table.birthday,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get team => $state.composableBuilder(
      column: $state.table.team,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get city => $state.composableBuilder(
      column: $state.table.city,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $RidersTableManager extends RootTableManager<
    _$AppDatabase,
    Riders,
    Rider,
    $RidersFilterComposer,
    $RidersOrderingComposer,
    $RidersCreateCompanionBuilder,
    $RidersUpdateCompanionBuilder,
    (Rider, BaseReferences<_$AppDatabase, Riders, Rider>),
    Rider,
    PrefetchHooks Function()> {
  $RidersTableManager(_$AppDatabase db, Riders table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $RidersFilterComposer(ComposerState(db, table)),
          orderingComposer: $RidersOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> nickname = const Value.absent(),
            Value<String?> birthday = const Value.absent(),
            Value<String?> team = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> comment = const Value.absent(),
          }) =>
              RidersCompanion(
            id: id,
            name: name,
            nickname: nickname,
            birthday: birthday,
            team: team,
            city: city,
            email: email,
            phone: phone,
            comment: comment,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required String name,
            Value<String?> nickname = const Value.absent(),
            Value<String?> birthday = const Value.absent(),
            Value<String?> team = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> comment = const Value.absent(),
          }) =>
              RidersCompanion.insert(
            id: id,
            name: name,
            nickname: nickname,
            birthday: birthday,
            team: team,
            city: city,
            email: email,
            phone: phone,
            comment: comment,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $RidersProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Riders,
    Rider,
    $RidersFilterComposer,
    $RidersOrderingComposer,
    $RidersCreateCompanionBuilder,
    $RidersUpdateCompanionBuilder,
    (Rider, BaseReferences<_$AppDatabase, Riders, Rider>),
    Rider,
    PrefetchHooks Function()>;
typedef $StatusesCreateCompanionBuilder = StatusesCompanion Function({
  Value<int?> id,
  required String type,
});
typedef $StatusesUpdateCompanionBuilder = StatusesCompanion Function({
  Value<int?> id,
  Value<String> type,
});

class $StatusesFilterComposer extends FilterComposer<_$AppDatabase, Statuses> {
  $StatusesFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $StatusesOrderingComposer
    extends OrderingComposer<_$AppDatabase, Statuses> {
  $StatusesOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $StatusesTableManager extends RootTableManager<
    _$AppDatabase,
    Statuses,
    Status,
    $StatusesFilterComposer,
    $StatusesOrderingComposer,
    $StatusesCreateCompanionBuilder,
    $StatusesUpdateCompanionBuilder,
    (Status, BaseReferences<_$AppDatabase, Statuses, Status>),
    Status,
    PrefetchHooks Function()> {
  $StatusesTableManager(_$AppDatabase db, Statuses table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $StatusesFilterComposer(ComposerState(db, table)),
          orderingComposer: $StatusesOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<String> type = const Value.absent(),
          }) =>
              StatusesCompanion(
            id: id,
            type: type,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required String type,
          }) =>
              StatusesCompanion.insert(
            id: id,
            type: type,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $StatusesProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Statuses,
    Status,
    $StatusesFilterComposer,
    $StatusesOrderingComposer,
    $StatusesCreateCompanionBuilder,
    $StatusesUpdateCompanionBuilder,
    (Status, BaseReferences<_$AppDatabase, Statuses, Status>),
    Status,
    PrefetchHooks Function()>;
typedef $ParticipantsCreateCompanionBuilder = ParticipantsCompanion Function({
  Value<int?> id,
  required int raceId,
  required int riderId,
  required int number,
  required String category,
  Value<String?> rfid,
  Value<int> statusId,
});
typedef $ParticipantsUpdateCompanionBuilder = ParticipantsCompanion Function({
  Value<int?> id,
  Value<int> raceId,
  Value<int> riderId,
  Value<int> number,
  Value<String> category,
  Value<String?> rfid,
  Value<int> statusId,
});

class $ParticipantsFilterComposer
    extends FilterComposer<_$AppDatabase, Participants> {
  $ParticipantsFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get raceId => $state.composableBuilder(
      column: $state.table.raceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get riderId => $state.composableBuilder(
      column: $state.table.riderId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get rfid => $state.composableBuilder(
      column: $state.table.rfid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get statusId => $state.composableBuilder(
      column: $state.table.statusId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $ParticipantsOrderingComposer
    extends OrderingComposer<_$AppDatabase, Participants> {
  $ParticipantsOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get raceId => $state.composableBuilder(
      column: $state.table.raceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get riderId => $state.composableBuilder(
      column: $state.table.riderId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get rfid => $state.composableBuilder(
      column: $state.table.rfid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get statusId => $state.composableBuilder(
      column: $state.table.statusId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $ParticipantsTableManager extends RootTableManager<
    _$AppDatabase,
    Participants,
    Participant,
    $ParticipantsFilterComposer,
    $ParticipantsOrderingComposer,
    $ParticipantsCreateCompanionBuilder,
    $ParticipantsUpdateCompanionBuilder,
    (Participant, BaseReferences<_$AppDatabase, Participants, Participant>),
    Participant,
    PrefetchHooks Function()> {
  $ParticipantsTableManager(_$AppDatabase db, Participants table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $ParticipantsFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $ParticipantsOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<int> raceId = const Value.absent(),
            Value<int> riderId = const Value.absent(),
            Value<int> number = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String?> rfid = const Value.absent(),
            Value<int> statusId = const Value.absent(),
          }) =>
              ParticipantsCompanion(
            id: id,
            raceId: raceId,
            riderId: riderId,
            number: number,
            category: category,
            rfid: rfid,
            statusId: statusId,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required int raceId,
            required int riderId,
            required int number,
            required String category,
            Value<String?> rfid = const Value.absent(),
            Value<int> statusId = const Value.absent(),
          }) =>
              ParticipantsCompanion.insert(
            id: id,
            raceId: raceId,
            riderId: riderId,
            number: number,
            category: category,
            rfid: rfid,
            statusId: statusId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $ParticipantsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Participants,
    Participant,
    $ParticipantsFilterComposer,
    $ParticipantsOrderingComposer,
    $ParticipantsCreateCompanionBuilder,
    $ParticipantsUpdateCompanionBuilder,
    (Participant, BaseReferences<_$AppDatabase, Participants, Participant>),
    Participant,
    PrefetchHooks Function()>;
typedef $FinishesCreateCompanionBuilder = FinishesCompanion Function({
  Value<int?> id,
  required int stageId,
  Value<int?> number,
  Value<String?> timestamp,
  Value<String?> finishTime,
  Value<bool> isHidden,
  Value<bool> isManual,
});
typedef $FinishesUpdateCompanionBuilder = FinishesCompanion Function({
  Value<int?> id,
  Value<int> stageId,
  Value<int?> number,
  Value<String?> timestamp,
  Value<String?> finishTime,
  Value<bool> isHidden,
  Value<bool> isManual,
});

class $FinishesFilterComposer extends FilterComposer<_$AppDatabase, Finishes> {
  $FinishesFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get stageId => $state.composableBuilder(
      column: $state.table.stageId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get timestamp => $state.composableBuilder(
      column: $state.table.timestamp,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get finishTime => $state.composableBuilder(
      column: $state.table.finishTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isHidden => $state.composableBuilder(
      column: $state.table.isHidden,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isManual => $state.composableBuilder(
      column: $state.table.isManual,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $FinishesOrderingComposer
    extends OrderingComposer<_$AppDatabase, Finishes> {
  $FinishesOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get stageId => $state.composableBuilder(
      column: $state.table.stageId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get timestamp => $state.composableBuilder(
      column: $state.table.timestamp,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get finishTime => $state.composableBuilder(
      column: $state.table.finishTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isHidden => $state.composableBuilder(
      column: $state.table.isHidden,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isManual => $state.composableBuilder(
      column: $state.table.isManual,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $FinishesTableManager extends RootTableManager<
    _$AppDatabase,
    Finishes,
    Finish,
    $FinishesFilterComposer,
    $FinishesOrderingComposer,
    $FinishesCreateCompanionBuilder,
    $FinishesUpdateCompanionBuilder,
    (Finish, BaseReferences<_$AppDatabase, Finishes, Finish>),
    Finish,
    PrefetchHooks Function()> {
  $FinishesTableManager(_$AppDatabase db, Finishes table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $FinishesFilterComposer(ComposerState(db, table)),
          orderingComposer: $FinishesOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<int> stageId = const Value.absent(),
            Value<int?> number = const Value.absent(),
            Value<String?> timestamp = const Value.absent(),
            Value<String?> finishTime = const Value.absent(),
            Value<bool> isHidden = const Value.absent(),
            Value<bool> isManual = const Value.absent(),
          }) =>
              FinishesCompanion(
            id: id,
            stageId: stageId,
            number: number,
            timestamp: timestamp,
            finishTime: finishTime,
            isHidden: isHidden,
            isManual: isManual,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required int stageId,
            Value<int?> number = const Value.absent(),
            Value<String?> timestamp = const Value.absent(),
            Value<String?> finishTime = const Value.absent(),
            Value<bool> isHidden = const Value.absent(),
            Value<bool> isManual = const Value.absent(),
          }) =>
              FinishesCompanion.insert(
            id: id,
            stageId: stageId,
            number: number,
            timestamp: timestamp,
            finishTime: finishTime,
            isHidden: isHidden,
            isManual: isManual,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $FinishesProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Finishes,
    Finish,
    $FinishesFilterComposer,
    $FinishesOrderingComposer,
    $FinishesCreateCompanionBuilder,
    $FinishesUpdateCompanionBuilder,
    (Finish, BaseReferences<_$AppDatabase, Finishes, Finish>),
    Finish,
    PrefetchHooks Function()>;
typedef $StartsCreateCompanionBuilder = StartsCompanion Function({
  Value<int?> id,
  required int stageId,
  required int participantId,
  required String startTime,
  Value<String?> timestamp,
  Value<String?> automaticStartTime,
  Value<int?> automaticCorrection,
  Value<String?> manualStartTime,
  Value<int?> manualCorrection,
  Value<int> statusId,
  Value<int?> finishId,
});
typedef $StartsUpdateCompanionBuilder = StartsCompanion Function({
  Value<int?> id,
  Value<int> stageId,
  Value<int> participantId,
  Value<String> startTime,
  Value<String?> timestamp,
  Value<String?> automaticStartTime,
  Value<int?> automaticCorrection,
  Value<String?> manualStartTime,
  Value<int?> manualCorrection,
  Value<int> statusId,
  Value<int?> finishId,
});

class $StartsFilterComposer extends FilterComposer<_$AppDatabase, Starts> {
  $StartsFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get stageId => $state.composableBuilder(
      column: $state.table.stageId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get participantId => $state.composableBuilder(
      column: $state.table.participantId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get startTime => $state.composableBuilder(
      column: $state.table.startTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get timestamp => $state.composableBuilder(
      column: $state.table.timestamp,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get automaticStartTime => $state.composableBuilder(
      column: $state.table.automaticStartTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get automaticCorrection => $state.composableBuilder(
      column: $state.table.automaticCorrection,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get manualStartTime => $state.composableBuilder(
      column: $state.table.manualStartTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get manualCorrection => $state.composableBuilder(
      column: $state.table.manualCorrection,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get statusId => $state.composableBuilder(
      column: $state.table.statusId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get finishId => $state.composableBuilder(
      column: $state.table.finishId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $StartsOrderingComposer extends OrderingComposer<_$AppDatabase, Starts> {
  $StartsOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get stageId => $state.composableBuilder(
      column: $state.table.stageId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get participantId => $state.composableBuilder(
      column: $state.table.participantId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get startTime => $state.composableBuilder(
      column: $state.table.startTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get timestamp => $state.composableBuilder(
      column: $state.table.timestamp,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get automaticStartTime => $state.composableBuilder(
      column: $state.table.automaticStartTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get automaticCorrection => $state.composableBuilder(
      column: $state.table.automaticCorrection,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get manualStartTime => $state.composableBuilder(
      column: $state.table.manualStartTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get manualCorrection => $state.composableBuilder(
      column: $state.table.manualCorrection,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get statusId => $state.composableBuilder(
      column: $state.table.statusId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get finishId => $state.composableBuilder(
      column: $state.table.finishId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $StartsTableManager extends RootTableManager<
    _$AppDatabase,
    Starts,
    Start,
    $StartsFilterComposer,
    $StartsOrderingComposer,
    $StartsCreateCompanionBuilder,
    $StartsUpdateCompanionBuilder,
    (Start, BaseReferences<_$AppDatabase, Starts, Start>),
    Start,
    PrefetchHooks Function()> {
  $StartsTableManager(_$AppDatabase db, Starts table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $StartsFilterComposer(ComposerState(db, table)),
          orderingComposer: $StartsOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<int> stageId = const Value.absent(),
            Value<int> participantId = const Value.absent(),
            Value<String> startTime = const Value.absent(),
            Value<String?> timestamp = const Value.absent(),
            Value<String?> automaticStartTime = const Value.absent(),
            Value<int?> automaticCorrection = const Value.absent(),
            Value<String?> manualStartTime = const Value.absent(),
            Value<int?> manualCorrection = const Value.absent(),
            Value<int> statusId = const Value.absent(),
            Value<int?> finishId = const Value.absent(),
          }) =>
              StartsCompanion(
            id: id,
            stageId: stageId,
            participantId: participantId,
            startTime: startTime,
            timestamp: timestamp,
            automaticStartTime: automaticStartTime,
            automaticCorrection: automaticCorrection,
            manualStartTime: manualStartTime,
            manualCorrection: manualCorrection,
            statusId: statusId,
            finishId: finishId,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required int stageId,
            required int participantId,
            required String startTime,
            Value<String?> timestamp = const Value.absent(),
            Value<String?> automaticStartTime = const Value.absent(),
            Value<int?> automaticCorrection = const Value.absent(),
            Value<String?> manualStartTime = const Value.absent(),
            Value<int?> manualCorrection = const Value.absent(),
            Value<int> statusId = const Value.absent(),
            Value<int?> finishId = const Value.absent(),
          }) =>
              StartsCompanion.insert(
            id: id,
            stageId: stageId,
            participantId: participantId,
            startTime: startTime,
            timestamp: timestamp,
            automaticStartTime: automaticStartTime,
            automaticCorrection: automaticCorrection,
            manualStartTime: manualStartTime,
            manualCorrection: manualCorrection,
            statusId: statusId,
            finishId: finishId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $StartsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Starts,
    Start,
    $StartsFilterComposer,
    $StartsOrderingComposer,
    $StartsCreateCompanionBuilder,
    $StartsUpdateCompanionBuilder,
    (Start, BaseReferences<_$AppDatabase, Starts, Start>),
    Start,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $RacesTableManager get races => $RacesTableManager(_db, _db.races);
  $TrailsTableManager get trails => $TrailsTableManager(_db, _db.trails);
  $StagesTableManager get stages => $StagesTableManager(_db, _db.stages);
  $RidersTableManager get riders => $RidersTableManager(_db, _db.riders);
  $StatusesTableManager get statuses =>
      $StatusesTableManager(_db, _db.statuses);
  $ParticipantsTableManager get participants =>
      $ParticipantsTableManager(_db, _db.participants);
  $FinishesTableManager get finishes =>
      $FinishesTableManager(_db, _db.finishes);
  $StartsTableManager get starts => $StartsTableManager(_db, _db.starts);
}

class GetParticipantsAtStartResult {
  final int riderId;
  final int raceId;
  final int number;
  final String category;
  final String? rfid;
  final int participantStatusId;
  final String name;
  final String? nickname;
  final String? birthday;
  final String? team;
  final String? city;
  final String? email;
  final String? phone;
  final String? comment;
  final int? startId;
  final int stageId;
  final int participantId;
  final String startTime;
  final String? timestamp;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  GetParticipantsAtStartResult({
    required this.riderId,
    required this.raceId,
    required this.number,
    required this.category,
    this.rfid,
    required this.participantStatusId,
    required this.name,
    this.nickname,
    this.birthday,
    this.team,
    this.city,
    this.email,
    this.phone,
    this.comment,
    this.startId,
    required this.stageId,
    required this.participantId,
    required this.startTime,
    this.timestamp,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
    this.manualCorrection,
    required this.statusId,
  });
}

class GetExistedStartingParticipantsResult {
  final int? id;
  final int stageId;
  final int participantId;
  final String startTime;
  final String? timestamp;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  final int? finishId;
  final int? id1;
  final int raceId;
  final int riderId;
  final int number;
  final String category;
  final String? rfid;
  final int statusId1;
  GetExistedStartingParticipantsResult({
    this.id,
    required this.stageId,
    required this.participantId,
    required this.startTime,
    this.timestamp,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
    this.manualCorrection,
    required this.statusId,
    this.finishId,
    this.id1,
    required this.raceId,
    required this.riderId,
    required this.number,
    required this.category,
    this.rfid,
    required this.statusId1,
  });
}

class GetNextStartingParticipantsResult {
  final int number;
  final String startTime;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  GetNextStartingParticipantsResult({
    required this.number,
    required this.startTime,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
  });
}

class GetStartingParticipantAndFollowingResult {
  final int number;
  final String startTime;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String name;
  GetStartingParticipantAndFollowingResult({
    required this.number,
    required this.startTime,
    this.automaticStartTime,
    this.automaticCorrection,
    required this.name,
  });
}

class GetNumbersOnTraceNowResult {
  final int? id;
  final int stageId;
  final int participantId;
  final String startTime;
  final String? timestamp;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  final int? finishId;
  final int? id1;
  final int raceId;
  final int riderId;
  final int number;
  final String category;
  final String? rfid;
  final int statusId1;
  GetNumbersOnTraceNowResult({
    this.id,
    required this.stageId,
    required this.participantId,
    required this.startTime,
    this.timestamp,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
    this.manualCorrection,
    required this.statusId,
    this.finishId,
    this.id1,
    required this.raceId,
    required this.riderId,
    required this.number,
    required this.category,
    this.rfid,
    required this.statusId1,
  });
}
