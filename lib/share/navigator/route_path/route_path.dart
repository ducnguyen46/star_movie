class RoutePath {
  static const logInPage = '/login';
  static const userApprovalPage = '/user-approval';
  static const splashPage = '/';
  static const homePage = '/home';
  static const moviePage = '/movie';
  static const homeMoviePage = '$homePage$moviePage';
  static const profilePage = '/profile';
  static const homeProfilePage = '$homePage$profilePage';
  static const listHomeMoviesPage = '/list-home-movies';
  static const movieDetail = '/movie-detail';
}

extension $RoutePath on String {
  String get isSubPage {
    return replaceFirst('/', '');
  }
}
