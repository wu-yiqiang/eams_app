import 'package:eams_app/common/const.dart';
import 'package:eams_app/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
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
                        Text("Sutter", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Column(
                          spacing: 6,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      spacing: 4,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/setting.svg',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Text("个人信息"),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_right),
                                ],
                              ),
                            ),
                            Container(child: Container(child: Text("系统设置"))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
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
