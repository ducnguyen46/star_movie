import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';
import 'package:star_movie/share/mappers/language_mapper.dart';
import 'package:star_movie/share/mappers/mappers.dart';
import 'package:star_movie/share/utils/utils.dart';

import '../datasources/data_source.dart';
import '../models/models.dart';

@Injectable(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl({
    required LocalDataSource localDataSource,
    required RemoteDataSource remoteDataSource,
    required AppSettingMapper appSettingMapper,
    required AuthenticatedUserMapper authenticatedUserMapper,
    required RegionMapper regionMapper,
    required MovieMapper movieMapper,
    required GenreMapper genreMapper,
    required MovieDetailMapper movieDetailMapper,
    required LanguageMapper languageMapper,
    required MovieImageMapper movieImageMapper,
    required CommonResponseMapper commonResponseMapper,
    required AccountStateMapper accountStateMapper,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _appSettingMapper = appSettingMapper,
        _authenticatedUserMapper = authenticatedUserMapper,
        _regionMapper = regionMapper,
        _movieMapper = movieMapper,
        _genreMapper = genreMapper,
        _languageMapper = languageMapper,
        _movieDetailMapper = movieDetailMapper,
        _movieImageMapper = movieImageMapper,
        _commonResponseMapper = commonResponseMapper,
        _accountStateMapper = accountStateMapper;

  final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;

  // Mapper
  final AppSettingMapper _appSettingMapper;
  final AuthenticatedUserMapper _authenticatedUserMapper;
  final RegionMapper _regionMapper;
  final MovieMapper _movieMapper;
  final GenreMapper _genreMapper;
  final MovieDetailMapper _movieDetailMapper;
  final LanguageMapper _languageMapper;
  final MovieImageMapper _movieImageMapper;
  final CommonResponseMapper _commonResponseMapper;
  final AccountStateMapper _accountStateMapper;

  @override
  Future<Either<AppException, bool>> changeAppLanguage(
      LanguageCode languageCode) async {
    try {
      final oldAppSetting = await _localDataSource.getAppSettingFromStorage();
      final newAppSetting = oldAppSetting.copyWith(
          languageCode: languageCode.language.languageCode);

      await _localDataSource.saveAppSettingToStorage(newAppSetting);
      return const Right(true);
    } on LocalException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, bool>> changeAppTheme(bool isDarkMode) async {
    try {
      final oldAppSetting = await _localDataSource.getAppSettingFromStorage();
      final newAppSetting = oldAppSetting.copyWith(isDarkMode: isDarkMode);

      await _localDataSource.saveAppSettingToStorage(newAppSetting);
      return const Right(true);
    } on LocalException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, AppSetting>> getAppSetting() async {
    try {
      final appSettingModel = await _localDataSource.getAppSettingFromStorage();
      final appSetting = _appSettingMapper.toEntity(appSettingModel);
      return Right(appSetting);
    } on LocalException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, AuthenticatedUserData>>
      getAuthenticatedUserDataLocal() async {
    try {
      final authUserModel =
          _localDataSource.getAuthenticatedUserDataFromStorage();
      if (authUserModel != null) {
        final authUserData = _authenticatedUserMapper.toEntity(authUserModel);
        return Right(authUserData);
      } else {
        return const Right(AuthenticatedUserData());
      }
    } on LocalException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Genre>>> getGenresLocal() {
    // TODO: implement getGenresLocal
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, String>> getGuestSessionIdLocal() async {
    final authDataEither = await getAuthenticatedUserDataLocal();
    return authDataEither.fold(
      (l) => Left(l),
      (r) => Right(r.guestSessionId),
    );
  }

  @override
  Future<Either<AppException, AuthenticatedUserData>> loginTMDBGuest() async {
    try {
      // call api create new guest session
      final guestSessionModel =
          await _remoteDataSource.createGuestUserSession();

      if (guestSessionModel != null) {
        final guestUserData = AuthenticatedUserModel(
          isAuthenticatedUser: false,
          guestSessionId: guestSessionModel.guestSessionId,
          expiresAt: guestSessionModel.expiresAt,
        );
        await _localDataSource
            .saveAuthenticatedUserDataToStorage(guestUserData);

        return Right(_authenticatedUserMapper.toEntity(guestUserData));
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on LocalException catch (e) {
      return Left(e);
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Region>>> getRegionsLocal() {
    // TODO: implement getRegionsLocal
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, List<Genre>>> getSaveMovieGenresTMDB(
      String language) async {
    try {
      final genres = _localDataSource.getGenresModelFromStorage();
      if (genres.isNotEmpty) {
        return Right(_genreMapper.toListEntity(genres));
      } else {
        final genresModel =
            await _remoteDataSource.getMovieGenres(language: language);

        await _localDataSource.saveGenresModelsToStorage(genresModel);
        return Right(_genreMapper.toListEntity(genresModel));
      }
    } on RemoteException catch (e) {
      final genres = _localDataSource.getGenresModelFromStorage();
      if (genres.isNotEmpty) {
        return Right(_genreMapper.toListEntity(genres));
      }
      return Left(e);
    } on LocalException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, bool>> getSaveLanguageTMDB() async {
    try {
      final languages = _localDataSource.getLanguageModelFromStorage();
      if (languages.isNotEmpty) {
        return const Right(true);
      } else {
        final languagesModel = await _remoteDataSource.getLanguages();

        await _localDataSource.saveLanguagesModelToStorage(
            languagesModel?.languages ?? <LanguageModel>[]);
        return const Right(true);
      }
    } on RemoteException catch (e) {
      final genres = _localDataSource.getGenresModelFromStorage();
      if (genres.isNotEmpty) {
        return const Right(true);
      }
      return Left(e);
    } on LocalException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, bool>> getSaveProvidersTMDB() {
    // TODO: implement getSaveProvidersTMDB
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, bool>> getSaveRegionsTMDB() {
    // TODO: implement getSaveRegionsTMDB
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, String>> getSessionIdLocal() async {
    final authenDataEither = await getAuthenticatedUserDataLocal();
    return authenDataEither.fold(
      (l) => Left(l),
      (r) => Right(r.sessionId),
    );
  }

  @override
  Future<Either<AppException, bool>> isAuthenticatedUser() async {
    final authDataEither = await getAuthenticatedUserDataLocal();
    return authDataEither.fold(
      (l) => Left(l),
      (r) => Right(r.isAuthenticatedUser),
    );
  }

  @override
  Future<Either<AppException, bool>> isUserLoggedIn() async {
    final authenDataEither = await getAuthenticatedUserDataLocal();
    return authenDataEither.fold((l) => Left(l), (r) {
      // If user login (both as guest or account),
      // guestSessionId or sessionId is not empty
      final isLoggedIn = r.sessionId.isNotEmpty || r.guestSessionId.isNotEmpty;
      return Right(isLoggedIn);
    });
  }

  @override
  Future<Either<AppException, bool>> logout(String sessionId) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, bool>> saveTMDBImageConfig(String imageUrl) {
    // TODO: implement saveTMDBImageConfig
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, String>> createRequestToken() async {
    try {
      final requestTokenModel = await _remoteDataSource.createRequestToken();
      if (requestTokenModel != null) {
        return Right(requestTokenModel.requestToken);
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, AuthenticatedUserData>>
      getAuthenticatedSessionTMDB(String requestToken) async {
    try {
      final sessionIdModel = await _remoteDataSource
          .createAuthenticatedUserSession(requestToken: requestToken);
      if (sessionIdModel != null) {
        final authUserModel = AuthenticatedUserModel(
          isAuthenticatedUser: true,
          sessionId: sessionIdModel.sessionId,
        );
        await _localDataSource
            .saveAuthenticatedUserDataToStorage(authUserModel);

        final authUserData = _authenticatedUserMapper.toEntity(authUserModel);
        return Right(authUserData);
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    } on LocalException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Movie>>> getNowPlayingMovies(
    int page,
    String language,
    String region,
  ) async {
    try {
      final moviesResponseModel = await _remoteDataSource.getNowPlayingMovies(
        page: page,
        language: language,
        region: region,
      );
      if (moviesResponseModel != null) {
        return Right(
          _movieMapper.toListEntity(moviesResponseModel.movies),
        );
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Movie>>> getTopRateMovies(
    int page,
    String language,
    String region,
  ) async {
    try {
      final moviesResponseModel = await _remoteDataSource.getTopRateMovies(
        page: page,
        language: language,
        region: region,
      );
      if (moviesResponseModel != null) {
        return Right(
          _movieMapper.toListEntity(moviesResponseModel.movies),
        );
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Movie>>> getTrendingMovies(
    String timeWindow,
    int page,
    String language,
  ) async {
    try {
      final moviesResponseModel = await _remoteDataSource.getTrendingMovies(
        page: page,
        language: language,
        timeWindow: timeWindow,
      );
      if (moviesResponseModel != null) {
        return Right(
          _movieMapper.toListEntity(moviesResponseModel.movies),
        );
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Movie>>> getUpcomingMovies(
    int page,
    String language,
    String region,
  ) async {
    try {
      final moviesResponseModel = await _remoteDataSource.getUpcomingMovies(
        page: page,
        language: language,
        region: region,
      );
      if (moviesResponseModel != null) {
        return Right(
          _movieMapper.toListEntity(moviesResponseModel.movies),
        );
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Movie>>> getPopularMovies(
    int page,
    String language,
    String region,
  ) async {
    // return const Left(RemoteException(RemoteExceptionType.unknown));
    try {
      final moviesResponseModel = await _remoteDataSource.getPopularMovies(
        page: page,
        language: language,
        region: region,
      );
      if (moviesResponseModel != null) {
        return Right(
          _movieMapper.toListEntity(moviesResponseModel.movies),
        );
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, MovieDetail>> getMovieDetail(
    String movieId,
  ) async {
    try {
      final movieDetailModel =
          await _remoteDataSource.getMovieDetail(movieId: movieId);
      if (movieDetailModel == null) {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
      final movieDetail = _movieDetailMapper.toEntity(movieDetailModel);

      final accountStateEi = await getAccountStateOfMovie(movieId);
      return accountStateEi.fold((e) => Left(e), (accountState) {
        return Right(movieDetail.copyWith(
            rate: accountState.rated is bool
                ? AppConstants.defaultMovieRate
                : (accountState.rated as Map<String, dynamic>)['value'],
            isFavorite: accountState.isFavorite,
            isWatchList: accountState.isWatchlist));
      });
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<MovieImage>>> getMovieImage(
    String movieId,
    String type,
  ) async {
    try {
      final movieImagesModel =
          await _remoteDataSource.getMovieImages(movieId: movieId);
      if (movieImagesModel == null) {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }

      if (type.isNotEmpty && type == AppConstants.backdrops) {
        return Right(
            _movieImageMapper.toListEntity(movieImagesModel.backdrops));
      } else {
        return Right(_movieImageMapper.toListEntity(movieImagesModel.posters));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, CommonResponse>> ratingMovie(
    String movieId,
    double value,
  ) async {
    try {
      final authUserDataEi = await getAuthenticatedUserDataLocal();
      return authUserDataEi.fold((e) {
        return Left(e);
      }, (user) async {
        if (user.guestSessionId.isNotEmpty || user.sessionId.isNotEmpty) {
          final model = await _remoteDataSource.ratingMovie(
            movieId: movieId,
            sessionId: user.sessionId.isNotEmpty
                ? user.sessionId
                : user.guestSessionId,
            value: value,
            isGuest: !user.isAuthenticatedUser,
          );
          if (model == null) {
            return const Left(
              RemoteException(
                RemoteExceptionType.unknown,
              ),
            );
          }
          return Right(_commonResponseMapper.toEntity(model));
        } else {
          return const Left(LocalException(LocalExceptionType.get));
        }
      });
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, CommonResponse>> removeRatingMovie(
    String movieId,
  ) async {
    try {
      final authUserDataEi = await getAuthenticatedUserDataLocal();

      return authUserDataEi.fold((e) => Left(e), (user) async {
        if (user.guestSessionId.isNotEmpty || user.sessionId.isNotEmpty) {
          final model = await _remoteDataSource.removeRatingMovie(
            movieId: movieId,
            sessionId: user.sessionId.isNotEmpty
                ? user.sessionId
                : user.guestSessionId,
            isGuest: !user.isAuthenticatedUser,
          );
          if (model == null) {
            return const Left(
              RemoteException(
                RemoteExceptionType.unknown,
              ),
            );
          }
          return Right(_commonResponseMapper.toEntity(model));
        } else {
          return const Left(LocalException(LocalExceptionType.get));
        }
      });
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, AccountState>> getAccountStateOfMovie(
      String movieId) async {
    try {
      final authUserDataEi = await getAuthenticatedUserDataLocal();
      return authUserDataEi.fold((e) => Left(e), (user) async {
        if (user.guestSessionId.isNotEmpty || user.sessionId.isNotEmpty) {
          final model = await _remoteDataSource.getAccountStateOfMovie(
            movieId: movieId,
            sessionId: user.sessionId.isNotEmpty
                ? user.sessionId
                : user.guestSessionId,
            isGuest: !user.isAuthenticatedUser,
          );
          if (model == null) {
            return const Left(
              RemoteException(
                RemoteExceptionType.unknown,
              ),
            );
          }
          return Right(_accountStateMapper.toEntity(model));
        } else {
          return const Left(LocalException(LocalExceptionType.get));
        }
      });
    } on RemoteException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<Movie>>> searchMovie(
    String query,
    int page,
    bool includeAdult,
    String year,
    String primaryReleaseYear,
  ) async {
    try {
      final moviesResponseModel = await _remoteDataSource.searchMovie(
        query: query,
        page: page,
        includeAdult: includeAdult,
        year: year,
        primaryReleaseYear: primaryReleaseYear,
      );
      if (moviesResponseModel != null) {
        return Right(
          _movieMapper.toListEntity(moviesResponseModel.movies),
        );
      } else {
        return const Left(RemoteException(RemoteExceptionType.unknown));
      }
    } on RemoteException catch (e) {
      return Left(e);
    }
  }
}
