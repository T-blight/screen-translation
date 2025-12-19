import 'package:tombozi/features/domain/entities/text_entity.dart';

abstract class TextRepository{
  Future<TextEntity> getTextTranslated(String id);

  Future<List<TextEntity>> getListTranslated();
}