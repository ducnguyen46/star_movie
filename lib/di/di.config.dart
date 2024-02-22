// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../data/datasources/data_source.dart' as _i27;
import '../data/datasources/local_data_source.dart' as _i24;
import '../data/datasources/local_data_source_impl.dart' as _i25;
import '../data/datasources/remote_data_source_impl.dart' as _i32;
import '../data/repositories/repository_imp.dart' as _i34;
import '../domain/repositories/repository.dart' as _i33;
import '../domain/use_cases/change_app_language_use_case.dart' as _i35;
import '../domain/use_cases/change_app_theme_use_case.dart' as _i36;
import '../domain/use_cases/check_is_logged_in_use_case.dart' as _i37;
import '../domain/use_cases/create_request_token_use_case.dart' as _i38;
import '../domain/use_cases/get_app_setting_use_case.dart' as _i39;
import '../domain/use_cases/get_authenticated_user_data_use_case.dart' as _i40;
import '../domain/use_cases/get_language_tmdb_use_case.dart' as _i41;
import '../domain/use_cases/get_movie_detail_use_case.dart' as _i42;
import '../domain/use_cases/get_movie_genres_use_case.dart' as _i43;
import '../domain/use_cases/get_movie_images_use_case.dart' as _i44;
import '../domain/use_cases/get_now_playing_movies_use_case.dart' as _i45;
import '../domain/use_cases/get_popular_movies_use_case.dart' as _i46;
import '../domain/use_cases/get_top_rate_movies_use_case.dart' as _i47;
import '../domain/use_cases/get_trending_movies_use_case.dart' as _i48;
import '../domain/use_cases/get_upcoming_movies_use_case.dart' as _i49;
import '../domain/use_cases/login_tmdb_authenticated_use_case.dart' as _i52;
import '../domain/use_cases/login_tmdb_guest_use_case.dart' as _i53;
import '../domain/use_cases/use_cases.dart' as _i51;
import '../share/local_storage/local_storage_service.dart' as _i23;
import '../share/mappers/app_setting_mapper.dart' as _i3;
import '../share/mappers/authenticated_user_mapper.dart' as _i5;
import '../share/mappers/cast_mapper.dart' as _i6;
import '../share/mappers/collection_mapper.dart' as _i7;
import '../share/mappers/company_mapper.dart' as _i8;
import '../share/mappers/credit_mapper.dart' as _i21;
import '../share/mappers/crew_mapper.dart' as _i10;
import '../share/mappers/external_id_mapper.dart' as _i11;
import '../share/mappers/genre_mapper.dart' as _i12;
import '../share/mappers/language_mapper.dart' as _i14;
import '../share/mappers/mappers.dart' as _i22;
import '../share/mappers/movie_detail_mapper.dart' as _i31;
import '../share/mappers/movie_image_mapper.dart' as _i15;
import '../share/mappers/movie_mapper.dart' as _i26;
import '../share/mappers/region_mapper.dart' as _i18;
import '../share/mappers/video_mapper.dart' as _i20;
import '../share/navigator/route_guards/authenticated_guard.dart' as _i4;
import '../share/navigator/route_guards/logged_in_guard.dart' as _i50;
import '../share/remote_api_client/api_client/api_client.dart' as _i29;
import '../share/remote_api_client/api_client/app_rest_api_client.dart' as _i30;
import '../share/remote_api_client/api_client/refresh_session_client.dart'
    as _i16;
import '../share/remote_api_client/interceptors/connectivity_interceptor.dart'
    as _i9;
import '../share/remote_api_client/interceptors/header_authentication_interceptor.dart'
    as _i13;
import '../share/remote_api_client/interceptors/interceptors.dart' as _i17;
import '../share/remote_api_client/interceptors/refresh_session_interceptor.dart'
    as _i28;
