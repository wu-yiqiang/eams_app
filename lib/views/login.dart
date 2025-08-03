import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/tabs/tabs.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "帐号",
                            hintText: "帐号",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
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
              ),
            ),
            Container(
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.blue,
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
                        Colors.blue,
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
                    onPressed: () {
                      Get.to(Home());
                    },
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
