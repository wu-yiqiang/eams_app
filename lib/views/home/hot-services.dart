import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams_app/router/routers.dart';

class HotServicePage extends StatelessWidget {
  final List selfServices = [
    {"path": routerMap['TODO'], "label": "今日菜谱", "icon": "assets/svg/todo.svg"},
    {
      "path": routerMap['ATTENDANCE'],
      "label": "考勤",
      "icon": "assets/svg/attendance.svg",
    },
    {
      "path": routerMap['ATTENDANCE'],
      "label": "考勤",
      "icon": "assets/svg/attendance.svg",
    },
    {
      "path": routerMap['ATTENDANCE'],
      "label": "考勤",
      "icon": "assets/svg/attendance.svg",
    },
    {
      "path": routerMap['ATTENDANCE'],
      "label": "考勤",
      "icon": "assets/svg/attendance.svg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 6,
              children: selfServices.map((v) {
                return Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.amber,
                  ),
                  child: Text(v['label']),
                );
              }).toList(),
            ),
          ),
          ),
        ),
    );
  }
}
