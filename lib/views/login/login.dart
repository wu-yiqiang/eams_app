import 'package:eams/common/const.dart';
import 'package:eams/router/routers.dart';
import 'package:eams/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams/views/login/controller/login_controller.dart';
import 'package:eams/api/user.dart';
import 'package:eams/views/tabs/controller/tab_controller.dart';

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
                    spacing: 14,
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
                            labelText: "account".tr,
                            hintText: "account".tr,
                            prefixIcon: Icon(Icons.person),
                            contentPadding: EdgeInsets.all(14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              borderSide: BorderSide(width: 2.0),
                              
                            ),
                          ),
                        ),
                      ),
                      Obx(() {
                        return Container(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            initialValue:
                                loginController.LoginForm.value['password']!,

                            onChanged: (value) {
                              loginController.setLoginForm('password', value);
                            },
                            decoration: InputDecoration(
                              labelText: "password".tr,
                              hintText: "password".tr,
                              prefixIcon: Icon(Icons.lock),
                              contentPadding: EdgeInsets.all(14),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                borderSide: BorderSide(width: 2.0),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  loginController.hiddle.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  loginController.hiddle.value =
                                      !loginController.hiddle.value;
                                },
                              ),
                            ),
                            obscureText: loginController.hiddle.value,
                          ),
                        );
                      }),
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
                        primaryTheme,
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
                    label: Text('register'.tr),
                    onPressed: () {
                      // Get.toNamed(routerMap['TABS']!);
                      // tabsController.setCurrent(0);
                    },
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        primaryTheme,
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
                    label: Text('login'.tr),
                    onPressed: () async {
                      try {
                        final {'data': data} = await UserApi.login(
                          loginController.getLoginForm().value,
                        );
                        Get.snackbar(
                          "loginTipsTitle".tr,
                          "loginTipsMessage".tr,
                          duration: Duration(seconds: 2),
                        );
                        storeSaveMap(userStoreKeys, data);
                        tabsController.setCurrent(0);
                        Get.toNamed(routerMap['TABS']!);
                      } catch (e) {}
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
