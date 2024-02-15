import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/use_cases/get_movie_detail_use_case.dart';
import 'package:star_movie/presentation/blocs/movie_detail_cubit/cubit/movie_detail_cubit.dart';
import 'package:star_movie/presentation/pages/movie_detail/widgets/movie_detail_cast_card.dart';
import 'package:star_movie/presentation/pages/movie_detail/widgets/movie_detail_crew_card.dart';
import 'package:star_movie/presentation/pages/movie_detail/widgets/movie_detail_title_content.dart';
import 'package:star_movie/presentation/pages/movie_detail/widgets/movie_detail_video_item.dart';
import 'package:star_movie/presentation/pages/movie_page/widgets/horizontal_movies_list.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/movie_detail_image_content.dart';
import 'widgets/movie_detail_info_card.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    super.key,
    @PathParam('movie_id') required this.movieId,
  });

  final int movieId;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final backdropHeight = screenSize.height / 3 * 4 / 5;
    final paddingTop = MediaQuery.viewPaddingOf(context).top;
    return BlocProvider(
      create: (context) => MovieDetailCubit(
        movieDetailUseCase: getIt<GetMovieDetailUseCase>(),
      )..getDetailMovie(movieId),
      child: MovieDetailView(
        movieId: movieId,
        screenSize: screenSize,
        backdropHeight: backdropHeight,
        paddingTop: paddingTop,
      ),
    );
  }
}

class MovieDetailView extends StatefulWidget {
  const MovieDetailView({
    super.key,
    required this.movieId,
    required this.screenSize,
    required this.backdropHeight,
    required this.paddingTop,
  });

  final int movieId;
  final Size screenSize;
  final double backdropHeight;
  final double paddingTop;

  @override
  State<MovieDetailView> createState() => _MovieDetailViewState();
}

class _MovieDetailViewState extends State<MovieDetailView> {
  late ScrollController _scrollController;

  late Size screenSize;
  late double backdropHeight;
  late double paddingTop;

