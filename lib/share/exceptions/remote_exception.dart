import 'app_exception.dart';
import 'exception_model/server_error.dart';

class RemoteException extends AppException {
  final RemoteExceptionType type;
  final ServerError? serverError;
  final Object? rootException;

  const RemoteException(this.type, {this.serverError, this.rootException})
      : super(AppExceptionType.remote);
}

enum RemoteExceptionType {
  noInternet,

  /// host not found, cannot connect to host
  network,

  /// server has defined response
  /// example: 401, 402,... and has response return
  serverDefined,

  /// server has not defined response
  serverUndefined,
  refreshTokenFailed,
  timeout,
  cancellation,
  unknown,
}
