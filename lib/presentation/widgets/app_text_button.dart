import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
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
    this.sideColor,
    this.disabledSideColor,
    this.shape,
    this.tapTargetSize,
    this.icon,
  }) : super(key: key);

  const AppTextButton.icon({
    Key? key,
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
    this.sideColor,
    this.disabledSideColor,
    this.shape,
    this.tapTargetSize,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? title;
  final Widget? icon;
  // UI property
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final Color? shadowColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Size? fixedSize;
  final Size? maximumSize;
  final Color? sideColor;
  final Color? disabledSideColor;
  final OutlinedBorder? shape;
  final MaterialTapTargetSize? tapTargetSize;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final foregroundColorProp =
        MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return disabledForegroundColor ??
            colorScheme.onSurface.withOpacity(0.38);
      } else if (states.contains(MaterialState.pressed)) {
        return (foregroundColor ?? colorScheme.primary).darken(Dimens.d6);
      } else {
        return foregroundColor ?? colorScheme.primary;
      }
    });

    final backgroundColorProp =
        MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return disabledBackgroundColor ?? Colors.transparent;
      } else {
        return backgroundColor ?? Colors.transparent;
      }
    });

    const sideProp = MaterialStatePropertyAll<BorderSide>(BorderSide.none);
    const overlayColorProp =
        MaterialStatePropertyAll<Color?>(Colors.transparent);

    return TextButtonTheme(
      data: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: ButtonStyleButton.allOrNull(
              textStyle ?? AppTextStyle.s16SemiBold),
          foregroundColor: foregroundColorProp,
          backgroundColor: backgroundColorProp,
          overlayColor: overlayColorProp,
          shadowColor: ButtonStyleButton.allOrNull(shadowColor),
          padding: ButtonStyleButton.allOrNull(padding),
          minimumSize: ButtonStyleButton.allOrNull(minimumSize),
          fixedSize: ButtonStyleButton.allOrNull(fixedSize),
          maximumSize: ButtonStyleButton.allOrNull(maximumSize),
          side: sideProp,
          shape: ButtonStyleButton.allOrNull(
            shape ??
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.d4)),
          ),
          tapTargetSize: tapTargetSize ?? MaterialTapTargetSize.shrinkWrap,
          splashFactory: NoSplash.splashFactory,
        ),
      ),
      child: icon == null
          ? TextButton(
              onPressed: onPressed,
              child: title == null ? const SizedBox() : Text(title!),
            )
          : TextButton.icon(
              onPressed: onPressed,
              icon: icon!,
              label: title == null ? const SizedBox() : Text(title!),
            ),
    );
  }
}
