import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

part 'list_home_movies_state.dart';
part 'list_home_movies_cubit.freezed.dart';

enum ListMovieType { trending, popular, upcoming, nowPlaying, topRate }

class ListHomeMoviesCubit extends Cubit<ListHomeMoviesState> {
  ListHomeMoviesCubit({
    required String movieType,
    required GetTrendingMoviesUseCase trendingMoviesUseCase,
    required GetPopularMoviesUseCase popularMoviesUseCase,
    required GetUpcomingMoviesUseCase upcomingMoviesUseCase,
    required GetNowPlayingMoviesUseCase nowPlayingMoviesUseCase,
    required GetTopRateMoviesUseCase topRateMoviesUseCase,
  })  : _movieType = _convertMovieType(movieType),
        _trendingMoviesUseCase = trendingMoviesUseCase,
        _popularMoviesUseCase = popularMoviesUseCase,
        _upcomingMoviesUseCase = upcomingMoviesUseCase,
        _nowPlayingMoviesUseCase = nowPlayingMoviesUseCase,
        _topRateMoviesUseCase = topRateMoviesUseCase,
        super(const ListHomeMoviesState.initial());

  final ListMovieType _movieType;
  final GetTrendingMoviesUseCase _trendingMoviesUseCase;
  final GetPopularMoviesUseCase _popularMoviesUseCase;
  final GetUpcomingMoviesUseCase _upcomingMoviesUseCase;
  final GetNowPlayingMoviesUseCase _nowPlayingMoviesUseCase;
  final GetTopRateMoviesUseCase _topRateMoviesUseCase;

  void loadingMovieInitial() async {
    emit(state.copyWith(
      status: ListHomeMoviesStatus.loading,
    ));

    switch (_movieType) {
      case ListMovieType.trending:
        final trendingMoviesEither = await _trendingMoviesUseCase.call(
          GetTrendingMoviesUseCaseParams(
            page: state.page + 1,
          ),
        );
        return trendingMoviesEither.fold(
          (ex) => _loadMoviesInitialFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.popular:
        final popularMoviesEither =
            await _popularMoviesUseCase.call(GetPopularMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return popularMoviesEither.fold(
          (ex) => _loadMoviesInitialFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.upcoming:
        final upcomingMoviesEither =
            await _upcomingMoviesUseCase.call(GetUpcomingMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return upcomingMoviesEither.fold(
          (ex) => _loadMoviesInitialFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.nowPlaying:
        final nowPlayingMoviesEither = await _nowPlayingMoviesUseCase
            .call(GetNowPlayingMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return nowPlayingMoviesEither.fold(
          (ex) => _loadMoviesInitialFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.topRate:
        final topRateMoviesEither =
            await _topRateMoviesUseCase.call(GetTopRateMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return topRateMoviesEither.fold(
          (ex) => _loadMoviesInitialFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
    }
  }

  void loadingMoreMovies() async {
    emit(state.copyWith(
      status: ListHomeMoviesStatus.loadingMore,
    ));

    switch (_movieType) {
      case ListMovieType.trending:
        final trendingMoviesEither = await _trendingMoviesUseCase.call(
          GetTrendingMoviesUseCaseParams(
            page: state.page + 1,
          ),
        );
        return trendingMoviesEither.fold(
          (ex) => _loadMoreMoviesFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.popular:
        final popularMoviesEither =
            await _popularMoviesUseCase.call(GetPopularMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return popularMoviesEither.fold(
          (ex) => _loadMoreMoviesFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.upcoming:
        final upcomingMoviesEither =
            await _upcomingMoviesUseCase.call(GetUpcomingMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return upcomingMoviesEither.fold(
          (ex) => _loadMoreMoviesFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.nowPlaying:
        final nowPlayingMoviesEither = await _nowPlayingMoviesUseCase
            .call(GetNowPlayingMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return nowPlayingMoviesEither.fold(
          (ex) => _loadMoreMoviesFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
      case ListMovieType.topRate:
        final topRateMoviesEither =
            await _topRateMoviesUseCase.call(GetTopRateMoviesUseCaseParams(
          page: state.page + 1,
          language: state.language,
          region: state.region,
        ));

        return topRateMoviesEither.fold(
          (ex) => _loadMoreMoviesFailure(ex),
          (movies) => _loadMoviesInitialSuccess(movies),
        );
    }
  }

  void _loadMoviesInitialSuccess(List<Movie> movies) {
    if (movies.isNotEmpty) {
      final List<Movie> newMovies = List.from(state.movies);
      newMovies.addAll(movies);

      return emit(state.copyWith(
        status: ListHomeMoviesStatus.loaded,
        movies: newMovies,
        page: state.page + 1,
        errorMessages: '',
        exception: null,
        onRetry: null,
      ));
    } else {
      return emit(state.copyWith(
        status: ListHomeMoviesStatus.loaded,
        errorMessages: '',
        exception: null,
        onRetry: null,
      ));
    }
  }

  void _loadMoviesInitialFailure(AppException exception) {
    return emit(state.copyWith(
      status: ListHomeMoviesStatus.error,
      errorMessages: ExceptionMessagesMapper.map(exception),
      exception: exception,
      onRetry: loadingMovieInitial,
    ));
  }

  void _loadMoreMoviesFailure(AppException exception) {
    return emit(state.copyWith(
      status: ListHomeMoviesStatus.error,
      errorMessages: ExceptionMessagesMapper.map(exception),
      exception: exception,
      onRetry: loadingMoreMovies,
    ));
  }

  static ListMovieType _convertMovieType(String type) {
    if (type == AppConstants.viewAllTrendingMovie) {
      return ListMovieType.trending;
    }
    if (type == AppConstants.viewAllPopularMovie) {
      return ListMovieType.popular;
    }
    if (type == AppConstants.viewAllUpcomingMovie) {
      return ListMovieType.upcoming;
    }
    if (type == AppConstants.viewAllNowPlayingMovie) {
      return ListMovieType.nowPlaying;
    }
    if (type == AppConstants.viewAllTopRateMovie) {
      return ListMovieType.topRate;
    }
    return ListMovieType.popular;
  }
}
