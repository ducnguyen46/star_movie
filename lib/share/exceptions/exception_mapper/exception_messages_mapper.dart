import '../../constants/constants.dart';
import '../exceptions.dart';

class ExceptionMessagesMapper {
  static String map(AppException appException) {
    switch (appException.appExceptionType) {
      case AppExceptionType.remote:
        final remoteException = appException as RemoteException;
        switch (remoteException.type) {
          case RemoteExceptionType.noInternet:
            return ExceptionMessagesConstant.noInternet;

          case RemoteExceptionType.network:
          case RemoteExceptionType.timeout:
          case RemoteExceptionType.cancellation:
            return ExceptionMessagesConstant.network;

          case RemoteExceptionType.serverDefined:
            return remoteException.serverError?.statusMessage ??
                ExceptionMessagesConstant.server;

          case RemoteExceptionType.serverUndefined:
            return ExceptionMessagesConstant.server;

          case RemoteExceptionType.refreshTokenFailed:
            return ExceptionMessagesConstant.refreshToken;

          case RemoteExceptionType.unknown:
            return ExceptionMessagesConstant.unknown;
        }
      case AppExceptionType.parse:
        return ExceptionMessagesConstant.unknown;

      case AppExceptionType.unknown:
        return ExceptionMessagesConstant.unknown;

      case AppExceptionType.validation:
        // final validationException = appException as ValidationException;
        // switch (validationException.type) {
        //   case ValidationExceptionType.invalidNumber:
        //     return ExceptionMessagesConstant.invalidNumber;
        //   case ValidationExceptionType.negativeNumber:
        //     return ExceptionMessagesConstant.negativeNumber;
        // }
        return ExceptionMessagesConstant.unknown;

      case AppExceptionType.local:
        final localException = appException as LocalException;
        switch (localException.type) {
          case LocalExceptionType.save:
            return ExceptionMessagesConstant.saveCache;

          case LocalExceptionType.get:
            return ExceptionMessagesConstant.getCache;
        }
    }
  }
}