import '../../repositories/language_repository.dart';

class SwitchLanguageDirectionUseCase {
   final LanguageRepository _languageRepository;

   SwitchLanguageDirectionUseCase({
      required LanguageRepository languageRepository,
   }) : _languageRepository = languageRepository;

   Future<void> call() async {
      final source = await _languageRepository.getSourceLanguage();
      final target = await _languageRepository.getTargetLanguage();

      _languageRepository.setSourceLanguage(target);
      _languageRepository.setTargetLanguage(source);
   }
}
