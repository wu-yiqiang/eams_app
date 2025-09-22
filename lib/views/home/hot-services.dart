import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams_app/router/routers.dart';

class HotServicePage extends StatelessWidget {
  final List selfServices = [
    {
      "path": routerMap['ATTENDANCE'],
      "label": "自主报修",
      "icon": "assets/images/repair.png",
    },
    {
      "path": routerMap['MENUS'],
      "label": "今日菜谱",
      "icon": "assets/images/menu.png",
    },
    {
      "path": routerMap['CHARGE'],
      "label": "电桩情况",
      "icon": "assets/images/pile.png",
    },
    {
      "path": routerMap['PARK'],
      "label": "车位查询",
      "icon": "assets/images/park.png",
    },
    {
      "path": routerMap['CREDIT'],
      "label": "帐户余额",
      "icon": "assets/images/account.png",
    },
    {
      "path": routerMap['ATTENDANCE'],
      "label": "自主申报",
      "icon": "assets/images/report.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(child: Text("热门精选"), margin: EdgeInsets.only(top: 20)),
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
                    spacing: 6,
                    children: selfServices.map((v) {
                      return Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                            image: AssetImage(v['icon']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: TextButton(
                          child: Text(''),
                          onPressed: () => {Get.toNamed(v['path'])},
                        ),
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
