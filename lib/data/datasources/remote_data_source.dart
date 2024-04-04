import 'package:star_movie/data/models/common_response_model.dart';

import '../models/models.dart';

abstract class RemoteDataSource {
  Future<LanguagesModel?> getLanguages();

  Future<RequestTokenModel?> createRequestToken();

  Future<SessionResponseModel?> createAuthenticatedUserSession({
    required String requestToken,
  });

  Future<GuestSessionResponseModel?> createGuestUserSession();

  Future<List<GenreModel>> getMovieGenres({
    required String language,
  });

  Future<MoviesResponseModel?> getPopularMovies({
    required int page,
    required String language,
    required String region,
  });

  Future<MoviesResponseModel?> getUpcomingMovies({
    required int page,
    required String language,
    required String region,
  });

  Future<MoviesResponseModel?> getNowPlayingMovies({
    required int page,
    required String language,
    required String region,
  });

  Future<MoviesResponseModel?> getTopRateMovies({
    required int page,
    required String language,
    required String region,
  });

  Future<MoviesResponseModel?> getTrendingMovies({
    // path
    required String timeWindow,
    // query
    required int page,
    required String language,
  });

  Future<MovieDetailResponseModel?> getMovieDetail({
    required String movieId,
  });

  Future<MovieImageResponseModel?> getMovieImages({
    required String movieId,
  });

  Future<AccountStateModel?> getAccountStateOfMovie({
    required String movieId,
    required String sessionId,
    required bool isGuest,
  });

  Future<CommonResponseModel?> ratingMovie({
    required String movieId,
    required String sessionId,
    required double value,
    required bool isGuest,
  });

  Future<CommonResponseModel?> removeRatingMovie({
    required String movieId,
    required String sessionId,
    required bool isGuest,
  });

  Future<MoviesResponseModel?> searchMovie({
    required String query,
    required int page,
    required bool includeAdult,
    required String year,
    required String primaryReleaseYear,
  });

  Future<AccountInfoModel?> getAccountInfo({
    required String sessionId,
  });

  Future<bool> deleteSession({
    required String sessionId,
  });
}
