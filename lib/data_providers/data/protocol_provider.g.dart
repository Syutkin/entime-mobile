// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol_provider.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Event extends DataClass implements Insertable<Event> {
  final int id;
  final String name;
  final String? startDate;
  final String? finishDate;
  Event(
      {required this.id, required this.name, this.startDate, this.finishDate});
  factory Event.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Event(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      startDate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date']),
      finishDate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}finish_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<String?>(startDate);
    }
    if (!nullToAbsent || finishDate != null) {
      map['finish_date'] = Variable<String?>(finishDate);
    }
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      id: Value(id),
      name: Value(name),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      finishDate: finishDate == null && nullToAbsent
          ? const Value.absent()
          : Value(finishDate),
    );
  }

  factory Event.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Event(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      startDate: serializer.fromJson<String?>(json['start_date']),
      finishDate: serializer.fromJson<String?>(json['finish_date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'start_date': serializer.toJson<String?>(startDate),
      'finish_date': serializer.toJson<String?>(finishDate),
    };
  }

  Event copyWith(
          {int? id, String? name, String? startDate, String? finishDate}) =>
      Event(
        id: id ?? this.id,
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        finishDate: finishDate ?? this.finishDate,
      );
  @override
  String toString() {
    return (StringBuffer('Event(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('finishDate: $finishDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, startDate, finishDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Event &&
          other.id == this.id &&
          other.name == this.name &&
          other.startDate == this.startDate &&
          other.finishDate == this.finishDate);
}

class EventsCompanion extends UpdateCompanion<Event> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> startDate;
  final Value<String?> finishDate;
  const EventsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.startDate = const Value.absent(),
    this.finishDate = const Value.absent(),
  });
  EventsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.startDate = const Value.absent(),
    this.finishDate = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Event> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String?>? startDate,
    Expression<String?>? finishDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (startDate != null) 'start_date': startDate,
      if (finishDate != null) 'finish_date': finishDate,
    });
  }

  EventsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? startDate,
      Value<String?>? finishDate}) {
    return EventsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      finishDate: finishDate ?? this.finishDate,
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
      map['start_date'] = Variable<String?>(startDate.value);
    }
    if (finishDate.present) {
      map['finish_date'] = Variable<String?>(finishDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('finishDate: $finishDate')
          ..write(')'))
        .toString();
  }
}

class Events extends Table with TableInfo<Events, Event> {
  final GeneratedDatabase _db;
  final String? _alias;
  Events(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  late final GeneratedColumn<String?> startDate = GeneratedColumn<String?>(
      'start_date', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _finishDateMeta = const VerificationMeta('finishDate');
  late final GeneratedColumn<String?> finishDate = GeneratedColumn<String?>(
      'finish_date', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [id, name, startDate, finishDate];
  @override
  String get aliasedName => _alias ?? 'events';
  @override
  String get actualTableName => 'events';
  @override
  VerificationContext validateIntegrity(Insertable<Event> instance,
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Event map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Event.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Events createAlias(String alias) {
    return Events(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Trail extends DataClass implements Insertable<Trail> {
  final int id;
  final String? name;
  final int? distance;
  final int? elevation;
  final Uint8List? gpxTrack;
  final String? link;
  final String? comment;
  Trail(
      {required this.id,
      this.name,
      this.distance,
      this.elevation,
      this.gpxTrack,
      this.link,
      this.comment});
  factory Trail.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Trail(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      distance: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}distance']),
      elevation: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}elevation']),
      gpxTrack: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gpx_track']),
      link: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}link']),
      comment: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comment']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || distance != null) {
      map['distance'] = Variable<int?>(distance);
    }
    if (!nullToAbsent || elevation != null) {
      map['elevation'] = Variable<int?>(elevation);
    }
    if (!nullToAbsent || gpxTrack != null) {
      map['gpx_track'] = Variable<Uint8List?>(gpxTrack);
    }
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String?>(link);
    }
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String?>(comment);
    }
    return map;
  }

  TrailsCompanion toCompanion(bool nullToAbsent) {
    return TrailsCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
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
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
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
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'distance': serializer.toJson<int?>(distance),
      'elevation': serializer.toJson<int?>(elevation),
      'gpx_track': serializer.toJson<Uint8List?>(gpxTrack),
      'link': serializer.toJson<String?>(link),
      'comment': serializer.toJson<String?>(comment),
    };
  }

  Trail copyWith(
          {int? id,
          String? name,
          int? distance,
          int? elevation,
          Uint8List? gpxTrack,
          String? link,
          String? comment}) =>
      Trail(
        id: id ?? this.id,
        name: name ?? this.name,
        distance: distance ?? this.distance,
        elevation: elevation ?? this.elevation,
        gpxTrack: gpxTrack ?? this.gpxTrack,
        link: link ?? this.link,
        comment: comment ?? this.comment,
      );
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
  int get hashCode =>
      Object.hash(id, name, distance, elevation, gpxTrack, link, comment);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Trail &&
          other.id == this.id &&
          other.name == this.name &&
          other.distance == this.distance &&
          other.elevation == this.elevation &&
          other.gpxTrack == this.gpxTrack &&
          other.link == this.link &&
          other.comment == this.comment);
}

