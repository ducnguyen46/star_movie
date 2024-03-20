import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';

import 'cached_image_common.dart';
import 'vote_average_marker.dart';

class MovieItemListCard extends StatelessWidget {
  const MovieItemListCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pushNamed('${RoutePath.movieDetail}/${movie.id}');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.d16,
        ),
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
                      width: Dimens.d140 * AppConstants.posterRatio,
                      child: CachedImageCommon(
                        imageUrl: ImageConfigConstant.posterImgW500 +
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
