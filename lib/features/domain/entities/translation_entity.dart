import 'package:tombozi/features/domain/entities/text_entity.dart';

class TranslationEntity {
  final TextEntity _originalText;
  final TextEntity _translatedText;

  TranslationEntity(this._originalText, this._translatedText);

  String get contentOriginalText => _originalText.textTrans;
  String get contentTranslatedText => _translatedText.textTrans;


}