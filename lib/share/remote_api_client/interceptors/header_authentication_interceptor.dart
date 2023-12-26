import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/remote_api_client/interceptors/base_interceptor.dart';

@Injectable()
class HeaderAuthenticationInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.headerAuthenticationPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Get TMDB API key from env file
    final apiKey = dotenv.env['TMDB_API_KEY'];
    options.headers[RemoteConstant.headerAuthorization] = '${RemoteConstant.bearerToken} $apiKey';

    handler.next(options);
  }
}
