import "package:eams/views/admin/assets/equipment/equipment.dart";
import "package:eams/views/admin/assets/repair/repair.dart";
import "package:eams/views/admin/assets/vehicle/vehicle.dart";
import "package:eams/views/home/charge/charge.dart";
import "package:eams/views/home/credit/credit.dart";
import "package:eams/views/home/park/park.dart";
import "package:eams/views/home/paypal/paypal.dart";
import "package:eams/views/portal/attendance/attendance.dart";
import "package:eams/views/portal/business-trip/business-trip.dart";
import "package:eams/views/portal/contract/contract.dart";
import "package:eams/views/portal/field-work/field-work.dart";
import "package:eams/views/portal/holiday/holiday.dart";
import "package:eams/views/portal/overwork/overwork.dart";
import "package:eams/views/portal/punish/punish.dart";
import "package:eams/views/portal/reward/reward.dart";
import "package:eams/views/portal/salary-adjust/salary-adjust.dart";
import "package:eams/views/portal/todo/todoDetail.dart";
import "package:eams/views/portal/training/course.dart";
import "package:eams/views/portal/training/training.dart";
import "package:eams/views/portal/useds/useds.dart";
import "package:eams/views/user/guide.dart";
import "package:eams/views/user/personnel.dart";
import "package:eams/views/user/policy.dart";
import "package:eams/views/workbench/setting.dart";
import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import 'package:eams/views/tabs/tabs.dart';
import 'package:eams/views/home/home.dart';
import "package:eams/views/login/login.dart";
import "package:eams/views/portal/todo/todo.dart";
import 'package:eams/views/home/menu/menu.dart';

final routerMap = <String, String>{
  "TABS": "/tabs",
  "HOME": "/home",
  "LOGIN": "/login",
  "CONTRACT": '/contract',
  "TODO": '/todo',
  "TODODETAIL": '/todo/detail',
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
  "VEHICLE": '/vehicle',
  "EQUIPMENT": '/equipment',
  "REPAIR": '/repair',
  "POLICY": '/policy',
  "PERSON": '/person',
  "SETTING": '/setting',
  "MENUS": '/menus',
  "PARK": '/park',
  "GUIDE": '/guide',
  "CREDIT": '/credit',
  "CHARGE": '/charge',
  "PAYPAL": '/paypal',
  "COURSE": '/course'
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
    GetPage(
      name: routerMap['VEHICLE']!,
      page: () => beforeRouter(routerMap['VEHICLE']!),
    ),
    GetPage(
      name: routerMap['EQUIPMENT']!,
      page: () => beforeRouter(routerMap['EQUIPMENT']!),
    ),
    GetPage(
      name: routerMap['REPAIR']!,
      page: () => beforeRouter(routerMap['REPAIR']!),
    ),
    GetPage(
      name: routerMap['POLICY']!,
      page: () => beforeRouter(routerMap['POLICY']!),
    ),
    GetPage(
      name: routerMap['PERSON']!,
      page: () => beforeRouter(routerMap['PERSON']!),
    ),
    GetPage(
      name: routerMap['SETTING']!,
      page: () => beforeRouter(routerMap['SETTING']!),
    ),
    GetPage(
      name: routerMap['MENUS']!,
      page: () => beforeRouter(routerMap['MENUS']!),
    ),
    GetPage(
      name: routerMap['PARK']!,
      page: () => beforeRouter(routerMap['PARK']!),
    ),
    GetPage(
      name: routerMap['GUIDE']!,
      page: () => beforeRouter(routerMap['GUIDE']!),
    ),
    GetPage(
      name: routerMap['TODODETAIL']!,
      page: () => beforeRouter(routerMap['TODODETAIL']!),
    ),
    GetPage(
      name: routerMap['CREDIT']!,
      page: () => beforeRouter(routerMap['CREDIT']!),
    ),
    GetPage(
      name: routerMap['CHARGE']!,
      page: () => beforeRouter(routerMap['CHARGE']!),
    ),
    GetPage(
      name: routerMap['PAYPAL']!,
      page: () => beforeRouter(routerMap['PAYPAL']!),
    ),
    GetPage(
      name: routerMap['COURSE']!,
      page: () => beforeRouter(routerMap['COURSE']!),
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
  if (pageName == routerMap['VEHICLE']!) return VehiclePage();
  if (pageName == routerMap['EQUIPMENT']!) return EquipmentPage();
  if (pageName == routerMap['REPAIR']!) return RepairPage();
  if (pageName == routerMap['POLICY']!) return PolicyPage();
  if (pageName == routerMap['PERSON']!) return PersonPage();
  if (pageName == routerMap['SETTING']!) return SettingPage();
  if (pageName == routerMap['MENUS']!) return MenuPage();
  if (pageName == routerMap['PARK']!) return ParkPage();
  if (pageName == routerMap['GUIDE']!) return GuidePage();
  if (pageName == routerMap['TODODETAIL']!) return TodoDetailPage();
  if (pageName == routerMap['CREDIT']!) return CreditPage();
  if (pageName == routerMap['CHARGE']!) return ChargePage();
  if (pageName == routerMap['PAYPAL']!) return PaypalPage();
  if (pageName == routerMap['COURSE']!) return CoursePage();
  return HomePage();
}
