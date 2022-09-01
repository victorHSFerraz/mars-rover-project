// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class DbRoverInfoData extends DataClass implements Insertable<DbRoverInfoData> {
  final int? id;
  final String? name;
  final String? landing_date;
  final String? launch_date;
  final String? status;
  final int? max_sol;
  final String? max_date;
  final int? total_photos;
  DbRoverInfoData(
      {this.id,
      this.name,
      this.landing_date,
      this.launch_date,
      this.status,
      this.max_sol,
      this.max_date,
      this.total_photos});
  factory DbRoverInfoData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DbRoverInfoData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      landing_date: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}landing_date']),
      launch_date: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}launch_date']),
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']),
      max_sol: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}max_sol']),
      max_date: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}max_date']),
      total_photos: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_photos']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || landing_date != null) {
      map['landing_date'] = Variable<String?>(landing_date);
    }
    if (!nullToAbsent || launch_date != null) {
      map['launch_date'] = Variable<String?>(launch_date);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String?>(status);
    }
    if (!nullToAbsent || max_sol != null) {
      map['max_sol'] = Variable<int?>(max_sol);
    }
    if (!nullToAbsent || max_date != null) {
      map['max_date'] = Variable<String?>(max_date);
    }
    if (!nullToAbsent || total_photos != null) {
      map['total_photos'] = Variable<int?>(total_photos);
    }
    return map;
  }

  DbRoverInfoCompanion toCompanion(bool nullToAbsent) {
    return DbRoverInfoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      landing_date: landing_date == null && nullToAbsent
          ? const Value.absent()
          : Value(landing_date),
      launch_date: launch_date == null && nullToAbsent
          ? const Value.absent()
          : Value(launch_date),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      max_sol: max_sol == null && nullToAbsent
          ? const Value.absent()
          : Value(max_sol),
      max_date: max_date == null && nullToAbsent
          ? const Value.absent()
          : Value(max_date),
      total_photos: total_photos == null && nullToAbsent
          ? const Value.absent()
          : Value(total_photos),
    );
  }

  factory DbRoverInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbRoverInfoData(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      landing_date: serializer.fromJson<String?>(json['landing_date']),
      launch_date: serializer.fromJson<String?>(json['launch_date']),
      status: serializer.fromJson<String?>(json['status']),
      max_sol: serializer.fromJson<int?>(json['max_sol']),
      max_date: serializer.fromJson<String?>(json['max_date']),
      total_photos: serializer.fromJson<int?>(json['total_photos']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String?>(name),
      'landing_date': serializer.toJson<String?>(landing_date),
      'launch_date': serializer.toJson<String?>(launch_date),
      'status': serializer.toJson<String?>(status),
      'max_sol': serializer.toJson<int?>(max_sol),
      'max_date': serializer.toJson<String?>(max_date),
      'total_photos': serializer.toJson<int?>(total_photos),
    };
  }

  DbRoverInfoData copyWith(
          {int? id,
          String? name,
          String? landing_date,
          String? launch_date,
          String? status,
          int? max_sol,
          String? max_date,
          int? total_photos}) =>
      DbRoverInfoData(
        id: id ?? this.id,
        name: name ?? this.name,
        landing_date: landing_date ?? this.landing_date,
        launch_date: launch_date ?? this.launch_date,
        status: status ?? this.status,
        max_sol: max_sol ?? this.max_sol,
        max_date: max_date ?? this.max_date,
        total_photos: total_photos ?? this.total_photos,
      );
  @override
  String toString() {
    return (StringBuffer('DbRoverInfoData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('landing_date: $landing_date, ')
          ..write('launch_date: $launch_date, ')
          ..write('status: $status, ')
          ..write('max_sol: $max_sol, ')
          ..write('max_date: $max_date, ')
          ..write('total_photos: $total_photos')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, landing_date, launch_date, status,
      max_sol, max_date, total_photos);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbRoverInfoData &&
          other.id == this.id &&
          other.name == this.name &&
          other.landing_date == this.landing_date &&
          other.launch_date == this.launch_date &&
          other.status == this.status &&
          other.max_sol == this.max_sol &&
          other.max_date == this.max_date &&
          other.total_photos == this.total_photos);
}