import 'register_module.dart' as _i54;

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
    gh.factory<_i3.AppSettingMapper>(() => _i3.AppSettingMapper());
    gh.factory<_i4.AuthenticatedGuard>(() => _i4.AuthenticatedGuard());
    gh.factory<_i5.AuthenticatedUserMapper>(
        () => _i5.AuthenticatedUserMapper());
    gh.factory<_i6.CastMapper>(() => _i6.CastMapper());
    gh.factory<_i7.CollectionMapper>(() => _i7.CollectionMapper());
    gh.factory<_i8.CompanyMapper>(() => _i8.CompanyMapper());
    gh.factory<_i9.ConnectivityInterceptor>(
        () => _i9.ConnectivityInterceptor());
    gh.factory<_i10.CrewMapper>(() => _i10.CrewMapper());
    gh.factory<_i11.ExternalIdMapper>(() => _i11.ExternalIdMapper());
    gh.factory<_i12.GenreMapper>(() => _i12.GenreMapper());
    gh.factory<_i13.HeaderAuthenticationInterceptor>(
        () => _i13.HeaderAuthenticationInterceptor());
    gh.factory<_i14.LanguageMapper>(() => _i14.LanguageMapper());
    gh.factory<_i15.MovieImageMapper>(() => _i15.MovieImageMapper());
    gh.lazySingleton<_i16.RefreshSessionClient>(() => _i16.RefreshSessionClient(
          connectivityInterceptor: gh<_i17.ConnectivityInterceptor>(),
          headerInterceptor: gh<_i17.HeaderAuthenticationInterceptor>(),
        ));
    gh.factory<_i18.RegionMapper>(() => _i18.RegionMapper());
    await gh.factoryAsync<_i19.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i20.VideoMapper>(() => _i20.VideoMapper());
    gh.factory<_i21.CreditMapper>(() => _i21.CreditMapper(
          castMapper: gh<_i22.CastMapper>(),
          crewMapper: gh<_i22.CrewMapper>(),
        ));
    gh.lazySingleton<_i23.LocalStorageService>(
        () => _i23.LocalStorageService(sp: gh<_i19.SharedPreferences>()));
    gh.factory<_i24.LocalDataSource>(() =>
        _i25.LocalDataSourceImpl(service: gh<_i23.LocalStorageService>()));
    gh.factory<_i26.MovieMapper>(() => _i26.MovieMapper(
          gh<_i27.LocalDataSource>(),
          gh<_i22.GenreMapper>(),
        ));
    gh.factory<_i28.RefreshSessionInterceptor>(
        () => _i28.RefreshSessionInterceptor(
              localDataSource: gh<_i27.LocalDataSource>(),
              refreshSessionClient: gh<_i29.RefreshSessionClient>(),
            ));
    gh.lazySingleton<_i30.AppRestApiClient>(() => _i30.AppRestApiClient(
          headerInterceptor: gh<_i17.HeaderAuthenticationInterceptor>(),
          refreshSessionInterceptor: gh<_i17.RefreshSessionInterceptor>(),
          connectivityInterceptor: gh<_i17.ConnectivityInterceptor>(),
        ));
    gh.factory<_i31.MovieDetailMapper>(() => _i31.MovieDetailMapper(
          localDataSource: gh<_i27.LocalDataSource>(),
          genreMapper: gh<_i22.GenreMapper>(),
          collectionMapper: gh<_i22.CollectionMapper>(),
          companyMapper: gh<_i22.CompanyMapper>(),
          movieImageMapper: gh<_i22.MovieImageMapper>(),
          movieMapper: gh<_i22.MovieMapper>(),
          videoMapper: gh<_i22.VideoMapper>(),
          creditMapper: gh<_i22.CreditMapper>(),
          languageMapper: gh<_i14.LanguageMapper>(),
        ));
    gh.factory<_i27.RemoteDataSource>(() =>
        _i32.RemoteDataSourceImpl(apiClient: gh<_i29.AppRestApiClient>()));
    gh.factory<_i33.Repository>(() => _i34.RepositoryImpl(
          localDataSource: gh<_i27.LocalDataSource>(),
          remoteDataSource: gh<_i27.RemoteDataSource>(),
          appSettingMapper: gh<_i22.AppSettingMapper>(),
          authenticatedUserMapper: gh<_i22.AuthenticatedUserMapper>(),
          regionMapper: gh<_i22.RegionMapper>(),
          movieMapper: gh<_i22.MovieMapper>(),
          genreMapper: gh<_i22.GenreMapper>(),
          movieDetailMapper: gh<_i22.MovieDetailMapper>(),
          languageMapper: gh<_i14.LanguageMapper>(),
          movieImageMapper: gh<_i22.MovieImageMapper>(),
        ));
    gh.factory<_i35.ChangeAppLanguageUseCase>(
        () => _i35.ChangeAppLanguageUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i36.ChangeAppThemeUseCase>(
        () => _i36.ChangeAppThemeUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i37.CheckIsLoggedInUseCase>(
        () => _i37.CheckIsLoggedInUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i38.CreateRequestTokenUseCase>(() =>
        _i38.CreateRequestTokenUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i39.GetAppSettingUseCase>(
        () => _i39.GetAppSettingUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i40.GetAuthenticatedUserDataUseCase>(() =>
        _i40.GetAuthenticatedUserDataUseCase(
            repository: gh<_i33.Repository>()));
    gh.factory<_i41.GetLanguageTMDBUseCase>(
        () => _i41.GetLanguageTMDBUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i42.GetMovieDetailUseCase>(
        () => _i42.GetMovieDetailUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i43.GetMovieGenresUseCase>(
        () => _i43.GetMovieGenresUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i44.GetMovieImagesUseCase>(
        () => _i44.GetMovieImagesUseCase(gh<_i33.Repository>()));
    gh.factory<_i45.GetNowPlayingMoviesUseCase>(() =>
        _i45.GetNowPlayingMoviesUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i46.GetPopularMoviesUseCase>(
        () => _i46.GetPopularMoviesUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i47.GetTopRateMoviesUseCase>(
        () => _i47.GetTopRateMoviesUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i48.GetTrendingMoviesUseCase>(
        () => _i48.GetTrendingMoviesUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i49.GetUpcomingMoviesUseCase>(
        () => _i49.GetUpcomingMoviesUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i50.LoggedInGuard>(() => _i50.LoggedInGuard(
        checkIsLoggedInUseCase: gh<_i51.CheckIsLoggedInUseCase>()));
    gh.factory<_i52.LoginTMDBAuthenticatedUseCase>(() =>
        _i52.LoginTMDBAuthenticatedUseCase(repository: gh<_i33.Repository>()));
    gh.factory<_i53.LoginTMDBGuestUseCase>(
        () => _i53.LoginTMDBGuestUseCase(repository: gh<_i33.Repository>()));
    return this;
  }
}

class _$RegisterModule extends _i54.RegisterModule {}
