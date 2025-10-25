import 'package:eams/store/store.dart';
import 'package:get/get.dart';
import 'dart:ui';

class AppSettingController extends GetxController {
  void setAppSetting(String key, dynamic value) {
    storeSetValue(key, value);
  }

  dynamic getAppSystemKeyValue(String key) {
    dynamic value = storeGetValue(key);
    if (value == null) return "";
    return storeGetValue(key);
  }

  void changeLanguage(String languageCode, String countryCode) async {
    var locale = Locale(languageCode, countryCode);
    setAppSetting(settingStoreKeys['LANGUAGE']!, languageCode);
    setAppSetting(settingStoreKeys['COUNTRY']!, countryCode);
    Get.updateLocale(locale);
  }
}
