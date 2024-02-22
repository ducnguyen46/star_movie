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
}
