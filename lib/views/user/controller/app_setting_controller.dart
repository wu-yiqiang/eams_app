import 'package:eams/store/store.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:get_storage/get_storage.dart';

class AppSettingController extends GetxController {
  // final settings = <String, String>{
  //   "language": "en",
  //   "country": "US",
  //   "theme": "",
  //   "mode": "",
  // };
  void setAppSetting(String key, String value) {
    setValue(key, value);
  }

  String getAppSystemKeyValue(String key) {
    return getKey(key);
  }

  void changeLanguage(String languageCode, String countryCode) async {
    var locale = Locale(languageCode, countryCode);
    setAppSetting('language', languageCode);
    setAppSetting('country', countryCode);
    Get.updateLocale(locale);
  }
}
