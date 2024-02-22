import 'package:flutter/material.dart';
import 'package:star_movie/share/utils/utils.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.drawer,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.isHideKeyboardTouchOutside = true,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool isHideKeyboardTouchOutside;

  @override
  Widget build(BuildContext context) {
    final appScaffold = Scaffold(
      key: key,
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
    );

    return isHideKeyboardTouchOutside
        ? GestureDetector(
            onTap: () => ViewUtil.hideKeyboard(context),
            child: appScaffold,
          )
        : appScaffold;
  }
}
