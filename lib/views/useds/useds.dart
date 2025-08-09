import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class UsedsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("使用记录")),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Text("使用记录"),
            ),
          ],
        ),
      ),
    );
  }
}
