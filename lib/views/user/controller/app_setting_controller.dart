import 'package:eams/api/user.dart';
import 'package:eams/common/const.dart';
import 'package:eams/store/store.dart';
import 'package:eams/utils/EventBus.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:eams/router/routers.dart';

class AppSettingController extends GetxController {
  final menusItems = [
    {"icon": 'person', "label": 'personal', "path": routerMap['PERSON']},
    {"icon": 'setting', "label": 'preferences', "path": routerMap['SETTING']},
    {"icon": 'privacy', "label": 'privacyPolicy', "path": routerMap['POLICY']},
    {"icon": 'explore', "label": 'operationGuide', "path": routerMap['GUIDE']},
    {
      "icon": 'question',
      "label": 'aiCustomerService',
      "path": routerMap['CUSTOMERSERVICE'],
    },
  ].obs;
  RxBool loading = false.obs;
  RxString questionText = ''.obs;
  RxList answerList = [
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "Hello",
      'time': '2025-08-12 08:01:01',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "你好",
      'time': '2025-08-12 08:01:14',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "你是谁",
      'time': '2025-08-12 08:02:34',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "我是您的人工智能客服，可以为您解答软件使用方面相关问题",
      'time': '2025-08-12 08:02:40',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "今天天气阴，气温零下10摄氏度，请注意防寒保暖",
      'time': '2025-08-12 10:01:33',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "这个APP怎么使用",
      'time': '2025-08-12 11:13:24',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "使用这个APP之前需要先注册帐号，才能登录，登录之后会有个人门户，管理员门户以及个人信息模块",
      'time': '2025-08-12 11:13:30',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "你是属于哪个公司的",
      'time': '2025-08-12 11:13:24',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "我是属于TL公司的",
      'time': '2025-08-12 11:13:25',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "预测今天彩票的中奖号码",
      'time': '2025-08-12 11:13:30',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "不好意思，这个问题涉嫌违规，无法回答",
      'time': '2025-08-12 11:13:32',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "你是来源于Deepseek大模型吗",
      'time': '2025-08-12 11:13:34',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "不是",
      'time': '2025-08-12 11:13:36',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "那你是来源于哪个大模型,那你是来源于哪个大模型,那你是来源于哪个大模型那你是来源于哪个大模型那你是来源于哪个大模型",
      'time': '2025-08-12 11:13:40',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "我是来源于ChatGPT大模型",
      'time': '2025-08-12 11:13:42',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "再见",
      'time': '2025-08-12 11:13:43',
    },
    {
      'avatar': 'assets/images/ai.png',
      'type': 1,
      'text': "拜拜",
      'time': '2025-08-12 11:13:45',
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

  void addQuestions() {
    if (questionText.value.isEmpty || loading.value) return;
    final DateTime dateTime = DateTime.now();
    answerList.add({
      'avatar': 'assets/images/user.jpg',
      'type': ChatType.ME.index,
      'text': questionText.value,
      'time':
          '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}',
    });
    getAnswer(questionText.value);
  }

  void cancelRequest() {
    loading.value = false;
  }

  void getAnswer(String question) async {
    if (loading.value) return;
    loading.value = true;
    try {
      answerList.add({
        'avatar': 'assets/images/ai.png',
        'type': ChatType.AI.index,
        'text': '',
        'time': '',
      });
      Future.delayed(Duration(milliseconds: 5000), () {
        final DateTime dateTime = DateTime.now();
        answerList.removeLast();
        answerList.add({
          'avatar': 'assets/images/ai.png',
          'type': ChatType.AI.index,
          'text': "我是您的AI人工智能助手:" + questionText.value,
          'time':
              '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}',
        });
        loading.value = false;
        eventBus.emit(Events.SCROLLBOTTOM.name);
      });
    } catch (e) {
      loading.value = false;
    }
  }
}
