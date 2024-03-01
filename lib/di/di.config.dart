// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import '../data/datasources/data_source.dart' as _i29;
import '../data/datasources/local_data_source.dart' as _i26;
import '../data/datasources/local_data_source_impl.dart' as _i27;
import '../data/datasources/remote_data_source_impl.dart' as _i34;
import '../data/repositories/repository_imp.dart' as _i36;
import '../domain/repositories/repository.dart' as _i35;
import '../domain/use_cases/change_app_language_use_case.dart' as _i37;
import '../domain/use_cases/change_app_theme_use_case.dart' as _i38;
import '../domain/use_cases/check_is_logged_in_use_case.dart' as _i39;
import '../domain/use_cases/create_request_token_use_case.dart' as _i40;
import '../domain/use_cases/get_app_setting_use_case.dart' as _i41;
import '../domain/use_cases/get_authenticated_user_data_use_case.dart' as _i42;
import '../domain/use_cases/get_language_tmdb_use_case.dart' as _i43;
import '../domain/use_cases/get_movie_detail_use_case.dart' as _i44;
import '../domain/use_cases/get_movie_genres_use_case.dart' as _i45;
import '../domain/use_cases/get_movie_images_use_case.dart' as _i46;
import '../domain/use_cases/get_now_playing_movies_use_case.dart' as _i47;
import '../domain/use_cases/get_popular_movies_use_case.dart' as _i48;
import '../domain/use_cases/get_top_rate_movies_use_case.dart' as _i49;
import '../domain/use_cases/get_trending_movies_use_case.dart' as _i50;
import '../domain/use_cases/get_upcoming_movies_use_case.dart' as _i51;
import '../domain/use_cases/login_tmdb_authenticated_use_case.dart' as _i54;
import '../domain/use_cases/login_tmdb_guest_use_case.dart' as _i55;
import '../domain/use_cases/rating_movie_use_case.dart' as _i56;
import '../domain/use_cases/remove_rating_movie_use_case.dart' as _i57;
import '../domain/use_cases/use_cases.dart' as _i53;
import '../share/local_storage/local_storage_service.dart' as _i25;
import '../share/mappers/account_state_mapper.dart' as _i3;
import '../share/mappers/app_setting_mapper.dart' as _i4;
import '../share/mappers/authenticated_user_mapper.dart' as _i6;
import '../share/mappers/cast_mapper.dart' as _i7;
import '../share/mappers/collection_mapper.dart' as _i8;
import '../share/mappers/common_response_mapper.dart' as _i9;
import '../share/mappers/company_mapper.dart' as _i10;
import '../share/mappers/credit_mapper.dart' as _i23;
import '../share/mappers/crew_mapper.dart' as _i12;
import '../share/mappers/external_id_mapper.dart' as _i13;
import '../share/mappers/genre_mapper.dart' as _i14;
import '../share/mappers/language_mapper.dart' as _i16;
import '../share/mappers/mappers.dart' as _i24;
import '../share/mappers/movie_detail_mapper.dart' as _i33;
import '../share/mappers/movie_image_mapper.dart' as _i17;
import '../share/mappers/movie_mapper.dart' as _i28;
import '../share/mappers/region_mapper.dart' as _i20;
import '../share/mappers/video_mapper.dart' as _i22;
import '../share/navigator/route_guards/authenticated_guard.dart' as _i5;
import '../share/navigator/route_guards/logged_in_guard.dart' as _i52;
import '../share/remote_api_client/api_client/api_client.dart' as _i31;
import '../share/remote_api_client/api_client/app_rest_api_client.dart' as _i32;
import '../share/remote_api_client/api_client/refresh_session_client.dart'
    as _i18;
import '../share/remote_api_client/interceptors/connectivity_interceptor.dart'
    as _i11;
import '../share/remote_api_client/interceptors/header_authentication_interceptor.dart'
    as _i15;
import '../share/remote_api_client/interceptors/interceptors.dart' as _i19;
import '../share/remote_api_client/interceptors/refresh_session_interceptor.dart'
    as _i30;
