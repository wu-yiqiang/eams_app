import 'package:eams_app/views/home/credit/credit_controller.dart';
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
          padding: EdgeInsets.all(10),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(14),
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
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
                            style: TextStyle(color: Colors.white, fontSize: 18),
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
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                  child: Text(
                    "查看历史记录",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
