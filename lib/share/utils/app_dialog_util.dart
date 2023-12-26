import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';

part 'app_dialog_util.freezed.dart';

class AppDialogUtil {
  static final _dialogs = <AppDialogInfo>[];

  static Future<T?> showAppDialog<T>(
    BuildContext context,
    AppDialogInfo appDialogInfo, {
    Color? backgroundColor,
    ShapeBorder? shape,
    bool barrierDismissible = true,
  }) {
    /// if had other dialog is showing
    if (_dialogs.contains(appDialogInfo)) {
      return Future.value(null);
    } else {
      _dialogs.add(appDialogInfo);
    }

    return showGeneralDialog<T>(
        context: context,
        barrierDismissible: barrierDismissible,
        barrierLabel: MaterialLocalizations.of(context).dialogLabel,
        pageBuilder: (context, animation, secondAnimation) {
          return WillPopScope(
              child: appDialogInfo.when<Widget>(confirmDialog: (title, messages, onPressedAction) {
                return AppDialogWidget(
                  shape: shape,
                  backgroundColor: backgroundColor,
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(messages),
                    ],
                  ),
                  actions: [
                    AppFillButton(
                      onPressed: onPressedAction,
                      title: context.tr('confirm'),
                    ),
                  ],
                );
              }, errorRetryDialog: (title, messages, onRetryAction, onCancelAction) {
                return AppDialogWidget(
                  shape: shape,
                  backgroundColor: backgroundColor,
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(messages),
                    ],
                  ),
                  actions: [
                    AppOutlineButton(
                      onPressed: onRetryAction,
                      title: context.tr('retry'),
                    ),
                    AppFillButton(
                      onPressed: onCancelAction,
                      title: context.tr('cancel'),
                    )
                  ],
                );
              }, customDialog: (icon, iconPadding, title, titlePadding, titleTextStyle, content, contentPadding,
                  contentTextStyle, actions, scrollable) {
                return AppDialogWidget(
                  shape: shape,
                  backgroundColor: backgroundColor,
                  icon: icon,
                  iconPadding: iconPadding,
                  title: title,
                  titlePadding: titlePadding,
                  titleTextStyle: titleTextStyle,
                  content: content,
                  contentPadding: contentPadding,
                  contentTextStyle: contentTextStyle,
                  actions: actions,
                  scrollable: scrollable,
                );
              }),
              onWillPop: () {
                _dialogs.remove(appDialogInfo);
                return Future.value(true);
              });
        });
  }
}

@freezed
class AppDialogInfo with _$AppDialogInfo {
  const factory AppDialogInfo.confirmDialog({
    required String title,
    required String messages,
    required VoidCallback onPressedAction,
  }) = _AppDialogConfirmDialog;

  const factory AppDialogInfo.errorRetryDialog({
    required String title,
    required String messages,
    required VoidCallback onRetryAction,
    required VoidCallback onCancelAction,
  }) = _AppDialogErrorRetry;

  const factory AppDialogInfo.customDialog({
    Widget? icon,
    EdgeInsetsGeometry? iconPadding,
    Widget? title,
    EdgeInsetsGeometry? titlePadding,
    TextStyle? titleTextStyle,
    Widget? content,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? contentTextStyle,
    List<Widget>? actions,
    @Default(false) bool scrollable,
  }) = _AppDialogCustomDialog;
}
