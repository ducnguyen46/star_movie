import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/genres_response.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/share/remote_api_client/api_client/api_client.dart';

import 'data_source.dart';

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  const RemoteDataSourceImpl({required this.apiClient});
  final AppRestApiClient apiClient;

  @override
  Future<SessionResponseModel?> createAuthenticatedUserSession(
      {required String requestToken}) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.post,
        path: '/authentication/session/new',
        data: {
          'request_token': requestToken,
        },
      );

      if (response.data != null) {
        return SessionResponseModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GuestSessionResponseModel?> createGuestUserSession() async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/authentication/guest_session/new',
      );

      if (response.data != null) {
        return GuestSessionResponseModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RequestTokenModel?> createRequestToken() async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/authentication/token/new',
      );

      if (response.data != null) {
        return RequestTokenModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MoviesResponseModel?> getNowPlayingMovies({
    required int page,
    required String language,
    required String region,
  }) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/movie/now_playing',
        queryParameters: {
          'page': page,
          'language': language,
          'region': region,
        },
      );

      if (response.data != null) {
        return MoviesResponseModel.fromJson(response.data);
      }
      return null;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MoviesResponseModel?> getPopularMovies({
    required int page,
    required String language,
    required String region,
  }) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/movie/popular',
        queryParameters: {
          'page': page.toString(),
          'language': language,
          'region': region,
        },
      );

      if (response.data != null) {
        return MoviesResponseModel.fromJson(response.data);
      }
      return null;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MoviesResponseModel?> getTopRateMovies({
    required int page,
    required String language,
    required String region,
  }) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/movie/top_rated',
        queryParameters: {
          'page': page.toString(),
          'language': language,
          'region': region,
        },
      );

      if (response.data != null) {
        return MoviesResponseModel.fromJson(response.data);
      }
      return null;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MoviesResponseModel?> getUpcomingMovies({
    required int page,
    required String language,
    required String region,
  }) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/movie/upcoming',
        queryParameters: {
          'page': page.toString(),
          'language': language,
          'region': region,
        },
      );

      if (response.data != null) {
        return MoviesResponseModel.fromJson(response.data);
      }
      return null;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MoviesResponseModel?> getTrendingMovies({
    required String timeWindow,
    required int page,
    required String language,
  }) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/trending/movie/$timeWindow',
        queryParameters: {
          'page': page.toString(),
          'language': language,
        },
      );

      if (response.data != null) {
        return MoviesResponseModel.fromJson(response.data);
      }
      return null;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<GenreModel>> getMovieGenres({required String language}) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/genre/movie/list',
        queryParameters: {
          'language': language,
        },
      );
      return GenresResponse.fromJson(response.data).genres;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieDetailResponseModel?> getMovieDetail(
      {required String movieId}) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path:
            '/movie/$movieId?language=en&append_to_response=credits,images,keywords,recommendations,similar,videos,external_ids',
      );

      if (response.data == null) {
        return null;
      }

      return MovieDetailResponseModel.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<LanguagesModel?> getLanguages() async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/configuration/languages',
      );

      if (response.data == null) {
        return null;
      }
      return LanguagesModel.fromList(response.data);
    } catch (_) {
      rethrow;
    }
  }
}
