import 'package:tombozi/features/data/models/translation/translation_model.dart';
import 'package:tombozi/features/domain/entities/translation_entity.dart';

class TranslationMapper {
  static TranslationEntity toEntity(TranslationModel model) {
    return TranslationEntity(
      sourceText: model.sourceText,
      targetText: model.targetText?? '',
      sourceCode: model.sourceCode,
      targetCode: model.targetCode,
    );
  }
}
