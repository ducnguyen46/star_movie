import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/utils/utils.dart';

class UserApprovalPage extends StatefulWidget {
  const UserApprovalPage({super.key, required this.token});
  final String token;

  @override
  State<UserApprovalPage> createState() => _UserApprovalPageState();
}

class _UserApprovalPageState extends State<UserApprovalPage> {
  final GlobalKey _webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  bool isForceBack = false;

  @override
  Widget build(BuildContext context) {
    String urlRequest =
        'https://www.themoviedb.org/authenticate/${widget.token}';

    return WillPopScope(
      onWillPop: () async {
        if (isForceBack) {
          return true;
        }

        final isWebViewBack = await webViewController?.canGoBack() ?? false;
        if (isWebViewBack) {
          webViewController?.goBack();
          return false;
        }
        return true;
      },
      child: AppScaffold(
        appBar: AppBarCommon(
          title: Text(context.tr('user_approval')),
          leading: CloseButton(
            onPressed: () {
              isForceBack = true;
              Navigator.of(context, rootNavigator: true).pop();
            },
          ),
        ),
        body: InAppWebView(
          key: _webViewKey,
          initialUrlRequest: URLRequest(url: Uri.parse(urlRequest)),
          onWebViewCreated: (controller) {
            webViewController = controller;
            LoaderUtil.showLoading(context);
          },
          onLoadStop: (controller, url) {
            if (LoaderUtil.isShowing) {
              LoaderUtil.hideLoading();
            }
            LogUtil.d('Loaded ${url.toString()}');

            final urlLoaded = url.toString();
            final urlAllow = '$urlRequest/allow';
            final urlDeny = '$urlRequest/deny';
            if (urlLoaded == urlAllow) {
              isForceBack = true;
              Navigator.of(context, rootNavigator: true).pop<bool?>(true);
            } else if (urlLoaded == urlDeny) {
              isForceBack = true;
              Navigator.of(context, rootNavigator: true).pop<bool?>(false);
            }
          },
        ),
      ),
    );
  }
}
