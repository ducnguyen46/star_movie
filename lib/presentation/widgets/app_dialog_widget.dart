import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

class AppDialogWidget extends StatelessWidget {
  const AppDialogWidget({
    super.key,
    this.icon,
    this.iconPadding,
    this.title,
    this.titlePadding,
    this.titleTextStyle,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.actions,
    this.backgroundColor,
    this.shape,
    this.insetPadding = const EdgeInsets.symmetric(
        vertical: Dimens.d40, horizontal: Dimens.d24),
    this.scrollable = false,
  });

  final Widget? icon;

  final EdgeInsetsGeometry? iconPadding;

  /// The (optional) title of the dialog is displayed in a large font at the top
  /// of the dialog.
  final Widget? title;

  /// Padding around the title.
  /// Recommend 24 for left, top, right if have title
  final EdgeInsetsGeometry? titlePadding;

  final TextStyle? titleTextStyle;

  /// Content dialog
  final Widget? content;

  /// Default is 20 top, 24 for left, right, bottom if have content
  final EdgeInsetsGeometry? contentPadding;

  final TextStyle? contentTextStyle;

  final bool scrollable;

  /// Actions button
  final List<Widget>? actions;

  /// Dialog properties
  final Color? backgroundColor;
  final ShapeBorder? shape;
  final EdgeInsets? insetPadding;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget;
    Widget? titleWidget;
    Widget? contentWidget;
    Widget? actionsWidget;

    if (icon != null) {
      final bool belowIsTitle = title != null;
      final bool belowIsContent = !belowIsTitle && content != null;
      final EdgeInsets defaultIconPadding = EdgeInsets.only(
        left: Dimens.d24,
        top: Dimens.d24,
        right: Dimens.d24,
        bottom: belowIsTitle
            ? Dimens.d16
            : belowIsContent
                ? Dimens.d0
                : Dimens.d24,
      );

      iconWidget = Padding(
        padding: iconPadding ?? defaultIconPadding,
        child: icon,
      );
    }

    if (title != null) {
      titleWidget = Padding(
        padding: titlePadding ??
            EdgeInsets.only(
              left: Dimens.d24,
              top: icon == null ? Dimens.d24 : Dimens.d0,
              right: Dimens.d24,
              bottom: content == null ? Dimens.d20 : Dimens.d0,
            ),
        child: DefaultTextStyle(
          style: titleTextStyle ??
              AppTextStyle.s18Medium.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
          child: title!,
        ),
      );
    }

    if (content != null) {
      contentWidget = Padding(
        padding: const EdgeInsets.only(
          left: Dimens.d24,
          top: Dimens.d16,
          right: Dimens.d24,
          bottom: Dimens.d24,
        ),
        child: DefaultTextStyle(
          style: contentTextStyle ??
              AppTextStyle.s14Regular.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
          child: content!,
        ),
      );
    }

    if (actions != null) {
      bool hasContentAbove = content != null || title != null || icon != null;

      var cusActions = <Widget>[];
      for (var action in actions!) {
        cusActions.add(Expanded(child: action));
        cusActions.add(const SizedBox(
          width: Dimens.d8,
        ));
      }
      cusActions.removeLast();

      actionsWidget = Padding(
        padding: EdgeInsets.only(
          left: Dimens.d24,
          top: hasContentAbove ? Dimens.d0 : Dimens.d20,
          right: Dimens.d24,
          bottom: Dimens.d24,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: cusActions,
        ),
      );
    }

    List<Widget> columnChildren;
    if (scrollable) {
      columnChildren = <Widget>[
        if (title != null || content != null)
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  if (icon != null) iconWidget!,
                  if (title != null) titleWidget!,
                  if (content != null) contentWidget!,
                ],
              ),
            ),
          ),
        if (actions != null) actionsWidget!,
      ];
    } else {
      columnChildren = <Widget>[
        if (icon != null) iconWidget!,
        if (title != null) titleWidget!,
        if (content != null) Flexible(child: contentWidget!),
        if (actions != null) actionsWidget!,
      ];
    }

    Widget dialogChild = IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: columnChildren,
      ),
    );

    return Dialog(
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      shape: shape ??
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Dimens.d16)),
          ),
      insetPadding: insetPadding,
      child: dialogChild,
    );
  }
}