import 'register_module.dart' as _i58;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AccountStateMapper>(() => _i3.AccountStateMapper());
    gh.factory<_i4.AppSettingMapper>(() => _i4.AppSettingMapper());
    gh.factory<_i5.AuthenticatedGuard>(() => _i5.AuthenticatedGuard());
    gh.factory<_i6.AuthenticatedUserMapper>(
        () => _i6.AuthenticatedUserMapper());
    gh.factory<_i7.CastMapper>(() => _i7.CastMapper());
    gh.factory<_i8.CollectionMapper>(() => _i8.CollectionMapper());
    gh.factory<_i9.CommonResponseMapper>(() => _i9.CommonResponseMapper());
    gh.factory<_i10.CompanyMapper>(() => _i10.CompanyMapper());
    gh.factory<_i11.ConnectivityInterceptor>(
        () => _i11.ConnectivityInterceptor());
    gh.factory<_i12.CrewMapper>(() => _i12.CrewMapper());
    gh.factory<_i13.ExternalIdMapper>(() => _i13.ExternalIdMapper());
    gh.factory<_i14.GenreMapper>(() => _i14.GenreMapper());
    gh.factory<_i15.HeaderAuthenticationInterceptor>(
        () => _i15.HeaderAuthenticationInterceptor());
    gh.factory<_i16.LanguageMapper>(() => _i16.LanguageMapper());
    gh.factory<_i17.MovieImageMapper>(() => _i17.MovieImageMapper());
    gh.lazySingleton<_i18.RefreshSessionClient>(() => _i18.RefreshSessionClient(
          connectivityInterceptor: gh<_i19.ConnectivityInterceptor>(),
          headerInterceptor: gh<_i19.HeaderAuthenticationInterceptor>(),
        ));
    gh.factory<_i20.RegionMapper>(() => _i20.RegionMapper());
    await gh.factoryAsync<_i21.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i22.VideoMapper>(() => _i22.VideoMapper());
    gh.factory<_i23.CreditMapper>(() => _i23.CreditMapper(
          castMapper: gh<_i24.CastMapper>(),
          crewMapper: gh<_i24.CrewMapper>(),
        ));
    gh.lazySingleton<_i25.LocalStorageService>(
        () => _i25.LocalStorageService(sp: gh<_i21.SharedPreferences>()));
    gh.factory<_i26.LocalDataSource>(() =>
        _i27.LocalDataSourceImpl(service: gh<_i25.LocalStorageService>()));
    gh.factory<_i28.MovieMapper>(() => _i28.MovieMapper(
          gh<_i29.LocalDataSource>(),
          gh<_i24.GenreMapper>(),
        ));
    gh.factory<_i30.RefreshSessionInterceptor>(
        () => _i30.RefreshSessionInterceptor(
              localDataSource: gh<_i29.LocalDataSource>(),
              refreshSessionClient: gh<_i31.RefreshSessionClient>(),
            ));
    gh.lazySingleton<_i32.AppRestApiClient>(() => _i32.AppRestApiClient(
          headerInterceptor: gh<_i19.HeaderAuthenticationInterceptor>(),
          refreshSessionInterceptor: gh<_i19.RefreshSessionInterceptor>(),
          connectivityInterceptor: gh<_i19.ConnectivityInterceptor>(),
        ));
    gh.factory<_i33.MovieDetailMapper>(() => _i33.MovieDetailMapper(
          localDataSource: gh<_i29.LocalDataSource>(),
          genreMapper: gh<_i24.GenreMapper>(),
          collectionMapper: gh<_i24.CollectionMapper>(),
          companyMapper: gh<_i24.CompanyMapper>(),
          movieImageMapper: gh<_i24.MovieImageMapper>(),
          movieMapper: gh<_i24.MovieMapper>(),
          videoMapper: gh<_i24.VideoMapper>(),
          creditMapper: gh<_i24.CreditMapper>(),
          languageMapper: gh<_i16.LanguageMapper>(),
        ));
    gh.factory<_i29.RemoteDataSource>(() =>
        _i34.RemoteDataSourceImpl(apiClient: gh<_i31.AppRestApiClient>()));
    gh.factory<_i35.Repository>(() => _i36.RepositoryImpl(
          localDataSource: gh<_i29.LocalDataSource>(),
          remoteDataSource: gh<_i29.RemoteDataSource>(),
          appSettingMapper: gh<_i24.AppSettingMapper>(),
          authenticatedUserMapper: gh<_i24.AuthenticatedUserMapper>(),
          regionMapper: gh<_i24.RegionMapper>(),
          movieMapper: gh<_i24.MovieMapper>(),
          genreMapper: gh<_i24.GenreMapper>(),
          movieDetailMapper: gh<_i24.MovieDetailMapper>(),
          languageMapper: gh<_i16.LanguageMapper>(),
          movieImageMapper: gh<_i24.MovieImageMapper>(),
          commonResponseMapper: gh<_i24.CommonResponseMapper>(),
          accountStateMapper: gh<_i24.AccountStateMapper>(),
        ));
    gh.factory<_i37.ChangeAppLanguageUseCase>(
        () => _i37.ChangeAppLanguageUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i38.ChangeAppThemeUseCase>(
        () => _i38.ChangeAppThemeUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i39.CheckIsLoggedInUseCase>(
        () => _i39.CheckIsLoggedInUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i40.CreateRequestTokenUseCase>(() =>
        _i40.CreateRequestTokenUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i41.GetAppSettingUseCase>(
        () => _i41.GetAppSettingUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i42.GetAuthenticatedUserDataUseCase>(() =>
        _i42.GetAuthenticatedUserDataUseCase(
            repository: gh<_i35.Repository>()));
    gh.factory<_i43.GetLanguageTMDBUseCase>(
        () => _i43.GetLanguageTMDBUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i44.GetMovieDetailUseCase>(
        () => _i44.GetMovieDetailUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i45.GetMovieGenresUseCase>(
        () => _i45.GetMovieGenresUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i46.GetMovieImagesUseCase>(
        () => _i46.GetMovieImagesUseCase(gh<_i35.Repository>()));
    gh.factory<_i47.GetNowPlayingMoviesUseCase>(() =>
        _i47.GetNowPlayingMoviesUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i48.GetPopularMoviesUseCase>(
        () => _i48.GetPopularMoviesUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i49.GetTopRateMoviesUseCase>(
        () => _i49.GetTopRateMoviesUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i50.GetTrendingMoviesUseCase>(
        () => _i50.GetTrendingMoviesUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i51.GetUpcomingMoviesUseCase>(
        () => _i51.GetUpcomingMoviesUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i52.LoggedInGuard>(() => _i52.LoggedInGuard(
        checkIsLoggedInUseCase: gh<_i53.CheckIsLoggedInUseCase>()));
    gh.factory<_i54.LoginTMDBAuthenticatedUseCase>(() =>
        _i54.LoginTMDBAuthenticatedUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i55.LoginTMDBGuestUseCase>(
        () => _i55.LoginTMDBGuestUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i56.RatingMovieUseCase>(
        () => _i56.RatingMovieUseCase(repository: gh<_i35.Repository>()));
    gh.factory<_i57.RemoveRatingMovieUseCase>(
        () => _i57.RemoveRatingMovieUseCase(repository: gh<_i35.Repository>()));
    return this;
  }
}

class _$RegisterModule extends _i58.RegisterModule {}
