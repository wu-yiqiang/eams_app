import 'package:get/get.dart';
import 'dart:ui';
// import 'package:get_storage/get_storage.dart';

class AppSettingController extends GetxController {
  // final appSettingStorage = GetStorage('AppSetting');
  final appSetting = Rx<Map<String, String>>({
    'language': 'en',
    'country': 'US',
    'theme': '',
    'mode': ''
  });
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
    // appSettingStorage.write('appSetting', getAppSystem());
    Get.updateLocale(locale);
  }
}
