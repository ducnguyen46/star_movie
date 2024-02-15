import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_movie/presentation/pages/pages.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: RoutePath.splashPage,
          initial: true,
        ),
        AutoRoute(
          page: LogInRoute.page,
          path: RoutePath.logInPage,
        ),
        AutoRoute(
          page: UserApprovalRoute.page,
          path: '${RoutePath.userApprovalPage}/:token',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: RoutePath.homePage,
          children: [
            RedirectRoute(path: '', redirectTo: RoutePath.moviePage),
            AutoRoute(
              page: MovieRoute.page,
              path: RoutePath.moviePage.isSubPage,
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: RoutePath.profilePage.isSubPage,
            ),
          ],
        ),
        AutoRoute(
          page: ListHomeMoviesRoute.page,
          path: RoutePath.listHomeMoviesPage,
        ),
        AutoRoute(
          page: MovieDetailRoute.page,
          path: '${RoutePath.movieDetail}/:movie_id',
        ),
        AutoRoute(
          page: VideoPlayerRoute.page,
          path: '${RoutePath.videoPlayer}/:video_key',
        )
      ];
}
