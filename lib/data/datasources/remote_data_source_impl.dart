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

      final movieDetail = MovieDetailResponseModel.fromJson(response.data);
      var editedCast = <CastModel>[];
      var editedCrew = <CrewModel>[];

      /// Add all character of cast to one line
      for (CastModel cast in movieDetail.credit.casts) {
        int indexOfCast = editedCast.indexWhere((e) => e.id == cast.id);
        if (indexOfCast >= 0) {
          var newCast = editedCast[indexOfCast].copyWith(
              character:
                  '${editedCast[indexOfCast].character}, ${cast.character}');
          editedCast.removeAt(indexOfCast);
          editedCast.insert(indexOfCast, newCast);
        } else {
          editedCast.add(cast);
        }
      }

      /// Add all job of crew to one line
      for (CrewModel crew in movieDetail.credit.crews) {
        int indexOfCrew = editedCrew.indexWhere((e) => e.id == crew.id);
        if (indexOfCrew >= 0) {
          var newCrew = editedCrew[indexOfCrew]
              .copyWith(job: '${editedCrew[indexOfCrew].job}, ${crew.job}');
          editedCrew.removeAt(indexOfCrew);
          editedCrew.insert(indexOfCrew, newCrew);
        } else {
          editedCrew.add(crew);
        }
      }

      return movieDetail.copyWith(
        credit: CreditModel(
          casts: editedCast,
          crews: editedCrew,
        ),
      );
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

  @override
  Future<MovieImageResponseModel?> getMovieImages({
    required String movieId,
  }) async {
    try {
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/movie/$movieId/images',
      );

      if (response.data == null) {
        return null;
      }
      return MovieImageResponseModel.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<AccountStateModel?> getAccountStateOfMovie({
    required String movieId,
    required String sessionId,
    required bool isGuest,
  }) async {
    try {
      late Map<String, dynamic> queryParameters;
      if (isGuest) {
        queryParameters = {'guest_session_id': sessionId};
      } else {
        queryParameters = {'session_id': sessionId};
      }
      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/movie/$movieId/account_states',
        queryParameters: queryParameters,
      );

      if (response.data == null) {
        return null;
      }
      return AccountStateModel.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<CommonResponseModel?> ratingMovie({
    required String movieId,
    required String sessionId,
    required double value,
    required bool isGuest,
  }) async {
    try {
      late Map<String, dynamic> queryParameters;
      if (isGuest) {
        queryParameters = {'guest_session_id': sessionId};
      } else {
        queryParameters = {'session_id': sessionId};
      }
      final response = await apiClient.request(
        method: RequestMethod.post,
        path: '/movie/$movieId/rating',
        queryParameters: queryParameters,
        data: {'value': value},
      );
      if (response.data == null) {
        return null;
      }
      return CommonResponseModel.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<CommonResponseModel?> removeRatingMovie({
    required String movieId,
    required String sessionId,
    required bool isGuest,
  }) async {
    try {
      late Map<String, dynamic> queryParameters;
      if (isGuest) {
        queryParameters = {'guest_session_id': sessionId};
      } else {
        queryParameters = {'session_id': sessionId};
      }
      final response = await apiClient.request(
          method: RequestMethod.delete,
          path: '/movie/$movieId/rating',
          queryParameters: queryParameters);
      if (response.data == null) {
        return null;
      }
      return CommonResponseModel.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MoviesResponseModel?> searchMovie({
    required String query,
    required int page,
    required bool includeAdult,
    required String year,
    required String primaryReleaseYear,
  }) async {
    try {
      var queryParameters = {
        'query': query,
        'page': page,
        'include_adult': includeAdult,
        'year': year,
        'primary_release_year': primaryReleaseYear,
      };

      final response = await apiClient.request(
        method: RequestMethod.get,
        path: '/search/movie',
        queryParameters: queryParameters,
      );

      if (response.data != null) {
        return MoviesResponseModel.fromJson(response.data);
      }
      return null;
    } catch (_) {
      rethrow;
    }
  }
}