class TrailsCompanion extends UpdateCompanion<Trail> {
  final Value<int> id;
  final Value<String?> name;
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
    this.name = const Value.absent(),
    this.distance = const Value.absent(),
    this.elevation = const Value.absent(),
    this.gpxTrack = const Value.absent(),
    this.link = const Value.absent(),
    this.comment = const Value.absent(),
  });
  static Insertable<Trail> custom({
    Expression<int>? id,
    Expression<String?>? name,
    Expression<int?>? distance,
    Expression<int?>? elevation,
    Expression<Uint8List?>? gpxTrack,
    Expression<String?>? link,
    Expression<String?>? comment,
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
      {Value<int>? id,
      Value<String?>? name,
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
      map['name'] = Variable<String?>(name.value);
    }
    if (distance.present) {
      map['distance'] = Variable<int?>(distance.value);
    }
    if (elevation.present) {
      map['elevation'] = Variable<int?>(elevation.value);
    }
    if (gpxTrack.present) {
      map['gpx_track'] = Variable<Uint8List?>(gpxTrack.value);
    }
    if (link.present) {
      map['link'] = Variable<String?>(link.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String?>(comment.value);
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

class Trails extends Table with TableInfo<Trails, Trail> {
  final GeneratedDatabase _db;
  final String? _alias;
  Trails(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _distanceMeta = const VerificationMeta('distance');
  late final GeneratedColumn<int?> distance = GeneratedColumn<int?>(
      'distance', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _elevationMeta = const VerificationMeta('elevation');
  late final GeneratedColumn<int?> elevation = GeneratedColumn<int?>(
      'elevation', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _gpxTrackMeta = const VerificationMeta('gpxTrack');
  late final GeneratedColumn<Uint8List?> gpxTrack = GeneratedColumn<Uint8List?>(
      'gpx_track', aliasedName, true,
      typeName: 'BLOB', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _linkMeta = const VerificationMeta('link');
  late final GeneratedColumn<String?> link = GeneratedColumn<String?>(
      'link', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _commentMeta = const VerificationMeta('comment');
  late final GeneratedColumn<String?> comment = GeneratedColumn<String?>(
      'comment', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, distance, elevation, gpxTrack, link, comment];
  @override
  String get aliasedName => _alias ?? 'trails';
  @override
  String get actualTableName => 'trails';
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
    return Trail.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Trails createAlias(String alias) {
    return Trails(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Stage extends DataClass implements Insertable<Stage> {
  final int id;
  final int? trailId;
  final int eventId;
  final String name;
  final int isActive;
  Stage(
      {required this.id,
      this.trailId,
      required this.eventId,
      required this.name,
      required this.isActive});
  factory Stage.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Stage(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      trailId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}trail_id']),
      eventId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}event_id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      isActive: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_active'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || trailId != null) {
      map['trail_id'] = Variable<int?>(trailId);
    }
    map['event_id'] = Variable<int>(eventId);
    map['name'] = Variable<String>(name);
    map['is_active'] = Variable<int>(isActive);
    return map;
  }

  StagesCompanion toCompanion(bool nullToAbsent) {
    return StagesCompanion(
      id: Value(id),
      trailId: trailId == null && nullToAbsent
          ? const Value.absent()
          : Value(trailId),
      eventId: Value(eventId),
      name: Value(name),
      isActive: Value(isActive),
    );
  }

  factory Stage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Stage(
      id: serializer.fromJson<int>(json['id']),
      trailId: serializer.fromJson<int?>(json['trail_id']),
      eventId: serializer.fromJson<int>(json['event_id']),
      name: serializer.fromJson<String>(json['name']),
      isActive: serializer.fromJson<int>(json['is_active']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'trail_id': serializer.toJson<int?>(trailId),
      'event_id': serializer.toJson<int>(eventId),
      'name': serializer.toJson<String>(name),
      'is_active': serializer.toJson<int>(isActive),
    };
  }

  Stage copyWith(
          {int? id, int? trailId, int? eventId, String? name, int? isActive}) =>
      Stage(
        id: id ?? this.id,
        trailId: trailId ?? this.trailId,
        eventId: eventId ?? this.eventId,
        name: name ?? this.name,
        isActive: isActive ?? this.isActive,
      );
  @override
  String toString() {
    return (StringBuffer('Stage(')
          ..write('id: $id, ')
          ..write('trailId: $trailId, ')
          ..write('eventId: $eventId, ')
          ..write('name: $name, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, trailId, eventId, name, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stage &&
          other.id == this.id &&
          other.trailId == this.trailId &&
          other.eventId == this.eventId &&
          other.name == this.name &&
          other.isActive == this.isActive);
}

class StagesCompanion extends UpdateCompanion<Stage> {
  final Value<int> id;
  final Value<int?> trailId;
  final Value<int> eventId;
  final Value<String> name;
  final Value<int> isActive;
  const StagesCompanion({
    this.id = const Value.absent(),
    this.trailId = const Value.absent(),
    this.eventId = const Value.absent(),
    this.name = const Value.absent(),
    this.isActive = const Value.absent(),
  });
  StagesCompanion.insert({
    this.id = const Value.absent(),
    this.trailId = const Value.absent(),
    required int eventId,
    required String name,
    this.isActive = const Value.absent(),
  })  : eventId = Value(eventId),
        name = Value(name);
  static Insertable<Stage> custom({
    Expression<int>? id,
    Expression<int?>? trailId,
    Expression<int>? eventId,
    Expression<String>? name,
    Expression<int>? isActive,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (trailId != null) 'trail_id': trailId,
      if (eventId != null) 'event_id': eventId,
      if (name != null) 'name': name,
      if (isActive != null) 'is_active': isActive,
    });
  }

  StagesCompanion copyWith(
      {Value<int>? id,
      Value<int?>? trailId,
      Value<int>? eventId,
      Value<String>? name,
      Value<int>? isActive}) {
    return StagesCompanion(
      id: id ?? this.id,
      trailId: trailId ?? this.trailId,
      eventId: eventId ?? this.eventId,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (trailId.present) {
      map['trail_id'] = Variable<int?>(trailId.value);
    }
    if (eventId.present) {
      map['event_id'] = Variable<int>(eventId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StagesCompanion(')
          ..write('id: $id, ')
          ..write('trailId: $trailId, ')
          ..write('eventId: $eventId, ')
          ..write('name: $name, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }
}

class Stages extends Table with TableInfo<Stages, Stage> {
  final GeneratedDatabase _db;
  final String? _alias;
  Stages(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _trailIdMeta = const VerificationMeta('trailId');
  late final GeneratedColumn<int?> trailId = GeneratedColumn<int?>(
      'trail_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _eventIdMeta = const VerificationMeta('eventId');
  late final GeneratedColumn<int?> eventId = GeneratedColumn<int?>(
      'event_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _isActiveMeta = const VerificationMeta('isActive');
  late final GeneratedColumn<int?> isActive = GeneratedColumn<int?>(
      'is_active', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'not null default 1',
      defaultValue: const CustomExpression<int>('1'));
  @override
  List<GeneratedColumn> get $columns => [id, trailId, eventId, name, isActive];
  @override
  String get aliasedName => _alias ?? 'stages';
  @override
  String get actualTableName => 'stages';
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
    if (data.containsKey('event_id')) {
      context.handle(_eventIdMeta,
          eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));
    } else if (isInserting) {
      context.missing(_eventIdMeta);
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Stage map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Stage.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Stages createAlias(String alias) {
    return Stages(_db, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY (trail_id) REFERENCES trails (id)',
        'FOREIGN KEY (event_id) REFERENCES events (id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Rider extends DataClass implements Insertable<Rider> {
  final int id;
  final String? name;
  final String? nickname;
  final int? birthday;
  final String? team;
  final String? city;
  final String? email;
  final String? phone;
  final String? comment;
  Rider(
      {required this.id,
      this.name,
      this.nickname,
      this.birthday,
      this.team,
      this.city,
      this.email,
      this.phone,
      this.comment});
  factory Rider.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Rider(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      nickname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nickname']),
      birthday: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}birthday']),
      team: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}team']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      comment: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comment']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || nickname != null) {
      map['nickname'] = Variable<String?>(nickname);
    }
    if (!nullToAbsent || birthday != null) {
      map['birthday'] = Variable<int?>(birthday);
    }
    if (!nullToAbsent || team != null) {
      map['team'] = Variable<String?>(team);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String?>(email);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String?>(phone);
    }
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String?>(comment);
    }
    return map;
  }

  RidersCompanion toCompanion(bool nullToAbsent) {
    return RidersCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
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
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      nickname: serializer.fromJson<String?>(json['nickname']),
      birthday: serializer.fromJson<int?>(json['birthday']),
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
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'nickname': serializer.toJson<String?>(nickname),
      'birthday': serializer.toJson<int?>(birthday),
      'team': serializer.toJson<String?>(team),
      'city': serializer.toJson<String?>(city),
      'email': serializer.toJson<String?>(email),
      'phone': serializer.toJson<String?>(phone),
      'comment': serializer.toJson<String?>(comment),
    };
  }

  Rider copyWith(
          {int? id,
          String? name,
          String? nickname,
          int? birthday,
          String? team,
          String? city,
          String? email,
          String? phone,
          String? comment}) =>
      Rider(
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
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> nickname;
  final Value<int?> birthday;
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
    this.name = const Value.absent(),
    this.nickname = const Value.absent(),
    this.birthday = const Value.absent(),
    this.team = const Value.absent(),
    this.city = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.comment = const Value.absent(),
  });
  static Insertable<Rider> custom({
    Expression<int>? id,
    Expression<String?>? name,
    Expression<String?>? nickname,
    Expression<int?>? birthday,
    Expression<String?>? team,
    Expression<String?>? city,
    Expression<String?>? email,
    Expression<String?>? phone,
    Expression<String?>? comment,
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
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? nickname,
      Value<int?>? birthday,
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
      map['name'] = Variable<String?>(name.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String?>(nickname.value);
    }
    if (birthday.present) {
      map['birthday'] = Variable<int?>(birthday.value);
    }
    if (team.present) {
      map['team'] = Variable<String?>(team.value);
    }
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (email.present) {
      map['email'] = Variable<String?>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String?>(phone.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String?>(comment.value);
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

class Riders extends Table with TableInfo<Riders, Rider> {
  final GeneratedDatabase _db;
  final String? _alias;
  Riders(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _nicknameMeta = const VerificationMeta('nickname');
  late final GeneratedColumn<String?> nickname = GeneratedColumn<String?>(
      'nickname', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _birthdayMeta = const VerificationMeta('birthday');
  late final GeneratedColumn<int?> birthday = GeneratedColumn<int?>(
      'birthday', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _teamMeta = const VerificationMeta('team');
  late final GeneratedColumn<String?> team = GeneratedColumn<String?>(
      'team', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedColumn<String?> phone = GeneratedColumn<String?>(
      'phone', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _commentMeta = const VerificationMeta('comment');
  late final GeneratedColumn<String?> comment = GeneratedColumn<String?>(
      'comment', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, nickname, birthday, team, city, email, phone, comment];
  @override
  String get aliasedName => _alias ?? 'riders';
  @override
  String get actualTableName => 'riders';
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
    return Rider.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Riders createAlias(String alias) {
    return Riders(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Status extends DataClass implements Insertable<Status> {
  final int id;
  final String type;
  Status({required this.id, required this.type});
  factory Status.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Status(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    return map;
  }

  StatusesCompanion toCompanion(bool nullToAbsent) {
    return StatusesCompanion(
      id: Value(id),
      type: Value(type),
    );
  }

  factory Status.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Status(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
    };
  }

  Status copyWith({int? id, String? type}) => Status(
        id: id ?? this.id,
        type: type ?? this.type,
      );
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
  final Value<int> id;
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

  StatusesCompanion copyWith({Value<int>? id, Value<String>? type}) {
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

class Statuses extends Table with TableInfo<Statuses, Status> {
  final GeneratedDatabase _db;
  final String? _alias;
  Statuses(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  @override
  List<GeneratedColumn> get $columns => [id, type];
  @override
  String get aliasedName => _alias ?? 'statuses';
  @override
  String get actualTableName => 'statuses';
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
    return Status.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Statuses createAlias(String alias) {
    return Statuses(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Participant extends DataClass implements Insertable<Participant> {
  final int id;
  final int eventId;
  final int riderId;
  final int number;
  final String category;
  final String? rfid;
  final int statusId;
  Participant(
      {required this.id,
      required this.eventId,
      required this.riderId,
      required this.number,
      required this.category,
      this.rfid,
      required this.statusId});
  factory Participant.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Participant(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      eventId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}event_id'])!,
      riderId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rider_id'])!,
      number: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      rfid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rfid']),
      statusId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['event_id'] = Variable<int>(eventId);
    map['rider_id'] = Variable<int>(riderId);
    map['number'] = Variable<int>(number);
    map['category'] = Variable<String>(category);
    if (!nullToAbsent || rfid != null) {
      map['rfid'] = Variable<String?>(rfid);
    }
    map['status_id'] = Variable<int>(statusId);
    return map;
  }

  ParticipantsCompanion toCompanion(bool nullToAbsent) {
    return ParticipantsCompanion(
      id: Value(id),
      eventId: Value(eventId),
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
      id: serializer.fromJson<int>(json['id']),
      eventId: serializer.fromJson<int>(json['event_id']),
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
      'id': serializer.toJson<int>(id),
      'event_id': serializer.toJson<int>(eventId),
      'rider_id': serializer.toJson<int>(riderId),
      'number': serializer.toJson<int>(number),
      'category': serializer.toJson<String>(category),
      'rfid': serializer.toJson<String?>(rfid),
      'status_id': serializer.toJson<int>(statusId),
    };
  }

  Participant copyWith(
          {int? id,
          int? eventId,
          int? riderId,
          int? number,
          String? category,
          String? rfid,
          int? statusId}) =>
      Participant(
        id: id ?? this.id,
        eventId: eventId ?? this.eventId,
        riderId: riderId ?? this.riderId,
        number: number ?? this.number,
        category: category ?? this.category,
        rfid: rfid ?? this.rfid,
        statusId: statusId ?? this.statusId,
      );
  @override
  String toString() {
    return (StringBuffer('Participant(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
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
      Object.hash(id, eventId, riderId, number, category, rfid, statusId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Participant &&
          other.id == this.id &&
          other.eventId == this.eventId &&
          other.riderId == this.riderId &&
          other.number == this.number &&
          other.category == this.category &&
          other.rfid == this.rfid &&
          other.statusId == this.statusId);
}

class ParticipantsCompanion extends UpdateCompanion<Participant> {
  final Value<int> id;
  final Value<int> eventId;
  final Value<int> riderId;
  final Value<int> number;
  final Value<String> category;
  final Value<String?> rfid;
  final Value<int> statusId;
  const ParticipantsCompanion({
    this.id = const Value.absent(),
    this.eventId = const Value.absent(),
    this.riderId = const Value.absent(),
    this.number = const Value.absent(),
    this.category = const Value.absent(),
    this.rfid = const Value.absent(),
    this.statusId = const Value.absent(),
  });
  ParticipantsCompanion.insert({
    this.id = const Value.absent(),
    required int eventId,
    required int riderId,
    required int number,
    required String category,
    this.rfid = const Value.absent(),
    this.statusId = const Value.absent(),
  })  : eventId = Value(eventId),
        riderId = Value(riderId),
        number = Value(number),
        category = Value(category);
  static Insertable<Participant> custom({
    Expression<int>? id,
    Expression<int>? eventId,
    Expression<int>? riderId,
    Expression<int>? number,
    Expression<String>? category,
    Expression<String?>? rfid,
    Expression<int>? statusId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eventId != null) 'event_id': eventId,
      if (riderId != null) 'rider_id': riderId,
      if (number != null) 'number': number,
      if (category != null) 'category': category,
      if (rfid != null) 'rfid': rfid,
      if (statusId != null) 'status_id': statusId,
    });
  }

  ParticipantsCompanion copyWith(
      {Value<int>? id,
      Value<int>? eventId,
      Value<int>? riderId,
      Value<int>? number,
      Value<String>? category,
      Value<String?>? rfid,
      Value<int>? statusId}) {
    return ParticipantsCompanion(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
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
    if (eventId.present) {
      map['event_id'] = Variable<int>(eventId.value);
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
      map['rfid'] = Variable<String?>(rfid.value);
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
          ..write('eventId: $eventId, ')
          ..write('riderId: $riderId, ')
          ..write('number: $number, ')
          ..write('category: $category, ')
          ..write('rfid: $rfid, ')
          ..write('statusId: $statusId')
          ..write(')'))
        .toString();
  }
}

class Participants extends Table with TableInfo<Participants, Participant> {
  final GeneratedDatabase _db;
  final String? _alias;
  Participants(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _eventIdMeta = const VerificationMeta('eventId');
  late final GeneratedColumn<int?> eventId = GeneratedColumn<int?>(
      'event_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _riderIdMeta = const VerificationMeta('riderId');
  late final GeneratedColumn<int?> riderId = GeneratedColumn<int?>(
      'rider_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<int?> number = GeneratedColumn<int?>(
      'number', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _rfidMeta = const VerificationMeta('rfid');
  late final GeneratedColumn<String?> rfid = GeneratedColumn<String?>(
      'rfid', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  late final GeneratedColumn<int?> statusId = GeneratedColumn<int?>(
      'status_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'not null default 1',
      defaultValue: const CustomExpression<int>('1'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, eventId, riderId, number, category, rfid, statusId];
  @override
  String get aliasedName => _alias ?? 'participants';
  @override
  String get actualTableName => 'participants';
  @override
  VerificationContext validateIntegrity(Insertable<Participant> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('event_id')) {
      context.handle(_eventIdMeta,
          eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));
    } else if (isInserting) {
      context.missing(_eventIdMeta);
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
    return Participant.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Participants createAlias(String alias) {
    return Participants(_db, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY (event_id) REFERENCES events (id)',
        'FOREIGN KEY (rider_id) REFERENCES riders (id)',
        'FOREIGN KEY (status_id) REFERENCES statuses (id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Start extends DataClass implements Insertable<Start> {
  final int id;
  final int stageId;
  final int participantId;
  final String startTime;
  final String? timestamp;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  Start(
      {required this.id,
      required this.stageId,
      required this.participantId,
      required this.startTime,
      this.timestamp,
      this.automaticStartTime,
      this.automaticCorrection,
      this.manualStartTime,
      this.manualCorrection,
      required this.statusId});
  factory Start.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Start(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      stageId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}stage_id'])!,
      participantId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}participant_id'])!,
      startTime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_time'])!,
      timestamp: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp']),
      automaticStartTime: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}automatic_start_time']),
      automaticCorrection: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}automatic_correction']),
      manualStartTime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}manual_start_time']),
      manualCorrection: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}manual_correction']),
      statusId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stage_id'] = Variable<int>(stageId);
    map['participant_id'] = Variable<int>(participantId);
    map['start_time'] = Variable<String>(startTime);
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<String?>(timestamp);
    }
    if (!nullToAbsent || automaticStartTime != null) {
      map['automatic_start_time'] = Variable<String?>(automaticStartTime);
    }
    if (!nullToAbsent || automaticCorrection != null) {
      map['automatic_correction'] = Variable<int?>(automaticCorrection);
    }
    if (!nullToAbsent || manualStartTime != null) {
      map['manual_start_time'] = Variable<String?>(manualStartTime);
    }
    if (!nullToAbsent || manualCorrection != null) {
      map['manual_correction'] = Variable<int?>(manualCorrection);
    }
    map['status_id'] = Variable<int>(statusId);
    return map;
  }

  StartsCompanion toCompanion(bool nullToAbsent) {
    return StartsCompanion(
      id: Value(id),
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
    );
  }

  factory Start.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Start(
      id: serializer.fromJson<int>(json['id']),
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
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stage_id': serializer.toJson<int>(stageId),
      'participant_id': serializer.toJson<int>(participantId),
      'start_time': serializer.toJson<String>(startTime),
      'timestamp': serializer.toJson<String?>(timestamp),
      'automatic_start_time': serializer.toJson<String?>(automaticStartTime),
      'automatic_correction': serializer.toJson<int?>(automaticCorrection),
      'manual_start_time': serializer.toJson<String?>(manualStartTime),
      'manual_correction': serializer.toJson<int?>(manualCorrection),
      'status_id': serializer.toJson<int>(statusId),
    };
  }

  Start copyWith(
          {int? id,
          int? stageId,
          int? participantId,
          String? startTime,
          String? timestamp,
          String? automaticStartTime,
          int? automaticCorrection,
          String? manualStartTime,
          int? manualCorrection,
          int? statusId}) =>
      Start(
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
      );
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
          ..write('statusId: $statusId')
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
      statusId);
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
          other.statusId == this.statusId);
}

class StartsCompanion extends UpdateCompanion<Start> {
  final Value<int> id;
  final Value<int> stageId;
  final Value<int> participantId;
  final Value<String> startTime;
  final Value<String?> timestamp;
  final Value<String?> automaticStartTime;
  final Value<int?> automaticCorrection;
  final Value<String?> manualStartTime;
  final Value<int?> manualCorrection;
  final Value<int> statusId;
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
  })  : stageId = Value(stageId),
        participantId = Value(participantId),
        startTime = Value(startTime);
  static Insertable<Start> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<int>? participantId,
    Expression<String>? startTime,
    Expression<String?>? timestamp,
    Expression<String?>? automaticStartTime,
    Expression<int?>? automaticCorrection,
    Expression<String?>? manualStartTime,
    Expression<int?>? manualCorrection,
    Expression<int>? statusId,
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
    });
  }

  StartsCompanion copyWith(
      {Value<int>? id,
      Value<int>? stageId,
      Value<int>? participantId,
      Value<String>? startTime,
      Value<String?>? timestamp,
      Value<String?>? automaticStartTime,
      Value<int?>? automaticCorrection,
      Value<String?>? manualStartTime,
      Value<int?>? manualCorrection,
      Value<int>? statusId}) {
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
      map['timestamp'] = Variable<String?>(timestamp.value);
    }
    if (automaticStartTime.present) {
      map['automatic_start_time'] = Variable<String?>(automaticStartTime.value);
    }
    if (automaticCorrection.present) {
      map['automatic_correction'] = Variable<int?>(automaticCorrection.value);
    }
    if (manualStartTime.present) {
      map['manual_start_time'] = Variable<String?>(manualStartTime.value);
    }
    if (manualCorrection.present) {
      map['manual_correction'] = Variable<int?>(manualCorrection.value);
    }
    if (statusId.present) {
      map['status_id'] = Variable<int>(statusId.value);
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
          ..write('statusId: $statusId')
          ..write(')'))
        .toString();
  }
}

class Starts extends Table with TableInfo<Starts, Start> {
  final GeneratedDatabase _db;
  final String? _alias;
  Starts(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _stageIdMeta = const VerificationMeta('stageId');
  late final GeneratedColumn<int?> stageId = GeneratedColumn<int?>(
      'stage_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _participantIdMeta =
      const VerificationMeta('participantId');
  late final GeneratedColumn<int?> participantId = GeneratedColumn<int?>(
      'participant_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _startTimeMeta = const VerificationMeta('startTime');
  late final GeneratedColumn<String?> startTime = GeneratedColumn<String?>(
      'start_time', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  late final GeneratedColumn<String?> timestamp = GeneratedColumn<String?>(
      'timestamp', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _automaticStartTimeMeta =
      const VerificationMeta('automaticStartTime');
  late final GeneratedColumn<String?> automaticStartTime =
      GeneratedColumn<String?>('automatic_start_time', aliasedName, true,
          typeName: 'TEXT',
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _automaticCorrectionMeta =
      const VerificationMeta('automaticCorrection');
  late final GeneratedColumn<int?> automaticCorrection = GeneratedColumn<int?>(
      'automatic_correction', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _manualStartTimeMeta =
      const VerificationMeta('manualStartTime');
  late final GeneratedColumn<String?> manualStartTime =
      GeneratedColumn<String?>('manual_start_time', aliasedName, true,
          typeName: 'TEXT',
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _manualCorrectionMeta =
      const VerificationMeta('manualCorrection');
  late final GeneratedColumn<int?> manualCorrection = GeneratedColumn<int?>(
      'manual_correction', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  late final GeneratedColumn<int?> statusId = GeneratedColumn<int?>(
      'status_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'not null default 1',
      defaultValue: const CustomExpression<int>('1'));
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
        statusId
      ];
  @override
  String get aliasedName => _alias ?? 'starts';
  @override
  String get actualTableName => 'starts';
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Start map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Start.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Starts createAlias(String alias) {
    return Starts(_db, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY (stage_id) REFERENCES stages (id)',
        'FOREIGN KEY (participant_id) REFERENCES participants (id)',
        'FOREIGN KEY (status_id) REFERENCES statuses (id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Finish extends DataClass implements Insertable<Finish> {
  final int id;
  final int stageId;
  final int? number;
  final String timestamp;
  final String finishTime;
  final int isHidden;
  final int isManual;
  Finish(
      {required this.id,
      required this.stageId,
      this.number,
      required this.timestamp,
      required this.finishTime,
      required this.isHidden,
      required this.isManual});
  factory Finish.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Finish(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      stageId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}stage_id'])!,
      number: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number']),
      timestamp: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      finishTime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}finish_time'])!,
      isHidden: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_hidden'])!,
      isManual: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_manual'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stage_id'] = Variable<int>(stageId);
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<int?>(number);
    }
    map['timestamp'] = Variable<String>(timestamp);
    map['finish_time'] = Variable<String>(finishTime);
    map['is_hidden'] = Variable<int>(isHidden);
    map['is_manual'] = Variable<int>(isManual);
    return map;
  }

  FinishesCompanion toCompanion(bool nullToAbsent) {
    return FinishesCompanion(
      id: Value(id),
      stageId: Value(stageId),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      timestamp: Value(timestamp),
      finishTime: Value(finishTime),
      isHidden: Value(isHidden),
      isManual: Value(isManual),
    );
  }

  factory Finish.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Finish(
      id: serializer.fromJson<int>(json['id']),
      stageId: serializer.fromJson<int>(json['stage_id']),
      number: serializer.fromJson<int?>(json['number']),
      timestamp: serializer.fromJson<String>(json['timestamp']),
      finishTime: serializer.fromJson<String>(json['finish_time']),
      isHidden: serializer.fromJson<int>(json['is_hidden']),
      isManual: serializer.fromJson<int>(json['is_manual']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stage_id': serializer.toJson<int>(stageId),
      'number': serializer.toJson<int?>(number),
      'timestamp': serializer.toJson<String>(timestamp),
      'finish_time': serializer.toJson<String>(finishTime),
      'is_hidden': serializer.toJson<int>(isHidden),
      'is_manual': serializer.toJson<int>(isManual),
    };
  }

  Finish copyWith(
          {int? id,
          int? stageId,
          int? number,
          String? timestamp,
          String? finishTime,
          int? isHidden,
          int? isManual}) =>
      Finish(
        id: id ?? this.id,
        stageId: stageId ?? this.stageId,
        number: number ?? this.number,
        timestamp: timestamp ?? this.timestamp,
        finishTime: finishTime ?? this.finishTime,
        isHidden: isHidden ?? this.isHidden,
        isManual: isManual ?? this.isManual,
      );
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
  final Value<int> id;
  final Value<int> stageId;
  final Value<int?> number;
  final Value<String> timestamp;
  final Value<String> finishTime;
  final Value<int> isHidden;
  final Value<int> isManual;
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
    required String timestamp,
    required String finishTime,
    this.isHidden = const Value.absent(),
    this.isManual = const Value.absent(),
  })  : stageId = Value(stageId),
        timestamp = Value(timestamp),
        finishTime = Value(finishTime);
  static Insertable<Finish> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<int?>? number,
    Expression<String>? timestamp,
    Expression<String>? finishTime,
    Expression<int>? isHidden,
    Expression<int>? isManual,
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
      {Value<int>? id,
      Value<int>? stageId,
      Value<int?>? number,
      Value<String>? timestamp,
      Value<String>? finishTime,
      Value<int>? isHidden,
      Value<int>? isManual}) {
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
      map['number'] = Variable<int?>(number.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<String>(timestamp.value);
    }
    if (finishTime.present) {
      map['finish_time'] = Variable<String>(finishTime.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<int>(isHidden.value);
    }
    if (isManual.present) {
      map['is_manual'] = Variable<int>(isManual.value);
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

class Finishes extends Table with TableInfo<Finishes, Finish> {
  final GeneratedDatabase _db;
  final String? _alias;
  Finishes(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT not null');
  final VerificationMeta _stageIdMeta = const VerificationMeta('stageId');
  late final GeneratedColumn<int?> stageId = GeneratedColumn<int?>(
      'stage_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<int?> number = GeneratedColumn<int?>(
      'number', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  late final GeneratedColumn<String?> timestamp = GeneratedColumn<String?>(
      'timestamp', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _finishTimeMeta = const VerificationMeta('finishTime');
  late final GeneratedColumn<String?> finishTime = GeneratedColumn<String?>(
      'finish_time', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'not null');
  final VerificationMeta _isHiddenMeta = const VerificationMeta('isHidden');
  late final GeneratedColumn<int?> isHidden = GeneratedColumn<int?>(
      'is_hidden', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'not null default 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _isManualMeta = const VerificationMeta('isManual');
  late final GeneratedColumn<int?> isManual = GeneratedColumn<int?>(
      'is_manual', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'not null default 0',
      defaultValue: const CustomExpression<int>('0'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, stageId, number, timestamp, finishTime, isHidden, isManual];
  @override
  String get aliasedName => _alias ?? 'finishes';
  @override
  String get actualTableName => 'finishes';
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
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('finish_time')) {
      context.handle(
          _finishTimeMeta,
          finishTime.isAcceptableOrUnknown(
              data['finish_time']!, _finishTimeMeta));
    } else if (isInserting) {
      context.missing(_finishTimeMeta);
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
    return Finish.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Finishes createAlias(String alias) {
    return Finishes(_db, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['FOREIGN KEY (stage_id) REFERENCES stages (id)'];
  @override
  bool get dontWriteConstraints => true;
}

abstract class _$ProtocolProvider extends GeneratedDatabase {
  _$ProtocolProvider(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final Events events = Events(this);
  late final Trails trails = Trails(this);
  late final Stages stages = Stages(this);
  late final Riders riders = Riders(this);
  late final Statuses statuses = Statuses(this);
  late final Participants participants = Participants(this);
  late final Starts starts = Starts(this);
  late final Finishes finishes = Finishes(this);
  Selectable<Event> event(int event_id) {
    return customSelect('SELECT * FROM events\r\nWHERE id = :event_id',
        variables: [
          Variable<int>(event_id)
        ],
        readsFrom: {
          events,
        }).map(events.mapFromRow);
  }

  Selectable<Stage> stage(int stageId) {
    return customSelect('SELECT * FROM stages\r\nWHERE id = :stageId',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          stages,
        }).map(stages.mapFromRow);
  }

  Selectable<ParticipantsAtStartResult> participantsAtStart(int stageId) {
    return customSelect(
        'SELECT\r\n    participants.number as number,\r\n    participants.category as category,\r\n    starts.start_time as start_time,\r\n    starts.automatic_start_time as automatic_start_time,\r\n    starts.automatic_correction as automatic_correction,\r\n    starts.timestamp as timestamp,\r\n    starts.manual_start_time as manual_start_time,\r\n    starts.manual_correction as manual_correction,\r\n    riders.name as name,\r\n    riders.nickname as nickname,\r\n    riders.birthday as birthday,\r\n    riders.team as team,\r\n    riders.city as city,\r\n	statuses.type as status\r\nFROM starts, participants, riders, statuses\r\nWHERE\r\n    participants.rider_id = riders.id\r\n    AND statuses.id = participants.status_id\r\n    AND starts.participant_id = participants.id\r\n    AND status != \'DNS\'\r\n    AND starts.stage_id = :stageId\r\nORDER BY start_time ASC',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          participants,
          starts,
          riders,
          statuses,
        }).map((QueryRow row) {
      return ParticipantsAtStartResult(
        number: row.read<int>('number'),
        category: row.read<String>('category'),
        startTime: row.read<String>('start_time'),
        automaticStartTime: row.read<String?>('automatic_start_time'),
        automaticCorrection: row.read<int?>('automatic_correction'),
        timestamp: row.read<String?>('timestamp'),
        manualStartTime: row.read<String?>('manual_start_time'),
        manualCorrection: row.read<int?>('manual_correction'),
        name: row.read<String?>('name'),
        nickname: row.read<String?>('nickname'),
        birthday: row.read<int?>('birthday'),
        team: row.read<String?>('team'),
        city: row.read<String?>('city'),
        status: row.read<String>('status'),
      );
    });
  }

  Selectable<Finish> finishStamps(int stageId, int showHidden, int showManual) {
    return customSelect(
        'SELECT * FROM finishes\r\nWHERE\r\n	stage_id = :stageId\r\n	--TODO: filter "with numbers only"\r\n	AND is_hidden <= :showHidden\r\n	AND is_manual <= :showManual',
        variables: [
          Variable<int>(stageId),
          Variable<int>(showHidden),
          Variable<int>(showManual)
        ],
        readsFrom: {
          finishes,
        }).map(finishes.mapFromRow);
  }

  Selectable<int?> numbersOnTrace(int stageId) {
    return customSelect(
        'SELECT participants.number as number\r\nFROM starts, participants\r\nWHERE\r\n	starts.stage_id = :stageId\r\n	AND starts.participant_id = participants.id\r\n	AND julianday(time(\':time\')) > julianday(time(start_time))\r\nEXCEPT\r\nSELECT number\r\nFROM finishes\r\nWHERE\r\n	finishes.stage_id = :stageId\r\n	AND number NOTNULL',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          participants,
          starts,
          finishes,
        }).map((QueryRow row) => row.read<int?>('number'));
  }

  Selectable<StartResultsForExportResult> startResultsForExport(int stageId) {
    return customSelect(
        'SELECT\r\n    participants.number as number,\r\n    starts.start_time as start_time,\r\n    IFNULL (starts.automatic_correction, IFNULL (starts.manual_correction, \'DNS\')) as correction\r\nFROM starts, participants, stages\r\nWHERE\r\n    starts.stage_id = stages.id\r\n    AND starts.participant_id = participants.id\r\n    AND starts.stage_id = :stageId\r\nORDER BY start_time ASC',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          participants,
          starts,
          stages,
        }).map((QueryRow row) {
      return StartResultsForExportResult(
        number: row.read<int>('number'),
        startTime: row.read<String>('start_time'),
        correction: row.read<String>('correction'),
      );
    });
  }

  Selectable<FinishResultsForExportResult> finishResultsForExport(int stageId) {
    return customSelect(
        'SELECT\r\n	number, finish_time\r\nFROM finishes\r\nWHERE\r\n	number NOTNULL\r\n	AND stage_id = :stageId\r\nORDER BY finish_time ASC',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          finishes,
        }).map((QueryRow row) {
      return FinishResultsForExportResult(
        number: row.read<int?>('number'),
        finishTime: row.read<String>('finish_time'),
      );
    });
  }

  Selectable<int> startsBetweenTimesForBeep(
      String beepTime, String after, int stageId) {
    return customSelect(
        'SELECT COUNT(*)\r\nFROM starts, statuses\r\nWHERE\r\n	start_time BETWEEN :beepTime AND :after\r\n	AND starts.stage_id = :stageId\r\n	AND starts.status_id = statuses.id\r\n	AND statuses.type != \'DNS\'\r\n	AND (automatic_start_time ISNULL OR manual_start_time ISNULL)\r\nORDER BY start_time ASC',
        variables: [
          Variable<String>(beepTime),
          Variable<String>(after),
          Variable<int>(stageId)
        ],
        readsFrom: {
          starts,
          statuses,
        }).map((QueryRow row) => row.read<int>('COUNT(*)'));
  }

  Selectable<Start> startsBetweenTimes(
      String before, String after, int stageId) {
    return customSelect(
        'SELECT *\r\nFROM starts\r\nWHERE\r\n	start_time BETWEEN :before AND :after\r\n	AND stage_id = :stageId',
        variables: [
          Variable<String>(before),
          Variable<String>(after),
          Variable<int>(stageId)
        ],
        readsFrom: {
          starts,
        }).map(starts.mapFromRow);
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        events,
        trails,
        stages,
        riders,
        statuses,
        participants,
        starts,
        finishes
      ];
}

class ParticipantsAtStartResult {
  final int number;
  final String category;
  final String startTime;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? timestamp;
  final String? manualStartTime;
  final int? manualCorrection;
  final String? name;
  final String? nickname;
  final int? birthday;
  final String? team;
  final String? city;
  final String status;
  ParticipantsAtStartResult({
    required this.number,
    required this.category,
    required this.startTime,
    this.automaticStartTime,
    this.automaticCorrection,
    this.timestamp,
    this.manualStartTime,
    this.manualCorrection,
    this.name,
    this.nickname,
    this.birthday,
    this.team,
    this.city,
    required this.status,
  });
}

class StartResultsForExportResult {
  final int number;
  final String startTime;
  final String correction;
  StartResultsForExportResult({
    required this.number,
    required this.startTime,
    required this.correction,
  });
}

class FinishResultsForExportResult {
  final int? number;
  final String finishTime;
  FinishResultsForExportResult({
    this.number,
    required this.finishTime,
  });
}
