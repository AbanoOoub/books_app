import 'dart:async';
import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@lazySingleton
class SqlDatabaseService {
  static Database? _database;

  Future<Database?> get database async {
    if (_database == null) {
      _database = await init();
      return _database!;
    } else {
      return _database!;
    }
  }

  static Future<Database> init() async {
    Database myDatabase = await openDatabase('Database.db',
        version: 1, onCreate: _onCreate, onUpgrade: _onUpgrade);
    return myDatabase;
  }

  static Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE Books (
        book_id INTEGER PRIMARY KEY, 
        title TEXT,
        page INTEGER,
        full_json TEXT)
        ''');

    log('------------------ Tables Created ------------------');
  }

  static Future<void> _onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {
      await db.execute('DROP TABLE IF EXISTS Books');
      await _onCreate(db, newVersion);
      log('------------------ Table Updated ------------------');
      log('old table dropped and new one created');
    }
  }

  Future<List<Map>> readFromDatabase(String sql, [List<Object>? args]) async {
    Database? myDatabase = await database;
    var res = await myDatabase!.rawQuery(sql, args);
    return res;
  }

  Future<void> updateInDatabase(String sql) async {
    Database? myDatabase = await database;
    await myDatabase!.rawUpdate(sql);
  }

  Future<void> insertToDatabase(
      {required String sql, List<dynamic>? args}) async {
    Database? myDatabase = await database;
    await myDatabase!.rawInsert(sql, args);
  }

  Future<void> deleteFromDatabase(String sql) async {
    Database? myDatabase = await database;
    await myDatabase!.rawDelete(sql);
  }
}
