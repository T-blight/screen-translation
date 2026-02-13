class TranslationModel {
  final String sourceText;
  final String? targetText;
  final String sourceCode;
  final String targetCode;

  TranslationModel({
    required this.sourceText,
    this.targetText,
    required this.sourceCode,
    required this.targetCode,
  });

  factory TranslationModel.fromJson(Map<String, dynamic> json) {
    return TranslationModel(
      sourceText: json['q'],
      targetText: json['translatedText'],
      sourceCode: json['source'],
      targetCode: json['target'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'q': sourceText,
      'targetText': targetText,
      'source': sourceCode,
      'target': targetCode,
    };
  }
}
