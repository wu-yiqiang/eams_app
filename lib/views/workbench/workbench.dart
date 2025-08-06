import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkbenchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      Tab(text: '待审批'),
      Tab(text: '审批中'),
      Tab(text: '已审批'),
      Tab(text: '已完成'),
      Tab(text: '11'),
      Tab(text: '221'),
      Tab(text: '781'),
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
              Center(child: Text('萨达')),
              Center(child: Text('萨达111')),
              Center(child: Text('萨达222')),
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
