import 'package:sqflite/sqflite.dart';
import 'package:tombozi/features/data/models/translation/translation_model.dart';

import 'database_helper.dart';

abstract class TranslationLocalDataSource {
  Future<void> saveTranslation({
    required String sourceText,
    required String targetText,
    required String sourceCode,
    required String targetCode,
  });

  Future<List<Map<String, dynamic>>> getTranslations();

  Future<void> cache(TranslationModel model);

  Future getLast() async {}
}


class TranslationLocalDataSourceImpl implements TranslationLocalDataSource {
  final DatabaseHelper dbHelper;

  TranslationLocalDataSourceImpl(this.dbHelper);

  @override
  Future<void> saveTranslation({
    required String sourceText,
    required String targetText,
    required String sourceCode,
    required String targetCode,
  }) async {
    final db = await dbHelper.database;
    await db.insert('translations', {
      'source_text': sourceText,
      'target_text': targetText,
      'source_code': sourceCode,
      'target_code': targetCode,
    });
  }

  @override
  Future<List<Map<String, dynamic>>> getTranslations() async {
    final db = await dbHelper.database;
    return db.query('translations');
  }

  @override
  Future<void> cache(TranslationModel model) async {
    final db = await dbHelper.database;

    await db.insert(
      "tableName",
      model.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future getLast() {
    // TODO: implement getLast
    throw UnimplementedError();
  }
}
