import 'package:eams/common/const.dart';
import 'package:eams/router/routers.dart';
import 'package:eams/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams/binding.dart';
import 'package:eams/translation/translation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:eams/utils/EventBus.dart';

void main() async {
  await GetStorage.init();
  storeInit();
  eventBus.on(Events.NAVIGATE.name, (ROUTERKEY) {
    String token = storeGetValue(userStoreKeys['TOKEN']!);
    if (token == null) {
      Get.toNamed(routerMap['LOGIN']!);
    }
    Get.toNamed(ROUTERKEY!);
  });
  eventBus.on(Events.LOADINGERROR.name, (messages) {
    EasyLoading.showError(
      messages.toString().tr,
      duration: Duration(seconds: 2),
    );
  });
  runApp(
    GetMaterialApp(
      initialRoute: "/tabs",
      getPages: AppPages.pages,
      transitionDuration: Duration(milliseconds: 200),
      locale: Locale(
        storeGetValue(settingStoreKeys['LANGUAGE']!),
        storeGetValue(settingStoreKeys['COUNTRY']!),
      ),
      translations: Language(),
      initialBinding: AllControllerBinding(),
      theme: ThemeData(
        primaryColor: whiteColor,
        scaffoldBackgroundColor: greyColor,
        appBarTheme: AppBarTheme(color: greyColor),
      ),
      builder: EasyLoading.init(),
    ),
  );
}
