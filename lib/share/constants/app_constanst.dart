class AppConstants {
  // Path parameters page
  static const pathMovieId = 'movieId';
  static const pathVideoKey = 'videoKey';
  static const pathToken = 'token';

  // Query parameter page
  static const queryType = 'type';
  static const queryImageType = 'image_type';

  // Movie Home View All Type
  static const viewAllTrendingMovie = 'trending';
  static const viewAllPopularMovie = 'popular';
  static const viewAllUpcomingMovie = 'upcoming';
  static const viewAllNowPlayingMovie = 'now-playing';
  static const viewAllTopRateMovie = 'top-rate';

  //
  static const posterRatio = 2 / 3;
  static const backdropRatio = 16 / 9;

  //
  static const backdrops = 'backdrops';
  static const posters = 'posters';

  //
  // When movie is not rated, it has default value
  static const defaultMovieRate = -1.0;

  // Extra map keys
  static const extraMovieDetailCubit = 'movie-detail-cubit';
  static const extraAppAuthCubit = 'app-auth-cubit';
}
