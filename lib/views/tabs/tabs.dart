import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/tabs/controller/tab_controller.dart';
import 'package:eams_app/views/user/user.dart';
import 'package:eams_app/views/home/home.dart';
class Tabs extends StatelessWidget {
  TabsController homeController = Get.put(TabsController());
  final pages = [Home(), User()];
  final barItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "主页",
      activeIcon: Icon(Icons.home, color: Colors.blue),
      backgroundColor: Colors.blue,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.workspaces, color: Colors.black),
      label: "工作台",
      activeIcon: Icon(Icons.workspaces, color: Colors.blue),
      backgroundColor: Colors.blue,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.manage_accounts, color: Colors.black),
      label: "用户",
      activeIcon: Icon(Icons.manage_accounts, color: Colors.blue),
      backgroundColor: Colors.blue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[homeController.currentIndex.toInt()]),
      bottomNavigationBar: BottomNavigationBar(
        items: barItems,
        currentIndex: homeController.currentIndex.toInt(),
        onTap: (index) {
          homeController.setCurrent(index);
        },
      ),
    );
  }
}
