import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams_app/views/home/park/progress.dart';
import 'dart:math' as math;

class ParkPage extends StatelessWidget {
  int remainStation = 80;
  int total = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("车位详情")),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Center(
                // child: Transform.rotate(
                //   angle: -(math.pi + math.pi / 4 + math.asin(22 * 0.5 / 100)),
                //   // 0,
                //   child: ArcView(currentCount: remainStation, total: total),
                // ),
                child: ArcView(currentCount: remainStation, total: total),
              ),
              Container(child: Text("当前还剩余${remainStation}个车位可供使用")),
            ],
          ),
        ),
      ),
    );
  }
}
