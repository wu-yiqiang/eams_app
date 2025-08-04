import 'package:eams_app/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/tabs/tabs.dart';
import 'package:eams_app/binding.dart';
void main() {
  runApp(
    GetMaterialApp(
      initialRoute: "/tabs",
      getPages: AppPages.pages,
      initialBinding: AllControllerBinding(),
    ),
  );
}
