import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/movie_detail_cubit/movie_detail_cubit.dart';
import 'package:star_movie/presentation/blocs/search_movie_cubit/cubit/search_movie_cubit.dart';
import 'package:star_movie/presentation/pages/pages.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';

@Singleton()
class AppRouter {
  /// App router
  final _router = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: RoutePath.splashPage,
      navigatorKey: rootNavigatorKey,
      routes: routes);
  GoRouter get router => _router;

  // Navigator keys
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static final shellMovieTabNavigatorKey = GlobalKey<NavigatorState>();
  static final shellProfileTabNavigatorKey = GlobalKey<NavigatorState>();

  static final routes = [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldWithNavigatorBar(shell: navigationShell),
      branches: [
        StatefulShellBranch(
          initialLocation: RoutePath.moviePage,
          navigatorKey: shellMovieTabNavigatorKey,
          routes: [
            GoRoute(
              name: RoutePath.moviePage.named,
              path: RoutePath.moviePage,
              builder: (context, state) => const MoviePage(),
            ),
            movieDetailRouter,
            GoRoute(
              name: RoutePath.moviesPage.named,
              path: RoutePath.moviesPage,
              builder: (context, state) => MoviesPage(
                movieType: state.uri.queryParameters[AppConstants.queryType],
              ),
            ),
            GoRoute(
              name: RoutePath.searchMovie.isSubPage,
              path: RoutePath.searchMovie,
              builder: (context, state) {
                return BlocProvider(
                  create: (_) => SearchMovieCubit(
                    searchMovieUseCase: getIt.get<SearchMovieUseCase>(),
                  ),
                  child: const SearchMoviePage(),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: shellProfileTabNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePath.profilePage,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
    //
    GoRoute(
      name: RoutePath.splashPage.named,
      path: RoutePath.splashPage,
      builder: (context, state) => const SplashPage(),
    ),
    //
    GoRoute(
      name: RoutePath.logInPage.named,
      path: RoutePath.logInPage,
      builder: (context, state) => const LogInPage(),
      routes: [
        GoRoute(
          name: RoutePath.userApprovalPage.named,
          path: '${RoutePath.userApprovalPage}/:${AppConstants.pathToken}',
          builder: (context, state) => UserApprovalPage(
            token: state.pathParameters[AppConstants.pathToken]!,
          ),
        ),
      ],
    ),
  ];

  // Movie detail router
  static final movieDetailRouter = GoRoute(
    name: RoutePath.movieDetail.named,
    path: '${RoutePath.movieDetail}/:${AppConstants.pathMovieId}',
    builder: (context, state) {
      final movieId = state.pathParameters[AppConstants.pathMovieId]!;
      return BlocProvider(
        create: (context) => MovieDetailCubit(
          movieDetailUseCase: getIt<GetMovieDetailUseCase>(),
          ratingMovieUseCase: getIt<RatingMovieUseCase>(),
          removeRatingMovieUseCase: getIt<RemoveRatingMovieUseCase>(),
        )..getDetailMovie(movieId),
        child: MovieDetailPage(movieId: movieId),
      );
    },
    routes: [
      GoRoute(
        name: RoutePath.movieCasts.named,
        path: RoutePath.movieCasts,
        builder: (context, state) => BlocProvider.value(
          value: state.extra! as MovieDetailCubit,
          child: const MovieCastsPage(),
        ),
      ),
      GoRoute(
        name: RoutePath.movieCrews.named,
        path: RoutePath.movieCrews,
        builder: (context, state) => BlocProvider.value(
          value: state.extra! as MovieDetailCubit,
          child: const MovieCrewsPage(),
        ),
      ),
      GoRoute(
          name: RoutePath.photoViewer.named,
          path: RoutePath.photoViewer,
          builder: (context, state) {
            return BlocProvider.value(
              value: state.extra! as MovieDetailCubit,
              child: PhotoViewerPage(
                imageType:
                    state.uri.queryParameters[AppConstants.queryImageType],
              ),
            );
          }),
      GoRoute(
        name: RoutePath.videoPlayer.named,
        path: '${RoutePath.videoPlayer}/:${AppConstants.pathVideoKey}',
        builder: (context, state) => VideoPlayerPage(
          videoKey: state.pathParameters[AppConstants.pathVideoKey]!,
        ),
      ),
    ],
  );
}
