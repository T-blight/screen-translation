abstract class LanguageLocalDataSource {
  Future<void> insertLanguage({
    required String name,
    required String code,
  });

  Future<List<Map<String, dynamic>>> getLanguages();

  Future<void> clearLanguages();
}
