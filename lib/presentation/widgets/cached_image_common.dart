import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class CachedImageCommon extends StatelessWidget {
  const CachedImageCommon({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: super.key,
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      fadeOutDuration: const Duration(milliseconds: 400),
      fadeInDuration: const Duration(milliseconds: 400),
      placeholder: (context, url) {
        return Center(
          child: SizedBox(
            width: width,
            height: height,
            child: Assets.images.greyLogo.svg(
              height: Dimens.d48,
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Center(
            child: Assets.images.icons.icImgError.svg(
          height: Dimens.d32,
        ));
      },
    );
  }
}
