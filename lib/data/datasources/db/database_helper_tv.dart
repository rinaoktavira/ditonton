import 'dart:async';
import 'package:ditonton/data/models/tv_table.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelperTelevision {
  static DatabaseHelperTelevision? _databaseHelpertlvs;
  DatabaseHelperTelevision._instance() {
    _databaseHelpertlvs = this;
  }

  factory DatabaseHelperTelevision() =>
      _databaseHelpertlvs ?? DatabaseHelperTelevision._instance();

  static Database? _databasetlvs;

  Future<Database?> get databasetlvs async {
    if (_databasetlvs == null) {
      _databasetlvs = await _initDb();
    }
    return _databasetlvs;
  }

  static const String _tblWatchlistTv = 'watchlisttv';

  Future<Database> _initDb() async {
    final path = await getDatabasesPath();
    final databasePath = '$path/ditontontvs.db';

    var db = await openDatabase(databasePath, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE  $_tblWatchlistTv (
        id INTEGER PRIMARY KEY,
        name TEXT,
        overview TEXT,
        posterPath TEXT
      );
    ''');
  }

  Future<int> insertWatchlistTv(TvTable tv) async {
    final db = await databasetlvs;
    return await db!.insert(_tblWatchlistTv, tv.toJson());
  }

  Future<int> removeWatchlistTv(TvTable tv) async {
    final db = await databasetlvs;
    return await db!.delete(
      _tblWatchlistTv,
      where: 'id = ?',
      whereArgs: [tv.id],
    );
  }

  Future<Map<String, dynamic>?> getTvById(int id) async {
    final db = await databasetlvs;
    final results = await db!.query(
      _tblWatchlistTv,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (results.isNotEmpty) {
      return results.first;
    } else {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> getWatchlistTv() async {
    final db = await databasetlvs;
    final List<Map<String, dynamic>> results = await db!.query(_tblWatchlistTv);

    return results;
  }
}
