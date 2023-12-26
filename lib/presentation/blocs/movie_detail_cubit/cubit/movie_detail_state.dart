part of 'movie_detail_cubit.dart';

/// state ///
// loading
// loaded
// error
// rating
// rated
// addingFav
// addedFav

enum MovieDetailStatus {
  loading,
  loaded,
  error,
  rating,
  rated,
  addingFav,
  addedFav,
}

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState.initial({
    @Default(MovieDetailStatus.loading) MovieDetailStatus status,
    MovieDetail? movieDetail,
    ErrorStateCommon? errorState,

    ///
    @Default(false) bool showTitle,
  }) = _Initial;
}
