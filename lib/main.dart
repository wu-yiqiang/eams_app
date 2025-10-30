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
  eventBus.on(Events.LOGIN.name, (arg) {
    print("登录");
  });
  eventBus.on(Events.LOGOUT.name, (arg) {
    Get.toNamed(routerMap['LOGIN']!);
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
      theme: ThemeData(primaryColor: Colors.white),
      builder: EasyLoading.init(),
    ),
  );
}
