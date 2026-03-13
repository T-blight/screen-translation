import 'package:tombozi/features/data/models/language/language_model.dart';
import '../../domain/repositories/language/language_repository.dart';
import '../datasources/local/language_local_datasource.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  final LanguageLocalDataSource localDataSource;

  LanguageRepositoryImpl(this.localDataSource);

  @override
  Future<List<LanguageModel>> getListLanguages({String? codeLocale}) async {
    return await localDataSource.getListLanguage(
      codeLocale: codeLocale ?? "vi",
    );
  }
}