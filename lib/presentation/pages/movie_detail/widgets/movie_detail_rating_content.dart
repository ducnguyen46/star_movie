import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:star_movie/share/resources/resources.dart';

class MovieDetailRatingContent extends StatelessWidget {
  const MovieDetailRatingContent({
    super.key,
    required this.initalValue,
    required this.onRatingUpdate,
  });

  final double initalValue;
  final Function(double) onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      onRatingUpdate: onRatingUpdate,
      initialRating: initalValue,
      itemCount: 10,
      ratingWidget: RatingWidget(
        full: Assets.images.icons.icFullHeart.svg(),
        half: const SizedBox(),
        empty: Assets.images.icons.icEmptyHeart.svg(),
      ),
      itemSize: Dimens.d20,
      itemPadding: const EdgeInsets.all(Dimens.d2),
      glowColor: AppColors.redPrimary,
    );
  }
}
