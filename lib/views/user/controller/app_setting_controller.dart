import 'package:eams/store/store.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:eams/router/routers.dart';

class AppSettingController extends GetxController {
  final menusItems = [
    {
      "icon": 'person',
      "label": 'personnelCenter',
      "path": routerMap['PERSON'],
    },
    {
      "icon": 'setting',
      "label": 'preferences',
      "path": routerMap['SETTING'],
    },
    {
      "icon": 'setting',
      "label": 'privacyPolicy',
      "path": routerMap['POLICY'],
    },
    {
      "icon": 'explore',
      "label": 'operationGuide',
      "path": routerMap['GUIDE'],
    },
  ].obs;
  void setAppSetting(String key, dynamic value) {
    storeSetValue(key, value);
  }

  dynamic getAppSystemKeyValue(String key) {
    // dynamic value = storeGetValue(key);
    // if (value == null) return "";
    return storeGetValue(key);
  }

  void changeLanguage(String languageCode, String countryCode) async {
    if (languageCode == null) {
      languageCode = "en";
    }
    if (countryCode == null) {
      countryCode = 'US';
    }
    var locale = Locale(languageCode, countryCode);
    setAppSetting(settingStoreKeys['LANGUAGE']!, languageCode);
    setAppSetting(settingStoreKeys['COUNTRY']!, countryCode);
    Get.updateLocale(locale);
  }
}
