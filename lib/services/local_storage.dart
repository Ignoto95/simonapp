import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/session_model.dart';

class LocalStorage {
  static Database? _database;

  static Future<Database> getDatabase() async {
    if (_database != null) return _database!;
    _database = await openDatabase(
      join(await getDatabasesPath(), 'sessioni.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE sessions(id INTEGER PRIMARY KEY, description TEXT, timestamp TEXT)',
        );
      },
      version: 1,
    );
    return _database!;
  }

  static Future<void> saveSession(SessionModel session) async {
    final db = await getDatabase();
    await db.insert('sessions', session.toMap());
  }

  static Future<List<SessionModel>> fetchSessions() async {
    final db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query('sessions');
    return List.generate(maps.length, (i) {
      return SessionModel(
        description: maps[i]['description'],
        timestamp: DateTime.parse(maps[i]['timestamp']),
      );
    });
  }
}
