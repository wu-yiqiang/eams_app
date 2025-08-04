import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
