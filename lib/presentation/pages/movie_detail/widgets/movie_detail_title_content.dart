import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class MovieDetailTitleContent extends StatelessWidget {
  const MovieDetailTitleContent({
    super.key,
    required this.title,
    this.paddingLeft = Dimens.d16,
    this.paddingTop = Dimens.d16,
    this.paddingRight = Dimens.d16,
    this.paddingBottom = Dimens.d8,
  });

  final String title;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingLeft,
        right: paddingRight,
        top: paddingTop,
        bottom: paddingBottom,
      ),
      child: Text(
        title,
        style: AppTextStyle.s16SemiBold,
      ),
    );
  }
}
