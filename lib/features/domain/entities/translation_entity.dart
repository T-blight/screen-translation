class TranslationEntity {
  final int id;
  final String sourceText;
  final String translatedText;
  final String sourceLanguageCode;
  final String targetLanguageCode;

  const TranslationEntity({
    required this.id,
    required this.sourceText,
    required this.translatedText,
    required this.sourceLanguageCode,
    required this.targetLanguageCode,
  });
}
