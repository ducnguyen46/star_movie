import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class AppFillButton extends StatelessWidget {
  AppFillButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.shadowColor,
    this.textStyle,
    this.padding,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.side,
    this.shape,
    this.tapTargetSize,
  });

  AppFillButton.icon({
    super.key,
    required this.onPressed,
    required this.icon,
    this.title,
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.shadowColor,
    this.textStyle,
    this.padding,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.side,
    this.shape,
    this.tapTargetSize,
  });

  final VoidCallback? onPressed;
  String? title;
  Widget? icon;
  // UI property
  Color? foregroundColor;
  Color? backgroundColor;
  Color? disabledForegroundColor;
  Color? disabledBackgroundColor;
  Color? shadowColor;
  TextStyle? textStyle;
  EdgeInsetsGeometry? padding;
  Size? minimumSize;
  Size? fixedSize;
  Size? maximumSize;
  BorderSide? side;
  OutlinedBorder? shape;
  MaterialTapTargetSize? tapTargetSize;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final foregroundColorProp =
        MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return disabledForegroundColor ??
            colorScheme.onSurface.withOpacity(0.38);
      } else {
        return foregroundColor ?? colorScheme.onPrimary;
      }
    });

    final backgroundColorProp =
        MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return disabledBackgroundColor ??
            colorScheme.onSurface.withOpacity(0.12);
      } else if (states.contains(MaterialState.pressed)) {
        return (backgroundColor ?? colorScheme.primary).darken(Dimens.d6);
      } else {
        return backgroundColor ?? colorScheme.primary;
      }
    });

    const overlayColorProp =
        MaterialStatePropertyAll<Color?>(Colors.transparent);

    return FilledButtonTheme(
      data: FilledButtonThemeData(
        style: ButtonStyle(
          textStyle: ButtonStyleButton.allOrNull(
              textStyle ?? AppTextStyle.s16SemiBold),
          foregroundColor: foregroundColorProp,
          backgroundColor: backgroundColorProp,
          overlayColor: overlayColorProp,
          shadowColor: ButtonStyleButton.allOrNull(shadowColor),
          padding: ButtonStyleButton.allOrNull(padding),
          minimumSize: ButtonStyleButton.allOrNull(minimumSize),
          fixedSize: ButtonStyleButton.allOrNull(
              fixedSize ?? const Size.fromHeight(Dimens.d48)),
          maximumSize: ButtonStyleButton.allOrNull(maximumSize),
          side: ButtonStyleButton.allOrNull(side),
          shape: ButtonStyleButton.allOrNull(
            shape ??
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.d4)),
          ),
          tapTargetSize: tapTargetSize,
          splashFactory: NoSplash.splashFactory,
        ),
      ),
      child: icon == null
          ? FilledButton(
              onPressed: onPressed,
              child: title == null ? const SizedBox() : Text(title!),
            )
          : FilledButton.icon(
              onPressed: onPressed,
              icon: icon!,
              label: title == null ? const SizedBox() : Text(title!),
            ),
    );
  }
}
