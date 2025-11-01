import 'package:eams/components/Empty.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("考勤")),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Empty(),
            )
          ],
        ),
      ),
    );
  }
}
