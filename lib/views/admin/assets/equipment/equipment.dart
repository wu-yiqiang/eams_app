import 'package:eams/widgets/webview/webview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class EquipmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("微软天气")),
      body: SafeArea(
        child: Webvview(url: "https://www.msn.cn/zh-cn/weather/"),
        ),
    );
  }
}
