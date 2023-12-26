import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class MovieDetailInfoCard extends StatelessWidget {
  const MovieDetailInfoCard({
    super.key,
    required this.title,
    required this.info,
    this.onTapInfo,
    this.titleStyle,
    this.infoStyle,
  });

  final String title;
  final String info;
  final void Function()? onTapInfo;
  final TextStyle? titleStyle;
  final TextStyle? infoStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.d16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle ?? AppTextStyle.s14Medium,
          ),
          GestureDetector(
            onTap: onTapInfo,
            child: Text(
              info,
              style: infoStyle ?? AppTextStyle.s14Regular,
            ),
          ),
        ],
      ),
    );
  }
}
