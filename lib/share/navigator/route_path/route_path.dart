class RoutePath {
  static const logInPage = '/login';
  static const userApprovalPage = '/user-approval';
  static const splashPage = '/splash';

  // home
  static const homePage = '/';
  static const profilePage = '/profile';
  static const listHomeMoviesPage = '/list-home-movies';

  // movie
  static const moviePage = '/movie';
  static const movieDetail = '/movie-detail';
  static const videoPlayer = '/video-player';
  static const photoViewer = '/photo-viewer';
  static const movieCasts = '/movie-casts';
  static const movieCrews = '/movie-crews';

  // search
  static const searchMovie = '/search-movie';
}

extension $RoutePath on String {
  String get isSubPage {
    return replaceFirst('/', '');
  }
}
