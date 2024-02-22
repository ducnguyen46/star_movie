import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/get_language_tmdb_use_case.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/constants/exception_messages_constant.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';
import 'package:star_movie/share/utils/utils.dart';

part 'movie_state.dart';
part 'movie_cubit.freezed.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit({
    required GetPopularMoviesUseCase popularMoviesUseCase,
    required GetUpcomingMoviesUseCase upcomingMoviesUseCase,
    required GetNowPlayingMoviesUseCase nowPlayingMoviesUseCase,
    required GetTopRateMoviesUseCase topRateMoviesUseCase,
    required GetTrendingMoviesUseCase trendingMoviesUseCase,
    required GetMovieGenresUseCase movieGenresUseCase,
    required GetLanguageTMDBUseCase languageTMDBUseCase,
  })  : _popularMoviesUseCase = popularMoviesUseCase,
        _upcomingMoviesUseCase = upcomingMoviesUseCase,
        _topRateMoviesUseCase = topRateMoviesUseCase,
        _nowPlayingMoviesUseCase = nowPlayingMoviesUseCase,
        _trendingMoviesUseCase = trendingMoviesUseCase,
        _movieGenresUseCase = movieGenresUseCase,
        _languageTMDBUseCase = languageTMDBUseCase,
        super(const MovieState.loading());

  final GetPopularMoviesUseCase _popularMoviesUseCase;
  final GetUpcomingMoviesUseCase _upcomingMoviesUseCase;
  final GetNowPlayingMoviesUseCase _nowPlayingMoviesUseCase;
  final GetTopRateMoviesUseCase _topRateMoviesUseCase;
  final GetTrendingMoviesUseCase _trendingMoviesUseCase;
  final GetMovieGenresUseCase _movieGenresUseCase;
  final GetLanguageTMDBUseCase _languageTMDBUseCase;

  Future<void> _loadingGenres() async {
    emit(const MovieState.loading());
    final genresEither = await _movieGenresUseCase.call(
      const GetMovieGenresUseCaseParams(),
    );
    return genresEither.fold(
      (ex) {
        return emit(MovieState.error(
          message: ExceptionMessagesMapper.map(ex),
          exception: ex,
        ));
      },
      (genres) => null,
    );
  }

  Future<void> _loadingLanguage() async {
    emit(const MovieState.loading());
    final languageEither = await _languageTMDBUseCase.call(
      const GetLanguageTMDBUseCaseParams(),
    );

    return languageEither.fold(
        (ex) => emit(MovieState.error(
              message: ExceptionMessagesMapper.map(ex),
              exception: ex,
            )),
        (r) => null);
  }

  void loadingMovies() async {
    await Future.wait([
      _loadingGenres(),
      _loadingLanguage(),
    ]);

    final movies = <List<Movie>?>[];
    final errors = <AppException?>[];

    final results = await Future.wait([
      _popularMoviesUseCase.call(const GetPopularMoviesUseCaseParams()),
      _nowPlayingMoviesUseCase.call(const GetNowPlayingMoviesUseCaseParams()),
      _topRateMoviesUseCase.call(const GetTopRateMoviesUseCaseParams()),
      _upcomingMoviesUseCase.call(const GetUpcomingMoviesUseCaseParams()),
      _trendingMoviesUseCase.call(const GetTrendingMoviesUseCaseParams()),
    ]);

    for (var result in results) {
      if (result.isLeft()) {
        result.fold((ex) {
          return errors.add(ex);
        }, (r) => null);
        movies.add(null);
      } else {
        result.fold((ex) => null, (listMovies) => movies.add(listMovies));
        errors.add(null);
      }
    }

    if (errors.any((error) => error is AppException)) {
      LogUtil.d(errors.toString(), name: 'Errors');

      emit(const MovieState.error(message: ExceptionMessagesConstant.unknown));
    } else {
      emit(
        MovieState.loaded(
          popularMovies: movies[0] ?? [],
          nowPlayingMovies: movies[1] ?? [],
          topRateMovies: movies[2] ?? [],
          upcomingMovies: movies[3] ?? [],
          trendingMovies: movies[4] ?? [],
        ),
      );
    }
  }
}
