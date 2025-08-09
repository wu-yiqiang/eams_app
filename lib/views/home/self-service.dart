import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams_app/router/routers.dart';


class SelfServicePage extends StatelessWidget {
  final List selfServices = [
    {"path": routerMap['TODO'], "label": "待办", "icon": "assets/svg/todo.svg"},
    {
      "path": routerMap['ATTENDANCE'],
      "label": "考勤",
      "icon": "assets/svg/attendance.svg",
    },
    {
      "path": routerMap['BUSINESSTRIP'],
      "label": "出差",
      "icon": "assets/svg/travel.svg",
    },
    {
      "path": routerMap['OVERWORK'],
      "label": "加班",
      "icon": "assets/svg/workOverTime.svg",
    },
    {
      "path": routerMap['HOLIDAY'],
      "label": "休假",
      "icon": "assets/svg/holiday.svg",
    },
    {
      "path": routerMap['FIELDWORK'],
      "label": "外勤",
      "icon": "assets/svg/fieldWork.svg",
    },
    {
      "path": routerMap['TRAINING'],
      "label": "培训",
      "icon": "assets/svg/training.svg",
    },
    {
      "path": routerMap['SALARYADJUST'],
      "label": "调岗调薪",
      "icon": "assets/svg/salaryAdjust.svg",
    },
    {
      "path": routerMap['REWARD'],
      "label": "奖励",
      "icon": "assets/svg/reward.svg",
    },
    {
      "path": routerMap['PUNISH'],
      "label": "处罚",
      "icon": "assets/svg/punish.svg",
    },
    {
      "path": routerMap['USEDS'],
      "label": "领用记录",
      "icon": "assets/svg/useds.svg",
    },
    {
      "path": routerMap['CONTRACT'],
      "label": "合同",
      "icon": "assets/svg/contract.svg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184,
      child: Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, //横轴三个子widget
              childAspectRatio: 1.0, //宽高比为1时，子widget
            ),
            children: selfServices.map((v) {
              return Container(
                // color: Colors.red,
                child: IconButton(
                  icon: Column(
                    spacing: 8,
                    children: [
                      SvgPicture.asset(v['icon'], width: 32, height: 32),
                      Container(
                        height: 20,
                        child: Text(v['label'], style: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Get.toNamed(v['path']);
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