  @override
  void initState() {
    super.initState();

    final movieDetailCubit = context.read<MovieDetailCubit>();

    screenSize = widget.screenSize;
    backdropHeight = widget.backdropHeight;
    paddingTop = widget.paddingTop;

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset < kToolbarHeight) {
        movieDetailCubit.setShowTitle(showTitle: false);
      } else {
        movieDetailCubit.setShowTitle(showTitle: true);
      }
    });
  }

  @override
  void dispose() {
    if (_scrollController.hasClients) {
      _scrollController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: BlocConsumer<MovieDetailCubit, MovieDetailState>(
          listener: (context, state) {},
          buildWhen: (preState, state) {
            return preState.status == MovieDetailStatus.loading &&
                state.status == MovieDetailStatus.loaded;
          },
          builder: (context, state) {
            if (state.status == MovieDetailStatus.loaded) {
              final movieDetail = state.movieDetail!;

              return CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    leading:
                        BlocSelector<MovieDetailCubit, MovieDetailState, bool>(
                      selector: (state) {
                        return state.showTitle;
                      },
                      builder: (context, showTitle) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            AnimatedOpacity(
                              opacity: showTitle ? 0 : 1,
                              duration: const Duration(milliseconds: 200),
                              child: AutoLeadingButton(
                                color: AppColors.white,
                              ),
                            ),
                            AnimatedOpacity(
                              opacity: showTitle ? 1 : 0,
                              duration: const Duration(milliseconds: 200),
                              child: AutoLeadingButton(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    title:
                        BlocSelector<MovieDetailCubit, MovieDetailState, bool>(
                      selector: (state) {
                        return state.showTitle;
                      },
                      builder: (context, showTitle) {
                        return AnimatedOpacity(
                          opacity: showTitle ? 1 : 0,
                          duration: const Duration(milliseconds: 200),
                          child: Text(
                            movieDetail.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.s18Medium.copyWith(
                              fontSize: Dimens.d20,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        );
                      },
                    ),
                    expandedHeight: backdropHeight - paddingTop,
                    collapsedHeight: kToolbarHeight,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: Dimens.d0,
                            height: backdropHeight,
                            width: screenSize.width,
                            child: CachedImageCommon(
                              fit: BoxFit.cover,
                              imageUrl:
                                  '${ImageConfigConstant.backdropImgW780}${movieDetail.backdropPath}',
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(100, 0, 0, 0),
                                    Color.fromARGB(20, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: Dimens.d16,
                            left: Dimens.d16,
                            right: Dimens.d16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movieDetail.title,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.s18Medium.copyWith(
                                    fontSize: Dimens.d20,
                                    color: AppColors.white,
                                    shadows: <Shadow>[
                                      const Shadow(
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 2.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                  ),
                                ),
                                if (movieDetail.tagline.isNotEmpty)
                                  Text(
                                    movieDetail.tagline,
                                    style: AppTextStyle.s14Regular.copyWith(
                                        color: AppColors.white,
                                        shadows: [
                                          const Shadow(
                                            offset: Offset(1.0, 1.0),
                                            blurRadius: 2.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ]),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///
                  /// Poster and content
                  ///
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(Dimens.d16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Dimens.d180,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  Dimens.d6,
                                ),
                              ),
                              child: CachedImageCommon(
                                imageUrl:
                                    '${ImageConfigConstant.posterImgW500}${movieDetail.posterPath}',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: Dimens.d16,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      movieDetail.releaseDate,
                                      style: AppTextStyle.s14SemiBold.copyWith(
                                        fontSize: Dimens.d12,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: Dimens.d16,
                                    ),
                                    Text(
                                      movieDetail.runtime,
                                      style: AppTextStyle.s14SemiBold.copyWith(
                                        fontSize: Dimens.d12,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  movieDetail.status,
                                  style: AppTextStyle.s12Regular,
                                ),
                                const SizedBox(
                                  height: Dimens.d8,
                                ),
                                ReadMoreText(
                                  movieDetail.overview,
                                  trimLines: 6,
                                  trimCollapsedText: ' read more',
                                  trimExpandedText: ' show less',
                                  trimMode: TrimMode.Line,
                                  style: AppTextStyle.s14Regular,
                                  colorClickableText:
                                      Theme.of(context).colorScheme.primary,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///
                  /// Rating
                  ///
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Dimens.d16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'My rating',
                                style: AppTextStyle.s12Regular,
                              ),
                              Text(
                                movieDetail.rate != -1
                                    ? movieDetail.rate.toString()
                                    : ' - ',
                                style: AppTextStyle.s14Regular.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimens.d20,
                            child: VerticalDivider(
                              color: AppColors.richBlack20,
                            ),
                          ),
                          Column(
                            children: [
                              const Text(
                                'TMDB',
                                style: AppTextStyle.s12Regular,
                              ),
                              Text(
                                movieDetail.voteAverage.toStringAsFixed(1),
                                style: AppTextStyle.s14Regular.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///
                  /// Genres
                  ///
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MovieDetailTitleContent(title: 'Genres'),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Dimens.d16,
                          ),
                          child: Wrap(
                            spacing: Dimens.d8,
                            runSpacing: Dimens.d8,
                            children: [
                              for (var item in movieDetail.genres)
                                ActionChip(
                                  side: BorderSide(
                                    color: AppColors.richBlack20,
                                  ),
                                  visualDensity: const VisualDensity(
                                    vertical: -4,
                                  ),
                                  label: Text(item.name),
                                  labelStyle: AppTextStyle.s14SemiBold,
                                  onPressed: () {},
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///
                  /// Videos
                  ///
                  SliverVisibility(
                    visible: movieDetail.video.isNotEmpty,
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const MovieDetailTitleContent(
                            title: 'Videos',
                          ),
                          SizedBox(
                            height: Dimens.d140,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: movieDetail.video.length,
                              itemBuilder: (context, index) {
                                final video = movieDetail.video[index];
                                return Row(
                                  children: [
                                    if (index == 0) const Gap(Dimens.d16),
                                    MovieDetailVideoItem(
                                      videoKey: video.key,
                                      videoTitle: video.title,
                                      height: Dimens.d120,
                                      onPressed: () {
                                        context.router.pushNamed(
                                            '${RoutePath.videoPlayer}/${video.key}');
                                      },
                                    ),
                                    const Gap(Dimens.d16)
                                  ],
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  ///
                  /// Collection
                  ///
                  SliverVisibility(
                    visible: movieDetail.collection.name.isNotEmpty,
                    sliver: SliverPadding(
                      padding: const EdgeInsets.only(
                        bottom: Dimens.d16,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const MovieDetailTitleContent(
                              title: 'Collections',
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Dimens.d16,
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(Dimens.d6)),
                                child: Stack(
                                  children: <Widget>[
                                    CachedImageCommon(
                                      imageUrl:
                                          '${ImageConfigConstant.backdropImgW780}${movieDetail.collection.backdropPath}',
                                    ),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: Dimens.d10,
                                          horizontal: Dimens.d20,
                                        ),
                                        child: Text(
                                          movieDetail.collection.name,
                                          style:
                                              AppTextStyle.s16SemiBold.copyWith(
                                            color: AppColors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///
                  /// Cast
                  ///
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        Dimens.d16,
                        Dimens.d16,
                        Dimens.d16,
                        Dimens.d8,
                      ),
                      child: LargeTitleViewAll(
                        largeTitle: 'Cast',
                        titleStyle: AppTextStyle.s16SemiBold,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      bottom: Dimens.d16,
                    ),
                    sliver: SliverList.separated(
                      itemCount: movieDetail.credit.casts.length <= 5
                          ? movieDetail.credit.casts.length
                          : 5,
                      itemBuilder: ((context, index) {
                        final castItem = movieDetail.credit.casts[index];
                        return MovieDetailCastCard(cast: castItem);
                      }),
                      separatorBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.d16,
                          vertical: Dimens.d6,
                        ),
                      ),
                    ),
                  ),

                  ///
                  /// Crew
                  ///
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        Dimens.d16,
                        Dimens.d16,
                        Dimens.d16,
                        Dimens.d8,
                      ),
                      child: LargeTitleViewAll(
                        largeTitle: 'Crew',
                        titleStyle: AppTextStyle.s16SemiBold,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      bottom: Dimens.d16,
                    ),
                    sliver: SliverList.separated(
                      itemCount: movieDetail.credit.crews.length <= 5
                          ? movieDetail.credit.crews.length
                          : 5,
                      itemBuilder: ((context, index) {
                        final crewItem = movieDetail.credit.crews[index];
                        return MovieDetailCrewCard(crew: crewItem);
                      }),
                      separatorBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.d16,
                          vertical: Dimens.d6,
                        ),
                      ),
                    ),
                  ),

                  ///
                  /// Information
                  ///
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MovieDetailTitleContent(
                          title: 'Informations',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: Dimens.d8),
                          child: Wrap(
                            runSpacing: Dimens.d8,
                            children: [
                              Visibility(
                                visible: movieDetail.budget.isNotEmpty,
                                child: SizedBox(
                                  width: screenSize.width / 2,
                                  child: MovieDetailInfoCard(
                                    title: 'Budget',
                                    info: movieDetail.budget,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: movieDetail.revenue.isNotEmpty,
                                child: SizedBox(
                                  width: screenSize.width / 2,
                                  child: MovieDetailInfoCard(
                                    title: 'Revenue',
                                    info: movieDetail.revenue,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: movieDetail.originalTitle.isNotEmpty,
                                child: SizedBox(
                                  width: screenSize.width / 2,
                                  child: MovieDetailInfoCard(
                                    title: 'Original title',
                                    info: movieDetail.originalTitle,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible:
                                    movieDetail.originalLanguage.isNotEmpty,
                                child: SizedBox(
                                  width: screenSize.width / 2,
                                  child: MovieDetailInfoCard(
                                    title: 'Original language',
                                    info: movieDetail.originalLanguage,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: movieDetail.homepage.isNotEmpty,
                          child: MovieDetailInfoCard(
                            title: 'Home page',
                            info: movieDetail.homepage,
                            infoStyle: AppTextStyle.s14Regular.copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.skyBlue,
                              color: AppColors.skyBlue,
                            ),
                            onTapInfo: () async {
                              if (await canLaunchUrl(
                                  Uri.parse(movieDetail.homepage))) {
                                await launchUrl(
                                  Uri.parse(movieDetail.homepage),
                                  mode: LaunchMode.externalApplication,
                                );
                              }
                            },
                          ),
                        ),
                        const Gap(Dimens.d16),
                      ],
                    ),
                  ),

                  ///
                  /// Poster/Backdrop image
                  ///
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      bottom: Dimens.d16,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const MovieDetailTitleContent(
                            title: 'Images',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Dimens.d16,
                            ),
                            child: MovieDetailImageContent(
                                movieDetail: movieDetail),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SliverPadding(
                    padding: EdgeInsets.only(
                      top: Dimens.d16,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: Divider(),
                    ),
                  ),

                  ///
                  /// You 'll like
                  ///
                  SliverVisibility(
                    visible: movieDetail.recommendations.isNotEmpty,
                    sliver: SliverPadding(
                      padding: const EdgeInsets.only(
                        bottom: Dimens.d16,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const MovieDetailTitleContent(
                                title: 'You\'ll Also Like'),
                            HorizontalMoviesList(
                              movies: movieDetail.recommendations,
                              onPressed: (movieId) {
                                context.router.pushNamed(
                                    '${RoutePath.movieDetail}/$movieId');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
