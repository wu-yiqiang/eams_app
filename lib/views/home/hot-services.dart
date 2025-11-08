import 'package:eams/utils/EventBus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams/router/routers.dart';
import 'package:flutter_svg/svg.dart';

class HotServicePage extends StatelessWidget {
  final List selfServices = [
    {
      "path": routerMap['ATTENDANCE'],
      "label": "自主报修",
      "icon": "assets/svg/repair.svg",
    },
    {
      "path": routerMap['MENUS'],
      "label": "今日菜谱",
      "icon": "assets/svg/menu.svg",
    },
    {
      "path": routerMap['CHARGE'],
      "label": "电桩情况",
      "icon": "assets/svg/pile.svg",
    },
    {"path": routerMap['PARK'], "label": "车位查询", "icon": "assets/svg/park.svg"},
    {
      "path": routerMap['CREDIT'],
      "label": "帐户余额",
      "icon": "assets/svg/account.svg",
    },
    {
      "path": routerMap['REIMBURSEMENT'],
      "label": "reimbursement",
      "icon": "assets/svg/reimbursement.svg",
    },
    {
      "path": routerMap['ATTENDANCE'],
      "label": "自主申报",
      "icon": "assets/svg/report.svg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text("popularPicks".tr),
          margin: EdgeInsets.only(top: 10),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: selfServices.map((v) {
                      return IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Center(
                          child: SvgPicture.asset(v['icon'], width: 50),
                        ),
                        onPressed: () => {
                          eventBus.emit(Events.NAVIGATE.name, v['path'])
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
