// dart format width=80
// GENERATED CODE, DO NOT EDIT BY HAND.
// ignore_for_file: type=lint
import 'package:drift/drift.dart';

class Races extends Table with TableInfo<Races, RacesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Races(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> startDate = GeneratedColumn<String>(
    'start_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> finishDate = GeneratedColumn<String>(
    'finish_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
    'location',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    startDate,
    finishDate,
    location,
    url,
    description,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'races';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RacesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RacesData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}start_date'],
      ),
      finishDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}finish_date'],
      ),
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location'],
      ),
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      isDeleted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_deleted'],
          )!,
    );
  }

  @override
  Races createAlias(String alias) {
    return Races(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class RacesData extends DataClass implements Insertable<RacesData> {
  final int id;
  final String name;
  final String? startDate;
  final String? finishDate;
  final String? location;
  final String? url;
  final String? description;
  final bool isDeleted;
  const RacesData({
    required this.id,
    required this.name,
    this.startDate,
    this.finishDate,
    this.location,
    this.url,
    this.description,
    required this.isDeleted,
  });
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
      startDate:
          startDate == null && nullToAbsent
              ? const Value.absent()
              : Value(startDate),
      finishDate:
          finishDate == null && nullToAbsent
              ? const Value.absent()
              : Value(finishDate),
      location:
          location == null && nullToAbsent
              ? const Value.absent()
              : Value(location),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      isDeleted: Value(isDeleted),
    );
  }

  factory RacesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RacesData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      startDate: serializer.fromJson<String?>(json['startDate']),
      finishDate: serializer.fromJson<String?>(json['finishDate']),
      location: serializer.fromJson<String?>(json['location']),
      url: serializer.fromJson<String?>(json['url']),
      description: serializer.fromJson<String?>(json['description']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'startDate': serializer.toJson<String?>(startDate),
      'finishDate': serializer.toJson<String?>(finishDate),
      'location': serializer.toJson<String?>(location),
      'url': serializer.toJson<String?>(url),
      'description': serializer.toJson<String?>(description),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  RacesData copyWith({
    int? id,
    String? name,
    Value<String?> startDate = const Value.absent(),
    Value<String?> finishDate = const Value.absent(),
    Value<String?> location = const Value.absent(),
    Value<String?> url = const Value.absent(),
    Value<String?> description = const Value.absent(),
    bool? isDeleted,
  }) => RacesData(
    id: id ?? this.id,
    name: name ?? this.name,
    startDate: startDate.present ? startDate.value : this.startDate,
    finishDate: finishDate.present ? finishDate.value : this.finishDate,
    location: location.present ? location.value : this.location,
    url: url.present ? url.value : this.url,
    description: description.present ? description.value : this.description,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  RacesData copyWithCompanion(RacesCompanion data) {
    return RacesData(
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
    return (StringBuffer('RacesData(')
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
    id,
    name,
    startDate,
    finishDate,
    location,
    url,
    description,
    isDeleted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RacesData &&
          other.id == this.id &&
          other.name == this.name &&
          other.startDate == this.startDate &&
          other.finishDate == this.finishDate &&
          other.location == this.location &&
          other.url == this.url &&
          other.description == this.description &&
          other.isDeleted == this.isDeleted);
}

class RacesCompanion extends UpdateCompanion<RacesData> {
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
  static Insertable<RacesData> custom({
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

  RacesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? startDate,
    Value<String?>? finishDate,
    Value<String?>? location,
    Value<String?>? url,
    Value<String?>? description,
    Value<bool>? isDeleted,
  }) {
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

class TrackFiles extends Table with TableInfo<TrackFiles, TrackFilesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  TrackFiles(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> extension = GeneratedColumn<String>(
    'extension',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> size = GeneratedColumn<int>(
    'size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> hashSha1 = GeneratedColumn<String>(
    'hash_sha1',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    extension,
    size,
    description,
    hashSha1,
    data,
    timestamp,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'track_files';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrackFilesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrackFilesData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      extension: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}extension'],
      ),
      size:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}size'],
          )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      hashSha1:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}hash_sha1'],
          )!,
      data:
          attachedDatabase.typeMapping.read(
            DriftSqlType.blob,
            data['${effectivePrefix}data'],
          )!,
      timestamp:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}timestamp'],
          )!,
    );
  }

  @override
  TrackFiles createAlias(String alias) {
    return TrackFiles(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class TrackFilesData extends DataClass implements Insertable<TrackFilesData> {
  final int id;
  final String name;
  final String? extension;
  final int size;
  final String? description;
  final String hashSha1;
  final Uint8List data;
  final DateTime timestamp;
  const TrackFilesData({
    required this.id,
    required this.name,
    this.extension,
    required this.size,
    this.description,
    required this.hashSha1,
    required this.data,
    required this.timestamp,
  });
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
      extension:
          extension == null && nullToAbsent
              ? const Value.absent()
              : Value(extension),
      size: Value(size),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      hashSha1: Value(hashSha1),
      data: Value(data),
      timestamp: Value(timestamp),
    );
  }

  factory TrackFilesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrackFilesData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      extension: serializer.fromJson<String?>(json['extension']),
      size: serializer.fromJson<int>(json['size']),
      description: serializer.fromJson<String?>(json['description']),
      hashSha1: serializer.fromJson<String>(json['hashSha1']),
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
      'hashSha1': serializer.toJson<String>(hashSha1),
      'data': serializer.toJson<Uint8List>(data),
      'timestamp': serializer.toJson<DateTime>(timestamp),
    };
  }

  TrackFilesData copyWith({
    int? id,
    String? name,
    Value<String?> extension = const Value.absent(),
    int? size,
    Value<String?> description = const Value.absent(),
    String? hashSha1,
    Uint8List? data,
    DateTime? timestamp,
  }) => TrackFilesData(
    id: id ?? this.id,
    name: name ?? this.name,
    extension: extension.present ? extension.value : this.extension,
    size: size ?? this.size,
    description: description.present ? description.value : this.description,
    hashSha1: hashSha1 ?? this.hashSha1,
    data: data ?? this.data,
    timestamp: timestamp ?? this.timestamp,
  );
  TrackFilesData copyWithCompanion(TrackFilesCompanion data) {
    return TrackFilesData(
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
    return (StringBuffer('TrackFilesData(')
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
  int get hashCode => Object.hash(
    id,
    name,
    extension,
    size,
    description,
    hashSha1,
    $driftBlobEquality.hash(data),
    timestamp,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrackFilesData &&
          other.id == this.id &&
          other.name == this.name &&
          other.extension == this.extension &&
          other.size == this.size &&
          other.description == this.description &&
          other.hashSha1 == this.hashSha1 &&
          $driftBlobEquality.equals(other.data, this.data) &&
          other.timestamp == this.timestamp);
}

class TrackFilesCompanion extends UpdateCompanion<TrackFilesData> {
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
  }) : name = Value(name),
       size = Value(size),
       hashSha1 = Value(hashSha1),
       data = Value(data),
       timestamp = Value(timestamp);
  static Insertable<TrackFilesData> custom({
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

  TrackFilesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? extension,
    Value<int>? size,
    Value<String?>? description,
    Value<String>? hashSha1,
    Value<Uint8List>? data,
    Value<DateTime>? timestamp,
  }) {
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

class Trails extends Table with TableInfo<Trails, TrailsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Trails(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<int> distance = GeneratedColumn<int>(
    'distance',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> elevation = GeneratedColumn<int>(
    'elevation',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> fileId = GeneratedColumn<int>(
    'file_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    distance,
    elevation,
    fileId,
    url,
    description,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trails';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrailsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrailsData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      distance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}distance'],
      ),
      elevation: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}elevation'],
      ),
      fileId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}file_id'],
      ),
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      isDeleted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_deleted'],
          )!,
    );
  }

  @override
  Trails createAlias(String alias) {
    return Trails(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'FOREIGN KEY(file_id)REFERENCES track_files(id)ON DELETE SET NULL',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class TrailsData extends DataClass implements Insertable<TrailsData> {
  final int id;
  final String name;
  final int? distance;
  final int? elevation;
  final int? fileId;
  final String? url;
  final String? description;
  final bool isDeleted;
  const TrailsData({
    required this.id,
    required this.name,
    this.distance,
    this.elevation,
    this.fileId,
    this.url,
    this.description,
    required this.isDeleted,
  });
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
      distance:
          distance == null && nullToAbsent
              ? const Value.absent()
              : Value(distance),
      elevation:
          elevation == null && nullToAbsent
              ? const Value.absent()
              : Value(elevation),
      fileId:
          fileId == null && nullToAbsent ? const Value.absent() : Value(fileId),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      isDeleted: Value(isDeleted),
    );
  }

  factory TrailsData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrailsData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      distance: serializer.fromJson<int?>(json['distance']),
      elevation: serializer.fromJson<int?>(json['elevation']),
      fileId: serializer.fromJson<int?>(json['fileId']),
      url: serializer.fromJson<String?>(json['url']),
      description: serializer.fromJson<String?>(json['description']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
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
      'fileId': serializer.toJson<int?>(fileId),
      'url': serializer.toJson<String?>(url),
      'description': serializer.toJson<String?>(description),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  TrailsData copyWith({
    int? id,
    String? name,
    Value<int?> distance = const Value.absent(),
    Value<int?> elevation = const Value.absent(),
    Value<int?> fileId = const Value.absent(),
    Value<String?> url = const Value.absent(),
    Value<String?> description = const Value.absent(),
    bool? isDeleted,
  }) => TrailsData(
    id: id ?? this.id,
    name: name ?? this.name,
    distance: distance.present ? distance.value : this.distance,
    elevation: elevation.present ? elevation.value : this.elevation,
    fileId: fileId.present ? fileId.value : this.fileId,
    url: url.present ? url.value : this.url,
    description: description.present ? description.value : this.description,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  TrailsData copyWithCompanion(TrailsCompanion data) {
    return TrailsData(
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
    return (StringBuffer('TrailsData(')
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
    id,
    name,
    distance,
    elevation,
    fileId,
    url,
    description,
    isDeleted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrailsData &&
          other.id == this.id &&
          other.name == this.name &&
          other.distance == this.distance &&
          other.elevation == this.elevation &&
          other.fileId == this.fileId &&
          other.url == this.url &&
          other.description == this.description &&
          other.isDeleted == this.isDeleted);
}

class TrailsCompanion extends UpdateCompanion<TrailsData> {
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
  static Insertable<TrailsData> custom({
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

  TrailsCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int?>? distance,
    Value<int?>? elevation,
    Value<int?>? fileId,
    Value<String?>? url,
    Value<String?>? description,
    Value<bool>? isDeleted,
  }) {
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

class Stages extends Table with TableInfo<Stages, StagesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Stages(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<int> trailId = GeneratedColumn<int>(
    'trail_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> raceId = GeneratedColumn<int>(
    'race_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT TRUE',
    defaultValue: const CustomExpression('TRUE'),
  );
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    trailId,
    raceId,
    name,
    description,
    isActive,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stages';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StagesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StagesData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      trailId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trail_id'],
      ),
      raceId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}race_id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      isActive:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_active'],
          )!,
      isDeleted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_deleted'],
          )!,
    );
  }

  @override
  Stages createAlias(String alias) {
    return Stages(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'FOREIGN KEY(trail_id)REFERENCES trails(id)ON DELETE SET NULL',
    'FOREIGN KEY(race_id)REFERENCES races(id)ON DELETE CASCADE',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class StagesData extends DataClass implements Insertable<StagesData> {
  final int id;
  final int? trailId;
  final int raceId;
  final String name;
  final String? description;
  final bool isActive;
  final bool isDeleted;
  const StagesData({
    required this.id,
    this.trailId,
    required this.raceId,
    required this.name,
    this.description,
    required this.isActive,
    required this.isDeleted,
  });
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
      trailId:
          trailId == null && nullToAbsent
              ? const Value.absent()
              : Value(trailId),
      raceId: Value(raceId),
      name: Value(name),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      isActive: Value(isActive),
      isDeleted: Value(isDeleted),
    );
  }

  factory StagesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StagesData(
      id: serializer.fromJson<int>(json['id']),
      trailId: serializer.fromJson<int?>(json['trailId']),
      raceId: serializer.fromJson<int>(json['raceId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'trailId': serializer.toJson<int?>(trailId),
      'raceId': serializer.toJson<int>(raceId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'isActive': serializer.toJson<bool>(isActive),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  StagesData copyWith({
    int? id,
    Value<int?> trailId = const Value.absent(),
    int? raceId,
    String? name,
    Value<String?> description = const Value.absent(),
    bool? isActive,
    bool? isDeleted,
  }) => StagesData(
    id: id ?? this.id,
    trailId: trailId.present ? trailId.value : this.trailId,
    raceId: raceId ?? this.raceId,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    isActive: isActive ?? this.isActive,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  StagesData copyWithCompanion(StagesCompanion data) {
    return StagesData(
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
    return (StringBuffer('StagesData(')
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
      (other is StagesData &&
          other.id == this.id &&
          other.trailId == this.trailId &&
          other.raceId == this.raceId &&
          other.name == this.name &&
          other.description == this.description &&
          other.isActive == this.isActive &&
          other.isDeleted == this.isDeleted);
}

class StagesCompanion extends UpdateCompanion<StagesData> {
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
  }) : raceId = Value(raceId),
       name = Value(name);
  static Insertable<StagesData> custom({
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

  StagesCompanion copyWith({
    Value<int>? id,
    Value<int?>? trailId,
    Value<int>? raceId,
    Value<String>? name,
    Value<String?>? description,
    Value<bool>? isActive,
    Value<bool>? isDeleted,
  }) {
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

class Riders extends Table with TableInfo<Riders, RidersData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Riders(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL COLLATE NOCASE',
  );
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
    'nickname',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> birthday = GeneratedColumn<String>(
    'birthday',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> team = GeneratedColumn<String>(
    'team',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
    'city',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
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
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'riders';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RidersData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RidersData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      nickname: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nickname'],
      ),
      birthday: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}birthday'],
      ),
      team: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}team'],
      ),
      city: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}city'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      ),
      isDeleted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_deleted'],
          )!,
    );
  }

  @override
  Riders createAlias(String alias) {
    return Riders(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class RidersData extends DataClass implements Insertable<RidersData> {
  final int id;
  final String name;
  final String? nickname;
  final String? birthday;
  final String? team;
  final String? city;
  final String? email;
  final String? phone;
  final String? comment;
  final bool isDeleted;
  const RidersData({
    required this.id,
    required this.name,
    this.nickname,
    this.birthday,
    this.team,
    this.city,
    this.email,
    this.phone,
    this.comment,
    required this.isDeleted,
  });
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
      nickname:
          nickname == null && nullToAbsent
              ? const Value.absent()
              : Value(nickname),
      birthday:
          birthday == null && nullToAbsent
              ? const Value.absent()
              : Value(birthday),
      team: team == null && nullToAbsent ? const Value.absent() : Value(team),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      comment:
          comment == null && nullToAbsent
              ? const Value.absent()
              : Value(comment),
      isDeleted: Value(isDeleted),
    );
  }

  factory RidersData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RidersData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nickname: serializer.fromJson<String?>(json['nickname']),
      birthday: serializer.fromJson<String?>(json['birthday']),
      team: serializer.fromJson<String?>(json['team']),
      city: serializer.fromJson<String?>(json['city']),
      email: serializer.fromJson<String?>(json['email']),
      phone: serializer.fromJson<String?>(json['phone']),
      comment: serializer.fromJson<String?>(json['comment']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
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
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  RidersData copyWith({
    int? id,
    String? name,
    Value<String?> nickname = const Value.absent(),
    Value<String?> birthday = const Value.absent(),
    Value<String?> team = const Value.absent(),
    Value<String?> city = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> phone = const Value.absent(),
    Value<String?> comment = const Value.absent(),
    bool? isDeleted,
  }) => RidersData(
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
  RidersData copyWithCompanion(RidersCompanion data) {
    return RidersData(
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
    return (StringBuffer('RidersData(')
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
  int get hashCode => Object.hash(
    id,
    name,
    nickname,
    birthday,
    team,
    city,
    email,
    phone,
    comment,
    isDeleted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RidersData &&
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

class RidersCompanion extends UpdateCompanion<RidersData> {
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
  static Insertable<RidersData> custom({
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

  RidersCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? nickname,
    Value<String?>? birthday,
    Value<String?>? team,
    Value<String?>? city,
    Value<String?>? email,
    Value<String?>? phone,
    Value<String?>? comment,
    Value<bool>? isDeleted,
  }) {
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

class Statuses extends Table with TableInfo<Statuses, StatusesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Statuses(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [id, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'statuses';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StatusesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StatusesData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
    );
  }

  @override
  Statuses createAlias(String alias) {
    return Statuses(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class StatusesData extends DataClass implements Insertable<StatusesData> {
  final int id;
  final String type;
  const StatusesData({required this.id, required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    return map;
  }

  StatusesCompanion toCompanion(bool nullToAbsent) {
    return StatusesCompanion(id: Value(id), type: Value(type));
  }

  factory StatusesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StatusesData(
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

  StatusesData copyWith({int? id, String? type}) =>
      StatusesData(id: id ?? this.id, type: type ?? this.type);
  StatusesData copyWithCompanion(StatusesCompanion data) {
    return StatusesData(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StatusesData(')
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
      (other is StatusesData && other.id == this.id && other.type == this.type);
}

class StatusesCompanion extends UpdateCompanion<StatusesData> {
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
  static Insertable<StatusesData> custom({
    Expression<int>? id,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    });
  }

  StatusesCompanion copyWith({Value<int>? id, Value<String>? type}) {
    return StatusesCompanion(id: id ?? this.id, type: type ?? this.type);
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

class Participants extends Table
    with TableInfo<Participants, ParticipantsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Participants(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<int> raceId = GeneratedColumn<int>(
    'race_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<int> riderId = GeneratedColumn<int>(
    'rider_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> rfid = GeneratedColumn<String>(
    'rfid',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> statusId = GeneratedColumn<int>(
    'status_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT 1',
    defaultValue: const CustomExpression('1'),
  );
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    raceId,
    riderId,
    number,
    category,
    rfid,
    statusId,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'participants';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ParticipantsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ParticipantsData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      raceId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}race_id'],
          )!,
      riderId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}rider_id'],
          )!,
      number:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}number'],
          )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
      rfid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rfid'],
      ),
      statusId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}status_id'],
          )!,
      isDeleted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_deleted'],
          )!,
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
    'FOREIGN KEY(status_id)REFERENCES statuses(id)',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class ParticipantsData extends DataClass
    implements Insertable<ParticipantsData> {
  final int id;
  final int raceId;
  final int riderId;
  final int number;
  final String? category;
  final String? rfid;
  final int statusId;
  final bool isDeleted;
  const ParticipantsData({
    required this.id,
    required this.raceId,
    required this.riderId,
    required this.number,
    this.category,
    this.rfid,
    required this.statusId,
    required this.isDeleted,
  });
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
      category:
          category == null && nullToAbsent
              ? const Value.absent()
              : Value(category),
      rfid: rfid == null && nullToAbsent ? const Value.absent() : Value(rfid),
      statusId: Value(statusId),
      isDeleted: Value(isDeleted),
    );
  }

  factory ParticipantsData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ParticipantsData(
      id: serializer.fromJson<int>(json['id']),
      raceId: serializer.fromJson<int>(json['raceId']),
      riderId: serializer.fromJson<int>(json['riderId']),
      number: serializer.fromJson<int>(json['number']),
      category: serializer.fromJson<String?>(json['category']),
      rfid: serializer.fromJson<String?>(json['rfid']),
      statusId: serializer.fromJson<int>(json['statusId']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'raceId': serializer.toJson<int>(raceId),
      'riderId': serializer.toJson<int>(riderId),
      'number': serializer.toJson<int>(number),
      'category': serializer.toJson<String?>(category),
      'rfid': serializer.toJson<String?>(rfid),
      'statusId': serializer.toJson<int>(statusId),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  ParticipantsData copyWith({
    int? id,
    int? raceId,
    int? riderId,
    int? number,
    Value<String?> category = const Value.absent(),
    Value<String?> rfid = const Value.absent(),
    int? statusId,
    bool? isDeleted,
  }) => ParticipantsData(
    id: id ?? this.id,
    raceId: raceId ?? this.raceId,
    riderId: riderId ?? this.riderId,
    number: number ?? this.number,
    category: category.present ? category.value : this.category,
    rfid: rfid.present ? rfid.value : this.rfid,
    statusId: statusId ?? this.statusId,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  ParticipantsData copyWithCompanion(ParticipantsCompanion data) {
    return ParticipantsData(
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
    return (StringBuffer('ParticipantsData(')
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
    id,
    raceId,
    riderId,
    number,
    category,
    rfid,
    statusId,
    isDeleted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ParticipantsData &&
          other.id == this.id &&
          other.raceId == this.raceId &&
          other.riderId == this.riderId &&
          other.number == this.number &&
          other.category == this.category &&
          other.rfid == this.rfid &&
          other.statusId == this.statusId &&
          other.isDeleted == this.isDeleted);
}

class ParticipantsCompanion extends UpdateCompanion<ParticipantsData> {
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
  }) : raceId = Value(raceId),
       riderId = Value(riderId),
       number = Value(number);
  static Insertable<ParticipantsData> custom({
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

  ParticipantsCompanion copyWith({
    Value<int>? id,
    Value<int>? raceId,
    Value<int>? riderId,
    Value<int>? number,
    Value<String?>? category,
    Value<String?>? rfid,
    Value<int>? statusId,
    Value<bool>? isDeleted,
  }) {
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

class Finishes extends Table with TableInfo<Finishes, FinishesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Finishes(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<int> stageId = GeneratedColumn<int>(
    'stage_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<int> ntpOffset = GeneratedColumn<int>(
    'ntp_offset',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> finishTime = GeneratedColumn<String>(
    'finish_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
    'is_hidden',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
  late final GeneratedColumn<bool> isManual = GeneratedColumn<bool>(
    'is_manual',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stageId,
    number,
    timestamp,
    ntpOffset,
    finishTime,
    isHidden,
    isManual,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'finishes';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FinishesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FinishesData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      stageId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}stage_id'],
          )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}number'],
      ),
      timestamp:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}timestamp'],
          )!,
      ntpOffset:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}ntp_offset'],
          )!,
      finishTime:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}finish_time'],
          )!,
      isHidden:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_hidden'],
          )!,
      isManual:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_manual'],
          )!,
    );
  }

  @override
  Finishes createAlias(String alias) {
    return Finishes(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'FOREIGN KEY(stage_id)REFERENCES stages(id)ON DELETE CASCADE',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class FinishesData extends DataClass implements Insertable<FinishesData> {
  final int id;
  final int stageId;
  final int? number;
  final DateTime timestamp;
  final int ntpOffset;
  final String finishTime;
  final bool isHidden;
  final bool isManual;
  const FinishesData({
    required this.id,
    required this.stageId,
    this.number,
    required this.timestamp,
    required this.ntpOffset,
    required this.finishTime,
    required this.isHidden,
    required this.isManual,
  });
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

  factory FinishesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FinishesData(
      id: serializer.fromJson<int>(json['id']),
      stageId: serializer.fromJson<int>(json['stageId']),
      number: serializer.fromJson<int?>(json['number']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      ntpOffset: serializer.fromJson<int>(json['ntpOffset']),
      finishTime: serializer.fromJson<String>(json['finishTime']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
      isManual: serializer.fromJson<bool>(json['isManual']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stageId': serializer.toJson<int>(stageId),
      'number': serializer.toJson<int?>(number),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'ntpOffset': serializer.toJson<int>(ntpOffset),
      'finishTime': serializer.toJson<String>(finishTime),
      'isHidden': serializer.toJson<bool>(isHidden),
      'isManual': serializer.toJson<bool>(isManual),
    };
  }

  FinishesData copyWith({
    int? id,
    int? stageId,
    Value<int?> number = const Value.absent(),
    DateTime? timestamp,
    int? ntpOffset,
    String? finishTime,
    bool? isHidden,
    bool? isManual,
  }) => FinishesData(
    id: id ?? this.id,
    stageId: stageId ?? this.stageId,
    number: number.present ? number.value : this.number,
    timestamp: timestamp ?? this.timestamp,
    ntpOffset: ntpOffset ?? this.ntpOffset,
    finishTime: finishTime ?? this.finishTime,
    isHidden: isHidden ?? this.isHidden,
    isManual: isManual ?? this.isManual,
  );
  FinishesData copyWithCompanion(FinishesCompanion data) {
    return FinishesData(
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
    return (StringBuffer('FinishesData(')
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
  int get hashCode => Object.hash(
    id,
    stageId,
    number,
    timestamp,
    ntpOffset,
    finishTime,
    isHidden,
    isManual,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FinishesData &&
          other.id == this.id &&
          other.stageId == this.stageId &&
          other.number == this.number &&
          other.timestamp == this.timestamp &&
          other.ntpOffset == this.ntpOffset &&
          other.finishTime == this.finishTime &&
          other.isHidden == this.isHidden &&
          other.isManual == this.isManual);
}

class FinishesCompanion extends UpdateCompanion<FinishesData> {
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
  }) : stageId = Value(stageId),
       timestamp = Value(timestamp),
       ntpOffset = Value(ntpOffset),
       finishTime = Value(finishTime);
  static Insertable<FinishesData> custom({
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

  FinishesCompanion copyWith({
    Value<int>? id,
    Value<int>? stageId,
    Value<int?>? number,
    Value<DateTime>? timestamp,
    Value<int>? ntpOffset,
    Value<String>? finishTime,
    Value<bool>? isHidden,
    Value<bool>? isManual,
  }) {
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

class Starts extends Table with TableInfo<Starts, StartsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Starts(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<int> stageId = GeneratedColumn<int>(
    'stage_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<int> participantId = GeneratedColumn<int>(
    'participant_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> startTime = GeneratedColumn<String>(
    'start_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> timestampCorrection = GeneratedColumn<int>(
    'timestamp_correction',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> ntpOffset = GeneratedColumn<int>(
    'ntp_offset',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> automaticStartTime =
      GeneratedColumn<String>(
        'automatic_start_time',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  late final GeneratedColumn<int> automaticCorrection = GeneratedColumn<int>(
    'automatic_correction',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<String> manualStartTime = GeneratedColumn<String>(
    'manual_start_time',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> manualCorrection = GeneratedColumn<int>(
    'manual_correction',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  late final GeneratedColumn<int> statusId = GeneratedColumn<int>(
    'status_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT 1',
    defaultValue: const CustomExpression('1'),
  );
  late final GeneratedColumn<int> finishId = GeneratedColumn<int>(
    'finish_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stageId,
    participantId,
    startTime,
    timestamp,
    timestampCorrection,
    ntpOffset,
    automaticStartTime,
    automaticCorrection,
    manualStartTime,
    manualCorrection,
    statusId,
    finishId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'starts';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StartsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StartsData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      stageId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}stage_id'],
          )!,
      participantId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}participant_id'],
          )!,
      startTime:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}start_time'],
          )!,
      timestamp: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}timestamp'],
      ),
      timestampCorrection: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}timestamp_correction'],
      ),
      ntpOffset: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ntp_offset'],
      ),
      automaticStartTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}automatic_start_time'],
      ),
      automaticCorrection: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}automatic_correction'],
      ),
      manualStartTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}manual_start_time'],
      ),
      manualCorrection: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}manual_correction'],
      ),
      statusId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}status_id'],
          )!,
      finishId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}finish_id'],
      ),
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
    'FOREIGN KEY(status_id)REFERENCES statuses(id)',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class StartsData extends DataClass implements Insertable<StartsData> {
  final int id;
  final int stageId;
  final int participantId;
  final String startTime;
  final DateTime? timestamp;
  final int? timestampCorrection;
  final int? ntpOffset;
  final String? automaticStartTime;
  final int? automaticCorrection;
  final String? manualStartTime;
  final int? manualCorrection;
  final int statusId;
  final int? finishId;
  const StartsData({
    required this.id,
    required this.stageId,
    required this.participantId,
    required this.startTime,
    this.timestamp,
    this.timestampCorrection,
    this.ntpOffset,
    this.automaticStartTime,
    this.automaticCorrection,
    this.manualStartTime,
    this.manualCorrection,
    required this.statusId,
    this.finishId,
  });
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
    if (!nullToAbsent || timestampCorrection != null) {
      map['timestamp_correction'] = Variable<int>(timestampCorrection);
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
      timestamp:
          timestamp == null && nullToAbsent
              ? const Value.absent()
              : Value(timestamp),
      timestampCorrection:
          timestampCorrection == null && nullToAbsent
              ? const Value.absent()
              : Value(timestampCorrection),
      ntpOffset:
          ntpOffset == null && nullToAbsent
              ? const Value.absent()
              : Value(ntpOffset),
      automaticStartTime:
          automaticStartTime == null && nullToAbsent
              ? const Value.absent()
              : Value(automaticStartTime),
      automaticCorrection:
          automaticCorrection == null && nullToAbsent
              ? const Value.absent()
              : Value(automaticCorrection),
      manualStartTime:
          manualStartTime == null && nullToAbsent
              ? const Value.absent()
              : Value(manualStartTime),
      manualCorrection:
          manualCorrection == null && nullToAbsent
              ? const Value.absent()
              : Value(manualCorrection),
      statusId: Value(statusId),
      finishId:
          finishId == null && nullToAbsent
              ? const Value.absent()
              : Value(finishId),
    );
  }

  factory StartsData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StartsData(
      id: serializer.fromJson<int>(json['id']),
      stageId: serializer.fromJson<int>(json['stageId']),
      participantId: serializer.fromJson<int>(json['participantId']),
      startTime: serializer.fromJson<String>(json['startTime']),
      timestamp: serializer.fromJson<DateTime?>(json['timestamp']),
      timestampCorrection: serializer.fromJson<int?>(
        json['timestampCorrection'],
      ),
      ntpOffset: serializer.fromJson<int?>(json['ntpOffset']),
      automaticStartTime: serializer.fromJson<String?>(
        json['automaticStartTime'],
      ),
      automaticCorrection: serializer.fromJson<int?>(
        json['automaticCorrection'],
      ),
      manualStartTime: serializer.fromJson<String?>(json['manualStartTime']),
      manualCorrection: serializer.fromJson<int?>(json['manualCorrection']),
      statusId: serializer.fromJson<int>(json['statusId']),
      finishId: serializer.fromJson<int?>(json['finishId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stageId': serializer.toJson<int>(stageId),
      'participantId': serializer.toJson<int>(participantId),
      'startTime': serializer.toJson<String>(startTime),
      'timestamp': serializer.toJson<DateTime?>(timestamp),
      'timestampCorrection': serializer.toJson<int?>(timestampCorrection),
      'ntpOffset': serializer.toJson<int?>(ntpOffset),
      'automaticStartTime': serializer.toJson<String?>(automaticStartTime),
      'automaticCorrection': serializer.toJson<int?>(automaticCorrection),
      'manualStartTime': serializer.toJson<String?>(manualStartTime),
      'manualCorrection': serializer.toJson<int?>(manualCorrection),
      'statusId': serializer.toJson<int>(statusId),
      'finishId': serializer.toJson<int?>(finishId),
    };
  }

  StartsData copyWith({
    int? id,
    int? stageId,
    int? participantId,
    String? startTime,
    Value<DateTime?> timestamp = const Value.absent(),
    Value<int?> timestampCorrection = const Value.absent(),
    Value<int?> ntpOffset = const Value.absent(),
    Value<String?> automaticStartTime = const Value.absent(),
    Value<int?> automaticCorrection = const Value.absent(),
    Value<String?> manualStartTime = const Value.absent(),
    Value<int?> manualCorrection = const Value.absent(),
    int? statusId,
    Value<int?> finishId = const Value.absent(),
  }) => StartsData(
    id: id ?? this.id,
    stageId: stageId ?? this.stageId,
    participantId: participantId ?? this.participantId,
    startTime: startTime ?? this.startTime,
    timestamp: timestamp.present ? timestamp.value : this.timestamp,
    timestampCorrection:
        timestampCorrection.present
            ? timestampCorrection.value
            : this.timestampCorrection,
    ntpOffset: ntpOffset.present ? ntpOffset.value : this.ntpOffset,
    automaticStartTime:
        automaticStartTime.present
            ? automaticStartTime.value
            : this.automaticStartTime,
    automaticCorrection:
        automaticCorrection.present
            ? automaticCorrection.value
            : this.automaticCorrection,
    manualStartTime:
        manualStartTime.present ? manualStartTime.value : this.manualStartTime,
    manualCorrection:
        manualCorrection.present
            ? manualCorrection.value
            : this.manualCorrection,
    statusId: statusId ?? this.statusId,
    finishId: finishId.present ? finishId.value : this.finishId,
  );
  StartsData copyWithCompanion(StartsCompanion data) {
    return StartsData(
      id: data.id.present ? data.id.value : this.id,
      stageId: data.stageId.present ? data.stageId.value : this.stageId,
      participantId:
          data.participantId.present
              ? data.participantId.value
              : this.participantId,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      timestampCorrection:
          data.timestampCorrection.present
              ? data.timestampCorrection.value
              : this.timestampCorrection,
      ntpOffset: data.ntpOffset.present ? data.ntpOffset.value : this.ntpOffset,
      automaticStartTime:
          data.automaticStartTime.present
              ? data.automaticStartTime.value
              : this.automaticStartTime,
      automaticCorrection:
          data.automaticCorrection.present
              ? data.automaticCorrection.value
              : this.automaticCorrection,
      manualStartTime:
          data.manualStartTime.present
              ? data.manualStartTime.value
              : this.manualStartTime,
      manualCorrection:
          data.manualCorrection.present
              ? data.manualCorrection.value
              : this.manualCorrection,
      statusId: data.statusId.present ? data.statusId.value : this.statusId,
      finishId: data.finishId.present ? data.finishId.value : this.finishId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StartsData(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('participantId: $participantId, ')
          ..write('startTime: $startTime, ')
          ..write('timestamp: $timestamp, ')
          ..write('timestampCorrection: $timestampCorrection, ')
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
    timestampCorrection,
    ntpOffset,
    automaticStartTime,
    automaticCorrection,
    manualStartTime,
    manualCorrection,
    statusId,
    finishId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StartsData &&
          other.id == this.id &&
          other.stageId == this.stageId &&
          other.participantId == this.participantId &&
          other.startTime == this.startTime &&
          other.timestamp == this.timestamp &&
          other.timestampCorrection == this.timestampCorrection &&
          other.ntpOffset == this.ntpOffset &&
          other.automaticStartTime == this.automaticStartTime &&
          other.automaticCorrection == this.automaticCorrection &&
          other.manualStartTime == this.manualStartTime &&
          other.manualCorrection == this.manualCorrection &&
          other.statusId == this.statusId &&
          other.finishId == this.finishId);
}

class StartsCompanion extends UpdateCompanion<StartsData> {
  final Value<int> id;
  final Value<int> stageId;
  final Value<int> participantId;
  final Value<String> startTime;
  final Value<DateTime?> timestamp;
  final Value<int?> timestampCorrection;
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
    this.timestampCorrection = const Value.absent(),
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
    this.timestampCorrection = const Value.absent(),
    this.ntpOffset = const Value.absent(),
    this.automaticStartTime = const Value.absent(),
    this.automaticCorrection = const Value.absent(),
    this.manualStartTime = const Value.absent(),
    this.manualCorrection = const Value.absent(),
    this.statusId = const Value.absent(),
    this.finishId = const Value.absent(),
  }) : stageId = Value(stageId),
       participantId = Value(participantId),
       startTime = Value(startTime);
  static Insertable<StartsData> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<int>? participantId,
    Expression<String>? startTime,
    Expression<DateTime>? timestamp,
    Expression<int>? timestampCorrection,
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
      if (timestampCorrection != null)
        'timestamp_correction': timestampCorrection,
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

  StartsCompanion copyWith({
    Value<int>? id,
    Value<int>? stageId,
    Value<int>? participantId,
    Value<String>? startTime,
    Value<DateTime?>? timestamp,
    Value<int?>? timestampCorrection,
    Value<int?>? ntpOffset,
    Value<String?>? automaticStartTime,
    Value<int?>? automaticCorrection,
    Value<String?>? manualStartTime,
    Value<int?>? manualCorrection,
    Value<int>? statusId,
    Value<int?>? finishId,
  }) {
    return StartsCompanion(
      id: id ?? this.id,
      stageId: stageId ?? this.stageId,
      participantId: participantId ?? this.participantId,
      startTime: startTime ?? this.startTime,
      timestamp: timestamp ?? this.timestamp,
      timestampCorrection: timestampCorrection ?? this.timestampCorrection,
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
    if (timestampCorrection.present) {
      map['timestamp_correction'] = Variable<int>(timestampCorrection.value);
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
          ..write('timestampCorrection: $timestampCorrection, ')
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

class Logs extends Table with TableInfo<Logs, LogsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Logs(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> direction = GeneratedColumn<String>(
    'direction',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  late final GeneratedColumn<String> rawData = GeneratedColumn<String>(
    'raw_data',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    level,
    timestamp,
    source,
    direction,
    rawData,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'logs';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LogsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LogsData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      level:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}level'],
          )!,
      timestamp:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}timestamp'],
          )!,
      source:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}source'],
          )!,
      direction:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}direction'],
          )!,
      rawData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_data'],
      ),
    );
  }

  @override
  Logs createAlias(String alias) {
    return Logs(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class LogsData extends DataClass implements Insertable<LogsData> {
  final int id;
  final String level;
  final DateTime timestamp;
  final String source;
  final String direction;
  final String? rawData;
  const LogsData({
    required this.id,
    required this.level,
    required this.timestamp,
    required this.source,
    required this.direction,
    this.rawData,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['level'] = Variable<String>(level);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['source'] = Variable<String>(source);
    map['direction'] = Variable<String>(direction);
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
      rawData:
          rawData == null && nullToAbsent
              ? const Value.absent()
              : Value(rawData),
    );
  }

  factory LogsData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LogsData(
      id: serializer.fromJson<int>(json['id']),
      level: serializer.fromJson<String>(json['level']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      source: serializer.fromJson<String>(json['source']),
      direction: serializer.fromJson<String>(json['direction']),
      rawData: serializer.fromJson<String?>(json['rawData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'level': serializer.toJson<String>(level),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'source': serializer.toJson<String>(source),
      'direction': serializer.toJson<String>(direction),
      'rawData': serializer.toJson<String?>(rawData),
    };
  }

  LogsData copyWith({
    int? id,
    String? level,
    DateTime? timestamp,
    String? source,
    String? direction,
    Value<String?> rawData = const Value.absent(),
  }) => LogsData(
    id: id ?? this.id,
    level: level ?? this.level,
    timestamp: timestamp ?? this.timestamp,
    source: source ?? this.source,
    direction: direction ?? this.direction,
    rawData: rawData.present ? rawData.value : this.rawData,
  );
  LogsData copyWithCompanion(LogsCompanion data) {
    return LogsData(
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
    return (StringBuffer('LogsData(')
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
      (other is LogsData &&
          other.id == this.id &&
          other.level == this.level &&
          other.timestamp == this.timestamp &&
          other.source == this.source &&
          other.direction == this.direction &&
          other.rawData == this.rawData);
}

class LogsCompanion extends UpdateCompanion<LogsData> {
  final Value<int> id;
  final Value<String> level;
  final Value<DateTime> timestamp;
  final Value<String> source;
  final Value<String> direction;
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
    required String level,
    required DateTime timestamp,
    required String source,
    required String direction,
    this.rawData = const Value.absent(),
  }) : level = Value(level),
       timestamp = Value(timestamp),
       source = Value(source),
       direction = Value(direction);
  static Insertable<LogsData> custom({
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

  LogsCompanion copyWith({
    Value<int>? id,
    Value<String>? level,
    Value<DateTime>? timestamp,
    Value<String>? source,
    Value<String>? direction,
    Value<String?>? rawData,
  }) {
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
      map['level'] = Variable<String>(level.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (direction.present) {
      map['direction'] = Variable<String>(direction.value);
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

class DatabaseAtV2 extends GeneratedDatabase {
  DatabaseAtV2(QueryExecutor e) : super(e);
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
    logs,
  ];
  @override
  int get schemaVersion => 2;
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
