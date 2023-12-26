import 'package:injectable/injectable.dart';

import '../interceptors/interceptors.dart';
import 'dio_client.dart';

@LazySingleton()
class AppRestApiClient extends DioClient {
  AppRestApiClient({
    required HeaderAuthenticationInterceptor headerInterceptor,
    required RefreshSessionInterceptor refreshSessionInterceptor,
    required ConnectivityInterceptor connectivityInterceptor,
  }) : super(
          cusInterceptors: [
            headerInterceptor,
            refreshSessionInterceptor,
            connectivityInterceptor,
          ],
        );
}
