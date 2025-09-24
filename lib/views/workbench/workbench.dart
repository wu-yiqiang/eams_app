import 'package:eams/common/const.dart';
import 'package:eams/views/admin/assets/assets.dart';
import 'package:eams/views/admin/assets/vehicle/vehicle.dart';
import 'package:eams/views/admin/employees/personnel/personnel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkbenchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List menus = [
      {'tab': Tab(text: '资产管理'), 'page': AssetsPage()},
      {'tab': Tab(text: '人员管理'), 'page': PersonnelPage()},
      {'tab': Tab(text: '废物管理'), 'page': VehiclePage()},
      {'tab': Tab(text: '请假管理'), 'page': VehiclePage()},
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
          bottom: TabBar(
            tabs: menus.map((menu) {
              return Container(child: menu['tab']);
            }).toList(),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorColor: orangeTheme,
            labelColor: orangeTheme,
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: menus.map((menu) {
              return Container(child: menu['page']);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
