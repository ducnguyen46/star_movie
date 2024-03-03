part of 'search_movie_cubit.dart';

enum SearchMovieStatus { initial, loading, loaded, loadingMore, error }

@freezed
class SearchMovieState with _$SearchMovieState {
  const factory SearchMovieState.state({
    @Default(SearchMovieStatus.initial) SearchMovieStatus status,
    @Default([]) List<Movie> movies,
    @Default('') String query,
    @Default(1) int page,
    @Default(true) bool includeAdult,
    @Default('') String year,
    @Default('') String primaryReleaseYear,
    ErrorStateCommon? error,
  }) = _State;
}
