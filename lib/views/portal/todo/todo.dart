import 'package:eams/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("待办事项")),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: TextButton(
                onPressed: () {
                  Get.toNamed(
                    routerMap['TODODETAIL']!,
                    arguments: {"id": "12"},
                  );
                },
                child: Text("待办事项"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
