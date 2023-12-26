import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/resources/resources.dart';

class MovieDetailImageContent extends StatelessWidget {
  const MovieDetailImageContent({
    super.key,
    required this.movieDetail,
    this.onTapBackdrops,
    this.onTapPosters,
  });

  final MovieDetail movieDetail;
  final void Function()? onTapBackdrops;
  final void Function()? onTapPosters;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final imgHeight =
        (size.width - Dimens.d16 * 3) * 1 / 3 / AppConstants.posterRatio;

    return Row(
      children: [
        GestureDetector(
          onTap: onTapBackdrops,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.d8),
            ),
            child: Stack(
              children: [
                CachedImageCommon(
                  fit: BoxFit.fitHeight,
                  width: (size.width - Dimens.d16 * 3) * 2 / 3,
                  height: imgHeight,
                  imageUrl:
                      '${ImageConfigConstant.backdropImgW780}${movieDetail.backdropPath}',
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
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
                      '${movieDetail.backdropImages.length} backdrops',
                      style: AppTextStyle.s14SemiBold.copyWith(
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
        const Gap(Dimens.d16),
        GestureDetector(
          onTap: onTapPosters,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.d8),
            ),
            child: Stack(
              children: [
                CachedImageCommon(
                  fit: BoxFit.fitHeight,
                  width: (size.width - Dimens.d16 * 3) * 1 / 3,
                  height: imgHeight,
                  imageUrl:
                      '${ImageConfigConstant.posterImgW500}${movieDetail.posterPath}',
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
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
                      '${movieDetail.posterImages.length} posters',
                      style: AppTextStyle.s14SemiBold.copyWith(
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
    );
  }
}
