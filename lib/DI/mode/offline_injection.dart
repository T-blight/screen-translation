import '../../features/data/datasources/local/translate_local_datasource.dart';
import '../../features/data/datasources/translate_data_source.dart';
import '../../features/data/repositories/translation_repository_impl.dart';
import '../../features/domain/repositories/translation/translate_repository.dart';
import '../../features/domain/usecases/translation/translate_text_usecase.dart';
import '../../presentation/bloc/translate/text_trans/text_bloc.dart';
import '../injection.dart';

void initOfflineMode() {
  sl.registerLazySingleton(() => TranslateLocalDataSource());
  sl.registerLazySingleton<TranslateDataSource>(
        () => TranslateLocalDataSource(),
  );
  sl.registerLazySingleton<TranslateRepository>(
        () => TranslateRepositoryImpl(sl()),
  );
  sl.registerLazySingleton(() => TranslateTextUseCase(sl()));

  sl.registerFactory(() => TextBloc(sl()));
}