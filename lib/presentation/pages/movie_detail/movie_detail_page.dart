import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/movie_detail_cubit/movie_detail_cubit.dart';
import 'package:star_movie/presentation/pages/movie_page/widgets/horizontal_movies_list.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:star_movie/share/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/widgets.dart';

@RoutePage()
class MovieDetailRouterScreen extends AutoRouter implements AutoRouteWrapper {
  const MovieDetailRouterScreen({
    super.key,
    @PathParam('movie_id') required this.movieId,
  });

  final int movieId;

  @override
  Widget wrappedRoute(Object context) {
    return BlocProvider(
      create: (context) => MovieDetailCubit(
        movieDetailUseCase: getIt<GetMovieDetailUseCase>(),
        ratingMovieUseCase: getIt<RatingMovieUseCase>(),
        removeRatingMovieUseCase: getIt<RemoveRatingMovieUseCase>(),
      )..getDetailMovie(movieId),
      child: this,
    );
  }
}

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    super.key,
    @PathParam.inherit('movie_id') required this.movieId,
  });

  final int movieId;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final backdropHeight = screenSize.height / 3 * 4 / 5;
    final paddingTop = MediaQuery.viewPaddingOf(context).top;
    return BlocProvider.value(
      value: context.read<MovieDetailCubit>(),
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

  var ratingValue = 0.0;

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
                                  trimCollapsedText: ' read more'.hardCode,
                                  trimExpandedText: ' show less'.hardCode,
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
                          GestureDetector(
                            onTap: () => showRatingDialog(
                              context: context,
                              movieId: movieDetail.id,
                              ratedValue: state.movieDetail!.rate,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'My rating'.hardCode,
                                  style: AppTextStyle.s12Regular,
                                ),
                                BlocBuilder<MovieDetailCubit, MovieDetailState>(
                                  buildWhen: (previous, current) {
                                    return previous.status ==
                                            MovieDetailStatus.rating ||
                                        current.status ==
                                            MovieDetailStatus.rated;
                                  },
                                  builder: (context, state) {
                                    return Text(
                                      state.movieDetail!.rate !=
                                              AppConstants.defaultMovieRate
                                          ? state.movieDetail!.rate.toString()
                                          : ' - ',
                                      style: AppTextStyle.s14Regular.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimens.d20,
                            child: VerticalDivider(
                              color: AppColors.richBlack20,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'TMDB'.hardCode,
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
                        MovieDetailTitleContent(title: 'Genres'.hardCode),
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
                          MovieDetailTitleContent(
                            title: 'Videos'.hardCode,
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
                            MovieDetailTitleContent(
                              title: 'Collections'.hardCode,
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
                        largeTitle: 'Cast'.hardCode,
                        titleStyle: AppTextStyle.s16SemiBold,
                        onPressed: () {
                          context.router.pushNamed(
                            RoutePath.movieCasts.isSubPage,
                          );
                        },
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
                        largeTitle: 'Crew'.hardCode,
                        titleStyle: AppTextStyle.s16SemiBold,
                        onPressed: () {
                          context.router.pushNamed(
                            RoutePath.movieCrews.isSubPage,
                          );
                        },
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
                        MovieDetailTitleContent(
                          title: 'Informations'.hardCode,
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
                                    title: 'Budget'.hardCode,
                                    info: movieDetail.budget,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: movieDetail.revenue.isNotEmpty,
                                child: SizedBox(
                                  width: screenSize.width / 2,
                                  child: MovieDetailInfoCard(
                                    title: 'Revenue'.hardCode,
                                    info: movieDetail.revenue,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: movieDetail.originalTitle.isNotEmpty,
                                child: SizedBox(
                                  width: screenSize.width / 2,
                                  child: MovieDetailInfoCard(
                                    title: 'Original title'.hardCode,
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
                                    title: 'Original language'.hardCode,
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
                            title: 'Home page'.hardCode,
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
                          MovieDetailTitleContent(
                            title: 'Images'.hardCode,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Dimens.d16,
                            ),
                            child: MovieDetailImageContent(
                              movieDetail: movieDetail,
                              onTapBackdrops: () {
                                if (movieDetail.backdropImages.isNotEmpty) {
                                  context.router.pushNamed(
                                      '${RoutePath.photoViewer.isSubPage}?type=${AppConstants.backdrops}');
                                }
                              },
                              onTapPosters: () {
                                if (movieDetail.posterImages.isNotEmpty) {
                                  context.router.pushNamed(
                                      '${RoutePath.photoViewer.isSubPage}?type=${AppConstants.posters}');
                                }
                              },
                            ),
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
                            MovieDetailTitleContent(
                                title: 'You\'ll Also Like'.hardCode),
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

  void showRatingDialog({
    required BuildContext context,
    required int movieId,
    required double ratedValue,
  }) {
    AppDialogUtil.showAppDialog(
      context,
      AppDialogInfo.customDialog(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: Dimens.d16,
            ),
            child: Text('Rating movie'.hardCode),
          ),
        ),
        titleTextStyle: AppTextStyle.s24SemiBold.copyWith(
          fontSize: Dimens.d20,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        content: MovieDetailRatingContent(
          initalValue:
              ratedValue != AppConstants.defaultMovieRate ? ratedValue : 0,
          onRatingUpdate: (value) => ratingValue = value,
        ),
        actions: [
          AppOutlineButton(
            onPressed: () {
              context.router.pop();
            },
            title: 'Cancel'.hardCode,
          ),
          AppFillButton(
            onPressed: () {
              final movieCubit = context.read<MovieDetailCubit>();

              ratedValue == AppConstants.defaultMovieRate
                  ? movieCubit.ratingMovie(
                      movieId: '$movieId',
                      value: ratingValue,
                    )
                  : movieCubit.removeRatingMovie(movieId: '$movieId');
              context.router.pop();
            },
            title: ratedValue != AppConstants.defaultMovieRate
                ? 'Remove rating'.hardCode
                : 'Rate'.hardCode,
          ),
        ],
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(Dimens.d8),
        ),
      ),
    );
  }
}
