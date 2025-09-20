import 'package:eams_app/components/MenuButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams_app/router/routers.dart';


class AssetsPage extends StatelessWidget {
  final List selfServices = [
    {"path": routerMap['EQUIPMENT'], "label": "设备", "icon": "assets/svg/equipment.svg"},
    {
      "path": routerMap['VEHICLE'],
      "label": "车辆",
      "icon": "assets/svg/vehicle.svg",
    },
    {
      "path": routerMap['REPAIR'],
      "label": "维修",
      "icon": "assets/svg/repair.svg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, //横轴三个子widget
              childAspectRatio: 1.0, //宽高比为1时，子widget
            ),
            children: _menus(),
          ),
        ),
        ),
      ]
    );
  }
  List<Widget> _menus() {
    return selfServices.map((item) {
      return MenuButton(item: item);
    }).toList();
  }
}

