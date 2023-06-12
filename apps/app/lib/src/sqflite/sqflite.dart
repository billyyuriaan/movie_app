import 'package:sqflite/sqflite.dart';

class DatabaseSQL {
  static late Database dbSQL;

  DatabaseSQL._create();

  DatabaseSQL() {
    create();
  }

  static Future<DatabaseSQL> create() async {
    var components = DatabaseSQL._create();

    dbSQL = await openDatabase("database.db", version: 1,
        onCreate: (db, version) async {
      await db.execute(
          "CREATE TABLE user (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, email TEXT, phoneNumber INTEGER, password TEXT)");
    });

    return components;
  }

  static void rawQuery(String q) async {
    await dbSQL.execute(q);
  }
}
