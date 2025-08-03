import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/login.dart';
void main() {
  runApp(GetMaterialApp(home: App(),),);
}

class App extends StatelessWidget {
    var times=124445.obs;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(child: Obx(() => Text(times.value.toString(), style: TextStyle(fontSize: 20),)),),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.to(Login());
        }, child: Icon(Icons.add),),
      );
    }
}

