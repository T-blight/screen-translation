import '../../entities/translation_entity.dart';
import '../../repositories/language_repository.dart';
import '../../repositories/translation_repository.dart';

class TranslateTextUseCase {
  final TranslationRepository _translationRepository;
  final LanguageRepository _languageRepository;

  TranslateTextUseCase(
      this._translationRepository,
      this._languageRepository,
      );

  Future<TranslationEntity> call(String text) async {
    if (text.trim().isEmpty) {
      throw Exception('not send');
    }

    final sourceLanguage =
    await _languageRepository.getSourceLanguage();
    final targetLanguage =
    await _languageRepository.getTargetLanguage();

    final translation =
    await _translationRepository.translate(
      text: text,
      sourceLanguageCode: sourceLanguage.code,
      targetLanguageCode: targetLanguage.code,
    );

    await _translationRepository.saveTranslation(translation);

    return translation;
  }
}
