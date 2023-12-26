import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/list_home_movies_cubit/list_home_movies_cubit.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:star_movie/share/utils/utils.dart';

@RoutePage()
class ListHomeMoviesPage extends StatelessWidget {
  const ListHomeMoviesPage({
    super.key,
    @QueryParam('type') this.movieType,
  });

  final String? movieType;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBarCommon(
        title: Text(_convertMovieTypeToTitle(context, movieType)),
      ),
      body: BlocProvider(
        create: (context) => ListHomeMoviesCubit(
          movieType: movieType ?? '',
          trendingMoviesUseCase: getIt<GetTrendingMoviesUseCase>(),
          popularMoviesUseCase: getIt<GetPopularMoviesUseCase>(),
          upcomingMoviesUseCase: getIt<GetUpcomingMoviesUseCase>(),
          nowPlayingMoviesUseCase: getIt<GetNowPlayingMoviesUseCase>(),
          topRateMoviesUseCase: getIt<GetTopRateMoviesUseCase>(),
        )..loadingMovieInitial(),
        child: const ListHomeMoviesContent(),
      ),
    );
  }

  String _convertMovieTypeToTitle(BuildContext context, String? type) {
    if (type == AppConstants.viewAllTrendingMovie) {
      return context.tr('trending_movies');
    }
    if (type == AppConstants.viewAllPopularMovie) {
      return context.tr('popular_movies');
    }
    if (type == AppConstants.viewAllUpcomingMovie) {
      return context.tr('upcoming_movies');
    }
    if (type == AppConstants.viewAllNowPlayingMovie) {
      return context.tr('now_playing_movies');
    }
    if (type == AppConstants.viewAllTopRateMovie) {
      return context.tr('top_rate_movies');
    }
    return context.tr('popular_movies');
  }
}

class ListHomeMoviesContent extends StatefulWidget {
  const ListHomeMoviesContent({super.key});

  @override
  State<ListHomeMoviesContent> createState() => _ListHomeMoviesContentState();
}

class _ListHomeMoviesContentState extends State<ListHomeMoviesContent> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_loadingMoreListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_loadingMoreListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _loadingMoreListener() {
    final listMoviesCubit = context.read<ListHomeMoviesCubit>();

    if (listMoviesCubit.state.status == ListHomeMoviesStatus.loaded &&
        _scrollController.offset >=
            _scrollController.position.maxScrollExtent - 200) {
      listMoviesCubit.loadingMoreMovies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ListHomeMoviesCubit>(),
      child: BlocConsumer<ListHomeMoviesCubit, ListHomeMoviesState>(
        listener: (context, state) {
          if (state.status == ListHomeMoviesStatus.error) {
            // show error dialog
            LogUtil.e(state.errorMessages, error: state.exception);
          }
        },
        buildWhen: (previous, current) {
          if (previous.status == ListHomeMoviesStatus.loading &&
              current.status == ListHomeMoviesStatus.loaded) {
            return true;
          }

          return false;
        },
        builder: (context, state) {
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              BlocSelector<ListHomeMoviesCubit, ListHomeMoviesState,
                  List<Movie>>(
                selector: (state) {
                  return state.movies;
                },
                builder: (context, movies) {
                  return SliverList.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      final movie = movies[index];
                      final isFirst =
                          movies.length > 1 && index == 0 ? true : false;

                      return GestureDetector(
                        onTap: () {
                          context.router.pushNamed(
                              '${RoutePath.movieDetail}/${movies[index].id}');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Dimens.d16,
                          ),
                          margin: isFirst
                              ? const EdgeInsets.only(bottom: Dimens.d8)
                              : const EdgeInsets.symmetric(vertical: Dimens.d8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(Dimens.d8),
                                  ),
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: Dimens.d140,
                                        width: Dimens.d140 *
                                            AppConstants.posterRatio,
                                        child: CachedImageCommon(
                                          imageUrl: ImageConfigConstant
                                                  .posterImgW500 +
                                              movie.posterPath,
                                        ),
                                      ),
                                      Positioned(
                                        top: Dimens.d4,
                                        right: Dimens.d4,
                                        child: VoteAverageMarker(
                                          movie: movie,
                                        ),
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                width: Dimens.d12,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      movie.title,
                                      style: AppTextStyle.s16SemiBold,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: Dimens.d6,
                                    ),
                                    Text(
                                      _genreMovie(movie.genres),
                                      style: AppTextStyle.s12Regular.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: Dimens.d6,
                                    ),
                                    Text(
                                      movie.releaseDate,
                                      style: AppTextStyle.s12Regular,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              BlocSelector<ListHomeMoviesCubit, ListHomeMoviesState,
                      ListHomeMoviesStatus>(
                  selector: (state) => state.status,
                  builder: (context, status) {
                    if (status == ListHomeMoviesStatus.loadingMore) {
                      return const SliverPadding(
                        padding: EdgeInsets.all(Dimens.d4),
                        sliver: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else {
                      return const SliverToBoxAdapter(child: SizedBox());
                    }
                  }),
            ],
          );
        },
      ),
    );
  }

  String _genreMovie(List<Genre> genres) {
    if (genres.isEmpty) {
      return '';
    }

    var genreMovie = genres.first.name;
    for (var genre in genres.getRange(1, genres.length)) {
      genreMovie = '$genreMovie - ${genre.name}';
    }

    return genreMovie;
  }
}
