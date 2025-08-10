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
    return SizedBox(
      child: Expanded(
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
            children: selfServices.map((v) {
              return IconButton(
                icon: Column(
                  spacing: 4,
                  children: [
                    SvgPicture.asset(v['icon'], width: 40, height: 40),
                    SizedBox(
                      child: Text(v['label'], style: TextStyle(fontSize: 14)),
                    ),
                  ],
                ),
                onPressed: () {
                  Get.toNamed(v['path']);
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

