import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import 'package:eams_app/views/tabs/tabs.dart';
import 'package:eams_app/views/home/home.dart';
import "package:eams_app/views/login.dart";

final routerMap = <String, String>{
  "TABS": "/tabs",
  "HOME": "/home",
  "LOGIN": "/login",
};

abstract class AppPages {
  static final pages = [
    GetPage(
      name: routerMap['TABS']!,
      page: () => beforeRouter(routerMap['TABS']!),
    ),
    GetPage(
      name: routerMap['HOME']!,
      page: () => beforeRouter(routerMap['HOME']!),
    ),
    GetPage(
      name: routerMap['LOGIN']!,
      page: () => beforeRouter(routerMap['LOGIN']!),
    ),
  ];
}

Widget beforeRouter(String pageName) {
  // 路由拦截
  // if (pageName == Routes.USER) {
  //   return LoginPage();
  // }
  if (pageName == routerMap['TABS']!) return TabsPage();
  if (pageName == routerMap['HOME']!) return HomePage();
  if (pageName == routerMap['LOGIN']!) return LoginPage();
  return HomePage();
}
