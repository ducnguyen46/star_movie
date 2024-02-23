import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/presentation/widgets/cached_image_person.dart';
import 'package:star_movie/share/constants/image_config_constant.dart';
import 'package:star_movie/share/resources/resources.dart';

class MovieDetailCrewCard extends StatelessWidget {
  const MovieDetailCrewCard({
    super.key,
    required this.crew,
    this.onTap,
  });

  final Crew crew;
  final Function(String crewId)? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.d16,
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap != null ? onTap!('${crew.id}') : null,
        child: Row(
          children: [
            CachedCirclePersonImage(
              height: Dimens.d50,
              width: Dimens.d50,
              boxFit: BoxFit.fitWidth,
              imageUrl: ImageConfigConstant.profileImgH632 + crew.profilePath,
            ),
            const Gap(Dimens.d16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    crew.name,
                    style: AppTextStyle.s14Medium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    crew.job,
                    style: AppTextStyle.s12Regular,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
