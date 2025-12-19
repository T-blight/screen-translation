import '../entities/translation_entity.dart';

abstract class TranslationRepository {
  Future<TranslationEntity> translate({
    required String text,
    required String sourceLanguageCode,
    required String targetLanguageCode,
  });

  Future<TranslationEntity> addCharSourceToTarget({
    required String text,
    required String sourceLanguageCode,
    required String targetLanguageCode,
  });

  Future<void> saveTranslation(TranslationEntity translation);

  Future<TranslationEntity?> getTranslation(String id);

  Future<void> clearTranslation();

  Future<void> markTranslation();

}
