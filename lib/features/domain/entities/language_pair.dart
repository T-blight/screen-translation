import 'language_entity.dart';

class LanguagePair {
  final LanguageEntity source;
  final LanguageEntity target;

  const LanguagePair({
    required this.source,
    required this.target,
  });

  LanguagePair swap() {
    return LanguagePair(source: target, target: source);
  }
}