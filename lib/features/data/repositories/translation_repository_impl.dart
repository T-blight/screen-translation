import '../../domain/entities/translate_entity.dart';
import '../../domain/repositories/translation/translate_repository.dart';
import '../datasources/translate_data_source.dart';

class TranslateRepositoryImpl implements TranslateRepository {
  final TranslateDataSource trans;

  TranslateRepositoryImpl(this.trans);

  @override
  Future<TranslateEntity> translate({
    required String text,
    required String source,
    required String target,
  }) async {
    try {
      final result = await trans.translate(
        text: text,
        source: source,
        target: target,
      );
      return result;
    } catch (e) {
      throw Exception('Translate failed : $e');
    }
  }
}
