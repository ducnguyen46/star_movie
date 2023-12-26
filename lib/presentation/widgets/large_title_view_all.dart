import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class LargeTitleViewAll extends StatelessWidget {
  const LargeTitleViewAll({
    super.key,
    required this.largeTitle,
    this.titleStyle,
    required this.onPressed,
  });

  final String largeTitle;
  final TextStyle? titleStyle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Expanded(
            child: Text(
              largeTitle,
              style: titleStyle ?? AppTextStyle.s18Medium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            context.tr('view_all'),
            style: AppTextStyle.s14SemiBold.copyWith(
              color: AppColors.skyBlue,
            ),
          ),
        ],
      ),
    );
  }
}
