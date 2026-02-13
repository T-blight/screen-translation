class TextModel {
  final String text;
  final String sourceCode;
  final String targetCode;

  TextModel({
    required this.text,
    required this.sourceCode,
    required this.targetCode,
  });

  factory TextModel.fromJson(Map<String, dynamic> json) {
    return TextModel(
      text: json['q'],
      sourceCode: json['source'],
      targetCode: json['target'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'q': text,
      'source': sourceCode,
      'target': targetCode,
    };
  }
}
