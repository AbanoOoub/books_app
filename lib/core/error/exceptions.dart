import '../api/status_code.dart';

class ServerException implements Exception {
  final String errorMessage;

  const ServerException(this.errorMessage);

  factory ServerException.fromResponse(
      int statusCode, Map<String, dynamic> response) {
    String? errorMsg;

    switch (statusCode) {
      //400
      case StatusCode.badRequest:
        errorMsg = response['detail'] ?? 'Bad Request';
        return ServerException(errorMsg!);
      //401
      case StatusCode.unauthorized:
        errorMsg = response['detail'] ?? 'You Are Not Allowed!';
        return ServerException(errorMsg!);
      //403
      case StatusCode.forbidden:
        errorMsg = response['detail'] ?? 'Wrong Credentials!';
        return ServerException(errorMsg!);
      //404
      case StatusCode.notFound:
        errorMsg = response['detail'] ?? 'Not found!';
        return ServerException(errorMsg!);
      //409
      case StatusCode.conflict:
        errorMsg = response['detail'] ?? 'Conflict';
        return ServerException(errorMsg!);
      //422
      case StatusCode.unProcessableEntity:
        var errorMsg = response['detail'] ?? 'UnProcessable Entity';
        return ServerException(errorMsg!);
      //500
      case StatusCode.internalServerError:
        var errorMsg = response['detail'] ?? 'Internal Server Error';
        return ServerException(errorMsg!);

      default:
        return const ServerException('Error, Try again!');
    }
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class CacheException implements Exception {
  final String errorMessage;

  const CacheException(this.errorMessage);

  @override
  String toString() {
    return errorMessage;
  }
}
