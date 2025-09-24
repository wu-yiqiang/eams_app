import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams/router/routers.dart';

class NoticesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.only(top: 20),
      child: Row(children: [Text("通知中心")]),
    );
  }
}
