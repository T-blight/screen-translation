import '../../../core/errors/exceptions.dart';
import '../../../core/networks/network_info.dart';
import '../../domain/entities/translation_entity.dart';
import '../../domain/repositories/translation_repository.dart';
import '../datasources/local/translation_local_datasource.dart';
import '../datasources/remote/translation_remote_datasource.dart';
import '../mapper/translation_mapper.dart';

class TranslationRepositoryImpl implements TranslationRepository {
  final TranslationRemoteDataSource remote;
  final TranslationLocalDataSource local;
  final NetworkInfo networkInfo;

  TranslationRepositoryImpl({
    required this.remote,
    required this.local,
    required this.networkInfo,
  });

  @override
  Future<TranslationEntity> translate({
    required String sourceText,
    required String sourceCode,
    required String targetCode,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final model = await remote.translate(
          sourceText: sourceText,
          sourceCode: sourceCode,
          targetCode: targetCode,
        );

        await local.cache(model);

        return TranslationMapper.toEntity(model);
      } catch (e) {
        throw ServerException();
      }
    } else {
      return throw ServerException();
    }
  }


  @override
  Future<void> clearTranslation() {
    // TODO: implement clearTranslation
    throw UnimplementedError();
  }

  @override
  Future<TranslationEntity?> getTranslation(String id) {
    // TODO: implement getTranslation
    throw UnimplementedError();
  }

  @override
  Future<void> markTranslation() {
    // TODO: implement markTranslation
    throw UnimplementedError();
  }

  @override
  Future<void> saveTranslation(TranslationEntity translation) {
    // TODO: implement saveTranslation
    throw UnimplementedError();
  }

  @override
  Future<TranslationEntity> addCharSourceToTarget({required String text, required String sourceCode, required String targetCode}) {
    // TODO: implement addCharSourceToTarget
    throw UnimplementedError();
  }
}
