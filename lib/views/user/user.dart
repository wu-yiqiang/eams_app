import 'package:eams/api/user.dart';
import 'package:eams/common/const.dart';
import 'package:eams/router/routers.dart';
import 'package:eams/store/store.dart';
import 'package:eams/utils/EventBus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:eams/views/user/controller/app_setting_controller.dart';

class UserPage extends StatelessWidget {
  AppSettingController appSettingController = Get.put(AppSettingController());
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
                    color: primaryTheme,
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
                          appSettingController.getAppSystemKeyValue(
                            userStoreKeys['NICKNAME']!,
                          ),
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
                color: whiteColor,
              ),
              child: Column(
                children: appSettingController.menusItems.value.map((item) {
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
                                  color: greyColor2,
                                ),
                              ),
                              color: greyColor3,
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
                                      Text(item['label']!.tr),
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
                      onPressed: () async {
                        try {
                          await UserApi.logout();
                         
                        } catch (e) {
                        } finally {
                          storeClearValue(userStoreKeys["TOKEN"]!);
                          eventBus.emit(Events.NAVIGATE.name, routerMap['LOGIN']!,
                          );
                        }
                      },
                      child: Text('logout'.tr),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          primaryTheme,
                        ), // 按扭背景颜色
                        foregroundColor: WidgetStateProperty.all(
                          whiteColor,
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
