import 'package:flutter/material.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/resources/resources.dart';

class VoteAverageMarker extends StatelessWidget {
  const VoteAverageMarker({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.d4),
      decoration: ShapeDecoration(
        color: AppColors.richBlack50,
        shape: const StadiumBorder(),
      ),
      child: Center(
        child: Text(
          movie.voteAverage.toStringAsFixed(1),
          style: AppTextStyle.s10Regular.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
