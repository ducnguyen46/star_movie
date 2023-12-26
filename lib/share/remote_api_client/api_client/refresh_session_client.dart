import 'package:injectable/injectable.dart';

import '../interceptors/interceptors.dart';
import 'dio_client.dart';

@LazySingleton()
class RefreshSessionClient extends DioClient {
  RefreshSessionClient({
    required ConnectivityInterceptor connectivityInterceptor,
    required HeaderAuthenticationInterceptor headerInterceptor,
  }) : super(
          cusInterceptors: [
            connectivityInterceptor,
            headerInterceptor,
          ],
        );
}
