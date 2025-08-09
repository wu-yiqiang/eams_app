import "package:eams_app/views/attendance/attendance.dart";
import "package:eams_app/views/business-trip/business-trip.dart";
import "package:eams_app/views/contract/contract.dart";
import "package:eams_app/views/field-work/field-work.dart";
import "package:eams_app/views/holiday/holiday.dart";
import "package:eams_app/views/overwork/overwork.dart";
import "package:eams_app/views/punish/punish.dart";
import "package:eams_app/views/reward/reward.dart";
import "package:eams_app/views/salary-adjust/salary-adjust.dart";
import "package:eams_app/views/training/training.dart";
import "package:eams_app/views/useds/useds.dart";
import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import 'package:eams_app/views/tabs/tabs.dart';
import 'package:eams_app/views/home/home.dart';
import "package:eams_app/views/login.dart";
import "package:eams_app/views/todo/todo.dart";

final routerMap = <String, String>{
  "TABS": "/tabs",
  "HOME": "/home",
  "LOGIN": "/login",
  "CONTRACT": '/contract',
  "TODO": '/todo',
  "ATTENDANCE": "/attendance",
  "BUSINESSTRIP": '/business-trip',
  "OVERWORK": "/overwork",
  "HOLIDAY": "/holiday",
  "FIELDWORK": "/field-work",
  "TRAINING": '/training',
  "SALARYADJUST": "/salary-adjust",
  "REWARD": '/reward',
  "PUNISH": '/punish',
  "USEDS": '/useds',
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
    GetPage(
      name: routerMap['CONTRACT']!,
      page: () => beforeRouter(routerMap['CONTRACT']!),
    ),
    GetPage(
      name: routerMap['TODO']!,
      page: () => beforeRouter(routerMap['TODO']!),
    ),
    GetPage(
      name: routerMap['ATTENDANCE']!,
      page: () => beforeRouter(routerMap['ATTENDANCE']!),
    ),
    GetPage(
      name: routerMap['BUSINESSTRIP']!,
      page: () => beforeRouter(routerMap['BUSINESSTRIP']!),
    ),
    GetPage(
      name: routerMap['OVERWORK']!,
      page: () => beforeRouter(routerMap['OVERWORK']!),
    ),
    GetPage(
      name: routerMap['HOLIDAY']!,
      page: () => beforeRouter(routerMap['HOLIDAY']!),
    ),
    GetPage(
      name: routerMap['FIELDWORK']!,
      page: () => beforeRouter(routerMap['FIELDWORK']!),
    ),
    GetPage(
      name: routerMap['TRAINING']!,
      page: () => beforeRouter(routerMap['TRAINING']!),
    ),
     GetPage(
      name: routerMap['SALARYADJUST']!,
      page: () => beforeRouter(routerMap['SALARYADJUST']!),
    ),
    GetPage(
      name: routerMap['REWARD']!,
      page: () => beforeRouter(routerMap['REWARD']!),
    ),
    GetPage(
      name: routerMap['PUNISH']!,
      page: () => beforeRouter(routerMap['PUNISH']!),
    ),
    GetPage(
      name: routerMap['USEDS']!,
      page: () => beforeRouter(routerMap['USEDS']!),
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
  if (pageName == routerMap['CONTRACT']!) return ContractPage();
  if (pageName == routerMap['TODO']!) return TodoPage();
  if (pageName == routerMap['ATTENDANCE']!) return AttendancePage();
  if (pageName == routerMap['BUSINESSTRIP']!) return BusinessTripPage();
  if (pageName == routerMap['OVERWORK']!) return OverworkPage();
  if (pageName == routerMap['HOLIDAY']!) return HolidayPage();
  if (pageName == routerMap['FIELDWORK']!) return FieldWorkPage();
  if (pageName == routerMap['TRAINING']!) return TrainingPage();
  if (pageName == routerMap['SALARYADJUST']!) return SalaryAdjustPage();
  if (pageName == routerMap['REWARD']!) return RewardPage();
  if (pageName == routerMap['PUNISH']!) return PunishPage();
  if (pageName == routerMap['USEDS']!) return UsedsPage();
  return HomePage();
}
