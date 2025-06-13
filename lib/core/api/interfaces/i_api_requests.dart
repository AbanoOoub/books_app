abstract class IApiRequests {
  Future<dynamic> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> post({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> put({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> patch({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> delete({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> postFormData({
    required String endpoint,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> putFormData({
    required String endpoint,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> patchFormData({
    required String endpoint,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  });
}
