import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/use_cases/get_language_tmdb_use_case.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/movie_cubit/movie_cubit.dart';
import 'package:star_movie/presentation/pages/movie_page/widgets/horizontal_movies_list.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';

import 'widgets/carousel_movies_slider.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => MovieCubit(
        popularMoviesUseCase: getIt<GetPopularMoviesUseCase>(),
        upcomingMoviesUseCase: getIt<GetUpcomingMoviesUseCase>(),
        nowPlayingMoviesUseCase: getIt<GetNowPlayingMoviesUseCase>(),
        topRateMoviesUseCase: getIt<GetTopRateMoviesUseCase>(),
        trendingMoviesUseCase: getIt<GetTrendingMoviesUseCase>(),
        movieGenresUseCase: getIt<GetMovieGenresUseCase>(),
        languageTMDBUseCase: getIt<GetLanguageTMDBUseCase>(),
      )..loadingMovies(),
      child: AppScaffold(
        appBar: AppBarCommon(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Text(context.tr('movies')),
          actions: [
            IconButton.filledTonal(
              padding: const EdgeInsets.all(Dimens.d6),
              onPressed: () {
                context.pushNamed(RoutePath.searchMovie.named);
              },
              icon: FittedBox(
                child: Icon(
                  Icons.search,
                  color: AppColors.redPrimary,
                ),
              ),
            ),
          ],
        ),
        body: BlocConsumer<MovieCubit, MovieState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.when<Widget>(
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (popularMovies, nowPlayingMovies, upcomingMovies,
                  topRateMovies, trendingMovies) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      CarouselMoviesSlider(
                        movies: trendingMovies,
                        onPressed: (movieId) {
                          context.pushNamed(
                            RoutePath.movieDetail.named,
                            pathParameters: {
                              AppConstants.pathMovieId: '$movieId'
                            },
                          );
                        },
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: Dimens.d16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: Dimens.d8,
                              horizontal: Dimens.d16,
                            ),
                            child: LargeTitleViewAll(
                              largeTitle: context.tr('popular_movies'),
                              onPressed: () {
                                context.pushNamed(
                                  RoutePath.moviesPage.named,
                                  queryParameters: {
                                    'type': AppConstants.viewAllPopularMovie,
                                  },
                                );
                              },
                            ),
                          ),
                          HorizontalMoviesList(
                            movies: popularMovies,
                            onPressed: (movieId) {
                              context.pushNamed(
                                RoutePath.movieDetail.named,
                                pathParameters: {
                                  AppConstants.pathMovieId: '$movieId',
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: Dimens.d16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: Dimens.d8,
                              horizontal: Dimens.d16,
                            ),
                            child: LargeTitleViewAll(
                              largeTitle: context.tr('upcoming_movies'),
                              onPressed: () {
                                context.pushNamed(
                                  RoutePath.moviesPage.named,
                                  queryParameters: {
                                    'type': AppConstants.viewAllUpcomingMovie,
                                  },
                                );
                              },
                            ),
                          ),
                          HorizontalMoviesList(
                            movies: upcomingMovies,
                            onPressed: (movieId) {
                              context.pushNamed(RoutePath.movieDetail.named,
                                  pathParameters: {
                                    AppConstants.pathMovieId: '$movieId',
                                  });
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: Dimens.d16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: Dimens.d8,
                              horizontal: Dimens.d16,
                            ),
                            child: LargeTitleViewAll(
                              largeTitle: context.tr('now_playing_movies'),
                              onPressed: () {
                                context.pushNamed(
                                  RoutePath.moviesPage.named,
                                  queryParameters: {
                                    AppConstants.queryType:
                                        AppConstants.viewAllNowPlayingMovie,
                                  },
                                );
                              },
                            ),
                          ),
                          HorizontalMoviesList(
                            movies: nowPlayingMovies,
                            onPressed: (movieId) {
                              context.pushNamed(
                                RoutePath.movieDetail.named,
                                pathParameters: {
                                  AppConstants.pathMovieId: '$movieId',
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: Dimens.d16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: Dimens.d8,
                              horizontal: Dimens.d16,
                            ),
                            child: LargeTitleViewAll(
                              largeTitle: context.tr('top_rate_movies'),
                              onPressed: () {
                                context.pushNamed(
                                  RoutePath.moviesPage.named,
                                  queryParameters: {
                                    AppConstants.queryType:
                                        AppConstants.viewAllTopRateMovie
                                  },
                                );
                              },
                            ),
                          ),
                          HorizontalMoviesList(
                            movies: topRateMovies,
                            onPressed: (movieId) {
                              context.pushNamed(
                                RoutePath.movieDetail.named,
                                pathParameters: {
                                  AppConstants.pathMovieId: '$movieId'
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              error: (message, exception, void Function()? onRetry) {
                return const Center(
                  child: Text('Error'),
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
