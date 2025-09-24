import 'package:get/get.dart';
import 'package:eams/translation/en_US.dart';
import 'package:eams/translation/zh_CN.dart';
class Language extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
    'zh_CN': zh_CN,
    'en_US': en_US,
  };
}