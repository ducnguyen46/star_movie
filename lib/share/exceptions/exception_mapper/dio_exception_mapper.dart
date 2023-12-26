import 'package:dio/dio.dart';

import '../exceptions.dart';

class DioExceptionMapper {
  static RemoteException map(Object? exception) {
    if (exception is RemoteException) {
      return exception;
    }
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
          return RemoteException(
            RemoteExceptionType.network,
            rootException: exception,
          );
        case DioExceptionType.cancel:
          return RemoteException(
            RemoteExceptionType.cancellation,
            rootException: exception,
          );
        case DioExceptionType.badResponse:
          if (exception.response?.data != null) {
            final data = exception.response!.data! as Map<String, dynamic>;
            final serverError = ServerError.fromJson(data);
            return RemoteException(
              RemoteExceptionType.serverDefined,
              serverError: serverError,
              rootException: exception,
            );
          }
          return RemoteException(
            RemoteExceptionType.serverUndefined,
            rootException: exception,
          );

        case DioExceptionType.unknown:
        default:
          return RemoteException(
            RemoteExceptionType.unknown,
            rootException: exception,
          );
      }
    }
    return RemoteException(
      RemoteExceptionType.unknown,
      rootException: exception,
    );
  }
}
