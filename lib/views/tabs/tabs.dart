import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/tabs/controller/tab_controller.dart';
import 'package:eams_app/views/user/user.dart';
import 'package:eams_app/views/home/home.dart';
import 'package:eams_app/views/workbench/workbench.dart';
import "package:eams_app/common/const.dart";

class TabsPage extends StatelessWidget {
  final TabsController tabsController = Get.put(TabsController());
  final pages = [HomePage(), WorkbenchPage(), UserPage()];
  final barItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "主页",
      activeIcon: Icon(Icons.home, color: orangeTheme),
      backgroundColor: orangeTheme,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.workspaces, color: Colors.black),
      label: "工作台",
      activeIcon: Icon(Icons.workspaces, color: orangeTheme),
      backgroundColor: orangeTheme,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.manage_accounts, color: Colors.black),
      label: "用户",
      activeIcon: Icon(Icons.manage_accounts, color: orangeTheme),
      backgroundColor: orangeTheme,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => pages[tabsController.currentIndex.toInt()]),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: barItems,
          currentIndex: tabsController.currentIndex.toInt(),
          selectedItemColor: orangeTheme,
          onTap: (index) {
            tabsController.setCurrent(index);
          },
        ),
      ),
    );
  }
}
