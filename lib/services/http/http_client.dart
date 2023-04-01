import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  Dio dio;

  ApiService(this.dio);

  Future<Response<dynamic>> post(String path,
      {Map<String, dynamic>? data}) async {
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    return await dio.post(path, data: data);
  }


  Future<Response<dynamic>> put(String path,
      {required Map<String, dynamic> data}) async {
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    return await dio.put(path, data: data);
  }

  Future<Response<dynamic>> delete(String path,
      {Map<String, dynamic>? data}) async {
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    return await dio.delete(path, data: data);
  }

  Future<Response<dynamic>> get(String path) async {
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    return await dio.get(path);
  }
}
