import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams/router/routers.dart';

class SelfServicePage extends StatelessWidget {
  List selfServices = [
    {
      "path": routerMap['TODO'],
      "label": "toDo".tr,
      "icon": "assets/svg/todo.svg",
    },
    {
      "path": routerMap['ATTENDANCE'],
      "label": "attendance".tr,
      "icon": "assets/svg/attendance.svg",
    },
    {
      "path": routerMap['BUSINESSTRIP'],
      "label": "travel".tr,
      "icon": "assets/svg/travel.svg",
    },
    {
      "path": routerMap['OVERWORK'],
      "label": "overtime".tr,
      "icon": "assets/svg/workOverTime.svg",
    },
    {
      "path": routerMap['HOLIDAY'],
      "label": "vacation".tr,
      "icon": "assets/svg/holiday.svg",
    },
    {
      "path": routerMap['FIELDWORK'],
      "label": "fieldWork".tr,
      "icon": "assets/svg/fieldWork.svg",
    },
    {
      "path": routerMap['TRAINING'],
      "label": "training".tr,
      "icon": "assets/svg/training.svg",
    },
    {
      "path": routerMap['SALARYADJUST'],
      "label": "salary".tr,
      "icon": "assets/svg/salaryAdjust.svg",
    },
    {
      "path": routerMap['REWARD'],
      "label": "reward".tr,
      "icon": "assets/svg/reward.svg",
    },
    {
      "path": routerMap['PUNISH'],
      "label": "punishment".tr,
      "icon": "assets/svg/punish.svg",
    },
    {
      "path": routerMap['USEDS'],
      "label": "ledger".tr,
      "icon": "assets/svg/useds.svg",
    },
    {
      "path": routerMap['CONTRACT'],
      "label": "contract".tr,
      "icon": "assets/svg/contract.svg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, //横轴三个子widget
          // childAspectRatio: 1.0, //宽高比为1时，子widget
        ),
        children: selfServices.map((v) {
          return IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            icon: Column(
              spacing: 4,
              children: [
                SvgPicture.asset(v['icon'], width: 32, height: 32),
                SizedBox(
                  child: Text(
                    v['label'],
                    style: TextStyle(fontSize: 13),
                    softWrap: true,
                  ),
                ),
              ],
            ),
            onPressed: () {
              Get.toNamed(v['path']);
            },
          );
        }).toList(),
      ),
    );
  }
}
