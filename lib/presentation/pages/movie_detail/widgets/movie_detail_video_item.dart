import 'package:flutter/material.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/resources/resources.dart';

class MovieDetailVideoItem extends StatelessWidget {
  const MovieDetailVideoItem({
    super.key,
    required this.videoKey,
    required this.videoTitle,
    this.onPressed,
    required this.height,
  });

  final String videoKey;
  final String videoTitle;
  final double height;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height * 16 / 9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.d8),
            ),
            child: Container(
              height: height,
              width: height * 16 / 9,
              decoration: BoxDecoration(
                color: AppColors.richBlack20,
              ),
              child: CachedImageCommon(
                imageUrl: 'https://img.youtube.com/vi/$videoKey/0.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Text(
            videoTitle,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s12Regular,
          ),
        ],
      ),
    );
  }
}
