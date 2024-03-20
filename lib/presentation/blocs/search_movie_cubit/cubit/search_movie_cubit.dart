import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/search_movie_use_case.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

part 'search_movie_state.dart';
part 'search_movie_cubit.freezed.dart';

class SearchMovieCubit extends Cubit<SearchMovieState> {
  SearchMovieCubit({
    required SearchMovieUseCase searchMovieUseCase,
  })  : _searchMovieUseCase = searchMovieUseCase,
        super(const SearchMovieState.state());

  final SearchMovieUseCase _searchMovieUseCase;

  void searchMovie({
    required String query,
    int? page,
    bool? includeAdult,
    String? year,
    String? primaryReleaseYear,
  }) async {
    if (page == 1) {
      emit(state.copyWith(
        status: SearchMovieStatus.loading,
        movies: [],
        query: query,
        includeAdult: includeAdult ?? true,
        year: year ?? '',
        primaryReleaseYear: primaryReleaseYear ?? '',
      ));
    }

    if (state.movies.isEmpty) {
      emit(state.copyWith(status: SearchMovieStatus.loading));
    } else {
      emit(state.copyWith(status: SearchMovieStatus.loadingMore));
    }

    final moviesEi = await _searchMovieUseCase.call(
      SearchMovieUseCaseParams(
        query: query,
        page: page ?? 1,
        includeAdult: includeAdult ?? true,
        year: year ?? '',
        primaryReleaseYear: primaryReleaseYear ?? '',
      ),
    );

    return moviesEi.fold(
      (ex) {
        return _searchMoviesFailure(
            ex, query, page, includeAdult, year, primaryReleaseYear);
      },
      (movies) {
        return _searchMoviesSuccess(movies);
      },
    );
  }

  void _searchMoviesFailure(
    AppException exception,
    String query,
    int? page,
    bool? includeAdult,
    String? year,
    String? primaryReleaseYear,
  ) {
    return emit(state.copyWith(
      status: SearchMovieStatus.error,
      error: ErrorStateCommon(
        errorMessages: ExceptionMessagesMapper.map(exception),
        exception: exception,
        onRetry: () {
          searchMovie(
            query: query,
            page: page,
            includeAdult: includeAdult,
            year: year,
            primaryReleaseYear: primaryReleaseYear,
          );
        },
      ),
    ));
  }

  void _searchMoviesSuccess(List<Movie> movies) {
    if (movies.isNotEmpty) {
      final List<Movie> newMovies = List.from(state.movies);
      newMovies.addAll(movies);

      return emit(state.copyWith(
        status: SearchMovieStatus.loaded,
        movies: newMovies,
        page: state.page + 1,
        error: null,
      ));
    } else {
      return emit(state.copyWith(
        status: SearchMovieStatus.loaded,
        error: null,
      ));
    }
  }
}
