import '../../entities/language_entity.dart';
import '../../repositories/language/language_repository.dart';

class GetListLanguageUseCase {
  late final LanguageRepository _languageRepository;

  GetListLanguageUseCase(this._languageRepository);

  Future<List<LanguageEntity>> call() {
    return _languageRepository.getListLanguages();
  }
}