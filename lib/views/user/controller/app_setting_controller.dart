import 'package:get/get.dart';
import 'dart:ui';

class AppSettingController extends GetxController {
  final appSetting = Rx<Map<String, String>>({'language': '', 'country': '','theme': ''});
  void setAppSetting(String key, String value) {
    appSetting.value[key] = value;
  }

  Rx<Map<String, String>> getAppSystem() {
    return appSetting;
  }

  String? getAppSystemKeyValue(String key) {
    return appSetting.value[key];
  }

  void changeLanguage(String languageCode, String countryCode) async {
    var locale = Locale(languageCode, countryCode);
    setAppSetting('language', languageCode);
    setAppSetting('country', countryCode);
    Get.updateLocale(locale);
  }
}
