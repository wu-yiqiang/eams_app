import 'package:eams/views/home/park/park_controller.dart';
import 'package:eams/widgets/Empty.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams/views/home/park/progress.dart';

class ParkPage extends StatelessWidget {
  ParkController parkController = Get.put(ParkController());
  ParkPage({super.key});
  @override
  Widget build(BuildContext context) {
    parkController.getStations();
    return Scaffold(
      appBar: AppBar(title: Text('parkDetails'.tr)),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Obx(() {
            return parkController.sumStations.value <= 0
                ? Empty()
                : Column(
                    children: [
                      Center(
                        // child: Transform.rotate(
                        //   angle: -(math.pi + math.pi / 4 + math.asin(22 * 0.5 / 100)),
                        //   // 0,
                        //   child: ArcView(currentCount: remainStation, total: total),
                        // ),
                        child: ArcView(
                          currentCount: parkController.remainStations.value,
                          total: parkController.sumStations.value,
                        ),
                      ),
                      Container(
                        child: Text(
                          "remainParkStationTips".trParams({
                            'count': parkController.remainStations.value.toString(),
                          }),
                        ),
                      ),
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
