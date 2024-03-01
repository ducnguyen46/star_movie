import 'package:dartz/dartz.dart';
import 'package:star_movie/share/constants/localization_constant.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

import '../entities/entities.dart';

abstract class Repository {
  /// get app setting: theme, language
  Future<Either<AppException, AppSetting>> getAppSetting();

  Future<Either<AppException, bool>> changeAppTheme(bool isDarkMode);
  Future<Either<AppException, bool>> changeAppLanguage(
      LanguageCode languageCode);

  /// save tmdb image config to local
  Future<Either<AppException, bool>> saveTMDBImageConfig(String imageUrl);

  /// get genres from tmdb and save to local
  Future<Either<AppException, List<Genre>>> getSaveMovieGenresTMDB(
      String language);
  Future<Either<AppException, List<Genre>>> getGenresLocal();

  /// get provider from tmdb and save to local
  Future<Either<AppException, bool>> getSaveProvidersTMDB();

  Future<Either<AppException, bool>> getSaveRegionsTMDB();
  Future<Either<AppException, List<Region>>> getRegionsLocal();

  // get and save language TMDB
  Future<Either<AppException, bool>> getSaveLanguageTMDB();

  /// Check user logged in to app by account or guest
  Future<Either<AppException, bool>> isUserLoggedIn();

  Future<Either<AppException, bool>> isAuthenticatedUser();

  /// get session id from local storage
  Future<Either<AppException, String>> getSessionIdLocal();

  /// get guest session id and save in local
  Future<Either<AppException, AuthenticatedUserData>> loginTMDBGuest();

  /// when delete session id, that mean user logout
  Future<Either<AppException, bool>> logout(String sessionId);

  /// get all infor about authenticated user from storage
  Future<Either<AppException, AuthenticatedUserData>>
      getAuthenticatedUserDataLocal();

  /// create new request token to get session
  Future<Either<AppException, String>> createRequestToken();

  /// get authenticated session id from request token
  Future<Either<AppException, AuthenticatedUserData>>
      getAuthenticatedSessionTMDB(
    String requestToken,
  );

  /// get trending movie
  Future<Either<AppException, List<Movie>>> getTrendingMovies(
    String timeWindow,
    int page,
    String language,
  );

  /// get popular movie
  Future<Either<AppException, List<Movie>>> getPopularMovies(
    int page,
    String language,
    String region,
  );

  /// get upcoming movie
  Future<Either<AppException, List<Movie>>> getUpcomingMovies(
    int page,
    String language,
    String region,
  );

  /// get now playing movie
  Future<Either<AppException, List<Movie>>> getNowPlayingMovies(
    int page,
    String language,
    String region,
  );

  /// get top rate movie
  Future<Either<AppException, List<Movie>>> getTopRateMovies(
    int page,
    String language,
    String region,
  );

  /// get detail movie
  Future<Either<AppException, MovieDetail>> getMovieDetail(String movieId);

  /// get movie images
  Future<Either<AppException, List<MovieImage>>> getMovieImage(
    String movieId,
    String type,
  );

  /// Get account state for movie
  Future<Either<AppException, AccountState>> getAccountStateOfMovie(
      String movieId);

  /// Rating movie
  Future<Either<AppException, CommonResponse>> ratingMovie(
    String movieId,
    double value,
  );

  /// Detele rating movie
  Future<Either<AppException, CommonResponse>> removeRatingMovie(
    String movieId,
  );
}
