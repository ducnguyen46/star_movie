import 'package:flutter/material.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/resources/resources.dart';

class HorizontalMoviesList extends StatelessWidget {
  const HorizontalMoviesList({
    super.key,
    required this.movies,
    this.onPressed,
  });

  final List<Movie> movies;
  final void Function(int moviedId)? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.d180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, itemIndex) {
          final isFirst = itemIndex == 0;
          final isLast = itemIndex == movies.length - 1;

          return Container(
            margin: EdgeInsets.only(
              left: isFirst ? Dimens.d16 : Dimens.d8,
              right: isLast ? Dimens.d16 : Dimens.d8,
            ),
            child: GestureDetector(
              onTap: () =>
                  onPressed != null ? onPressed!(movies[itemIndex].id) : null,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    Dimens.d6,
                  ),
                ),
                child: Stack(
                  children: [
                    CachedImageCommon(
                      width: Dimens.d180 * AppConstants.posterRatio,
                      imageUrl:
                          '${ImageConfigConstant.posterImgW500}${movies[itemIndex].posterPath}',
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimens.d0,
                      right: Dimens.d0,
                      bottom: Dimens.d0,
                      child: Padding(
                        padding: const EdgeInsets.all(Dimens.d6),
                        child: Text(
                          movies[itemIndex].title,
                          style: AppTextStyle.s12Medium.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Positioned(
                      right: Dimens.d4,
                      top: Dimens.d4,
                      child: VoteAverageMarker(movie: movies[itemIndex]),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
