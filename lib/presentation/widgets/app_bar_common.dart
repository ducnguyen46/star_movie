import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:star_movie/share/resources/resources.dart';

class AppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCommon({
    super.key,
    this.leading,
    this.automaticallyImplyLeading,
    this.title,
    this.centerTitle,
    this.titleTextStyle,
    this.actions,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
  }) : preferredSize = const Size.fromHeight(Dimens.d56);

  final Widget? leading;
  final bool? automaticallyImplyLeading;
  final Widget? title;
  final bool? centerTitle;
  final TextStyle? titleTextStyle;

  final List<Widget>? actions;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          (GoRouter.of(context).canPop()
              ? BackButton(
                  color: Theme.of(context).colorScheme.primary,
                )
              : null),
      title: title,
      titleTextStyle: titleTextStyle ??
          AppTextStyle.s18Medium.copyWith(
            fontSize: Dimens.d20,
            color: Theme.of(context).colorScheme.primary,
          ),
      centerTitle: centerTitle ?? true,
      actions: actions,
      shape: shape,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }
}
