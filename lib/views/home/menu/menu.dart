import 'package:eams/api/cookbook.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:eams/views/home/menu/menu_controller.dart';

class MenuPage extends StatelessWidget {
  TodayMenuController menuController = Get.put(TodayMenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("todayMenu".tr)),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Obx(
                () => Swiper(
                  itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        menuController.todayMenus[index]['image']!,
                        fit: BoxFit.fitWidth,
                      ),
                  );
                },
                itemCount: menuController.todayMenus.length,
                itemWidth: 300,
                itemHeight: 450,
                layout: SwiperLayout.STACK,
                  onIndexChanged: (value) => {menuController.setIndex(value)},
                // control: SwiperControl(),
              ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Obx(
                    () => Text(
                      "${menuController.todayMenus.length > 0 ? menuController.todayMenus[menuController.currentIndex.value]!['name']! : null}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      "${menuController.todayMenus.length > 0 ? menuController.todayMenus[menuController.currentIndex.value]['description'] : null}",
                      style: TextStyle(fontSize: 14),
                    ),
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
