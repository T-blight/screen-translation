import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';

import '../../models/language/language_model.dart';

abstract class LanguageLocalDataSource {
  Future<List<LanguageModel>> getListLanguage({String codeLocale});

}

class LanguageLocalDataSourceImpl implements LanguageLocalDataSource {
  final Database db;
  LanguageLocalDataSourceImpl(this.db);

  @override
  Future<List<LanguageModel>> getListLanguage({String codeLocale = "vi"}) async {
    final result = await db.query(
      'languages',
      where: 'code = ?',
      whereArgs: [codeLocale],
      columns: ['code', 'name'],
    );

    return result
        .map((e) => LanguageModel.fromJson(e))
        .toList();
  }
}
