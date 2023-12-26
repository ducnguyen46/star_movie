import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/data/datasources/data_source.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/remote_api_client/api_client/api_client.dart';
import 'package:star_movie/share/remote_api_client/interceptors/base_interceptor.dart';
import 'package:star_movie/share/utils/date_time_util.dart';

@Injectable()
class RefreshSessionInterceptor extends BaseInterceptor {
  RefreshSessionInterceptor({
    required this.localDataSource,
    required this.refreshSessionClient,
  });
  final LocalDataSource localDataSource;
  final RefreshSessionClient refreshSessionClient;

  @override
  int get priority => BaseInterceptor.refreshSessionPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Check if request has guest_session_id
    final sessionIdQuery = options.queryParameters[RemoteConstant.guestSessionId];
    if (sessionIdQuery != null) {
      /// Check if request has guest_session_id (guest user)
      /// If expired time is end, request new session
      // Get and check authentication data
      final authUserData = localDataSource.getAuthenticatedUserDataFromStorage();
      if (authUserData != null) {
        // If expiresTime is expired
        if (_isSessionExpired(authUserData.expiresAt)) {
          try {
            // Call interface to get new guest session
            final response = await refreshSessionClient.request(
              method: RequestMethod.get,
              path: '/authentication/guest_session/new',
            );

            final guestSessionData = GuestSessionResponseModel.fromJson(response.data);
            // Set new session_id for guest user
            options.queryParameters[RemoteConstant.guestSessionId] = guestSessionData.guestSessionId;
            // Save new guest_session_id and expires time
            final newAuthUserData = authUserData.copyWith(
              guestSessionId: guestSessionData.guestSessionId,
              expiresAt: guestSessionData.expiresAt,
            );
            await localDataSource.saveAuthenticatedUserDataToStorage(newAuthUserData);
          } catch (e) {
            handler.reject(
              DioException(requestOptions: options, error: e),
            );
          }
        }
      }
    }

    handler.next(options);
  }

  bool _isSessionExpired(String expiresAt) {
    // Because tmdb time is UTC time, so need transfer local time to UTC time
    DateTime timeNowUtc = DateTime.now().toUtc();
    DateTime expiresTime = DateTimeUtil.tmdbToDateTime(expiresAt);
    return expiresTime.isBefore(timeNowUtc);
  }
}
