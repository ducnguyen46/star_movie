import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/search_movie_cubit/cubit/search_movie_cubit.dart';
import 'package:star_movie/presentation/pages/search_movie_page/widgets/widgets.dart';
import 'package:star_movie/presentation/widgets/movie_item_list_card.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/resources/resources.dart';

@RoutePage()
class SearchMovieRouterPage extends AutoRouter implements AutoRouteWrapper {
  const SearchMovieRouterPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          SearchMovieCubit(searchMovieUseCase: getIt<SearchMovieUseCase>()),
      child: this,
    );
  }
}

@RoutePage()
class SearchMoviePage extends StatefulWidget {
  const SearchMoviePage({super.key});

  @override
  State<SearchMoviePage> createState() => _SearchMoviePageState();
}

class _SearchMoviePageState extends State<SearchMoviePage> {
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
    final searchMovieCubit = context.read<SearchMovieCubit>();

    if (searchMovieCubit.state.status == SearchMovieStatus.loaded &&
        _scrollController.offset >=
            _scrollController.position.maxScrollExtent - 200) {
      final searchState = searchMovieCubit.state;
      searchMovieCubit.searchMovie(
        query: searchState.query,
        page: searchState.page,
        includeAdult: searchState.includeAdult,
        year: searchState.year,
        primaryReleaseYear: searchState.primaryReleaseYear,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SearchMovieAppBar(
            onSearch: (value) {
              context
                  .read<SearchMovieCubit>()
                  .searchMovie(query: value, page: 1);
            },
          ),
          BlocBuilder<SearchMovieCubit, SearchMovieState>(
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              if (state.status == SearchMovieStatus.initial) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: Text('Search something'),
                  ),
                );
              } else if (state.status == SearchMovieStatus.loading) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return SliverList.separated(
                  itemCount: state.movies.length,
                  itemBuilder: (context, index) {
                    final movie = state.movies[index];

                    return MovieItemListCard(movie: movie);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: Dimens.d16,
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
