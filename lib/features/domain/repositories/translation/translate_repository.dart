import '../../entities/translate_entity.dart';

abstract class TranslateRepository {
  Future<TranslateEntity> translate({
    required String text,
    required String source,
    required String target,
  });
}