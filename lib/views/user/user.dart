import 'package:eams/common/const.dart';
import 'package:eams/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:eams/views/user/controller/app_setting_controller.dart';

class UserPage extends StatelessWidget {
  AppSettingController appSettingController = Get.put(AppSettingController());
  final items = [
    {
      "icon": 'person',
      "label": 'personnelCenter'.tr,
      "path": routerMap['PERSON'],
    },
    {"icon": 'setting', "label": '偏好设置', "path": routerMap['SETTING']},
    {"icon": 'setting', "label": '隐私协议', "path": routerMap['POLICY']},
    {"icon": 'explore', "label": '操作指引', "path": routerMap['GUIDE']},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    color: orangeThemeOpcity,
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              "assets/images/user.jpg",
                            ),
                          ),
                        ),
                        Text(
                          appSettingController.getAppSystemKeyValue('name'),
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: Column(
                children: items.map((item) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(item['path']!);
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
                              color: const Color.fromARGB(200, 255, 255, 255),
                            ),
                            child: Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6),
                                  child: Row(
                                    spacing: 4,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/${item['icon']!}.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      Text(item['label']!),
                                    ],
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_right),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(routerMap['LOGIN']!);
                      },
                      child: Text("退出登录"),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          orangeTheme,
                        ), // 按扭背景颜色
                        foregroundColor: WidgetStateProperty.all(
                          Colors.white,
                        ), // 按钮文本颜色
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ), // 圆角
                      ),
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
