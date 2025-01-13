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
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
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
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
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
      [id, name, startDate, finishDate, location, url, description, isDeleted];
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
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}start_date']),
      finishDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}finish_date']),
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
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
  final int id;
  final String name;
  final String? startDate;
  final String? finishDate;
  final String? location;
  final String? url;
  final String? description;
  final bool isDeleted;
  const Race(
      {required this.id,
      required this.name,
      this.startDate,
      this.finishDate,
      this.location,
      this.url,
      this.description,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
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
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  RacesCompanion toCompanion(bool nullToAbsent) {
    return RacesCompanion(
      id: Value(id),
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
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isDeleted: Value(isDeleted),
    );
  }

  factory Race.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Race(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      startDate: serializer.fromJson<String?>(json['start_date']),
      finishDate: serializer.fromJson<String?>(json['finish_date']),
      location: serializer.fromJson<String?>(json['location']),
      url: serializer.fromJson<String?>(json['url']),
      description: serializer.fromJson<String?>(json['description']),
      isDeleted: serializer.fromJson<bool>(json['is_deleted']),
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
      'location': serializer.toJson<String?>(location),
      'url': serializer.toJson<String?>(url),
      'description': serializer.toJson<String?>(description),
      'is_deleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Race copyWith(
          {int? id,
          String? name,
          Value<String?> startDate = const Value.absent(),
          Value<String?> finishDate = const Value.absent(),
          Value<String?> location = const Value.absent(),
          Value<String?> url = const Value.absent(),
          Value<String?> description = const Value.absent(),
          bool? isDeleted}) =>
      Race(
        id: id ?? this.id,
        name: name ?? this.name,
        startDate: startDate.present ? startDate.value : this.startDate,
        finishDate: finishDate.present ? finishDate.value : this.finishDate,
        location: location.present ? location.value : this.location,
        url: url.present ? url.value : this.url,
        description: description.present ? description.value : this.description,
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
      url: data.url.present ? data.url.value : this.url,
      description:
          data.description.present ? data.description.value : this.description,
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
          ..write('url: $url, ')
          ..write('description: $description, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, startDate, finishDate, location, url, description, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Race &&
          other.id == this.id &&
          other.name == this.name &&
          other.startDate == this.startDate &&
          other.finishDate == this.finishDate &&
          other.location == this.location &&
          other.url == this.url &&
          other.description == this.description &&
          other.isDeleted == this.isDeleted);
}

class RacesCompanion extends UpdateCompanion<Race> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> startDate;
  final Value<String?> finishDate;
  final Value<String?> location;
  final Value<String?> url;
  final Value<String?> description;
  final Value<bool> isDeleted;
  const RacesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.startDate = const Value.absent(),
    this.finishDate = const Value.absent(),
    this.location = const Value.absent(),
    this.url = const Value.absent(),
    this.description = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  RacesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.startDate = const Value.absent(),
    this.finishDate = const Value.absent(),
    this.location = const Value.absent(),
    this.url = const Value.absent(),
    this.description = const Value.absent(),
    this.isDeleted = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Race> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? startDate,
    Expression<String>? finishDate,
    Expression<String>? location,
    Expression<String>? url,
    Expression<String>? description,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (startDate != null) 'start_date': startDate,
      if (finishDate != null) 'finish_date': finishDate,
      if (location != null) 'location': location,
      if (url != null) 'url': url,
      if (description != null) 'description': description,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  RacesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? startDate,
      Value<String?>? finishDate,
      Value<String?>? location,
      Value<String?>? url,
      Value<String?>? description,
      Value<bool>? isDeleted}) {
    return RacesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      finishDate: finishDate ?? this.finishDate,
      location: location ?? this.location,
      url: url ?? this.url,
      description: description ?? this.description,
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
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
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
          ..write('url: $url, ')
          ..write('description: $description, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }
}

class TrackFiles extends Table with TableInfo<TrackFiles, TrackFile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  TrackFiles(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _extensionMeta =
      const VerificationMeta('extension');
  late final GeneratedColumn<String> extension = GeneratedColumn<String>(
      'extension', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  late final GeneratedColumn<int> size = GeneratedColumn<int>(
      'size', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _hashSha1Meta =
      const VerificationMeta('hashSha1');
  late final GeneratedColumn<String> hashSha1 = GeneratedColumn<String>(
      'hash_sha1', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
      'data', aliasedName, false,
      type: DriftSqlType.blob,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, extension, size, description, hashSha1, data, timestamp];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'track_files';
  @override
  VerificationContext validateIntegrity(Insertable<TrackFile> instance,
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
    if (data.containsKey('extension')) {
      context.handle(_extensionMeta,
          extension.isAcceptableOrUnknown(data['extension']!, _extensionMeta));
    }
    if (data.containsKey('size')) {
      context.handle(
          _sizeMeta, size.isAcceptableOrUnknown(data['size']!, _sizeMeta));
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('hash_sha1')) {
      context.handle(_hashSha1Meta,
          hashSha1.isAcceptableOrUnknown(data['hash_sha1']!, _hashSha1Meta));
    } else if (isInserting) {
      context.missing(_hashSha1Meta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrackFile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrackFile(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      extension: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}extension']),
      size: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}size'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      hashSha1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hash_sha1'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}data'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
    );
  }

  @override
  TrackFiles createAlias(String alias) {
    return TrackFiles(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class TrackFile extends DataClass implements Insertable<TrackFile> {
  final int id;
  final String name;
  final String? extension;
  final int size;
  final String? description;
  final String hashSha1;
  final Uint8List data;
  final DateTime timestamp;
  const TrackFile(
      {required this.id,
      required this.name,
      this.extension,
      required this.size,
      this.description,
      required this.hashSha1,
      required this.data,
      required this.timestamp});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || extension != null) {
      map['extension'] = Variable<String>(extension);
    }
    map['size'] = Variable<int>(size);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['hash_sha1'] = Variable<String>(hashSha1);
    map['data'] = Variable<Uint8List>(data);
    map['timestamp'] = Variable<DateTime>(timestamp);
    return map;
  }

  TrackFilesCompanion toCompanion(bool nullToAbsent) {
    return TrackFilesCompanion(
      id: Value(id),
      name: Value(name),
      extension: extension == null && nullToAbsent
          ? const Value.absent()
          : Value(extension),
      size: Value(size),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      hashSha1: Value(hashSha1),
      data: Value(data),
      timestamp: Value(timestamp),
    );
  }

  factory TrackFile.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrackFile(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      extension: serializer.fromJson<String?>(json['extension']),
      size: serializer.fromJson<int>(json['size']),
      description: serializer.fromJson<String?>(json['description']),
      hashSha1: serializer.fromJson<String>(json['hash_sha1']),
      data: serializer.fromJson<Uint8List>(json['data']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'extension': serializer.toJson<String?>(extension),
      'size': serializer.toJson<int>(size),
      'description': serializer.toJson<String?>(description),
      'hash_sha1': serializer.toJson<String>(hashSha1),
      'data': serializer.toJson<Uint8List>(data),
      'timestamp': serializer.toJson<DateTime>(timestamp),
    };
  }

  TrackFile copyWith(
          {int? id,
          String? name,
          Value<String?> extension = const Value.absent(),
          int? size,
          Value<String?> description = const Value.absent(),
          String? hashSha1,
          Uint8List? data,
          DateTime? timestamp}) =>
      TrackFile(
        id: id ?? this.id,
        name: name ?? this.name,
        extension: extension.present ? extension.value : this.extension,
        size: size ?? this.size,
        description: description.present ? description.value : this.description,
        hashSha1: hashSha1 ?? this.hashSha1,
        data: data ?? this.data,
        timestamp: timestamp ?? this.timestamp,
      );
  TrackFile copyWithCompanion(TrackFilesCompanion data) {
    return TrackFile(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      extension: data.extension.present ? data.extension.value : this.extension,
      size: data.size.present ? data.size.value : this.size,
      description:
          data.description.present ? data.description.value : this.description,
      hashSha1: data.hashSha1.present ? data.hashSha1.value : this.hashSha1,
      data: data.data.present ? data.data.value : this.data,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TrackFile(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('extension: $extension, ')
          ..write('size: $size, ')
          ..write('description: $description, ')
          ..write('hashSha1: $hashSha1, ')
          ..write('data: $data, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, extension, size, description,
      hashSha1, $driftBlobEquality.hash(data), timestamp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrackFile &&
          other.id == this.id &&
          other.name == this.name &&
          other.extension == this.extension &&
          other.size == this.size &&
          other.description == this.description &&
          other.hashSha1 == this.hashSha1 &&
          $driftBlobEquality.equals(other.data, this.data) &&
          other.timestamp == this.timestamp);
}

class TrackFilesCompanion extends UpdateCompanion<TrackFile> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> extension;
  final Value<int> size;
  final Value<String?> description;
  final Value<String> hashSha1;
  final Value<Uint8List> data;
  final Value<DateTime> timestamp;
  const TrackFilesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.extension = const Value.absent(),
    this.size = const Value.absent(),
    this.description = const Value.absent(),
    this.hashSha1 = const Value.absent(),
    this.data = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  TrackFilesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.extension = const Value.absent(),
    required int size,
    this.description = const Value.absent(),
    required String hashSha1,
    required Uint8List data,
    required DateTime timestamp,
  })  : name = Value(name),
        size = Value(size),
        hashSha1 = Value(hashSha1),
        data = Value(data),
        timestamp = Value(timestamp);
  static Insertable<TrackFile> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? extension,
    Expression<int>? size,
    Expression<String>? description,
    Expression<String>? hashSha1,
    Expression<Uint8List>? data,
    Expression<DateTime>? timestamp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (extension != null) 'extension': extension,
      if (size != null) 'size': size,
      if (description != null) 'description': description,
      if (hashSha1 != null) 'hash_sha1': hashSha1,
      if (data != null) 'data': data,
      if (timestamp != null) 'timestamp': timestamp,
    });
  }

  TrackFilesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? extension,
      Value<int>? size,
      Value<String?>? description,
      Value<String>? hashSha1,
      Value<Uint8List>? data,
      Value<DateTime>? timestamp}) {
    return TrackFilesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      extension: extension ?? this.extension,
      size: size ?? this.size,
      description: description ?? this.description,
      hashSha1: hashSha1 ?? this.hashSha1,
      data: data ?? this.data,
      timestamp: timestamp ?? this.timestamp,
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
    if (extension.present) {
      map['extension'] = Variable<String>(extension.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (hashSha1.present) {
      map['hash_sha1'] = Variable<String>(hashSha1.value);
    }
    if (data.present) {
      map['data'] = Variable<Uint8List>(data.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrackFilesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('extension: $extension, ')
          ..write('size: $size, ')
          ..write('description: $description, ')
          ..write('hashSha1: $hashSha1, ')
          ..write('data: $data, ')
          ..write('timestamp: $timestamp')
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
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
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
  static const VerificationMeta _fileIdMeta = const VerificationMeta('fileId');
  late final GeneratedColumn<int> fileId = GeneratedColumn<int>(
      'file_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
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
      [id, name, distance, elevation, fileId, url, description, isDeleted];
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
    if (data.containsKey('file_id')) {
      context.handle(_fileIdMeta,
          fileId.isAcceptableOrUnknown(data['file_id']!, _fileIdMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
  Trail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Trail(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      distance: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}distance']),
      elevation: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}elevation']),
      fileId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}file_id']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  Trails createAlias(String alias) {
    return Trails(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(file_id)REFERENCES track_files(id)ON DELETE SET NULL'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Trail extends DataClass implements Insertable<Trail> {
  final int id;
  final String name;
  final int? distance;
  final int? elevation;
  final int? fileId;
  final String? url;
  final String? description;
  final bool isDeleted;
  const Trail(
      {required this.id,
      required this.name,
      this.distance,
      this.elevation,
      this.fileId,
      this.url,
      this.description,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || distance != null) {
      map['distance'] = Variable<int>(distance);
    }
    if (!nullToAbsent || elevation != null) {
      map['elevation'] = Variable<int>(elevation);
    }
    if (!nullToAbsent || fileId != null) {
      map['file_id'] = Variable<int>(fileId);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  TrailsCompanion toCompanion(bool nullToAbsent) {
    return TrailsCompanion(
      id: Value(id),
      name: Value(name),
      distance: distance == null && nullToAbsent
          ? const Value.absent()
          : Value(distance),
      elevation: elevation == null && nullToAbsent
          ? const Value.absent()
          : Value(elevation),
      fileId:
          fileId == null && nullToAbsent ? const Value.absent() : Value(fileId),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isDeleted: Value(isDeleted),
    );
  }

  factory Trail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Trail(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      distance: serializer.fromJson<int?>(json['distance']),
      elevation: serializer.fromJson<int?>(json['elevation']),
      fileId: serializer.fromJson<int?>(json['file_id']),
      url: serializer.fromJson<String?>(json['url']),
      description: serializer.fromJson<String?>(json['description']),
      isDeleted: serializer.fromJson<bool>(json['is_deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'distance': serializer.toJson<int?>(distance),
      'elevation': serializer.toJson<int?>(elevation),
      'file_id': serializer.toJson<int?>(fileId),
      'url': serializer.toJson<String?>(url),
      'description': serializer.toJson<String?>(description),
      'is_deleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Trail copyWith(
          {int? id,
          String? name,
          Value<int?> distance = const Value.absent(),
          Value<int?> elevation = const Value.absent(),
          Value<int?> fileId = const Value.absent(),
          Value<String?> url = const Value.absent(),
          Value<String?> description = const Value.absent(),
          bool? isDeleted}) =>
      Trail(
        id: id ?? this.id,
        name: name ?? this.name,
        distance: distance.present ? distance.value : this.distance,
        elevation: elevation.present ? elevation.value : this.elevation,
        fileId: fileId.present ? fileId.value : this.fileId,
        url: url.present ? url.value : this.url,
        description: description.present ? description.value : this.description,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  Trail copyWithCompanion(TrailsCompanion data) {
    return Trail(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      distance: data.distance.present ? data.distance.value : this.distance,
      elevation: data.elevation.present ? data.elevation.value : this.elevation,
      fileId: data.fileId.present ? data.fileId.value : this.fileId,
      url: data.url.present ? data.url.value : this.url,
      description:
          data.description.present ? data.description.value : this.description,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Trail(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('distance: $distance, ')
          ..write('elevation: $elevation, ')
          ..write('fileId: $fileId, ')
          ..write('url: $url, ')
          ..write('description: $description, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, distance, elevation, fileId, url, description, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Trail &&
          other.id == this.id &&
          other.name == this.name &&
          other.distance == this.distance &&
          other.elevation == this.elevation &&
          other.fileId == this.fileId &&
          other.url == this.url &&
          other.description == this.description &&
          other.isDeleted == this.isDeleted);
}

class TrailsCompanion extends UpdateCompanion<Trail> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> distance;
  final Value<int?> elevation;
  final Value<int?> fileId;
  final Value<String?> url;
  final Value<String?> description;
  final Value<bool> isDeleted;
  const TrailsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.distance = const Value.absent(),
    this.elevation = const Value.absent(),
    this.fileId = const Value.absent(),
    this.url = const Value.absent(),
    this.description = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  TrailsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.distance = const Value.absent(),
    this.elevation = const Value.absent(),
    this.fileId = const Value.absent(),
    this.url = const Value.absent(),
    this.description = const Value.absent(),
    this.isDeleted = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Trail> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? distance,
    Expression<int>? elevation,
    Expression<int>? fileId,
    Expression<String>? url,
    Expression<String>? description,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (distance != null) 'distance': distance,
      if (elevation != null) 'elevation': elevation,
      if (fileId != null) 'file_id': fileId,
      if (url != null) 'url': url,
      if (description != null) 'description': description,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  TrailsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int?>? distance,
      Value<int?>? elevation,
      Value<int?>? fileId,
      Value<String?>? url,
      Value<String?>? description,
      Value<bool>? isDeleted}) {
    return TrailsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      distance: distance ?? this.distance,
      elevation: elevation ?? this.elevation,
      fileId: fileId ?? this.fileId,
      url: url ?? this.url,
      description: description ?? this.description,
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
    if (distance.present) {
      map['distance'] = Variable<int>(distance.value);
    }
    if (elevation.present) {
      map['elevation'] = Variable<int>(elevation.value);
    }
    if (fileId.present) {
      map['file_id'] = Variable<int>(fileId.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
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
          ..write('fileId: $fileId, ')
          ..write('url: $url, ')
          ..write('description: $description, ')
          ..write('isDeleted: $isDeleted')
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
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
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
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
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
      [id, trailId, raceId, name, description, isActive, isDeleted];
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      trailId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}trail_id']),
      raceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}race_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
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
        'FOREIGN KEY(trail_id)REFERENCES trails(id)ON DELETE SET NULL',
        'FOREIGN KEY(race_id)REFERENCES races(id)ON DELETE CASCADE'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Stage extends DataClass implements Insertable<Stage> {
  final int id;
  final int? trailId;
  final int raceId;
  final String name;
  final String? description;
  final bool isActive;
  final bool isDeleted;
  const Stage(
      {required this.id,
      this.trailId,
      required this.raceId,
      required this.name,
      this.description,
      required this.isActive,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || trailId != null) {
      map['trail_id'] = Variable<int>(trailId);
    }
    map['race_id'] = Variable<int>(raceId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_active'] = Variable<bool>(isActive);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  StagesCompanion toCompanion(bool nullToAbsent) {
    return StagesCompanion(
      id: Value(id),
      trailId: trailId == null && nullToAbsent
          ? const Value.absent()
          : Value(trailId),
      raceId: Value(raceId),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isActive: Value(isActive),
      isDeleted: Value(isDeleted),
    );
  }

  factory Stage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Stage(
      id: serializer.fromJson<int>(json['id']),
      trailId: serializer.fromJson<int?>(json['trail_id']),
      raceId: serializer.fromJson<int>(json['race_id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      isActive: serializer.fromJson<bool>(json['is_active']),
      isDeleted: serializer.fromJson<bool>(json['is_deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'trail_id': serializer.toJson<int?>(trailId),
      'race_id': serializer.toJson<int>(raceId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'is_active': serializer.toJson<bool>(isActive),
      'is_deleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Stage copyWith(
          {int? id,
          Value<int?> trailId = const Value.absent(),
          int? raceId,
          String? name,
          Value<String?> description = const Value.absent(),
          bool? isActive,
          bool? isDeleted}) =>
      Stage(
        id: id ?? this.id,
        trailId: trailId.present ? trailId.value : this.trailId,
        raceId: raceId ?? this.raceId,
        name: name ?? this.name,
        description: description.present ? description.value : this.description,
        isActive: isActive ?? this.isActive,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  Stage copyWithCompanion(StagesCompanion data) {
    return Stage(
      id: data.id.present ? data.id.value : this.id,
      trailId: data.trailId.present ? data.trailId.value : this.trailId,
      raceId: data.raceId.present ? data.raceId.value : this.raceId,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
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
          ..write('description: $description, ')
          ..write('isActive: $isActive, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, trailId, raceId, name, description, isActive, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stage &&
          other.id == this.id &&
          other.trailId == this.trailId &&
          other.raceId == this.raceId &&
          other.name == this.name &&
          other.description == this.description &&
          other.isActive == this.isActive &&
          other.isDeleted == this.isDeleted);
}

class StagesCompanion extends UpdateCompanion<Stage> {
  final Value<int> id;
  final Value<int?> trailId;
  final Value<int> raceId;
  final Value<String> name;
  final Value<String?> description;
  final Value<bool> isActive;
  final Value<bool> isDeleted;
  const StagesCompanion({
    this.id = const Value.absent(),
    this.trailId = const Value.absent(),
    this.raceId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  StagesCompanion.insert({
    this.id = const Value.absent(),
    this.trailId = const Value.absent(),
    required int raceId,
    required String name,
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
    this.isDeleted = const Value.absent(),
  })  : raceId = Value(raceId),
        name = Value(name);
  static Insertable<Stage> custom({
    Expression<int>? id,
    Expression<int>? trailId,
    Expression<int>? raceId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<bool>? isActive,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (trailId != null) 'trail_id': trailId,
      if (raceId != null) 'race_id': raceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (isActive != null) 'is_active': isActive,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  StagesCompanion copyWith(
      {Value<int>? id,
      Value<int?>? trailId,
      Value<int>? raceId,
      Value<String>? name,
      Value<String?>? description,
      Value<bool>? isActive,
      Value<bool>? isDeleted}) {
    return StagesCompanion(
      id: id ?? this.id,
      trailId: trailId ?? this.trailId,
      raceId: raceId ?? this.raceId,
      name: name ?? this.name,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String>(description.value);
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
          ..write('description: $description, ')
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
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL COLLATE NOCASE');
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
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT FALSE',
      defaultValue: const CustomExpression('FALSE'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        nickname,
        birthday,
        team,
        city,
        email,
        phone,
        comment,
        isDeleted
      ];
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
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
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
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
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
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
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
  final int id;
  final String name;
  final String? nickname;
  final String? birthday;
  final String? team;
  final String? city;
  final String? email;
  final String? phone;

  ///	phone text UNIQUE,
  ///	email text UNIQUE,
  /// TODO: make this unique
  final String? comment;
  final bool isDeleted;
  const Rider(
      {required this.id,
      required this.name,
      this.nickname,
      this.birthday,
      this.team,
      this.city,
      this.email,
      this.phone,
      this.comment,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
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
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  RidersCompanion toCompanion(bool nullToAbsent) {
    return RidersCompanion(
      id: Value(id),
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
      isDeleted: Value(isDeleted),
    );
  }

  factory Rider.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Rider(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nickname: serializer.fromJson<String?>(json['nickname']),
      birthday: serializer.fromJson<String?>(json['birthday']),
      team: serializer.fromJson<String?>(json['team']),
      city: serializer.fromJson<String?>(json['city']),
      email: serializer.fromJson<String?>(json['email']),
      phone: serializer.fromJson<String?>(json['phone']),
      comment: serializer.fromJson<String?>(json['comment']),
      isDeleted: serializer.fromJson<bool>(json['is_deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'nickname': serializer.toJson<String?>(nickname),
      'birthday': serializer.toJson<String?>(birthday),
      'team': serializer.toJson<String?>(team),
      'city': serializer.toJson<String?>(city),
      'email': serializer.toJson<String?>(email),
      'phone': serializer.toJson<String?>(phone),
      'comment': serializer.toJson<String?>(comment),
      'is_deleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Rider copyWith(
          {int? id,
          String? name,
          Value<String?> nickname = const Value.absent(),
          Value<String?> birthday = const Value.absent(),
          Value<String?> team = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> comment = const Value.absent(),
          bool? isDeleted}) =>
      Rider(
        id: id ?? this.id,
        name: name ?? this.name,
        nickname: nickname.present ? nickname.value : this.nickname,
        birthday: birthday.present ? birthday.value : this.birthday,
        team: team.present ? team.value : this.team,
        city: city.present ? city.value : this.city,
        email: email.present ? email.value : this.email,
        phone: phone.present ? phone.value : this.phone,
        comment: comment.present ? comment.value : this.comment,
        isDeleted: isDeleted ?? this.isDeleted,
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
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
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
          ..write('comment: $comment, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, nickname, birthday, team, city,
      email, phone, comment, isDeleted);
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
          other.comment == this.comment &&
          other.isDeleted == this.isDeleted);
}

class RidersCompanion extends UpdateCompanion<Rider> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> nickname;
  final Value<String?> birthday;
  final Value<String?> team;
  final Value<String?> city;
  final Value<String?> email;
  final Value<String?> phone;
  final Value<String?> comment;
  final Value<bool> isDeleted;
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
    this.isDeleted = const Value.absent(),
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
    this.isDeleted = const Value.absent(),
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
    Expression<bool>? isDeleted,
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
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  RidersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? nickname,
      Value<String?>? birthday,
      Value<String?>? team,
      Value<String?>? city,
      Value<String?>? email,
      Value<String?>? phone,
      Value<String?>? comment,
      Value<bool>? isDeleted}) {
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
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
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
          ..write('comment: $comment, ')
          ..write('isDeleted: $isDeleted')
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
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
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
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
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
  final int id;
  final String type;
  const Status({required this.id, required this.type});
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

class Participants extends Table with TableInfo<Participants, Participant> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Participants(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
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
      'category', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
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
      [id, raceId, riderId, number, category, rfid, statusId, isDeleted];
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
    }
    if (data.containsKey('rfid')) {
      context.handle(
          _rfidMeta, rfid.isAcceptableOrUnknown(data['rfid']!, _rfidMeta));
    }
    if (data.containsKey('status_id')) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableOrUnknown(data['status_id']!, _statusIdMeta));
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
  Participant map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Participant(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      raceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}race_id'])!,
      riderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rider_id'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      rfid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rfid']),
      statusId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status_id'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  Participants createAlias(String alias) {
    return Participants(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(rider_id)REFERENCES riders(id)',
        'FOREIGN KEY(race_id)REFERENCES races(id)ON DELETE CASCADE',
        'FOREIGN KEY(status_id)REFERENCES statuses(id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Participant extends DataClass implements Insertable<Participant> {
  final int id;
  final int raceId;
  final int riderId;
  final int number;
  final String? category;

  /// может быть NULL для быстрого добавления номера на старте
  final String? rfid;
  final int statusId;
  final bool isDeleted;
  const Participant(
      {required this.id,
      required this.raceId,
      required this.riderId,
      required this.number,
      this.category,
      this.rfid,
      required this.statusId,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['race_id'] = Variable<int>(raceId);
    map['rider_id'] = Variable<int>(riderId);
    map['number'] = Variable<int>(number);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || rfid != null) {
      map['rfid'] = Variable<String>(rfid);
    }
    map['status_id'] = Variable<int>(statusId);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  ParticipantsCompanion toCompanion(bool nullToAbsent) {
    return ParticipantsCompanion(
      id: Value(id),
      raceId: Value(raceId),
      riderId: Value(riderId),
      number: Value(number),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      rfid: rfid == null && nullToAbsent ? const Value.absent() : Value(rfid),
      statusId: Value(statusId),
      isDeleted: Value(isDeleted),
    );
  }

  factory Participant.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Participant(
      id: serializer.fromJson<int>(json['id']),
      raceId: serializer.fromJson<int>(json['race_id']),
      riderId: serializer.fromJson<int>(json['rider_id']),
      number: serializer.fromJson<int>(json['number']),
      category: serializer.fromJson<String?>(json['category']),
      rfid: serializer.fromJson<String?>(json['rfid']),
      statusId: serializer.fromJson<int>(json['status_id']),
      isDeleted: serializer.fromJson<bool>(json['is_deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'race_id': serializer.toJson<int>(raceId),
      'rider_id': serializer.toJson<int>(riderId),
      'number': serializer.toJson<int>(number),
      'category': serializer.toJson<String?>(category),
      'rfid': serializer.toJson<String?>(rfid),
      'status_id': serializer.toJson<int>(statusId),
      'is_deleted': serializer.toJson<bool>(isDeleted),
    };
  }

  Participant copyWith(
          {int? id,
          int? raceId,
          int? riderId,
          int? number,
          Value<String?> category = const Value.absent(),
          Value<String?> rfid = const Value.absent(),
          int? statusId,
          bool? isDeleted}) =>
      Participant(
        id: id ?? this.id,
        raceId: raceId ?? this.raceId,
        riderId: riderId ?? this.riderId,
        number: number ?? this.number,
        category: category.present ? category.value : this.category,
        rfid: rfid.present ? rfid.value : this.rfid,
        statusId: statusId ?? this.statusId,
        isDeleted: isDeleted ?? this.isDeleted,
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
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
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
          ..write('statusId: $statusId, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, raceId, riderId, number, category, rfid, statusId, isDeleted);
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
          other.statusId == this.statusId &&
          other.isDeleted == this.isDeleted);
}

class ParticipantsCompanion extends UpdateCompanion<Participant> {
  final Value<int> id;
  final Value<int> raceId;
  final Value<int> riderId;
  final Value<int> number;
  final Value<String?> category;
  final Value<String?> rfid;
  final Value<int> statusId;
  final Value<bool> isDeleted;
  const ParticipantsCompanion({
    this.id = const Value.absent(),
    this.raceId = const Value.absent(),
    this.riderId = const Value.absent(),
    this.number = const Value.absent(),
    this.category = const Value.absent(),
    this.rfid = const Value.absent(),
    this.statusId = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  ParticipantsCompanion.insert({
    this.id = const Value.absent(),
    required int raceId,
    required int riderId,
    required int number,
    this.category = const Value.absent(),
    this.rfid = const Value.absent(),
    this.statusId = const Value.absent(),
    this.isDeleted = const Value.absent(),
  })  : raceId = Value(raceId),
        riderId = Value(riderId),
        number = Value(number);
  static Insertable<Participant> custom({
    Expression<int>? id,
    Expression<int>? raceId,
    Expression<int>? riderId,
    Expression<int>? number,
    Expression<String>? category,
    Expression<String>? rfid,
    Expression<int>? statusId,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (raceId != null) 'race_id': raceId,
      if (riderId != null) 'rider_id': riderId,
      if (number != null) 'number': number,
      if (category != null) 'category': category,
      if (rfid != null) 'rfid': rfid,
      if (statusId != null) 'status_id': statusId,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  ParticipantsCompanion copyWith(
      {Value<int>? id,
      Value<int>? raceId,
      Value<int>? riderId,
      Value<int>? number,
      Value<String?>? category,
      Value<String?>? rfid,
      Value<int>? statusId,
      Value<bool>? isDeleted}) {
    return ParticipantsCompanion(
      id: id ?? this.id,
      raceId: raceId ?? this.raceId,
      riderId: riderId ?? this.riderId,
      number: number ?? this.number,
      category: category ?? this.category,
      rfid: rfid ?? this.rfid,
      statusId: statusId ?? this.statusId,
      isDeleted: isDeleted ?? this.isDeleted,
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
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
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
          ..write('statusId: $statusId, ')
          ..write('isDeleted: $isDeleted')
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
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
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
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _ntpOffsetMeta =
      const VerificationMeta('ntpOffset');
  late final GeneratedColumn<int> ntpOffset = GeneratedColumn<int>(
      'ntp_offset', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _finishTimeMeta =
      const VerificationMeta('finishTime');
  late final GeneratedColumn<String> finishTime = GeneratedColumn<String>(
      'finish_time', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
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
  List<GeneratedColumn> get $columns => [
        id,
        stageId,
        number,
        timestamp,
        ntpOffset,
        finishTime,
        isHidden,
        isManual
      ];
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
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('ntp_offset')) {
      context.handle(_ntpOffsetMeta,
          ntpOffset.isAcceptableOrUnknown(data['ntp_offset']!, _ntpOffsetMeta));
    } else if (isInserting) {
      context.missing(_ntpOffsetMeta);
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Finish(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      stageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stage_id'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number']),
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
      ntpOffset: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ntp_offset'])!,
      finishTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}finish_time'])!,
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
      const ['FOREIGN KEY(stage_id)REFERENCES stages(id)ON DELETE CASCADE'];
  @override
  bool get dontWriteConstraints => true;
}

class Finish extends DataClass implements Insertable<Finish> {
  final int id;
  final int stageId;
  final int? number;
  final DateTime timestamp;
  final int ntpOffset;
  final String finishTime;
  final bool isHidden;
  final bool isManual;
  const Finish(
      {required this.id,
      required this.stageId,
      this.number,
      required this.timestamp,
      required this.ntpOffset,
      required this.finishTime,
      required this.isHidden,
      required this.isManual});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stage_id'] = Variable<int>(stageId);
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<int>(number);
    }
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['ntp_offset'] = Variable<int>(ntpOffset);
    map['finish_time'] = Variable<String>(finishTime);
    map['is_hidden'] = Variable<bool>(isHidden);
    map['is_manual'] = Variable<bool>(isManual);
    return map;
  }

  FinishesCompanion toCompanion(bool nullToAbsent) {
    return FinishesCompanion(
      id: Value(id),
      stageId: Value(stageId),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      timestamp: Value(timestamp),
      ntpOffset: Value(ntpOffset),
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
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      ntpOffset: serializer.fromJson<int>(json['ntp_offset']),
      finishTime: serializer.fromJson<String>(json['finish_time']),
      isHidden: serializer.fromJson<bool>(json['is_hidden']),
      isManual: serializer.fromJson<bool>(json['is_manual']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stage_id': serializer.toJson<int>(stageId),
      'number': serializer.toJson<int?>(number),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'ntp_offset': serializer.toJson<int>(ntpOffset),
      'finish_time': serializer.toJson<String>(finishTime),
      'is_hidden': serializer.toJson<bool>(isHidden),
      'is_manual': serializer.toJson<bool>(isManual),
    };
  }

  Finish copyWith(
          {int? id,
          int? stageId,
          Value<int?> number = const Value.absent(),
          DateTime? timestamp,
          int? ntpOffset,
          String? finishTime,
          bool? isHidden,
          bool? isManual}) =>
      Finish(
        id: id ?? this.id,
        stageId: stageId ?? this.stageId,
        number: number.present ? number.value : this.number,
        timestamp: timestamp ?? this.timestamp,
        ntpOffset: ntpOffset ?? this.ntpOffset,
        finishTime: finishTime ?? this.finishTime,
        isHidden: isHidden ?? this.isHidden,
        isManual: isManual ?? this.isManual,
      );
  Finish copyWithCompanion(FinishesCompanion data) {
    return Finish(
      id: data.id.present ? data.id.value : this.id,
      stageId: data.stageId.present ? data.stageId.value : this.stageId,
      number: data.number.present ? data.number.value : this.number,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      ntpOffset: data.ntpOffset.present ? data.ntpOffset.value : this.ntpOffset,
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
          ..write('ntpOffset: $ntpOffset, ')
          ..write('finishTime: $finishTime, ')
          ..write('isHidden: $isHidden, ')
          ..write('isManual: $isManual')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, stageId, number, timestamp, ntpOffset,
      finishTime, isHidden, isManual);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Finish &&
          other.id == this.id &&
          other.stageId == this.stageId &&
          other.number == this.number &&
          other.timestamp == this.timestamp &&
          other.ntpOffset == this.ntpOffset &&
          other.finishTime == this.finishTime &&
          other.isHidden == this.isHidden &&
          other.isManual == this.isManual);
}

class FinishesCompanion extends UpdateCompanion<Finish> {
  final Value<int> id;
  final Value<int> stageId;
  final Value<int?> number;
  final Value<DateTime> timestamp;
  final Value<int> ntpOffset;
  final Value<String> finishTime;
  final Value<bool> isHidden;
  final Value<bool> isManual;
  const FinishesCompanion({
    this.id = const Value.absent(),
    this.stageId = const Value.absent(),
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.ntpOffset = const Value.absent(),
    this.finishTime = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.isManual = const Value.absent(),
  });
  FinishesCompanion.insert({
    this.id = const Value.absent(),
    required int stageId,
    this.number = const Value.absent(),
    required DateTime timestamp,
    required int ntpOffset,
    required String finishTime,
    this.isHidden = const Value.absent(),
    this.isManual = const Value.absent(),
  })  : stageId = Value(stageId),
        timestamp = Value(timestamp),
        ntpOffset = Value(ntpOffset),
        finishTime = Value(finishTime);
  static Insertable<Finish> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<int>? number,
    Expression<DateTime>? timestamp,
    Expression<int>? ntpOffset,
    Expression<String>? finishTime,
    Expression<bool>? isHidden,
    Expression<bool>? isManual,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stageId != null) 'stage_id': stageId,
      if (number != null) 'number': number,
      if (timestamp != null) 'timestamp': timestamp,
      if (ntpOffset != null) 'ntp_offset': ntpOffset,
      if (finishTime != null) 'finish_time': finishTime,
      if (isHidden != null) 'is_hidden': isHidden,
      if (isManual != null) 'is_manual': isManual,
    });
  }

  FinishesCompanion copyWith(
      {Value<int>? id,
      Value<int>? stageId,
      Value<int?>? number,
      Value<DateTime>? timestamp,
      Value<int>? ntpOffset,
      Value<String>? finishTime,
      Value<bool>? isHidden,
      Value<bool>? isManual}) {
    return FinishesCompanion(
      id: id ?? this.id,
      stageId: stageId ?? this.stageId,
      number: number ?? this.number,
      timestamp: timestamp ?? this.timestamp,
      ntpOffset: ntpOffset ?? this.ntpOffset,
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
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (ntpOffset.present) {
      map['ntp_offset'] = Variable<int>(ntpOffset.value);
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
          ..write('ntpOffset: $ntpOffset, ')
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
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
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
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _ntpOffsetMeta =
      const VerificationMeta('ntpOffset');
  late final GeneratedColumn<int> ntpOffset = GeneratedColumn<int>(
      'ntp_offset', aliasedName, true,
      type: DriftSqlType.int,
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
        ntpOffset,
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
    if (data.containsKey('ntp_offset')) {
      context.handle(_ntpOffsetMeta,
          ntpOffset.isAcceptableOrUnknown(data['ntp_offset']!, _ntpOffsetMeta));
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
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      stageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stage_id'])!,
      participantId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}participant_id'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}start_time'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp']),
      ntpOffset: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ntp_offset']),
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
        'FOREIGN KEY(stage_id)REFERENCES stages(id)ON DELETE CASCADE',
        'FOREIGN KEY(participant_id)REFERENCES participants(id)',
        'FOREIGN KEY(finish_id)REFERENCES finishes(id)',
        'FOREIGN KEY(status_id)REFERENCES statuses(id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Start extends DataClass implements Insertable<Start> {
  final int id;
  final int stageId;
  final int participantId;
  final String startTime;
  final DateTime? timestamp;
  final int? ntpOffset;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  final int? finishId;
  const Start(
      {required this.id,
      required this.stageId,
      required this.participantId,
      required this.startTime,
      this.timestamp,
      this.ntpOffset,
      this.automaticStartTime,
      this.automaticCorrection,
      this.manualStartTime,
      this.manualCorrection,
      required this.statusId,
      this.finishId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stage_id'] = Variable<int>(stageId);
    map['participant_id'] = Variable<int>(participantId);
    map['start_time'] = Variable<String>(startTime);
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<DateTime>(timestamp);
    }
    if (!nullToAbsent || ntpOffset != null) {
      map['ntp_offset'] = Variable<int>(ntpOffset);
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
      id: Value(id),
      stageId: Value(stageId),
      participantId: Value(participantId),
      startTime: Value(startTime),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
      ntpOffset: ntpOffset == null && nullToAbsent
          ? const Value.absent()
          : Value(ntpOffset),
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
      id: serializer.fromJson<int>(json['id']),
      stageId: serializer.fromJson<int>(json['stage_id']),
      participantId: serializer.fromJson<int>(json['participant_id']),
      startTime: serializer.fromJson<String>(json['start_time']),
      timestamp: serializer.fromJson<DateTime?>(json['timestamp']),
      ntpOffset: serializer.fromJson<int?>(json['ntp_offset']),
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
      'id': serializer.toJson<int>(id),
      'stage_id': serializer.toJson<int>(stageId),
      'participant_id': serializer.toJson<int>(participantId),
      'start_time': serializer.toJson<String>(startTime),
      'timestamp': serializer.toJson<DateTime?>(timestamp),
      'ntp_offset': serializer.toJson<int?>(ntpOffset),
      'automatic_start_time': serializer.toJson<String?>(automaticStartTime),
      'automatic_correction': serializer.toJson<int?>(automaticCorrection),
      'manual_start_time': serializer.toJson<String?>(manualStartTime),
      'manual_correction': serializer.toJson<int?>(manualCorrection),
      'status_id': serializer.toJson<int>(statusId),
      'finish_id': serializer.toJson<int?>(finishId),
    };
  }

  Start copyWith(
          {int? id,
          int? stageId,
          int? participantId,
          String? startTime,
          Value<DateTime?> timestamp = const Value.absent(),
          Value<int?> ntpOffset = const Value.absent(),
          Value<String?> automaticStartTime = const Value.absent(),
          Value<int?> automaticCorrection = const Value.absent(),
          Value<String?> manualStartTime = const Value.absent(),
          Value<int?> manualCorrection = const Value.absent(),
          int? statusId,
          Value<int?> finishId = const Value.absent()}) =>
      Start(
        id: id ?? this.id,
        stageId: stageId ?? this.stageId,
        participantId: participantId ?? this.participantId,
        startTime: startTime ?? this.startTime,
        timestamp: timestamp.present ? timestamp.value : this.timestamp,
        ntpOffset: ntpOffset.present ? ntpOffset.value : this.ntpOffset,
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
      ntpOffset: data.ntpOffset.present ? data.ntpOffset.value : this.ntpOffset,
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
          ..write('ntpOffset: $ntpOffset, ')
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
      ntpOffset,
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
          other.ntpOffset == this.ntpOffset &&
          other.automaticStartTime == this.automaticStartTime &&
          other.automaticCorrection == this.automaticCorrection &&
          other.manualStartTime == this.manualStartTime &&
          other.manualCorrection == this.manualCorrection &&
          other.statusId == this.statusId &&
          other.finishId == this.finishId);
}

class StartsCompanion extends UpdateCompanion<Start> {
  final Value<int> id;
  final Value<int> stageId;
  final Value<int> participantId;
  final Value<String> startTime;
  final Value<DateTime?> timestamp;
  final Value<int?> ntpOffset;
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
    this.ntpOffset = const Value.absent(),
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
    this.ntpOffset = const Value.absent(),
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
    Expression<DateTime>? timestamp,
    Expression<int>? ntpOffset,
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
      if (ntpOffset != null) 'ntp_offset': ntpOffset,
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
      {Value<int>? id,
      Value<int>? stageId,
      Value<int>? participantId,
      Value<String>? startTime,
      Value<DateTime?>? timestamp,
      Value<int?>? ntpOffset,
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
      ntpOffset: ntpOffset ?? this.ntpOffset,
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
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (ntpOffset.present) {
      map['ntp_offset'] = Variable<int>(ntpOffset.value);
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
          ..write('ntpOffset: $ntpOffset, ')
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

class Logs extends Table with TableInfo<Logs, Log> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Logs(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  late final GeneratedColumnWithTypeConverter<LogLevel, String> level =
      GeneratedColumn<String>('level', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<LogLevel>(Logs.$converterlevel);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  late final GeneratedColumnWithTypeConverter<LogSource, String> source =
      GeneratedColumn<String>('source', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<LogSource>(Logs.$convertersource);
  static const VerificationMeta _directionMeta =
      const VerificationMeta('direction');
  late final GeneratedColumnWithTypeConverter<LogSourceDirection, String>
      direction = GeneratedColumn<String>('direction', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<LogSourceDirection>(Logs.$converterdirection);
  static const VerificationMeta _rawDataMeta =
      const VerificationMeta('rawData');
  late final GeneratedColumn<String> rawData = GeneratedColumn<String>(
      'raw_data', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, level, timestamp, source, direction, rawData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'logs';
  @override
  VerificationContext validateIntegrity(Insertable<Log> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_levelMeta, const VerificationResult.success());
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    context.handle(_sourceMeta, const VerificationResult.success());
    context.handle(_directionMeta, const VerificationResult.success());
    if (data.containsKey('raw_data')) {
      context.handle(_rawDataMeta,
          rawData.isAcceptableOrUnknown(data['raw_data']!, _rawDataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Log map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Log(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      level: Logs.$converterlevel.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}level'])!),
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
      source: Logs.$convertersource.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!),
      direction: Logs.$converterdirection.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}direction'])!),
      rawData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}raw_data']),
    );
  }

  @override
  Logs createAlias(String alias) {
    return Logs(attachedDatabase, alias);
  }

  static JsonTypeConverter2<LogLevel, String, String> $converterlevel =
      const EnumNameConverter<LogLevel>(LogLevel.values);
  static JsonTypeConverter2<LogSource, String, String> $convertersource =
      const EnumNameConverter<LogSource>(LogSource.values);
  static JsonTypeConverter2<LogSourceDirection, String, String>
      $converterdirection =
      const EnumNameConverter<LogSourceDirection>(LogSourceDirection.values);
  @override
  bool get dontWriteConstraints => true;
}

class Log extends DataClass implements Insertable<Log> {
  final int id;
  final LogLevel level;
  final DateTime timestamp;
  final LogSource source;
  final LogSourceDirection direction;
  final String? rawData;
  const Log(
      {required this.id,
      required this.level,
      required this.timestamp,
      required this.source,
      required this.direction,
      this.rawData});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['level'] = Variable<String>(Logs.$converterlevel.toSql(level));
    }
    map['timestamp'] = Variable<DateTime>(timestamp);
    {
      map['source'] = Variable<String>(Logs.$convertersource.toSql(source));
    }
    {
      map['direction'] =
          Variable<String>(Logs.$converterdirection.toSql(direction));
    }
    if (!nullToAbsent || rawData != null) {
      map['raw_data'] = Variable<String>(rawData);
    }
    return map;
  }

  LogsCompanion toCompanion(bool nullToAbsent) {
    return LogsCompanion(
      id: Value(id),
      level: Value(level),
      timestamp: Value(timestamp),
      source: Value(source),
      direction: Value(direction),
      rawData: rawData == null && nullToAbsent
          ? const Value.absent()
          : Value(rawData),
    );
  }

  factory Log.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Log(
      id: serializer.fromJson<int>(json['id']),
      level: Logs.$converterlevel
          .fromJson(serializer.fromJson<String>(json['level'])),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      source: Logs.$convertersource
          .fromJson(serializer.fromJson<String>(json['source'])),
      direction: Logs.$converterdirection
          .fromJson(serializer.fromJson<String>(json['direction'])),
      rawData: serializer.fromJson<String?>(json['raw_data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'level': serializer.toJson<String>(Logs.$converterlevel.toJson(level)),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'source': serializer.toJson<String>(Logs.$convertersource.toJson(source)),
      'direction':
          serializer.toJson<String>(Logs.$converterdirection.toJson(direction)),
      'raw_data': serializer.toJson<String?>(rawData),
    };
  }

  Log copyWith(
          {int? id,
          LogLevel? level,
          DateTime? timestamp,
          LogSource? source,
          LogSourceDirection? direction,
          Value<String?> rawData = const Value.absent()}) =>
      Log(
        id: id ?? this.id,
        level: level ?? this.level,
        timestamp: timestamp ?? this.timestamp,
        source: source ?? this.source,
        direction: direction ?? this.direction,
        rawData: rawData.present ? rawData.value : this.rawData,
      );
  Log copyWithCompanion(LogsCompanion data) {
    return Log(
      id: data.id.present ? data.id.value : this.id,
      level: data.level.present ? data.level.value : this.level,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      source: data.source.present ? data.source.value : this.source,
      direction: data.direction.present ? data.direction.value : this.direction,
      rawData: data.rawData.present ? data.rawData.value : this.rawData,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Log(')
          ..write('id: $id, ')
          ..write('level: $level, ')
          ..write('timestamp: $timestamp, ')
          ..write('source: $source, ')
          ..write('direction: $direction, ')
          ..write('rawData: $rawData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, level, timestamp, source, direction, rawData);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Log &&
          other.id == this.id &&
          other.level == this.level &&
          other.timestamp == this.timestamp &&
          other.source == this.source &&
          other.direction == this.direction &&
          other.rawData == this.rawData);
}

class LogsCompanion extends UpdateCompanion<Log> {
  final Value<int> id;
  final Value<LogLevel> level;
  final Value<DateTime> timestamp;
  final Value<LogSource> source;
  final Value<LogSourceDirection> direction;
  final Value<String?> rawData;
  const LogsCompanion({
    this.id = const Value.absent(),
    this.level = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.source = const Value.absent(),
    this.direction = const Value.absent(),
    this.rawData = const Value.absent(),
  });
  LogsCompanion.insert({
    this.id = const Value.absent(),
    required LogLevel level,
    required DateTime timestamp,
    required LogSource source,
    required LogSourceDirection direction,
    this.rawData = const Value.absent(),
  })  : level = Value(level),
        timestamp = Value(timestamp),
        source = Value(source),
        direction = Value(direction);
  static Insertable<Log> custom({
    Expression<int>? id,
    Expression<String>? level,
    Expression<DateTime>? timestamp,
    Expression<String>? source,
    Expression<String>? direction,
    Expression<String>? rawData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (level != null) 'level': level,
      if (timestamp != null) 'timestamp': timestamp,
      if (source != null) 'source': source,
      if (direction != null) 'direction': direction,
      if (rawData != null) 'raw_data': rawData,
    });
  }

  LogsCompanion copyWith(
      {Value<int>? id,
      Value<LogLevel>? level,
      Value<DateTime>? timestamp,
      Value<LogSource>? source,
      Value<LogSourceDirection>? direction,
      Value<String?>? rawData}) {
    return LogsCompanion(
      id: id ?? this.id,
      level: level ?? this.level,
      timestamp: timestamp ?? this.timestamp,
      source: source ?? this.source,
      direction: direction ?? this.direction,
      rawData: rawData ?? this.rawData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (level.present) {
      map['level'] = Variable<String>(Logs.$converterlevel.toSql(level.value));
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (source.present) {
      map['source'] =
          Variable<String>(Logs.$convertersource.toSql(source.value));
    }
    if (direction.present) {
      map['direction'] =
          Variable<String>(Logs.$converterdirection.toSql(direction.value));
    }
    if (rawData.present) {
      map['raw_data'] = Variable<String>(rawData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogsCompanion(')
          ..write('id: $id, ')
          ..write('level: $level, ')
          ..write('timestamp: $timestamp, ')
          ..write('source: $source, ')
          ..write('direction: $direction, ')
          ..write('rawData: $rawData')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final Races races = Races(this);
  late final TrackFiles trackFiles = TrackFiles(this);
  late final Trails trails = Trails(this);
  late final Stages stages = Stages(this);
  late final Riders riders = Riders(this);
  late final Statuses statuses = Statuses(this);
  late final Participants participants = Participants(this);
  late final Finishes finishes = Finishes(this);
  late final Starts starts = Starts(this);
  late final Logs logs = Logs(this);
  Selectable<Race> _getRaces() {
    return customSelect('SELECT * FROM races WHERE is_deleted = FALSE',
        variables: [],
        readsFrom: {
          races,
        }).asyncMap(races.mapFromRow);
  }

  Selectable<Stage> _getStages({required int raceId}) {
    return customSelect(
        'SELECT * FROM stages WHERE race_id = ?1 AND is_deleted = FALSE',
        variables: [
          Variable<int>(raceId)
        ],
        readsFrom: {
          stages,
        }).asyncMap(stages.mapFromRow);
  }

  Selectable<TrailInfo> _getTrails() {
    return customSelect(
        'SELECT trails.id AS id, trails.name AS name, trails.distance AS distance, trails.elevation AS elevation, trails.file_id AS file_id, trails.url AS url, trails.description AS description, track_files.name AS file_name, track_files.extension AS file_extension, track_files.size AS file_size, track_files.description AS file_description, track_files.hash_sha1 AS file_hash_sha1, track_files.timestamp AS timestamp FROM trails LEFT JOIN track_files ON trails.file_id = track_files.id WHERE trails.is_deleted = FALSE',
        variables: [],
        readsFrom: {
          trails,
          trackFiles,
        }).map((QueryRow row) => TrailInfo(
          row: row,
          id: row.read<int>('id'),
          name: row.read<String>('name'),
          distance: row.readNullable<int>('distance'),
          elevation: row.readNullable<int>('elevation'),
          fileId: row.readNullable<int>('file_id'),
          url: row.readNullable<String>('url'),
          description: row.readNullable<String>('description'),
          fileName: row.readNullable<String>('file_name'),
          fileExtension: row.readNullable<String>('file_extension'),
          fileSize: row.readNullable<int>('file_size'),
          fileDescription: row.readNullable<String>('file_description'),
          fileHashSha1: row.readNullable<String>('file_hash_sha1'),
          timestamp: row.readNullable<DateTime>('timestamp'),
        ));
  }

  Selectable<TrailInfo> _getTrail({required int id}) {
    return customSelect(
        'SELECT trails.id AS id, trails.name AS name, trails.distance AS distance, trails.elevation AS elevation, trails.file_id AS file_id, trails.url AS url, trails.description AS description, track_files.name AS file_name, track_files.extension AS file_extension, track_files.size AS file_size, track_files.description AS file_description, track_files.hash_sha1 AS file_hash_sha1, track_files.timestamp AS timestamp FROM trails LEFT JOIN track_files ON trails.file_id = track_files.id WHERE trails.id = ?1 AND trails.is_deleted = FALSE',
        variables: [
          Variable<int>(id)
        ],
        readsFrom: {
          trails,
          trackFiles,
        }).map((QueryRow row) => TrailInfo(
          row: row,
          id: row.read<int>('id'),
          name: row.read<String>('name'),
          distance: row.readNullable<int>('distance'),
          elevation: row.readNullable<int>('elevation'),
          fileId: row.readNullable<int>('file_id'),
          url: row.readNullable<String>('url'),
          description: row.readNullable<String>('description'),
          fileName: row.readNullable<String>('file_name'),
          fileExtension: row.readNullable<String>('file_extension'),
          fileSize: row.readNullable<int>('file_size'),
          fileDescription: row.readNullable<String>('file_description'),
          fileHashSha1: row.readNullable<String>('file_hash_sha1'),
          timestamp: row.readNullable<DateTime>('timestamp'),
        ));
  }

  Selectable<int> _getTrackIdByHash(
      {required String hashSha1, required int size}) {
    return customSelect(
        'SELECT id FROM track_files WHERE hash_sha1 = ?1 AND size = ?2 LIMIT 1',
        variables: [
          Variable<String>(hashSha1),
          Variable<int>(size)
        ],
        readsFrom: {
          trackFiles,
        }).map((QueryRow row) => row.read<int>('id'));
  }

  Selectable<Rider> _getRiders({required bool isDeleted}) {
    return customSelect(
        'SELECT * FROM riders WHERE is_deleted = ?1 ORDER BY name COLLATE NOCASE ASC',
        variables: [
          Variable<bool>(isDeleted)
        ],
        readsFrom: {
          riders,
        }).asyncMap(riders.mapFromRow);
  }

  Future<int> _addParticipant(
      {required int raceId,
      required int riderId,
      required int number,
      String? category,
      String? rfid}) {
    return customInsert(
      'INSERT INTO participants (race_id, rider_id, number, category, rfid) VALUES (?1, ?2, ?3, ?4, ?5)',
      variables: [
        Variable<int>(raceId),
        Variable<int>(riderId),
        Variable<int>(number),
        Variable<String>(category),
        Variable<String>(rfid)
      ],
      updates: {participants},
    );
  }

  Selectable<String?> _getCategories({required int raceId}) {
    return customSelect(
        'SELECT category FROM participants WHERE race_id = ?1 GROUP BY category',
        variables: [
          Variable<int>(raceId)
        ],
        readsFrom: {
          participants,
        }).map((QueryRow row) => row.readNullable<String>('category'));
  }

  Future<int> _addStartInfo(
      {required int stageId,
      required int participantId,
      required String startTime}) {
    return customInsert(
      'INSERT INTO starts (stage_id, participant_id, start_time) VALUES (?1, ?2, ?3)',
      variables: [
        Variable<int>(stageId),
        Variable<int>(participantId),
        Variable<String>(startTime)
      ],
      updates: {starts},
    );
  }

  Selectable<NumberAtStart> _getNumberAtStarts(
      {required int stageId, required int number}) {
    return customSelect(
        'SELECT starts.id AS start_id, stage_id, participant_id, start_time, timestamp, ntp_offset, automatic_start_time, automatic_correction, manual_start_time, manual_correction, starts.status_id AS start_status_id, finish_id, race_id, rider_id, number, category, rfid, participants.status_id AS participant_status_id FROM starts,participants WHERE participants.id = starts.participant_id AND starts.stage_id = ?1 AND participants.number = ?2',
        variables: [
          Variable<int>(stageId),
          Variable<int>(number)
        ],
        readsFrom: {
          starts,
          participants,
        }).map((QueryRow row) => NumberAtStart(
          row: row,
          startId: row.read<int>('start_id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<DateTime>('timestamp'),
          ntpOffset: row.readNullable<int>('ntp_offset'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          startStatusId: row.read<int>('start_status_id'),
          finishId: row.readNullable<int>('finish_id'),
          raceId: row.read<int>('race_id'),
          riderId: row.read<int>('rider_id'),
          number: row.read<int>('number'),
          category: row.readNullable<String>('category'),
          rfid: row.readNullable<String>('rfid'),
          participantStatusId: row.read<int>('participant_status_id'),
        ));
  }

  Selectable<ParticipantAtStart> _getParticipantsAtStart(
      {required int stageId}) {
    return customSelect(
        'SELECT participants.rider_id AS rider_id, participants.race_id AS race_id, participants.number AS number, participants.category AS category, participants.rfid AS rfid, participants.status_id AS participant_status_id, riders.name AS name, riders.nickname AS nickname, riders.birthday AS birthday, riders.team AS team, riders.city AS city, riders.email AS email, riders.phone AS phone, riders.comment AS comment, starts.id AS start_id, starts.stage_id AS stage_id, starts.participant_id AS participant_id, starts.start_time AS start_time, starts.timestamp AS timestamp, starts.ntp_offset AS ntp_offset, starts.automatic_start_time AS automatic_start_time, starts.automatic_correction AS automatic_correction, starts.manual_start_time AS manual_start_time, starts.manual_correction AS manual_correction, starts.status_id AS status_id FROM participants,riders,starts WHERE participants.rider_id = riders.id AND starts.participant_id = participants.id AND stage_id = ?1 ORDER BY start_time ASC',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          participants,
          riders,
          starts,
        }).map((QueryRow row) => ParticipantAtStart(
          row: row,
          riderId: row.read<int>('rider_id'),
          raceId: row.read<int>('race_id'),
          number: row.read<int>('number'),
          category: row.readNullable<String>('category'),
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
          startId: row.read<int>('start_id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<DateTime>('timestamp'),
          ntpOffset: row.readNullable<int>('ntp_offset'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          statusId: row.read<int>('status_id'),
        ));
  }

  Selectable<StartingParticipant> _getExistedStartingParticipants(
      {required int stageId, required String startTime, required int number}) {
    return customSelect(
        'SELECT starts.id AS start_id, stage_id, participant_id, start_time, timestamp, ntp_offset, automatic_start_time, automatic_correction, manual_start_time, manual_correction, starts.status_id AS start_status, finish_id, race_id, rider_id, number, category, rfid, participants.status_id AS participant_status FROM starts,participants WHERE starts.participant_id = participants.id AND stage_id = ?1 AND(start_time IS ?2 OR(number IS ?3 AND(automatic_start_time NOTNULL OR manual_start_time NOTNULL)))',
        variables: [
          Variable<int>(stageId),
          Variable<String>(startTime),
          Variable<int>(number)
        ],
        readsFrom: {
          starts,
          participants,
        }).map((QueryRow row) => StartingParticipant(
          row: row,
          startId: row.read<int>('start_id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<DateTime>('timestamp'),
          ntpOffset: row.readNullable<int>('ntp_offset'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          startStatus: row.read<int>('start_status'),
          finishId: row.readNullable<int>('finish_id'),
          raceId: row.read<int>('race_id'),
          riderId: row.read<int>('rider_id'),
          number: row.read<int>('number'),
          category: row.readNullable<String>('category'),
          rfid: row.readNullable<String>('rfid'),
          participantStatus: row.read<int>('participant_status'),
        ));
  }

  Future<int> _setStartingInfo(
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

  Selectable<StartingParticipant> _getParticipantAroundTime(
      {required int stageId, required String before, required String after}) {
    return customSelect(
        'SELECT starts.id AS start_id, stage_id, participant_id, start_time, timestamp, ntp_offset, automatic_start_time, automatic_correction, manual_start_time, manual_correction, starts.status_id AS start_status, finish_id, race_id, rider_id, number, category, rfid, participants.status_id AS participant_status FROM starts,participants WHERE stage_id = ?1 AND participants.id = starts.participant_id AND start_time BETWEEN ?2 AND ?3',
        variables: [
          Variable<int>(stageId),
          Variable<String>(before),
          Variable<String>(after)
        ],
        readsFrom: {
          starts,
          participants,
        }).map((QueryRow row) => StartingParticipant(
          row: row,
          startId: row.read<int>('start_id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<DateTime>('timestamp'),
          ntpOffset: row.readNullable<int>('ntp_offset'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          startStatus: row.read<int>('start_status'),
          finishId: row.readNullable<int>('finish_id'),
          raceId: row.read<int>('race_id'),
          riderId: row.read<int>('rider_id'),
          number: row.read<int>('number'),
          category: row.readNullable<String>('category'),
          rfid: row.readNullable<String>('rfid'),
          participantStatus: row.read<int>('participant_status'),
        ));
  }

  Future<int> _setManualStartTime(
      {String? manualStartTime,
      int? manualCorrection,
      DateTime? timestamp,
      int? ntpOffset,
      required int participantId,
      required int stageId}) {
    return customUpdate(
      'UPDATE starts SET manual_start_time = ?1, manual_correction = ?2, timestamp = ?3, ntp_offset = ?4 WHERE participant_id = ?5 AND stage_id = ?6',
      variables: [
        Variable<String>(manualStartTime),
        Variable<int>(manualCorrection),
        Variable<DateTime>(timestamp),
        Variable<int>(ntpOffset),
        Variable<int>(participantId),
        Variable<int>(stageId)
      ],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<NextStartingParticipant> _getNextStartingParticipants(
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
        }).map((QueryRow row) => NextStartingParticipant(
          row: row,
          number: row.read<int>('number'),
          startTime: row.read<String>('start_time'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
        ));
  }

  Selectable<int> _getForBeep(
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

  Selectable<GetStartingParticipantBetweenTimesResult>
      _getStartingParticipantBetweenTimes(
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
        }).map((QueryRow row) => GetStartingParticipantBetweenTimesResult(
          row: row,
          number: row.read<int>('number'),
          startTime: row.read<String>('start_time'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          name: row.read<String>('name'),
        ));
  }

  Future<int> _setDNSForStartId({required int statusId, required int id}) {
    return customUpdate(
      'UPDATE starts SET status_id = ?1, automatic_correction = NULL, automatic_start_time = NULL, manual_correction = NULL, manual_start_time = NULL, timestamp = NULL, ntp_offset = NULL WHERE id = ?2',
      variables: [Variable<int>(statusId), Variable<int>(id)],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<StartingParticipant> _getNumbersOnTraceNow(
      {required int stageId, required String timeNow}) {
    return customSelect(
        'SELECT starts.id AS start_id, stage_id, participant_id, start_time, timestamp, ntp_offset, automatic_start_time, automatic_correction, manual_start_time, manual_correction, starts.status_id AS start_status, finish_id, race_id, rider_id, number, category, rfid, participants.status_id AS participant_status FROM starts,participants WHERE starts.participant_id = participants.id AND starts.stage_id = ?1 AND julianday(time(?2)) > julianday(time(starts.start_time)) AND starts.finish_id ISNULL AND starts.status_id = 1 AND starts.automatic_start_time ISNULL ORDER BY starts.start_time ASC',
        variables: [
          Variable<int>(stageId),
          Variable<String>(timeNow)
        ],
        readsFrom: {
          starts,
          participants,
        }).map((QueryRow row) => StartingParticipant(
          row: row,
          startId: row.read<int>('start_id'),
          stageId: row.read<int>('stage_id'),
          participantId: row.read<int>('participant_id'),
          startTime: row.read<String>('start_time'),
          timestamp: row.readNullable<DateTime>('timestamp'),
          ntpOffset: row.readNullable<int>('ntp_offset'),
          automaticStartTime: row.readNullable<String>('automatic_start_time'),
          automaticCorrection: row.readNullable<int>('automatic_correction'),
          manualStartTime: row.readNullable<String>('manual_start_time'),
          manualCorrection: row.readNullable<int>('manual_correction'),
          startStatus: row.read<int>('start_status'),
          finishId: row.readNullable<int>('finish_id'),
          raceId: row.read<int>('race_id'),
          riderId: row.read<int>('rider_id'),
          number: row.read<int>('number'),
          category: row.readNullable<String>('category'),
          rfid: row.readNullable<String>('rfid'),
          participantStatus: row.read<int>('participant_status'),
        ));
  }

  Future<int> _shiftStartsTime(
      {required String shift, required int stageId, required String fromTime}) {
    return customUpdate(
      'UPDATE starts SET start_time = TIME(start_time, ?1), automatic_correction = NULL, automatic_start_time = NULL, manual_correction = NULL, manual_start_time = NULL, timestamp = NULL, ntp_offset = NULL WHERE stage_id = ?2 AND start_time >= ?3',
      variables: [
        Variable<String>(shift),
        Variable<int>(stageId),
        Variable<String>(fromTime)
      ],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<String> _getFirstStartTime({required int stageId}) {
    return customSelect(
        'SELECT start_time FROM starts WHERE stage_id = ?1 ORDER BY start_time ASC LIMIT 1',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          starts,
        }).map((QueryRow row) => row.read<String>('start_time'));
  }

  Selectable<Finish> _getFinishesFromStage({required int stageId}) {
    return customSelect('SELECT * FROM finishes WHERE stage_id = ?1',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          finishes,
        }).asyncMap(finishes.mapFromRow);
  }

  Selectable<String> _getLastFinishTime({required int stageId}) {
    return customSelect(
        'SELECT finish_time FROM finishes WHERE stage_id = ?1 AND is_hidden = FALSE AND is_manual = FALSE ORDER BY finish_time DESC LIMIT 1',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          finishes,
        }).map((QueryRow row) => row.read<String>('finish_time'));
  }

  Selectable<String> _getLastFinishTimeWithNumber({required int stageId}) {
    return customSelect(
        'SELECT finish_time FROM finishes WHERE stage_id = ?1 AND number NOTNULL AND finish_time NOT LIKE \'DNS\' AND finish_time NOT LIKE \'DNF\' ORDER BY finish_time DESC LIMIT 1',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          finishes,
        }).map((QueryRow row) => row.read<String>('finish_time'));
  }

  Future<int> _addFinishTime(
      {required int stageId,
      required String finishTime,
      required DateTime timestamp,
      required int ntpOffset,
      int? number,
      required bool isHidden}) {
    return customInsert(
      'INSERT INTO finishes (stage_id, finish_time, timestamp, ntp_offset, number, is_hidden) VALUES (?1, ?2, ?3, ?4, ?5, ?6)',
      variables: [
        Variable<int>(stageId),
        Variable<String>(finishTime),
        Variable<DateTime>(timestamp),
        Variable<int>(ntpOffset),
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
      {required int stageId,
      required String finishTime,
      required DateTime timestamp,
      required int ntpOffset,
      int? number}) {
    return customInsert(
      'INSERT INTO finishes (stage_id, finish_time, timestamp, ntp_offset, number, is_manual) VALUES (?1, ?2, ?3, ?4, ?5, TRUE)',
      variables: [
        Variable<int>(stageId),
        Variable<String>(finishTime),
        Variable<DateTime>(timestamp),
        Variable<int>(ntpOffset),
        Variable<int>(number)
      ],
      updates: {finishes},
    );
  }

  Future<int> _hideFinish({required int id}) {
    return customUpdate(
      'UPDATE finishes SET is_hidden = TRUE WHERE id = ?1',
      variables: [Variable<int>(id)],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> _hideAllFinishes({required int stageId}) {
    return customUpdate(
      'UPDATE finishes SET is_hidden = TRUE WHERE stage_id = ?1',
      variables: [Variable<int>(stageId)],
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

  Future<int> _setNumberToFinish({int? number, required int id}) {
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

  Selectable<StartForCsv> _getStartsForCsv({required int stageId}) {
    return customSelect(
        'SELECT participants.number AS number, starts.start_time AS start_time, IFNULL(starts.automatic_correction, IFNULL(starts.manual_correction, \'DNS\')) AS correction FROM starts,participants WHERE starts.participant_id = participants.id AND starts.stage_id = ?1 AND starts.start_time NOTNULL AND(starts.automatic_correction NOTNULL OR starts.manual_correction NOTNULL OR starts.status_id = 2)ORDER BY starts.start_time ASC',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          participants,
          starts,
        }).map((QueryRow row) => StartForCsv(
          row: row,
          number: row.read<int>('number'),
          startTime: row.read<String>('start_time'),
          correction: row.read<String>('correction'),
        ));
  }

  Selectable<FinishForCsv> _getFinishesForCsv({required int stageId}) {
    return customSelect(
        'SELECT number, finish_time FROM finishes WHERE stage_id = ?1 AND number NOTNULL ORDER BY finish_time ASC',
        variables: [
          Variable<int>(stageId)
        ],
        readsFrom: {
          finishes,
        }).map((QueryRow row) => FinishForCsv(
          row: row,
          number: row.readNullable<int>('number'),
          finishTime: row.read<String>('finish_time'),
        ));
  }

  Selectable<Log> _getLog(
      {GetLog$predicate? predicate, required GetLog$limit limit}) {
    var $arrayStartIndex = 1;
    final generatedpredicate = $write(
        predicate?.call(this.logs) ?? const CustomExpression('(TRUE)'),
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedpredicate.amountOfVariables;
    final generatedlimit =
        $write(limit(this.logs), startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedlimit.amountOfVariables;
    return customSelect(
        'SELECT * FROM logs WHERE ${generatedpredicate.sql} ORDER BY id DESC ${generatedlimit.sql}',
        variables: [
          ...generatedpredicate.introducedVariables,
          ...generatedlimit.introducedVariables
        ],
        readsFrom: {
          logs,
          ...generatedpredicate.watchedTables,
          ...generatedlimit.watchedTables,
        }).asyncMap(logs.mapFromRow);
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        races,
        trackFiles,
        trails,
        stages,
        riders,
        statuses,
        participants,
        finishes,
        starts,
        logs
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('track_files',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('trails', kind: UpdateKind.update),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('trails',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('stages', kind: UpdateKind.update),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('races',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('stages', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('races',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('participants', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('stages',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('finishes', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('stages',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('starts', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $RacesCreateCompanionBuilder = RacesCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> startDate,
  Value<String?> finishDate,
  Value<String?> location,
  Value<String?> url,
  Value<String?> description,
  Value<bool> isDeleted,
});
typedef $RacesUpdateCompanionBuilder = RacesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> startDate,
  Value<String?> finishDate,
  Value<String?> location,
  Value<String?> url,
  Value<String?> description,
  Value<bool> isDeleted,
});

class $RacesFilterComposer extends Composer<_$AppDatabase, Races> {
  $RacesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get finishDate => $composableBuilder(
      column: $table.finishDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));
}

class $RacesOrderingComposer extends Composer<_$AppDatabase, Races> {
  $RacesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get finishDate => $composableBuilder(
      column: $table.finishDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $RacesAnnotationComposer extends Composer<_$AppDatabase, Races> {
  $RacesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<String> get finishDate => $composableBuilder(
      column: $table.finishDate, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);
}

class $RacesTableManager extends RootTableManager<
    _$AppDatabase,
    Races,
    Race,
    $RacesFilterComposer,
    $RacesOrderingComposer,
    $RacesAnnotationComposer,
    $RacesCreateCompanionBuilder,
    $RacesUpdateCompanionBuilder,
    (Race, BaseReferences<_$AppDatabase, Races, Race>),
    Race,
    PrefetchHooks Function()> {
  $RacesTableManager(_$AppDatabase db, Races table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $RacesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $RacesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $RacesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> startDate = const Value.absent(),
            Value<String?> finishDate = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              RacesCompanion(
            id: id,
            name: name,
            startDate: startDate,
            finishDate: finishDate,
            location: location,
            url: url,
            description: description,
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> startDate = const Value.absent(),
            Value<String?> finishDate = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              RacesCompanion.insert(
            id: id,
            name: name,
            startDate: startDate,
            finishDate: finishDate,
            location: location,
            url: url,
            description: description,
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
    $RacesAnnotationComposer,
    $RacesCreateCompanionBuilder,
    $RacesUpdateCompanionBuilder,
    (Race, BaseReferences<_$AppDatabase, Races, Race>),
    Race,
    PrefetchHooks Function()>;
typedef $TrackFilesCreateCompanionBuilder = TrackFilesCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> extension,
  required int size,
  Value<String?> description,
  required String hashSha1,
  required Uint8List data,
  required DateTime timestamp,
});
typedef $TrackFilesUpdateCompanionBuilder = TrackFilesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> extension,
  Value<int> size,
  Value<String?> description,
  Value<String> hashSha1,
  Value<Uint8List> data,
  Value<DateTime> timestamp,
});

class $TrackFilesFilterComposer extends Composer<_$AppDatabase, TrackFiles> {
  $TrackFilesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get extension => $composableBuilder(
      column: $table.extension, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get size => $composableBuilder(
      column: $table.size, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get hashSha1 => $composableBuilder(
      column: $table.hashSha1, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));
}

class $TrackFilesOrderingComposer extends Composer<_$AppDatabase, TrackFiles> {
  $TrackFilesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get extension => $composableBuilder(
      column: $table.extension, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get size => $composableBuilder(
      column: $table.size, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get hashSha1 => $composableBuilder(
      column: $table.hashSha1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));
}

class $TrackFilesAnnotationComposer
    extends Composer<_$AppDatabase, TrackFiles> {
  $TrackFilesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get extension =>
      $composableBuilder(column: $table.extension, builder: (column) => column);

  GeneratedColumn<int> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get hashSha1 =>
      $composableBuilder(column: $table.hashSha1, builder: (column) => column);

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);
}

class $TrackFilesTableManager extends RootTableManager<
    _$AppDatabase,
    TrackFiles,
    TrackFile,
    $TrackFilesFilterComposer,
    $TrackFilesOrderingComposer,
    $TrackFilesAnnotationComposer,
    $TrackFilesCreateCompanionBuilder,
    $TrackFilesUpdateCompanionBuilder,
    (TrackFile, BaseReferences<_$AppDatabase, TrackFiles, TrackFile>),
    TrackFile,
    PrefetchHooks Function()> {
  $TrackFilesTableManager(_$AppDatabase db, TrackFiles table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $TrackFilesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $TrackFilesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $TrackFilesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> extension = const Value.absent(),
            Value<int> size = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String> hashSha1 = const Value.absent(),
            Value<Uint8List> data = const Value.absent(),
            Value<DateTime> timestamp = const Value.absent(),
          }) =>
              TrackFilesCompanion(
            id: id,
            name: name,
            extension: extension,
            size: size,
            description: description,
            hashSha1: hashSha1,
            data: data,
            timestamp: timestamp,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> extension = const Value.absent(),
            required int size,
            Value<String?> description = const Value.absent(),
            required String hashSha1,
            required Uint8List data,
            required DateTime timestamp,
          }) =>
              TrackFilesCompanion.insert(
            id: id,
            name: name,
            extension: extension,
            size: size,
            description: description,
            hashSha1: hashSha1,
            data: data,
            timestamp: timestamp,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $TrackFilesProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    TrackFiles,
    TrackFile,
    $TrackFilesFilterComposer,
    $TrackFilesOrderingComposer,
    $TrackFilesAnnotationComposer,
    $TrackFilesCreateCompanionBuilder,
    $TrackFilesUpdateCompanionBuilder,
    (TrackFile, BaseReferences<_$AppDatabase, TrackFiles, TrackFile>),
    TrackFile,
    PrefetchHooks Function()>;
typedef $TrailsCreateCompanionBuilder = TrailsCompanion Function({
  Value<int> id,
  required String name,
  Value<int?> distance,
  Value<int?> elevation,
  Value<int?> fileId,
  Value<String?> url,
  Value<String?> description,
  Value<bool> isDeleted,
});
typedef $TrailsUpdateCompanionBuilder = TrailsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int?> distance,
  Value<int?> elevation,
  Value<int?> fileId,
  Value<String?> url,
  Value<String?> description,
  Value<bool> isDeleted,
});

class $TrailsFilterComposer extends Composer<_$AppDatabase, Trails> {
  $TrailsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get distance => $composableBuilder(
      column: $table.distance, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get elevation => $composableBuilder(
      column: $table.elevation, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fileId => $composableBuilder(
      column: $table.fileId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));
}

class $TrailsOrderingComposer extends Composer<_$AppDatabase, Trails> {
  $TrailsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get distance => $composableBuilder(
      column: $table.distance, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get elevation => $composableBuilder(
      column: $table.elevation, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fileId => $composableBuilder(
      column: $table.fileId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $TrailsAnnotationComposer extends Composer<_$AppDatabase, Trails> {
  $TrailsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get distance =>
      $composableBuilder(column: $table.distance, builder: (column) => column);

  GeneratedColumn<int> get elevation =>
      $composableBuilder(column: $table.elevation, builder: (column) => column);

  GeneratedColumn<int> get fileId =>
      $composableBuilder(column: $table.fileId, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);
}

class $TrailsTableManager extends RootTableManager<
    _$AppDatabase,
    Trails,
    Trail,
    $TrailsFilterComposer,
    $TrailsOrderingComposer,
    $TrailsAnnotationComposer,
    $TrailsCreateCompanionBuilder,
    $TrailsUpdateCompanionBuilder,
    (Trail, BaseReferences<_$AppDatabase, Trails, Trail>),
    Trail,
    PrefetchHooks Function()> {
  $TrailsTableManager(_$AppDatabase db, Trails table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $TrailsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $TrailsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $TrailsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int?> distance = const Value.absent(),
            Value<int?> elevation = const Value.absent(),
            Value<int?> fileId = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              TrailsCompanion(
            id: id,
            name: name,
            distance: distance,
            elevation: elevation,
            fileId: fileId,
            url: url,
            description: description,
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<int?> distance = const Value.absent(),
            Value<int?> elevation = const Value.absent(),
            Value<int?> fileId = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              TrailsCompanion.insert(
            id: id,
            name: name,
            distance: distance,
            elevation: elevation,
            fileId: fileId,
            url: url,
            description: description,
            isDeleted: isDeleted,
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
    $TrailsAnnotationComposer,
    $TrailsCreateCompanionBuilder,
    $TrailsUpdateCompanionBuilder,
    (Trail, BaseReferences<_$AppDatabase, Trails, Trail>),
    Trail,
    PrefetchHooks Function()>;
typedef $StagesCreateCompanionBuilder = StagesCompanion Function({
  Value<int> id,
  Value<int?> trailId,
  required int raceId,
  required String name,
  Value<String?> description,
  Value<bool> isActive,
  Value<bool> isDeleted,
});
typedef $StagesUpdateCompanionBuilder = StagesCompanion Function({
  Value<int> id,
  Value<int?> trailId,
  Value<int> raceId,
  Value<String> name,
  Value<String?> description,
  Value<bool> isActive,
  Value<bool> isDeleted,
});

class $StagesFilterComposer extends Composer<_$AppDatabase, Stages> {
  $StagesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get trailId => $composableBuilder(
      column: $table.trailId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get raceId => $composableBuilder(
      column: $table.raceId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));
}

class $StagesOrderingComposer extends Composer<_$AppDatabase, Stages> {
  $StagesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get trailId => $composableBuilder(
      column: $table.trailId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get raceId => $composableBuilder(
      column: $table.raceId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $StagesAnnotationComposer extends Composer<_$AppDatabase, Stages> {
  $StagesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get trailId =>
      $composableBuilder(column: $table.trailId, builder: (column) => column);

  GeneratedColumn<int> get raceId =>
      $composableBuilder(column: $table.raceId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);
}

class $StagesTableManager extends RootTableManager<
    _$AppDatabase,
    Stages,
    Stage,
    $StagesFilterComposer,
    $StagesOrderingComposer,
    $StagesAnnotationComposer,
    $StagesCreateCompanionBuilder,
    $StagesUpdateCompanionBuilder,
    (Stage, BaseReferences<_$AppDatabase, Stages, Stage>),
    Stage,
    PrefetchHooks Function()> {
  $StagesTableManager(_$AppDatabase db, Stages table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $StagesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $StagesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $StagesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> trailId = const Value.absent(),
            Value<int> raceId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              StagesCompanion(
            id: id,
            trailId: trailId,
            raceId: raceId,
            name: name,
            description: description,
            isActive: isActive,
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> trailId = const Value.absent(),
            required int raceId,
            required String name,
            Value<String?> description = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              StagesCompanion.insert(
            id: id,
            trailId: trailId,
            raceId: raceId,
            name: name,
            description: description,
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
    $StagesAnnotationComposer,
    $StagesCreateCompanionBuilder,
    $StagesUpdateCompanionBuilder,
    (Stage, BaseReferences<_$AppDatabase, Stages, Stage>),
    Stage,
    PrefetchHooks Function()>;
typedef $RidersCreateCompanionBuilder = RidersCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> nickname,
  Value<String?> birthday,
  Value<String?> team,
  Value<String?> city,
  Value<String?> email,
  Value<String?> phone,
  Value<String?> comment,
  Value<bool> isDeleted,
});
typedef $RidersUpdateCompanionBuilder = RidersCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> nickname,
  Value<String?> birthday,
  Value<String?> team,
  Value<String?> city,
  Value<String?> email,
  Value<String?> phone,
  Value<String?> comment,
  Value<bool> isDeleted,
});

class $RidersFilterComposer extends Composer<_$AppDatabase, Riders> {
  $RidersFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nickname => $composableBuilder(
      column: $table.nickname, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get birthday => $composableBuilder(
      column: $table.birthday, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get team => $composableBuilder(
      column: $table.team, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get comment => $composableBuilder(
      column: $table.comment, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));
}

class $RidersOrderingComposer extends Composer<_$AppDatabase, Riders> {
  $RidersOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nickname => $composableBuilder(
      column: $table.nickname, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get birthday => $composableBuilder(
      column: $table.birthday, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get team => $composableBuilder(
      column: $table.team, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get comment => $composableBuilder(
      column: $table.comment, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $RidersAnnotationComposer extends Composer<_$AppDatabase, Riders> {
  $RidersAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nickname =>
      $composableBuilder(column: $table.nickname, builder: (column) => column);

  GeneratedColumn<String> get birthday =>
      $composableBuilder(column: $table.birthday, builder: (column) => column);

  GeneratedColumn<String> get team =>
      $composableBuilder(column: $table.team, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);
}

class $RidersTableManager extends RootTableManager<
    _$AppDatabase,
    Riders,
    Rider,
    $RidersFilterComposer,
    $RidersOrderingComposer,
    $RidersAnnotationComposer,
    $RidersCreateCompanionBuilder,
    $RidersUpdateCompanionBuilder,
    (Rider, BaseReferences<_$AppDatabase, Riders, Rider>),
    Rider,
    PrefetchHooks Function()> {
  $RidersTableManager(_$AppDatabase db, Riders table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $RidersFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $RidersOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $RidersAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> nickname = const Value.absent(),
            Value<String?> birthday = const Value.absent(),
            Value<String?> team = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> comment = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
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
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> nickname = const Value.absent(),
            Value<String?> birthday = const Value.absent(),
            Value<String?> team = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> comment = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
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
            isDeleted: isDeleted,
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
    $RidersAnnotationComposer,
    $RidersCreateCompanionBuilder,
    $RidersUpdateCompanionBuilder,
    (Rider, BaseReferences<_$AppDatabase, Riders, Rider>),
    Rider,
    PrefetchHooks Function()>;
typedef $StatusesCreateCompanionBuilder = StatusesCompanion Function({
  Value<int> id,
  required String type,
});
typedef $StatusesUpdateCompanionBuilder = StatusesCompanion Function({
  Value<int> id,
  Value<String> type,
});

class $StatusesFilterComposer extends Composer<_$AppDatabase, Statuses> {
  $StatusesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));
}

class $StatusesOrderingComposer extends Composer<_$AppDatabase, Statuses> {
  $StatusesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));
}

class $StatusesAnnotationComposer extends Composer<_$AppDatabase, Statuses> {
  $StatusesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);
}

class $StatusesTableManager extends RootTableManager<
    _$AppDatabase,
    Statuses,
    Status,
    $StatusesFilterComposer,
    $StatusesOrderingComposer,
    $StatusesAnnotationComposer,
    $StatusesCreateCompanionBuilder,
    $StatusesUpdateCompanionBuilder,
    (Status, BaseReferences<_$AppDatabase, Statuses, Status>),
    Status,
    PrefetchHooks Function()> {
  $StatusesTableManager(_$AppDatabase db, Statuses table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $StatusesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $StatusesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $StatusesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> type = const Value.absent(),
          }) =>
              StatusesCompanion(
            id: id,
            type: type,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
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
    $StatusesAnnotationComposer,
    $StatusesCreateCompanionBuilder,
    $StatusesUpdateCompanionBuilder,
    (Status, BaseReferences<_$AppDatabase, Statuses, Status>),
    Status,
    PrefetchHooks Function()>;
typedef $ParticipantsCreateCompanionBuilder = ParticipantsCompanion Function({
  Value<int> id,
  required int raceId,
  required int riderId,
  required int number,
  Value<String?> category,
  Value<String?> rfid,
  Value<int> statusId,
  Value<bool> isDeleted,
});
typedef $ParticipantsUpdateCompanionBuilder = ParticipantsCompanion Function({
  Value<int> id,
  Value<int> raceId,
  Value<int> riderId,
  Value<int> number,
  Value<String?> category,
  Value<String?> rfid,
  Value<int> statusId,
  Value<bool> isDeleted,
});

class $ParticipantsFilterComposer
    extends Composer<_$AppDatabase, Participants> {
  $ParticipantsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get raceId => $composableBuilder(
      column: $table.raceId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get riderId => $composableBuilder(
      column: $table.riderId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rfid => $composableBuilder(
      column: $table.rfid, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get statusId => $composableBuilder(
      column: $table.statusId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));
}

class $ParticipantsOrderingComposer
    extends Composer<_$AppDatabase, Participants> {
  $ParticipantsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get raceId => $composableBuilder(
      column: $table.raceId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get riderId => $composableBuilder(
      column: $table.riderId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rfid => $composableBuilder(
      column: $table.rfid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get statusId => $composableBuilder(
      column: $table.statusId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $ParticipantsAnnotationComposer
    extends Composer<_$AppDatabase, Participants> {
  $ParticipantsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get raceId =>
      $composableBuilder(column: $table.raceId, builder: (column) => column);

  GeneratedColumn<int> get riderId =>
      $composableBuilder(column: $table.riderId, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get rfid =>
      $composableBuilder(column: $table.rfid, builder: (column) => column);

  GeneratedColumn<int> get statusId =>
      $composableBuilder(column: $table.statusId, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);
}

class $ParticipantsTableManager extends RootTableManager<
    _$AppDatabase,
    Participants,
    Participant,
    $ParticipantsFilterComposer,
    $ParticipantsOrderingComposer,
    $ParticipantsAnnotationComposer,
    $ParticipantsCreateCompanionBuilder,
    $ParticipantsUpdateCompanionBuilder,
    (Participant, BaseReferences<_$AppDatabase, Participants, Participant>),
    Participant,
    PrefetchHooks Function()> {
  $ParticipantsTableManager(_$AppDatabase db, Participants table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ParticipantsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ParticipantsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ParticipantsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> raceId = const Value.absent(),
            Value<int> riderId = const Value.absent(),
            Value<int> number = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> rfid = const Value.absent(),
            Value<int> statusId = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              ParticipantsCompanion(
            id: id,
            raceId: raceId,
            riderId: riderId,
            number: number,
            category: category,
            rfid: rfid,
            statusId: statusId,
            isDeleted: isDeleted,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int raceId,
            required int riderId,
            required int number,
            Value<String?> category = const Value.absent(),
            Value<String?> rfid = const Value.absent(),
            Value<int> statusId = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
          }) =>
              ParticipantsCompanion.insert(
            id: id,
            raceId: raceId,
            riderId: riderId,
            number: number,
            category: category,
            rfid: rfid,
            statusId: statusId,
            isDeleted: isDeleted,
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
    $ParticipantsAnnotationComposer,
    $ParticipantsCreateCompanionBuilder,
    $ParticipantsUpdateCompanionBuilder,
    (Participant, BaseReferences<_$AppDatabase, Participants, Participant>),
    Participant,
    PrefetchHooks Function()>;
typedef $FinishesCreateCompanionBuilder = FinishesCompanion Function({
  Value<int> id,
  required int stageId,
  Value<int?> number,
  required DateTime timestamp,
  required int ntpOffset,
  required String finishTime,
  Value<bool> isHidden,
  Value<bool> isManual,
});
typedef $FinishesUpdateCompanionBuilder = FinishesCompanion Function({
  Value<int> id,
  Value<int> stageId,
  Value<int?> number,
  Value<DateTime> timestamp,
  Value<int> ntpOffset,
  Value<String> finishTime,
  Value<bool> isHidden,
  Value<bool> isManual,
});

class $FinishesFilterComposer extends Composer<_$AppDatabase, Finishes> {
  $FinishesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get stageId => $composableBuilder(
      column: $table.stageId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get ntpOffset => $composableBuilder(
      column: $table.ntpOffset, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get finishTime => $composableBuilder(
      column: $table.finishTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isHidden => $composableBuilder(
      column: $table.isHidden, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isManual => $composableBuilder(
      column: $table.isManual, builder: (column) => ColumnFilters(column));
}

class $FinishesOrderingComposer extends Composer<_$AppDatabase, Finishes> {
  $FinishesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get stageId => $composableBuilder(
      column: $table.stageId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get ntpOffset => $composableBuilder(
      column: $table.ntpOffset, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get finishTime => $composableBuilder(
      column: $table.finishTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isHidden => $composableBuilder(
      column: $table.isHidden, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isManual => $composableBuilder(
      column: $table.isManual, builder: (column) => ColumnOrderings(column));
}

class $FinishesAnnotationComposer extends Composer<_$AppDatabase, Finishes> {
  $FinishesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get stageId =>
      $composableBuilder(column: $table.stageId, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<int> get ntpOffset =>
      $composableBuilder(column: $table.ntpOffset, builder: (column) => column);

  GeneratedColumn<String> get finishTime => $composableBuilder(
      column: $table.finishTime, builder: (column) => column);

  GeneratedColumn<bool> get isHidden =>
      $composableBuilder(column: $table.isHidden, builder: (column) => column);

  GeneratedColumn<bool> get isManual =>
      $composableBuilder(column: $table.isManual, builder: (column) => column);
}

class $FinishesTableManager extends RootTableManager<
    _$AppDatabase,
    Finishes,
    Finish,
    $FinishesFilterComposer,
    $FinishesOrderingComposer,
    $FinishesAnnotationComposer,
    $FinishesCreateCompanionBuilder,
    $FinishesUpdateCompanionBuilder,
    (Finish, BaseReferences<_$AppDatabase, Finishes, Finish>),
    Finish,
    PrefetchHooks Function()> {
  $FinishesTableManager(_$AppDatabase db, Finishes table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $FinishesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $FinishesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $FinishesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> stageId = const Value.absent(),
            Value<int?> number = const Value.absent(),
            Value<DateTime> timestamp = const Value.absent(),
            Value<int> ntpOffset = const Value.absent(),
            Value<String> finishTime = const Value.absent(),
            Value<bool> isHidden = const Value.absent(),
            Value<bool> isManual = const Value.absent(),
          }) =>
              FinishesCompanion(
            id: id,
            stageId: stageId,
            number: number,
            timestamp: timestamp,
            ntpOffset: ntpOffset,
            finishTime: finishTime,
            isHidden: isHidden,
            isManual: isManual,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int stageId,
            Value<int?> number = const Value.absent(),
            required DateTime timestamp,
            required int ntpOffset,
            required String finishTime,
            Value<bool> isHidden = const Value.absent(),
            Value<bool> isManual = const Value.absent(),
          }) =>
              FinishesCompanion.insert(
            id: id,
            stageId: stageId,
            number: number,
            timestamp: timestamp,
            ntpOffset: ntpOffset,
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
    $FinishesAnnotationComposer,
    $FinishesCreateCompanionBuilder,
    $FinishesUpdateCompanionBuilder,
    (Finish, BaseReferences<_$AppDatabase, Finishes, Finish>),
    Finish,
    PrefetchHooks Function()>;
typedef $StartsCreateCompanionBuilder = StartsCompanion Function({
  Value<int> id,
  required int stageId,
  required int participantId,
  required String startTime,
  Value<DateTime?> timestamp,
  Value<int?> ntpOffset,
  Value<String?> automaticStartTime,
  Value<int?> automaticCorrection,
  Value<String?> manualStartTime,
  Value<int?> manualCorrection,
  Value<int> statusId,
  Value<int?> finishId,
});
typedef $StartsUpdateCompanionBuilder = StartsCompanion Function({
  Value<int> id,
  Value<int> stageId,
  Value<int> participantId,
  Value<String> startTime,
  Value<DateTime?> timestamp,
  Value<int?> ntpOffset,
  Value<String?> automaticStartTime,
  Value<int?> automaticCorrection,
  Value<String?> manualStartTime,
  Value<int?> manualCorrection,
  Value<int> statusId,
  Value<int?> finishId,
});

class $StartsFilterComposer extends Composer<_$AppDatabase, Starts> {
  $StartsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get stageId => $composableBuilder(
      column: $table.stageId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get participantId => $composableBuilder(
      column: $table.participantId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get ntpOffset => $composableBuilder(
      column: $table.ntpOffset, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get automaticStartTime => $composableBuilder(
      column: $table.automaticStartTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get automaticCorrection => $composableBuilder(
      column: $table.automaticCorrection,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get manualStartTime => $composableBuilder(
      column: $table.manualStartTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get manualCorrection => $composableBuilder(
      column: $table.manualCorrection,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get statusId => $composableBuilder(
      column: $table.statusId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get finishId => $composableBuilder(
      column: $table.finishId, builder: (column) => ColumnFilters(column));
}

class $StartsOrderingComposer extends Composer<_$AppDatabase, Starts> {
  $StartsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get stageId => $composableBuilder(
      column: $table.stageId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get participantId => $composableBuilder(
      column: $table.participantId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get ntpOffset => $composableBuilder(
      column: $table.ntpOffset, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get automaticStartTime => $composableBuilder(
      column: $table.automaticStartTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get automaticCorrection => $composableBuilder(
      column: $table.automaticCorrection,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get manualStartTime => $composableBuilder(
      column: $table.manualStartTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get manualCorrection => $composableBuilder(
      column: $table.manualCorrection,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get statusId => $composableBuilder(
      column: $table.statusId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get finishId => $composableBuilder(
      column: $table.finishId, builder: (column) => ColumnOrderings(column));
}

class $StartsAnnotationComposer extends Composer<_$AppDatabase, Starts> {
  $StartsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get stageId =>
      $composableBuilder(column: $table.stageId, builder: (column) => column);

  GeneratedColumn<int> get participantId => $composableBuilder(
      column: $table.participantId, builder: (column) => column);

  GeneratedColumn<String> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<int> get ntpOffset =>
      $composableBuilder(column: $table.ntpOffset, builder: (column) => column);

  GeneratedColumn<String> get automaticStartTime => $composableBuilder(
      column: $table.automaticStartTime, builder: (column) => column);

  GeneratedColumn<int> get automaticCorrection => $composableBuilder(
      column: $table.automaticCorrection, builder: (column) => column);

  GeneratedColumn<String> get manualStartTime => $composableBuilder(
      column: $table.manualStartTime, builder: (column) => column);

  GeneratedColumn<int> get manualCorrection => $composableBuilder(
      column: $table.manualCorrection, builder: (column) => column);

  GeneratedColumn<int> get statusId =>
      $composableBuilder(column: $table.statusId, builder: (column) => column);

  GeneratedColumn<int> get finishId =>
      $composableBuilder(column: $table.finishId, builder: (column) => column);
}

class $StartsTableManager extends RootTableManager<
    _$AppDatabase,
    Starts,
    Start,
    $StartsFilterComposer,
    $StartsOrderingComposer,
    $StartsAnnotationComposer,
    $StartsCreateCompanionBuilder,
    $StartsUpdateCompanionBuilder,
    (Start, BaseReferences<_$AppDatabase, Starts, Start>),
    Start,
    PrefetchHooks Function()> {
  $StartsTableManager(_$AppDatabase db, Starts table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $StartsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $StartsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $StartsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> stageId = const Value.absent(),
            Value<int> participantId = const Value.absent(),
            Value<String> startTime = const Value.absent(),
            Value<DateTime?> timestamp = const Value.absent(),
            Value<int?> ntpOffset = const Value.absent(),
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
            ntpOffset: ntpOffset,
            automaticStartTime: automaticStartTime,
            automaticCorrection: automaticCorrection,
            manualStartTime: manualStartTime,
            manualCorrection: manualCorrection,
            statusId: statusId,
            finishId: finishId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int stageId,
            required int participantId,
            required String startTime,
            Value<DateTime?> timestamp = const Value.absent(),
            Value<int?> ntpOffset = const Value.absent(),
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
            ntpOffset: ntpOffset,
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
    $StartsAnnotationComposer,
    $StartsCreateCompanionBuilder,
    $StartsUpdateCompanionBuilder,
    (Start, BaseReferences<_$AppDatabase, Starts, Start>),
    Start,
    PrefetchHooks Function()>;
typedef $LogsCreateCompanionBuilder = LogsCompanion Function({
  Value<int> id,
  required LogLevel level,
  required DateTime timestamp,
  required LogSource source,
  required LogSourceDirection direction,
  Value<String?> rawData,
});
typedef $LogsUpdateCompanionBuilder = LogsCompanion Function({
  Value<int> id,
  Value<LogLevel> level,
  Value<DateTime> timestamp,
  Value<LogSource> source,
  Value<LogSourceDirection> direction,
  Value<String?> rawData,
});

class $LogsFilterComposer extends Composer<_$AppDatabase, Logs> {
  $LogsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<LogLevel, LogLevel, String> get level =>
      $composableBuilder(
          column: $table.level,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<LogSource, LogSource, String> get source =>
      $composableBuilder(
          column: $table.source,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<LogSourceDirection, LogSourceDirection, String>
      get direction => $composableBuilder(
          column: $table.direction,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get rawData => $composableBuilder(
      column: $table.rawData, builder: (column) => ColumnFilters(column));
}

class $LogsOrderingComposer extends Composer<_$AppDatabase, Logs> {
  $LogsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get direction => $composableBuilder(
      column: $table.direction, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rawData => $composableBuilder(
      column: $table.rawData, builder: (column) => ColumnOrderings(column));
}

class $LogsAnnotationComposer extends Composer<_$AppDatabase, Logs> {
  $LogsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<LogLevel, String> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumnWithTypeConverter<LogSource, String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumnWithTypeConverter<LogSourceDirection, String> get direction =>
      $composableBuilder(column: $table.direction, builder: (column) => column);

  GeneratedColumn<String> get rawData =>
      $composableBuilder(column: $table.rawData, builder: (column) => column);
}

class $LogsTableManager extends RootTableManager<
    _$AppDatabase,
    Logs,
    Log,
    $LogsFilterComposer,
    $LogsOrderingComposer,
    $LogsAnnotationComposer,
    $LogsCreateCompanionBuilder,
    $LogsUpdateCompanionBuilder,
    (Log, BaseReferences<_$AppDatabase, Logs, Log>),
    Log,
    PrefetchHooks Function()> {
  $LogsTableManager(_$AppDatabase db, Logs table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $LogsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $LogsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $LogsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<LogLevel> level = const Value.absent(),
            Value<DateTime> timestamp = const Value.absent(),
            Value<LogSource> source = const Value.absent(),
            Value<LogSourceDirection> direction = const Value.absent(),
            Value<String?> rawData = const Value.absent(),
          }) =>
              LogsCompanion(
            id: id,
            level: level,
            timestamp: timestamp,
            source: source,
            direction: direction,
            rawData: rawData,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required LogLevel level,
            required DateTime timestamp,
            required LogSource source,
            required LogSourceDirection direction,
            Value<String?> rawData = const Value.absent(),
          }) =>
              LogsCompanion.insert(
            id: id,
            level: level,
            timestamp: timestamp,
            source: source,
            direction: direction,
            rawData: rawData,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $LogsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Logs,
    Log,
    $LogsFilterComposer,
    $LogsOrderingComposer,
    $LogsAnnotationComposer,
    $LogsCreateCompanionBuilder,
    $LogsUpdateCompanionBuilder,
    (Log, BaseReferences<_$AppDatabase, Logs, Log>),
    Log,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $RacesTableManager get races => $RacesTableManager(_db, _db.races);
  $TrackFilesTableManager get trackFiles =>
      $TrackFilesTableManager(_db, _db.trackFiles);
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
  $LogsTableManager get logs => $LogsTableManager(_db, _db.logs);
}

class TrailInfo extends CustomResultSet {
  final int id;
  final String name;
  final int? distance;
  final int? elevation;
  final int? fileId;
  final String? url;
  final String? description;
  final String? fileName;
  final String? fileExtension;
  final int? fileSize;
  final String? fileDescription;
  final String? fileHashSha1;
  final DateTime? timestamp;
  TrailInfo({
    required QueryRow row,
    required this.id,
    required this.name,
    this.distance,
    this.elevation,
    this.fileId,
    this.url,
    this.description,
    this.fileName,
    this.fileExtension,
    this.fileSize,
    this.fileDescription,
    this.fileHashSha1,
    this.timestamp,
  }) : super(row);
}

class NumberAtStart extends CustomResultSet {
  final int startId;
  final int stageId;
  final int participantId;
  final String startTime;
  final DateTime? timestamp;
  final int? ntpOffset;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int startStatusId;
  final int? finishId;
  final int raceId;
  final int riderId;
  final int number;
  final String? category;
  final String? rfid;
  final int participantStatusId;
  NumberAtStart({
    required QueryRow row,
    required this.startId,
    required this.stageId,
    required this.participantId,
    required this.startTime,
    this.timestamp,
    this.ntpOffset,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
    this.manualCorrection,
    required this.startStatusId,
    this.finishId,
    required this.raceId,
    required this.riderId,
    required this.number,
    this.category,
    this.rfid,
    required this.participantStatusId,
  }) : super(row);
}

class ParticipantAtStart extends CustomResultSet {
  final int riderId;
  final int raceId;
  final int number;
  final String? category;
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
  final int startId;
  final int stageId;
  final int participantId;
  final String startTime;
  final DateTime? timestamp;
  final int? ntpOffset;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  ParticipantAtStart({
    required QueryRow row,
    required this.riderId,
    required this.raceId,
    required this.number,
    this.category,
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
    required this.startId,
    required this.stageId,
    required this.participantId,
    required this.startTime,
    this.timestamp,
    this.ntpOffset,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
    this.manualCorrection,
    required this.statusId,
  }) : super(row);
}

class StartingParticipant extends CustomResultSet {
  final int startId;
  final int stageId;
  final int participantId;
  final String startTime;
  final DateTime? timestamp;
  final int? ntpOffset;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int startStatus;
  final int? finishId;
  final int raceId;
  final int riderId;
  final int number;
  final String? category;
  final String? rfid;
  final int participantStatus;
  StartingParticipant({
    required QueryRow row,
    required this.startId,
    required this.stageId,
    required this.participantId,
    required this.startTime,
    this.timestamp,
    this.ntpOffset,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
    this.manualCorrection,
    required this.startStatus,
    this.finishId,
    required this.raceId,
    required this.riderId,
    required this.number,
    this.category,
    this.rfid,
    required this.participantStatus,
  }) : super(row);
}

class NextStartingParticipant extends CustomResultSet {
  final int number;
  final String startTime;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  NextStartingParticipant({
    required QueryRow row,
    required this.number,
    required this.startTime,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
  }) : super(row);
}

class GetStartingParticipantBetweenTimesResult extends CustomResultSet {
  final int number;
  final String startTime;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String name;
  GetStartingParticipantBetweenTimesResult({
    required QueryRow row,
    required this.number,
    required this.startTime,
    this.automaticStartTime,
    this.automaticCorrection,
    required this.name,
  }) : super(row);
}

class StartForCsv extends CustomResultSet {
  final int number;
  final String startTime;
  final String correction;
  StartForCsv({
    required QueryRow row,
    required this.number,
    required this.startTime,
    required this.correction,
  }) : super(row);
}

class FinishForCsv extends CustomResultSet {
  final int? number;
  final String finishTime;
  FinishForCsv({
    required QueryRow row,
    this.number,
    required this.finishTime,
  }) : super(row);
}

typedef GetLog$predicate = Expression<bool> Function(Logs logs);
typedef GetLog$limit = Limit Function(Logs logs);