class DbRoverInfoCompanion extends UpdateCompanion<DbRoverInfoData> {
  final Value<int?> id;
  final Value<String?> name;
  final Value<String?> landing_date;
  final Value<String?> launch_date;
  final Value<String?> status;
  final Value<int?> max_sol;
  final Value<String?> max_date;
  final Value<int?> total_photos;
  const DbRoverInfoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.landing_date = const Value.absent(),
    this.launch_date = const Value.absent(),
    this.status = const Value.absent(),
    this.max_sol = const Value.absent(),
    this.max_date = const Value.absent(),
    this.total_photos = const Value.absent(),
  });
  DbRoverInfoCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.landing_date = const Value.absent(),
    this.launch_date = const Value.absent(),
    this.status = const Value.absent(),
    this.max_sol = const Value.absent(),
    this.max_date = const Value.absent(),
    this.total_photos = const Value.absent(),
  });
  static Insertable<DbRoverInfoData> custom({
    Expression<int?>? id,
    Expression<String?>? name,
    Expression<String?>? landing_date,
    Expression<String?>? launch_date,
    Expression<String?>? status,
    Expression<int?>? max_sol,
    Expression<String?>? max_date,
    Expression<int?>? total_photos,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (landing_date != null) 'landing_date': landing_date,
      if (launch_date != null) 'launch_date': launch_date,
      if (status != null) 'status': status,
      if (max_sol != null) 'max_sol': max_sol,
      if (max_date != null) 'max_date': max_date,
      if (total_photos != null) 'total_photos': total_photos,
    });
  }

  DbRoverInfoCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? name,
      Value<String?>? landing_date,
      Value<String?>? launch_date,
      Value<String?>? status,
      Value<int?>? max_sol,
      Value<String?>? max_date,
      Value<int?>? total_photos}) {
    return DbRoverInfoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      landing_date: landing_date ?? this.landing_date,
      launch_date: launch_date ?? this.launch_date,
      status: status ?? this.status,
      max_sol: max_sol ?? this.max_sol,
      max_date: max_date ?? this.max_date,
      total_photos: total_photos ?? this.total_photos,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (landing_date.present) {
      map['landing_date'] = Variable<String?>(landing_date.value);
    }
    if (launch_date.present) {
      map['launch_date'] = Variable<String?>(launch_date.value);
    }
    if (status.present) {
      map['status'] = Variable<String?>(status.value);
    }
    if (max_sol.present) {
      map['max_sol'] = Variable<int?>(max_sol.value);
    }
    if (max_date.present) {
      map['max_date'] = Variable<String?>(max_date.value);
    }
    if (total_photos.present) {
      map['total_photos'] = Variable<int?>(total_photos.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbRoverInfoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('landing_date: $landing_date, ')
          ..write('launch_date: $launch_date, ')
          ..write('status: $status, ')
          ..write('max_sol: $max_sol, ')
          ..write('max_date: $max_date, ')
          ..write('total_photos: $total_photos')
          ..write(')'))
        .toString();
  }
}

class $DbRoverInfoTable extends DbRoverInfo
    with TableInfo<$DbRoverInfoTable, DbRoverInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbRoverInfoTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _landing_dateMeta =
      const VerificationMeta('landing_date');
  @override
  late final GeneratedColumn<String?> landing_date = GeneratedColumn<String?>(
      'landing_date', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _launch_dateMeta =
      const VerificationMeta('launch_date');
  @override
  late final GeneratedColumn<String?> launch_date = GeneratedColumn<String?>(
      'launch_date', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _max_solMeta = const VerificationMeta('max_sol');
  @override
  late final GeneratedColumn<int?> max_sol = GeneratedColumn<int?>(
      'max_sol', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _max_dateMeta = const VerificationMeta('max_date');
  @override
  late final GeneratedColumn<String?> max_date = GeneratedColumn<String?>(
      'max_date', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _total_photosMeta =
      const VerificationMeta('total_photos');
  @override
  late final GeneratedColumn<int?> total_photos = GeneratedColumn<int?>(
      'total_photos', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        landing_date,
        launch_date,
        status,
        max_sol,
        max_date,
        total_photos
      ];
  @override
  String get aliasedName => _alias ?? 'db_rover_info';
  @override
  String get actualTableName => 'db_rover_info';
  @override
  VerificationContext validateIntegrity(Insertable<DbRoverInfoData> instance,
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
    if (data.containsKey('landing_date')) {
      context.handle(
          _landing_dateMeta,
          landing_date.isAcceptableOrUnknown(
              data['landing_date']!, _landing_dateMeta));
    }
    if (data.containsKey('launch_date')) {
      context.handle(
          _launch_dateMeta,
          launch_date.isAcceptableOrUnknown(
              data['launch_date']!, _launch_dateMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('max_sol')) {
      context.handle(_max_solMeta,
          max_sol.isAcceptableOrUnknown(data['max_sol']!, _max_solMeta));
    }
    if (data.containsKey('max_date')) {
      context.handle(_max_dateMeta,
          max_date.isAcceptableOrUnknown(data['max_date']!, _max_dateMeta));
    }
    if (data.containsKey('total_photos')) {
      context.handle(
          _total_photosMeta,
          total_photos.isAcceptableOrUnknown(
              data['total_photos']!, _total_photosMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbRoverInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DbRoverInfoData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DbRoverInfoTable createAlias(String alias) {
    return $DbRoverInfoTable(attachedDatabase, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $DbRoverInfoTable dbRoverInfo = $DbRoverInfoTable(this);
  late final DbRoverInfoDAO dbRoverInfoDAO = DbRoverInfoDAO(this as Database);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dbRoverInfo];
}
