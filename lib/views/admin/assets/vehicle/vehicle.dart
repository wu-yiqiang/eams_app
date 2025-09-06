import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class VehiclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("前端页面"),
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: Text("连接地址")
    );
  }
}

