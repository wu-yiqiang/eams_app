import 'package:eams_app/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/tabs/tabs.dart';
import 'package:eams_app/binding.dart';
import 'package:eams_app/translation/translation.dart';
void main() {
  runApp(
    GetMaterialApp(
      initialRoute: "/tabs",
      getPages: AppPages.pages,
      transitionDuration: Duration(milliseconds: 200),
      locale: Locale('en', "US"), //设置默认语言
      translations: Language(),
      initialBinding: AllControllerBinding(),
    ),
  );
}
