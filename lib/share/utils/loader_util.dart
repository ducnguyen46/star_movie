import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoaderUtil {
  static OverlayEntry? _overlayEntry;

  static bool get isShowing => _overlayEntry != null;

  static void showLoading(BuildContext context) {
    _removeLoadingOverlay();
    _overlayEntry = _createLoadingOverlay(context);
    Overlay.of(context).insert(_overlayEntry!);
  }

  static void hideLoading() {
    _removeLoadingOverlay();
  }

  static OverlayEntry _createLoadingOverlay(BuildContext context) {
    return OverlayEntry(
      builder: (context) {
        return WillPopScope(
          onWillPop: () => Future.value(false),
          child: ColoredBox(
            color: const Color(0x80000000),
            child: Center(
              child: Platform.isAndroid ? const CircularProgressIndicator() : const CupertinoActivityIndicator(),
            ),
          ),
        );
      },
    );
  }

  static void _removeLoadingOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }
}
