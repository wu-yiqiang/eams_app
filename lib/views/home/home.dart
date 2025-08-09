import 'package:eams_app/views/home/hot-services.dart';
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "EAMS",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
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
              Row(children: [Text("热门精选")]),
              HotServicePage(),
            ],
          ),
        ),
      ),
    );
  }
}
