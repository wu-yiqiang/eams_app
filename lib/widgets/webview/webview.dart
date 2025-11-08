import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webvview extends StatefulWidget {
  Webvview({super.key, required this.url});
  String url;
  @override
  State<StatefulWidget> createState() {
    return WebvviewState();
  }
}

class WebvviewState extends State<Webvview> {
  late WebViewController webViewController;
  @override
  void initState() {
    super.initState();
    _initWebvviewController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _initWebvviewController() async {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) => {print("加载进度$progress")},
          onPageStarted: (String url) => {
            EasyLoading.show(
              maskType: EasyLoadingMaskType.black, // 设置背景不可点
            ),
          },
          onPageFinished: (String url) => {EasyLoading.dismiss()},
          onWebResourceError: (WebResourceError error) => {
            EasyLoading.showError(
              'loadingFailed'.tr,
              maskType: EasyLoadingMaskType.black, // 设置背景不可点

              duration: Duration(seconds: 2),
            ),
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: WebViewWidget(controller: webViewController));
  }
}
