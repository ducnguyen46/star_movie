import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/image_config_constant.dart';
import 'package:star_movie/share/resources/resources.dart';

class MovieDetailCastCard extends StatelessWidget {
  const MovieDetailCastCard({
    super.key,
    required this.cast,
  });

  final Cast cast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.d16,
      ),
      child: Row(
        children: [
          ClipOval(
            child: CachedImageCommon(
              height: Dimens.d50,
              width: Dimens.d50,
              fit: BoxFit.fitWidth,
              imageUrl: ImageConfigConstant.profileImgH632 + cast.profilePath,
            ),
          ),
          const Gap(Dimens.d16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cast.name,
                  style: AppTextStyle.s14Medium,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  cast.character,
                  style: AppTextStyle.s12Regular,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
