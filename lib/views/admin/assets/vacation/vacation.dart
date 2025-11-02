import 'package:eams/widgets/webview/webview.dart';
import 'package:flutter/material.dart';

class VacationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Webvview(url: "https://www.msn.cn/zh-cn/weather/"));
  }
}
