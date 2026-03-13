import 'package:tombozi/features/domain/entities/language_entity.dart';

abstract class LanguageRepository{
  Future<List<LanguageEntity>> getListLanguages({String? codeLocale});
}
