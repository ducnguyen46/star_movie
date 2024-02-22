import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/presentation/blocs/movie_detail_cubit/cubit/movie_detail_cubit.dart';
import 'package:star_movie/presentation/widgets/app_bar_common.dart';
import 'package:star_movie/presentation/widgets/app_scaffold.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/resources/app_colors.dart';
import 'package:star_movie/share/utils/utils.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:photo_view/photo_view.dart';

@RoutePage()
class PhotoViewerPage extends StatelessWidget {
  const PhotoViewerPage({
    super.key,
    @PathParam.inherit('movie_id') required this.movieId,
    @QueryParam('type') this.imageType = '',
  });

  final String movieId;
  final String imageType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<MovieDetailCubit>(),
      child: AppScaffold(
        appBar: AppBarCommon(
          title: Text('Photo viewer'.hardCode),
        ),
        body: BlocBuilder<MovieDetailCubit, MovieDetailState>(
          builder: (context, state) {
            switch (state.status) {
              case MovieDetailStatus.error:
                return Center(
                  child: Text(
                    state.errorState?.errorMessages ?? 'Error here'.hardCode,
                  ),
                );
              case MovieDetailStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                final images = _getImageByType(state.movieDetail!, imageType);
                return PhotoViewGallery.builder(
                  scrollPhysics: const BouncingScrollPhysics(),
                  builder: (BuildContext context, int index) {
                    final img = images[index];
                    LogUtil.d('index $index');
                    final imgUrl =
                        '${img.height < img.width ? ImageConfigConstant.backdropImg : ImageConfigConstant.posterImg}${img.filePath}';
                    return PhotoViewGalleryPageOptions(
                      imageProvider: NetworkImage(imgUrl),
                      initialScale: PhotoViewComputedScale.contained * 1.0,
                      minScale: PhotoViewComputedScale.contained * 0.8,
                      maxScale: PhotoViewComputedScale.covered * 1.2,
                      heroAttributes:
                          PhotoViewHeroAttributes(tag: img.filePath),
                    );
                  },
                  itemCount: images.length,
                  loadingBuilder: (context, progress) =>
                      const Center(child: CircularProgressIndicator()),
                  backgroundDecoration: BoxDecoration(color: AppColors.white),
                );
            }
          },
        ),
      ),
    );
  }

  List<MovieImage> _getImageByType(MovieDetail movieDetail, String type) {
    if (type.isEmpty || type == AppConstants.posters) {
      return movieDetail.posterImages;
    }
    return movieDetail.backdropImages;
  }
}
