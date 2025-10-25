import 'package:eams/router/routers.dart';
import 'package:eams/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams/binding.dart';
import 'package:eams/translation/translation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


void main() async {
  await GetStorage.init(); // 初始化 GetStorage
  storeInit();
  runApp(
    GetMaterialApp(
      initialRoute: "/tabs",
      getPages: AppPages.pages,
      transitionDuration: Duration(milliseconds: 200),
      locale: Locale('en', "US"), //设置默认语言
      translations: Language(),
      initialBinding: AllControllerBinding(),
      theme: ThemeData(primaryColor: Colors.white),
      builder: EasyLoading.init(),
    ),
  );
}
