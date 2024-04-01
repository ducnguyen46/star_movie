import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/list_home_movies_cubit/list_home_movies_cubit.dart';
import 'package:star_movie/presentation/widgets/movie_item_list_card.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:star_movie/share/utils/utils.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({
    super.key,
    this.movieType,
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
        child: const MoviesContent(),
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

class MoviesContent extends StatefulWidget {
  const MoviesContent({super.key});

  @override
  State<MoviesContent> createState() => _MoviesContentState();
}

class _MoviesContentState extends State<MoviesContent> {
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
                  return SliverList.separated(
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      final movie = movies[index];
                      return MovieItemListCard(
                        movie: movie,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: Dimens.d16,
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
                    return const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(Dimens.d4),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  } else {
                    return const SliverToBoxAdapter(child: SizedBox());
                  }
                },
              ),
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
