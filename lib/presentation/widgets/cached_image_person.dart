import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class CachedCirclePersonImage extends StatelessWidget {
  const CachedCirclePersonImage({
    super.key,
    required this.imageUrl,
    this.width = Dimens.d48,
    this.height = Dimens.d48,
    this.boxFit,
  });

  final String imageUrl;
  final double width;
  final double height;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        key: super.key,
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: boxFit,
        fadeOutDuration: const Duration(milliseconds: 400),
        fadeInDuration: const Duration(milliseconds: 400),
        placeholder: (context, url) {
          return Center(
            child: Assets.images.greyLogo.svg(
              height: Dimens.d24,
            ),
          );
        },
        errorWidget: (context, url, error) {
          return Center(
            child: Assets.images.icons.icAvatar.svg(),
          );
        },
      ),
    );
  }
}
