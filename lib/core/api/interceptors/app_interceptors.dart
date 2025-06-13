import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../init_main.dart';
import '../../network/netwok_info.dart';

@singleton
class AppInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final isConnected = await getIt<INetworkInfo>().isConnected;

    if (!isConnected) {
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.connectionError,
          error: 'No Internet Connection',
        ),
      );
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
