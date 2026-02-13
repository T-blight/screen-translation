import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient(this.dio);

  Future<Map<String, dynamic>> post(
      String path, {
        Map<String, dynamic>? body,
      }) async {
    final response = await dio.post(path, data: body);
    return response.data;
  }
}
