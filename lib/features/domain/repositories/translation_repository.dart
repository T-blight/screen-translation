import '../entities/translation_entity.dart';

abstract class TranslationRepository {
  Future<TranslationEntity> translate({
    required String sourceText,
    required String sourceCode,
    required String targetCode,
  });

  Future<TranslationEntity> addCharSourceToTarget({
    required String text,
    required String sourceCode,
    required String targetCode,
  });

  Future<void> saveTranslation(TranslationEntity translation);

  Future<TranslationEntity?> getTranslation(String id);

  Future<void> clearTranslation();

  Future<void> markTranslation();

}
