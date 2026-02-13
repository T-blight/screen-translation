import 'package:tombozi/features/data/models/translation/translation_model.dart';
import 'api_client.dart';
import 'api_endpoints.dart';

abstract class TranslationRemoteDataSource {
  Future<TranslationModel> translate({
    required String sourceText,
    required String sourceCode,
    required String targetCode,
  });
}

class TranslationRemoteDataSourceImpl
    implements TranslationRemoteDataSource {
  final ApiClient client;

  TranslationRemoteDataSourceImpl(this.client);

  @override
  Future<TranslationModel> translate({
    required String sourceText,
    required String sourceCode,
    required String targetCode,
  }) async {
    final response = await client.post(
      ApiEndpoints.translate,
      body: {
        "q": sourceText,
        "sourceCode": sourceCode,
        "targetCode": targetCode,
      },
    );
    return TranslationModel.fromJson(response);
  }
}
