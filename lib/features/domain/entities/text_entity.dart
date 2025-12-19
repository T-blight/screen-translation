class TextEntity {
  final String id;
  final String textSource;
  final String sourceLanguageCode;
  final String textTarget;
  final String targetLanguageCode;

  const TextEntity({
    required this.id,
    required this.textSource,
    required this.sourceLanguageCode,
    required this.textTarget,
    required this.targetLanguageCode,
  });

  TextEntity copyWith({
    String? textTarget,
    String? targetLanguageCode,
  }) {
    return TextEntity(
      id: id,
      textSource: textSource,
      sourceLanguageCode: sourceLanguageCode,
      textTarget: textTarget ?? this.textTarget,
      targetLanguageCode: targetLanguageCode ?? this.targetLanguageCode,
    );
  }
}
