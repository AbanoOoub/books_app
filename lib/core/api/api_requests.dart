import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../init_main.dart';
import '../constants/end_points.dart';
import '../error/exceptions.dart';
import '../helpers/pretty_logs.dart';
import 'interfaces/i_api_requests.dart';
import 'interceptors/app_interceptors.dart';

@Injectable(as: IApiRequests)
class ApiRequests implements IApiRequests {
  late Dio dio;

  ApiRequests() {
    dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        responseType: ResponseType.json,
        followRedirects: true,
        contentType: Headers.jsonContentType,
      ),
    );

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final HttpClient client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    dio.interceptors.add(getIt<AppInterceptors>());
    if (kDebugMode) {
      dio.interceptors.add(getIt<PrettyLogs>());
    }
  }

  @override
  Future<dynamic> get(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.get(endpoint, queryParameters: queryParameters);
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  @override
  Future<dynamic> post(
      {required String endpoint,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.post(endpoint,
          queryParameters: queryParameters, data: body);
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  @override
  Future<dynamic> put(
      {required String endpoint,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.put(endpoint, queryParameters: queryParameters, data: body);
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  @override
  Future<dynamic> patch(
      {required String endpoint,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.patch(endpoint,
          queryParameters: queryParameters, data: body);
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  @override
  Future<dynamic> delete({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.delete(endpoint,
          queryParameters: queryParameters, data: body);
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  @override
  Future<dynamic> patchFormData(
      {required String endpoint,
      required Map<String, dynamic> body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.patch(endpoint,
          queryParameters: queryParameters, data: FormData.fromMap(body));
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  @override
  Future<dynamic> postFormData(
      {required String endpoint,
      required Map<String, dynamic> body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.post(endpoint,
          queryParameters: queryParameters, data: FormData.fromMap(body));
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  @override
  Future<dynamic> putFormData(
      {required String endpoint,
      required Map<String, dynamic> body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.put(endpoint,
          queryParameters: queryParameters, data: FormData.fromMap(body));
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleDioException(error);
    }
  }

  ServerException _handleDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        throw const ServerException('Connection Timeout');
      case DioExceptionType.sendTimeout:
        throw const ServerException('Send Timeout');
      case DioExceptionType.receiveTimeout:
        throw const ServerException('Receive Timeout');
      case DioExceptionType.badCertificate:
        throw const ServerException('Bad Certificate');
      case DioExceptionType.badResponse:
        throw ServerException.fromResponse(
            error.response!.statusCode!, error.response!.data);
      case DioExceptionType.cancel:
        throw const ServerException('Request Canceled');
      case DioExceptionType.connectionError:
        throw const ServerException('Connection Error');
      case DioExceptionType.unknown:
        throw const ServerException('There was an error, Try again!');
    }
  }

  dynamic _handleResponse(Response response) {
    // log("Response: ${response.data}");
    return response.data;
    // if (response.data['success'] == false) {
    //   final error = response.data['error'];
    //   throw ServerException(
    //       '${error['type'] ?? "Something went wrong, Try again!"}');
    // } else {
    //   return response.data;
    // }
  }
}
