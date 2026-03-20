import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tombozi/features/data/models/translation/translate_model.dart';

import '../translate_data_source.dart';
import 'database_helper.dart';


class TranslateLocalDataSource implements TranslateDataSource {
  // final DatabaseHelper dbHelper;
  //
  // TranslateLocalDataSource(this.dbHelper);

  @override
  Future<TranslateModel> translate({
    required String text,
    required String source,
    required String target,
  }) async {

    final translator = OnDeviceTranslator(
      sourceLanguage: BCP47Code.fromRawValue(source)!,
      targetLanguage: BCP47Code.fromRawValue(target)!,
    );

    final result = await translator.translateText(text);
    return TranslateModel(
      text: result,
      source: source,
      target: target,
    );
  }
}
