import 'dart:async';
import 'package:crm/models/team.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initializeDatabase();
    return _database;
  }

  DatabaseHelper.internal();

  Future<Database> initializeDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'mermezsite_DB.db');

    // Create and open the database
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return database;
  }

  void _onCreate(Database db, int version) async {
    // Create your tables here
    await db.execute('CREATE TABLE team ('
        'id INTEGER PRIMARY KEY,'
        'title TEXT,'
        'email TEXT,'
        'phone REAL'
        ')');
  }

  Future<List<Team>> getTeams() async {
    Database? db = await database;
    List<Map<String, dynamic>> maps = await db!.query('team');
    List<Team> teams = [];
    for (var map in maps) {
      teams.add(Team.fromJson(map));
    }
    return teams;
  }
}
