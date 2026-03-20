import '../models/translation/translate_model.dart';

abstract class TranslateDataSource {
  Future<TranslateModel> translate({
    required String text,
    required String source,
    required String target,
  });
}
