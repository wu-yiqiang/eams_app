import 'package:eams/store/store.dart';
import 'package:eams/views/user/controller/app_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  AppSettingController appSettingController = Get.put(AppSettingController());
  final languageKeys = <String, String>{"zh": "简体中文", "en": "English"};
  @override
  Widget build(BuildContext context) {
    Future<void> changeLanguage() async {
      int? i = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            // title: Text('languageChange'.tr),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Column(
                    children: [
                      RadioListTile<String>(
                        title: Text(languageKeys["zh"]!),
                        value: 'zh',
                        groupValue: appSettingController.getAppSystemKeyValue(
                          settingStoreKeys['LANGUAGE']!,
                        ),
                        onChanged: (String? value) {
                          appSettingController.changeLanguage('zh', 'CN');
                        },
                      ),
                      RadioListTile<String>(
                        title: Text(languageKeys["en"]!),
                        value: 'en',
                        groupValue: appSettingController.getAppSystemKeyValue(
                          settingStoreKeys['LANGUAGE']!,
                        ),
                        onChanged: (String? value) {
                          appSettingController.changeLanguage('en', 'US');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('preferences'.tr)),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsetsGeometry.all(10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      changeLanguage();
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1,
                                  color: const Color.fromARGB(
                                    255,
                                    181,
                                    181,
                                    181,
                                  ),
                                ),
                              ),
                              color: const Color.fromARGB(250, 250, 250, 250),
                            ),
                            child: Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6),
                                  child: Row(
                                    spacing: 4,
                                    children: [Text("language".tr)],
                                  ),
                                ),
                                Text(
                                  languageKeys[appSettingController
                                      .getAppSystemKeyValue(
                                        settingStoreKeys['LANGUAGE']!,
                                      )]!,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
