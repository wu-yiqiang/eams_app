import 'package:eams/views/home/paypal/paypal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaypalPage extends StatelessWidget {
  PaypalController paypalController = Get.put(PaypalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("充值记录")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 10,
                    children: [
                      ...paypalController.recordLists.map((v) {
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
                                    v['title'],
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
                                    '+¥ ${v['price'].toString()}',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 16,
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
