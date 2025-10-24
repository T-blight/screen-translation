import '../../features/domain/entities/translation_entity.dart';

abstract class TranslationContract{
  late final TranslationEntity translationEntity;

  String get originalText => translationEntity.contentOriginalText;

  String get translatedText => translationEntity.contentTranslatedText;
}