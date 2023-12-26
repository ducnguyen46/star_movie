part of 'list_home_movies_cubit.dart';

/// state ///
// loading
// loaded
// loading more
// error

enum ListHomeMoviesStatus { loading, loaded, loadingMore, error }

@freezed
class ListHomeMoviesState with _$ListHomeMoviesState {
  const factory ListHomeMoviesState.initial({
    @Default(ListHomeMoviesStatus.loading) ListHomeMoviesStatus status,
    @Default(<Movie>[]) List<Movie> movies,
    @Default(0) int page,
    @Default('') String language,
    @Default('') String region,
    @Default('') String errorMessages,
    AppException? exception,
    void Function()? onRetry,
  }) = _Initial;
}
