import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/home/menu/menu_controller.dart';

class MenuPage extends StatelessWidget {
  TodayMenuController menuController = Get.put(TodayMenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("今日菜谱")),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  // final int inde = index + 1;
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      menuController.todayMenus[index]['path']!,
                    ),
                  );
                },
                itemCount: menuController.todayMenus.length,
                itemWidth: 300,
                itemHeight: 450,
                layout: SwiperLayout.STACK,
                onIndexChanged: (value) => {
                  menuController.setIndex(value),
                },
                // control: SwiperControl(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Obx(
                    () => Text(
                      "${menuController.todayMenus[menuController.currentIndex.value]['title']}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      "${menuController.todayMenus[menuController.currentIndex.value]['description']}",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
