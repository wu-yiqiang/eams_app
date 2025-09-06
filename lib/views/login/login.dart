import 'package:eams_app/common/const.dart';
import 'package:eams_app/router/routers.dart';
import 'package:eams_app/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/tabs/tabs.dart';
import 'package:eams_app/views/login/controller/login_controller.dart';
import 'package:eams_app/api/user.dart';
import 'package:eams_app/views/tabs/controller/tab_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  final TabsController tabsController = Get.put(TabsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Image.asset("assets/images/logo.png"),
            ),
            Center(
              child: Container(
                width: 400,
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 40,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
                child: Form(
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          initialValue:
                              loginController.LoginForm.value['email']!,
                          onChanged: (value) {
                            loginController.setLoginForm('email', value);
                          },
                          decoration: InputDecoration(
                            labelText: "帐号",
                            hintText: "帐号",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          initialValue:
                              loginController.LoginForm.value['password']!,

                          onChanged: (value) {
                            loginController.setLoginForm('password', value);
                          },
                          decoration: InputDecoration(
                            labelText: "密码",
                            hintText: "密码",
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
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
                    icon: Icon(Icons.login),
                    label: Text("注册"),
                    onPressed: () {},
                  ),
                  ElevatedButton.icon(
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
                    icon: Icon(Icons.login),
                    label: Text("登录"),
                    onPressed: () async {
                      final data = await UserApi.login(
                        loginController.getLoginForm().value,
                      );
                      print("登录数据${data}");
                      Get.toNamed(routerMap['TABS']!);
                      tabsController.setCurrent(0);
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
