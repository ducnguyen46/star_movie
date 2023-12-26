import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

import 'base_interceptor.dart';

@Injectable()
class ConnectivityInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final connectResult = await Connectivity().checkConnectivity();
    if (connectResult == ConnectivityResult.none) {
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.connectionError,
          error: const RemoteException(RemoteExceptionType.noInternet),
        ),
      );
    }

    super.onRequest(options, handler);
  }
}
