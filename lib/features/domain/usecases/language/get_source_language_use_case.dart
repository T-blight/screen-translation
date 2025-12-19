import '../../entities/language_entity.dart';
import '../../repositories/language_repository.dart';

class GetSourceLanguageUseCase {
  final LanguageRepository _languageRepository;

  GetSourceLanguageUseCase(this._languageRepository);

  Future<LanguageEntity> call() {
    return _languageRepository.getSourceLanguage();
  }
}