import 'package:eams_app/views/user/controller/app_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class SettingPage extends StatelessWidget {
  AppSettingController appSettingController = Get.put(AppSettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("偏好设置")),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                children: [
                  TextButton(
                    child: Text("login".tr),
                    onPressed: () {
                      appSettingController.changeLanguage('zh', 'CN');
                      Get.defaultDialog(
                        title: '',
                        middleText: 'changeSettingTips'.tr,
                        radius: 6,
                        barrierDismissible: false,
                        //确定按钮
                        confirm: TextButton(
                          onPressed: () {
                            //单击后删除弹框
                            Get.back();
                          },
                          child: Text('confirm'.tr),
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text("login".tr),
                    onPressed: () {
                      appSettingController.changeLanguage('en', 'US');
                    },
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
