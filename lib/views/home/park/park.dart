import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class ParkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("车位情况"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text("当前还剩余6个车位可供使用"),
            ),
          ],
        ),
      ),
    );
  }
}
