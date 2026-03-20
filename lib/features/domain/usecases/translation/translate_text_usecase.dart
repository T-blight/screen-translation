import '../../entities/translate_entity.dart';
import '../../repositories/translation/translate_repository.dart';

class TranslateTextUseCase {
  late final TranslateRepository repository;

  TranslateTextUseCase(this.repository);

  Future<TranslateEntity> call({
    required String text,
    required String source,
    required String target,
  }) async {
    return repository.translate(
      text: text,
      source: source,
      target: target,
    );
  }
}