import 'package:eams_app/views/home/charge/charge_controll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ChargePage extends StatelessWidget {
  ChargeController chargeController = Get.put(ChargeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("电桩情况")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, //横轴三个子widget
              childAspectRatio: 1.0, //宽高比为1时，子widget
            ),
            children: chargeController.chargeStatus.map((v) {
              return Container(
                child: Column(
                  children: [
                    v['status'] == 0
                        ? SvgPicture.asset(
                            'assets/svg/charge_error.svg',
                            width: 40,
                            height: 40,
                          )
                        : v['status'] == 1
                        ? SvgPicture.asset(
                            'assets/svg/charge_start.svg',
                            width: 40,
                            height: 40,
                          )
                        : SvgPicture.asset(
                            'assets/svg/charge_stop.svg',
                            width: 40,
                            height: 40,
                          ),
                    Text(v['title']),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
