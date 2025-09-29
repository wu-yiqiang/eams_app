import 'package:eams/router/routers.dart';
import 'package:eams/views/home/credit/credit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CreditPage extends StatelessWidget {
  CreditController creditController = Get.put(CreditController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("帐户余额")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsetsGeometry.all(14),
                      height: 240,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/credit.png'),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "帐户余额(RMB)",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Obx(
                                () => IconButton(
                                  icon: Icon(
                                    creditController.visible.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  color: Colors.white,
                                  onPressed: () {
                                    if (creditController.visible.value) {
                                      creditController.setVisible(false);
                                    } else {
                                      creditController.setVisible(true);
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Obx(
                                () => Text(
                                  creditController.visible.value
                                      ? creditController.credit.value.toString()
                                      : "******",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 30,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            side: BorderSide(color: Colors.white60, width: 0),
                          ),
                          textStyle: TextStyle(color: Colors.white)
                        ),
                        child: Text(
                          "查看充值记录",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(routerMap['PAYPAL']!);
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        spacing: 30,
                        children: [
                          OutlinedButton(
                            child: Text("充值"),
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all(
                                Colors.white,
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                          OutlinedButton(
                            child: Text("提现"),
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all(
                                Colors.white,
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                          OutlinedButton(
                            child: Text("兑付"),
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all(
                                Colors.white,
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 10,
                    children: [
                      ...creditController.recordLists.map((v) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(219, 219, 219, 0.298),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          height: 64,
                          child: Column(
                            children: [
                              Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    v['menu'],
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        44,
                                        44,
                                        44,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '-¥ ${v['price'].toString()}',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        243,
                                        60,
                                        60,
                                      ),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    v['location'],
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    v['date'],
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        155,
                                        154,
                                        154,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
