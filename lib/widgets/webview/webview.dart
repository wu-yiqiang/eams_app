import 'package:flutter/material.dart';
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
          onPageStarted: (String url) => {print("开始加载$url")},
          onPageFinished: (String url) => {print("加载完成$url")},
          onWebResourceError: (WebResourceError error) => {print("加载失败$error")},
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
