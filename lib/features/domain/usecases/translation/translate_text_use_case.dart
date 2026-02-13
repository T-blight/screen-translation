import '../../entities/translation_entity.dart';
import '../../repositories/translation_repository.dart';

class TranslateTextUseCase {
  final TranslationRepository _translationRepository;

  TranslateTextUseCase(
    this._translationRepository,
  );

  Future<TranslationEntity> call(TranslationEntity source) async {
    final translation = source;
    await _translationRepository.saveTranslation(translation);
    return translation;
  }
}
