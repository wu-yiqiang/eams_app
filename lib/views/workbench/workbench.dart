import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkbenchPage extends StatelessWidget {
  late TabController _tabController;
  List tabs = ["设备","人员", "已完成"];
  _tabController = TabController(length: tabs.length, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            return Text("sdsd");
          }).toList(),
        ),
      ),
    );
  }
  @override
  void initState() {
    // super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

}
