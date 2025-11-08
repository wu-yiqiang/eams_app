import 'package:eams/common/const.dart';
import 'package:eams/views/home/hot-services.dart';
import 'package:eams/views/home/notices.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:eams/views/home/self-service.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';

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
        title: Text('home'.tr),
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: greyColor,
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
                        indicatorLayout: PageIndicatorLayout.SCALE,
                        pagination: SwiperPagination(),
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
