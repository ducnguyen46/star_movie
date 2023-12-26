part of 'movie_cubit.dart';

/// state ///
/// Initial
/// Loading movie
/// Loaded movie
/// Error

@freezed
class MovieState with _$MovieState {
  const factory MovieState.loading() = Loading;
  const factory MovieState.loaded({
    required List<Movie> popularMovies,
    required List<Movie> nowPlayingMovies,
    required List<Movie> upcomingMovies,
    required List<Movie> topRateMovies,
    required List<Movie> trendingMovies,
  }) = Loaded;
  const factory MovieState.error({
    @Default('') String message,
    AppException? exception,
    void Function()? onRetry,
  }) = Error;
}
