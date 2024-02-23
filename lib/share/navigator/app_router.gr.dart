// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ListHomeMoviesRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ListHomeMoviesRouteArgs>(
          orElse: () => ListHomeMoviesRouteArgs(
              movieType: queryParams.optString('type')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ListHomeMoviesPage(
          key: args.key,
          movieType: args.movieType,
        ),
      );
    },
    LogInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LogInPage(),
      );
    },
    MovieCastsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MovieCastsPage(),
      );
    },
    MovieCrewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MovieCrewsPage(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MovieDetailRouteArgs>(
          orElse: () => MovieDetailRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieDetailPage(
          key: args.key,
          movieId: pathParams.getInt('movie_id'),
        ),
      );
    },
    MovieDetailRouterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MovieDetailRouterRouteArgs>(
          orElse: () => MovieDetailRouterRouteArgs(
              movieId: pathParams.getInt('movie_id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: MovieDetailRouterScreen(
          key: args.key,
          movieId: args.movieId,
        )),
      );
    },
    MovieRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MoviePage(),
      );
    },
    PhotoViewerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<PhotoViewerRouteArgs>(
          orElse: () => PhotoViewerRouteArgs(
                  imageType: queryParams.getString(
                'type',
                '',
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PhotoViewerPage(
          key: args.key,
          movieId: pathParams.getString('movie_id'),
          imageType: args.imageType,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    UserApprovalRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserApprovalRouteArgs>(
          orElse: () =>
              UserApprovalRouteArgs(token: pathParams.getString('token')));
      return AutoRoutePage<bool?>(
        routeData: routeData,
        child: UserApprovalPage(
          key: args.key,
          token: args.token,
        ),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<VideoPlayerRouteArgs>(
          orElse: () => VideoPlayerRouteArgs(
              videoKey: pathParams.getString('video_key')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VideoPlayerPage(
          key: args.key,
          videoKey: args.videoKey,
        ),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ListHomeMoviesPage]
class ListHomeMoviesRoute extends PageRouteInfo<ListHomeMoviesRouteArgs> {
  ListHomeMoviesRoute({
    Key? key,
    String? movieType,
    List<PageRouteInfo>? children,
  }) : super(
          ListHomeMoviesRoute.name,
          args: ListHomeMoviesRouteArgs(
            key: key,
            movieType: movieType,
          ),
          rawQueryParams: {'type': movieType},
          initialChildren: children,
        );

  static const String name = 'ListHomeMoviesRoute';

  static const PageInfo<ListHomeMoviesRouteArgs> page =
      PageInfo<ListHomeMoviesRouteArgs>(name);
}

class ListHomeMoviesRouteArgs {
  const ListHomeMoviesRouteArgs({
    this.key,
    this.movieType,
  });

  final Key? key;

  final String? movieType;

  @override
  String toString() {
    return 'ListHomeMoviesRouteArgs{key: $key, movieType: $movieType}';
  }
}

/// generated route for
/// [LogInPage]
class LogInRoute extends PageRouteInfo<void> {
  const LogInRoute({List<PageRouteInfo>? children})
      : super(
          LogInRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieCastsPage]
class MovieCastsRoute extends PageRouteInfo<void> {
  const MovieCastsRoute({List<PageRouteInfo>? children})
      : super(
          MovieCastsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieCastsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieCrewsPage]
class MovieCrewsRoute extends PageRouteInfo<void> {
  const MovieCrewsRoute({List<PageRouteInfo>? children})
      : super(
          MovieCrewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieCrewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieDetailPage]
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const PageInfo<MovieDetailRouteArgs> page =
      PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MovieDetailRouterScreen]
class MovieDetailRouterRoute extends PageRouteInfo<MovieDetailRouterRouteArgs> {
  MovieDetailRouterRoute({
    Key? key,
    required int movieId,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRouterRoute.name,
          args: MovieDetailRouterRouteArgs(
            key: key,
            movieId: movieId,
          ),
          rawPathParams: {'movie_id': movieId},
          initialChildren: children,
        );

  static const String name = 'MovieDetailRouterRoute';

  static const PageInfo<MovieDetailRouterRouteArgs> page =
      PageInfo<MovieDetailRouterRouteArgs>(name);
}

class MovieDetailRouterRouteArgs {
  const MovieDetailRouterRouteArgs({
    this.key,
    required this.movieId,
  });

  final Key? key;

  final int movieId;

  @override
  String toString() {
    return 'MovieDetailRouterRouteArgs{key: $key, movieId: $movieId}';
  }
}

/// generated route for
/// [MoviePage]
class MovieRoute extends PageRouteInfo<void> {
  const MovieRoute({List<PageRouteInfo>? children})
      : super(
          MovieRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhotoViewerPage]
class PhotoViewerRoute extends PageRouteInfo<PhotoViewerRouteArgs> {
  PhotoViewerRoute({
    Key? key,
    String imageType = '',
    List<PageRouteInfo>? children,
  }) : super(
          PhotoViewerRoute.name,
          args: PhotoViewerRouteArgs(
            key: key,
            imageType: imageType,
          ),
          rawQueryParams: {'type': imageType},
          initialChildren: children,
        );

  static const String name = 'PhotoViewerRoute';

  static const PageInfo<PhotoViewerRouteArgs> page =
      PageInfo<PhotoViewerRouteArgs>(name);
}

class PhotoViewerRouteArgs {
  const PhotoViewerRouteArgs({
    this.key,
    this.imageType = '',
  });

  final Key? key;

  final String imageType;

  @override
  String toString() {
    return 'PhotoViewerRouteArgs{key: $key, imageType: $imageType}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserApprovalPage]
class UserApprovalRoute extends PageRouteInfo<UserApprovalRouteArgs> {
  UserApprovalRoute({
    Key? key,
    required String token,
    List<PageRouteInfo>? children,
  }) : super(
          UserApprovalRoute.name,
          args: UserApprovalRouteArgs(
            key: key,
            token: token,
          ),
          rawPathParams: {'token': token},
          initialChildren: children,
        );

  static const String name = 'UserApprovalRoute';

  static const PageInfo<UserApprovalRouteArgs> page =
      PageInfo<UserApprovalRouteArgs>(name);
}

class UserApprovalRouteArgs {
  const UserApprovalRouteArgs({
    this.key,
    required this.token,
  });

  final Key? key;

  final String token;

  @override
  String toString() {
    return 'UserApprovalRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [VideoPlayerPage]
class VideoPlayerRoute extends PageRouteInfo<VideoPlayerRouteArgs> {
  VideoPlayerRoute({
    Key? key,
    required String videoKey,
    List<PageRouteInfo>? children,
  }) : super(
          VideoPlayerRoute.name,
          args: VideoPlayerRouteArgs(
            key: key,
            videoKey: videoKey,
          ),
          rawPathParams: {'video_key': videoKey},
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const PageInfo<VideoPlayerRouteArgs> page =
      PageInfo<VideoPlayerRouteArgs>(name);
}

class VideoPlayerRouteArgs {
  const VideoPlayerRouteArgs({
    this.key,
    required this.videoKey,
  });

  final Key? key;

  final String videoKey;

  @override
  String toString() {
    return 'VideoPlayerRouteArgs{key: $key, videoKey: $videoKey}';
  }
}
