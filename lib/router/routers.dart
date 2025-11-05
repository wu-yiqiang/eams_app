import "package:eams/store/store.dart";
import 'package:eams/utils/EventBus.dart';
import "package:eams/views/portal/statistics/statistics.dart";
import 'package:get/get.dart';
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
  "COURSE": '/course',
  "REIMBURSEMENT": "/reimbursement",
  "STATISTICS": "/statistics"
};

abstract class AppPages {
  static final pages = [
    GetPage(
      name: routerMap['TABS']!,
      page: () => TabsPage(),
    ),
    GetPage(
      name: routerMap['HOME']!,
      page: () => HomePage(),
    ),
    GetPage(
      name: routerMap['LOGIN']!,
      page: () => LoginPage(),
    ),
    GetPage(
      name: routerMap['CONTRACT']!,
      page: () => ContractPage(),
    ),
    GetPage(
      name: routerMap['TODO']!,
      page: () => TodoPage(),
    ),
    GetPage(
      name: routerMap['ATTENDANCE']!,
      page: () => AttendancePage(),
    ),
    GetPage(
      name: routerMap['BUSINESSTRIP']!,
      page: () => BusinessTripPage(),
    ),
    GetPage(
      name: routerMap['OVERWORK']!,
      page: () => OverworkPage(),
    ),
    GetPage(
      name: routerMap['HOLIDAY']!,
      page: () => HolidayPage(),
    ),
    GetPage(
      name: routerMap['FIELDWORK']!,
      page: () => FieldWorkPage(),
    ),
    GetPage(
      name: routerMap['TRAINING']!,
      page: () => TrainingPage(),
    ),
    GetPage(
      name: routerMap['SALARYADJUST']!,
      page: () => SalaryAdjustPage(),
    ),
    GetPage(
      name: routerMap['REWARD']!,
      page: () => RewardPage(),
    ),
    GetPage(
      name: routerMap['PUNISH']!,
      page: () => PunishPage(),
    ),
    GetPage(
      name: routerMap['USEDS']!,
      page: () => UsedsPage(),
    ),
    GetPage(
      name: routerMap['VEHICLE']!,
      page: () => VehiclePage(),
    ),
    GetPage(
      name: routerMap['EQUIPMENT']!,
      page: () => EquipmentPage(),
    ),
    GetPage(
      name: routerMap['REPAIR']!,
      page: () => RepairPage(),
    ),
    GetPage(
      name: routerMap['POLICY']!,
      page: () => PolicyPage(),
    ),
    GetPage(
      name: routerMap['PERSON']!,
      page: () => PersonPage(),
    ),
    GetPage(
      name: routerMap['SETTING']!,
      page: () => SettingPage(),
    ),
    GetPage(
      name: routerMap['MENUS']!,
      page: () => MenuPage(),
    ),
    GetPage(
      name: routerMap['PARK']!,
      page: () => ParkPage(),
    ),
    GetPage(
      name: routerMap['GUIDE']!,
      page: () => GuidePage(),
    ),
    GetPage(
      name: routerMap['TODODETAIL']!,
      page: () => TodoDetailPage(),
    ),
    GetPage(
      name: routerMap['CREDIT']!,
      page: () => CreditPage(),
    ),
    GetPage(
      name: routerMap['CHARGE']!,
      page: () => ChargePage(),
    ),
    GetPage(
      name: routerMap['PAYPAL']!,
      page: () => PaypalPage(),
    ),
    GetPage(
      name: routerMap['COURSE']!,
      page: () => CoursePage(),
    ),
    GetPage(
      name: routerMap['REIMBURSEMENT']!,
      page: () => CoursePage(),
    ),
    GetPage(
      name: routerMap['STATISTICS']!,
      page: () => StatisticsPage(),
    ),
  ];
}