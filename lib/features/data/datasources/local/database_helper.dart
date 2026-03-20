import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'translate_app.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onConfigure: _onConfigure,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE languages_code (
      code TEXT PRIMARY KEY
      )
      ''');

    await db.execute('''
      CREATE TABLE languages (
      code_by_name TEXT NOT NULL,
      name TEXT NOT NULL,
      code TEXT NOT NULL,
      
      PRIMARY KEY(code_by_name, code),
      
      FOREIGN KEY(code) REFERENCES languages_code(code) ON DELETE CASCADE,
      FOREIGN KEY(code_by_name) REFERENCES languages_code(code) ON DELETE CASCADE
      )
      ''');
    await db.execute('CREATE INDEX idx_languages_code ON languages(code_by_name)');

    await db.execute('''
      CREATE TABLE translations (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      source_text TEXT NOT NULL,
      target_text TEXT NOT NULL,
      source_code TEXT NOT NULL,
      target_code TEXT NOT NULL,
      code_tool_trans TEXT NOT NULL,
      
      FOREIGN KEY(code_tool_trans) REFERENCES translate_tool(code) ON DELETE CASCADE,
      FOREIGN KEY(source_code) REFERENCES languages(code) ON DELETE CASCADE,
      FOREIGN KEY(target_code) REFERENCES languages(code) ON DELETE CASCADE,
      
      UNIQUE(source_text, source_code, target_code)
      )
      ''');

    await db.execute('''
      CREATE TABLE translate_tool (
        code TEXT PRIMARY KEY,
        name TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE translate_tool (
        code TEXT PRIMARY KEY,
        name TEXT
      )
    ''');
  }

  Future<void> _onConfigure(Database db) async {
    await db.execute("PRAGMA foreign_keys = ON");
  }
}
