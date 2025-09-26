import 'package:get/get.dart';

class CreditController extends GetxController {
  RxBool visible = false.obs;
  RxDouble credit = 19873434323.45.obs;
  RxList recordLists = [
    {
      "menu": "小葱拌豆腐",
      'location': '1号窗口',
      'price': 4.50,
      'date': '2025-12-23 12:03:24',
    },
    {
      "menu": "辣椒炒肉",
      'location': '1号窗口',
      'price': 8.00,
      'date': '2025-12-22 12:04:30',
    },
    {
      "menu": "酸菜鱼",
      'location': '1号窗口',
      'price': 12.50,
      'date': '2025-12-21 12:09:45',
    },
    {
      "menu": "肉沫茄子",
      'location': '1号窗口',
      'price': 5.00,
      'date': '2025-12-21 08:24:34',
    },
    {
      "menu": "虾滑藕夹",
      'location': '2号窗口',
      'price': 10.50,
      'date': '2025-12-20 17:30:21',
    },
    {
      "menu": "红烧肉",
      'location': '3号窗口',
      'price': 11.00,
      'date': '2025-12-20 12:03:24',
    },
    {
      "menu": "红烧排骨",
      'location': '2号窗口',
      'price': 12.00,
      'date': '2025-12-19 12:07:26',
    },
    {
      "menu": "蒜苔炒肉丝",
      'location': '2号窗口',
      'price': 6.00,
      'date': '2025-12-19 12:00:12',
    },
    {
      "menu": "手撕包菜",
      'location': '1号窗口',
      'price': 3.00,
      'date': '2025-12-19 12:00:30',
    },
    {
      "menu": "鱼香茄子",
      'location': '2号窗口',
      'price': 2.50,
      'date': '2025-12-18 12:00:00',
    },
    {
      "menu": "干煸花菜",
      'location': '3号窗口',
      'price': 3.50,
      'date': '2025-12-17 17:32:32',
    },
    {
      "menu": "口水鸡",
      'location': '2号窗口',
      'price': 8.00,
      'date': '2025-12-17 12:04:04',
    },
    {
      "menu": "干锅土豆片",
      'location': '1号窗口',
      'price': 3.00,
      'date': '2025-02-16 12:23:30',
    },
    {
      "menu": "鸡蛋羹",
      'location': '2号窗口',
      'price': 2.00,
      'date': '2025-01-12 12:04:30',
    },
  ].obs;
  void setVisible(value) {
    visible.value = value;
  }

  void setCredit(value) {
    credit.value = value;
  }
}
