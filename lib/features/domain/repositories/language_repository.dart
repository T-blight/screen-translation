import '../entities/language_entity.dart';

abstract class LanguageRepository {
  Future<List<LanguageEntity>> getAvailableLanguages();

  Future<LanguageEntity> getSourceLanguage();
  Future<LanguageEntity> getTargetLanguage();

  Future<void> setSourceLanguage(LanguageEntity source);
  Future<void> setTargetLanguage(LanguageEntity source);
}
