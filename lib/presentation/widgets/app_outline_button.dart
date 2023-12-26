import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class AppOutlineButton extends StatelessWidget {
  AppOutlineButton({
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
  }) : super(key: key);

  AppOutlineButton.icon({
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
  Color? sideColor;
  Color? disabledSideColor;
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

    final sideProp = MaterialStateProperty.resolveWith<BorderSide>((states) {
      if (states.contains(MaterialState.disabled)) {
        return BorderSide(
            color:
                disabledSideColor ?? colorScheme.onSurface.withOpacity(0.12));
      } else if (states.contains(MaterialState.pressed)) {
        return BorderSide(
            color: (sideColor ?? colorScheme.outline).darken(Dimens.d6));
      }
      return BorderSide(color: sideColor ?? colorScheme.outline);
    });

    const overlayColorProp =
        MaterialStatePropertyAll<Color?>(Colors.transparent);

    return OutlinedButtonTheme(
      data: OutlinedButtonThemeData(
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
          side: sideProp,
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
          ? OutlinedButton(
              onPressed: onPressed,
              child: title == null ? const SizedBox() : Text(title!),
            )
          : OutlinedButton.icon(
              onPressed: onPressed,
              icon: icon!,
              label: title == null ? const SizedBox() : Text(title!),
            ),
    );
  }
}
