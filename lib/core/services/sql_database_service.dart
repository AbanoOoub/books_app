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
    await db.execute(
        'CREATE TABLE ExchangeHistory (id INTEGER PRIMARY KEY, base TEXT, date TEXT)');
    log('------------------ Table Created ------------------');
  }

  static Future<void> _onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {
      await db.execute('DROP TABLE IF EXISTS ExchangeHistory');
      await _onCreate(db, newVersion);
      log('------------------ Table Updated ------------------');
      log('old table dropped and new one created');
    }
  }

  Future<List<Map>> readFromDatabase(String sql) async {
    Database? myDatabase = await database;
    var res = await myDatabase!.rawQuery(sql);
    return res;
  }

  void updateInDatabase(String sql) async {
    Database? myDatabase = await database;
    await myDatabase!.rawUpdate(sql);
  }

  void insertToDatabase({required String sql, List<dynamic>? args}) async {
    Database? myDatabase = await database;
    await myDatabase!.rawInsert(sql, args);
  }

  void deleteFromDatabase(String sql) async {
    Database? myDatabase = await database;
    await myDatabase!.rawDelete(sql);
  }
}
