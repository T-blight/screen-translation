import 'package:dio/dio.dart';
import '../../models/translation/translate_model.dart';import '../translate_data_source.dart';

class TranslateRemoteDataSourceImpl implements TranslateDataSource {
  final Dio dio;

  TranslateRemoteDataSourceImpl(this.dio);

  @override
  Future<TranslateModel> translate({
    required String text,
    required String source,
    required String target,
  }) async {
    final response = await dio.post(
      '/translate',
      data: {
        "text": text,
        "source": source,
        "target": target,
      },
    );

    return TranslateModel.fromJson(response.data);
  }
}