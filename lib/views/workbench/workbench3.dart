import 'package:eams/common/const.dart';
import 'package:eams/views/admin/assets/assets.dart';
import 'package:eams/views/admin/assets/vacation/vacation.dart';
import 'package:eams/views/admin/assets/vehicle/vehicle.dart';
import 'package:eams/views/admin/employees/personnel/personnel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkbenchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List menus = [
      {'tab': Tab(text: '资产管理'), 'page': AssetsPage()},
      {'tab': Tab(text: '个人'), 'page': PersonnelPage()},
      {'tab': Tab(text: '车辆'), 'page': VehiclePage()},
      {'tab': Tab(text: '车辆'), 'page': VacationPage()},
    ];
    return DefaultTabController(
      length: menus.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menus"),
          leading: null,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            IconButton(onPressed: () {}, icon: Icon(Icons.update)),
          ],
        ),
        body: SafeArea(
          child: Text("sdsd")
        ),
      ),
    );
  }
}
