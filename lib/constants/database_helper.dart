import 'package:food_app/model/product_model.dart';
import 'package:sqflite/sqflite.dart' as sql;

class DatabaseHelper {
  static Future<void> createTable(sql.Database database) async {
    await database.execute('''
CREATE TABLE IF NOT EXISET product (
id INTGER PRIMARY KEY AUTOINCREMENT,
image TEXT,
titel TEXT,
price FLOAT,
rate FLOAT,
);
''');
  }

  static Future<sql.Database> create() async {
    return sql.openDatabase(
      'fooddb.db',
      version: 1,
      onCreate: (sql.Database db, version) {
        createTable(db);
      },
    );
  }

  static Future<void> insertfood(
      ProductModel productModel, sql.Database database) async {
    final db = await DatabaseHelper.create();
    final data = {
      'image': productModel.image,
      'title': productModel.title,
      'price': productModel.price,
      'rate': productModel.rate,
    };
  }

  static Future<void> getfood() async {}
}
