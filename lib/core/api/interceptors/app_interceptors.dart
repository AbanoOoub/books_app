import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../init_main.dart';
import '../../network/netwok_info.dart';

@singleton
class AppInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
