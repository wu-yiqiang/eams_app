import 'package:eams_app/views/home/hot-services.dart';
import 'package:eams_app/views/home/notices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:eams_app/views/home/self-service.dart';

class HomePage extends StatelessWidget {
  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
       color: Colors.purple,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          final int inde = index + 1;
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              "assets/images/background$inde.png",
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                        itemCount: 3,
                        pagination: SwiperPagination(),
                        // control: SwiperControl(),
                      ),
                    ),
                  ),
                ],
              ),
              SelfServicePage(),
              HotServicePage(),
              NoticesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
