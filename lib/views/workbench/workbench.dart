import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkbenchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      Tab(text: '资产管理'),
      Tab(text: '人员管理'),
      Tab(text: '废物管理'),
      Tab(text: '请假管理'),
    ];
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menus"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            IconButton(onPressed: () {}, icon: Icon(Icons.update)),
          ],
          bottom: TabBar(tabs: myTabs),
        ),
        body: SafeArea(
          child: TabBarView(
            children: <Widget>[
              Center(child: Text('Tab 1')),
              Center(child: Text('Tab 2')),
              Center(child: Text('Tab 3')),
              Center(child: Text('Tab 4')),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(bottom: TabBar(tabs: myTabs)),
    //   body: SafeArea(
    //     child: TabBarView(
    //       children: <Widget>[
    //         Center(child: Text('Tab 1')),
    //         Center(child: Text('Tab 2')),
    //         Center(child: Text('Tab 3')),
    //       ],
    //     ),
    //   ),
    // );
  }
}
