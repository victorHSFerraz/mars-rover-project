// ignore_for_file: non_constant_identifier_names

import 'package:drift/drift.dart';
import 'package:mars_rover_project/core/database/database.dart';

part 'db_rover_info.g.dart';

class DbRoverInfo extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get landing_date => text().nullable()();
  TextColumn get launch_date => text().nullable()();
  TextColumn get status => text().nullable()();
  IntColumn get max_sol => integer().nullable()();
  TextColumn get max_date => text().nullable()();
  IntColumn get total_photos => integer().nullable()();
}

@DriftAccessor(tables: [DbRoverInfo])
class DbRoverInfoDAO extends DatabaseAccessor<Database> with _$DbRoverInfoDAOMixin {
  DbRoverInfoDAO(Database db) : super(db);

  Future<DbRoverInfoData> getItem() => select(dbRoverInfo).getSingle();
  Future<List<DbRoverInfoData>> getItems() => select(dbRoverInfo).get();
  Future insertItem(DbRoverInfoData data) => into(dbRoverInfo).insert(data);
  Future insertItems(List<DbRoverInfoData> values) async {
    await batch((batch) {
      batch.insertAll(dbRoverInfo, values);
    });
  }

  Future<List<DbRoverInfoData>> getItemsByName(String? name) =>
      (select(dbRoverInfo)..where((data) => data.name.equals(name))).get();

  Future<int> getCount() async {
    final countExp = dbRoverInfo.id.count();
    final query = selectOnly(dbRoverInfo)..addColumns([countExp]);
    final result = await query.map((row) => row.read(countExp)).getSingle();
    return result;
  }

  Future updateItem(DbRoverInfoData data) => update(dbRoverInfo).replace(data);
  Future deleteItem(DbRoverInfoData data) => delete(dbRoverInfo).delete(data);
  Future deteleAll() => delete(dbRoverInfo).go();
}
