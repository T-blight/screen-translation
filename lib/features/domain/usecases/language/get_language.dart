import '../../entities/language_entity.dart';
import '../../repositories/language/language_repository.dart';

class GetLanguage {
  late final LanguageRepository _languageRepository;

  GetLanguage(this._languageRepository);

  Future<LanguageEntity> call(String code) {
    return _languageRepository.getLanguages(code);
  }
}