import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class CreditPage extends StatelessWidget {
  final visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("帐户余额")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                height: 260,
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
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        IconButton(
                          icon: Icon(Icons.visibility),
                          color: Colors.white,
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "123434.34",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
