import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("今日菜谱"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  final int inde = index + 1;
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset("assets/images/menus/menu$inde.png"),
                  );
                },
                itemCount: 4,
                itemWidth: 400,
                itemHeight: 600,
                layout: SwiperLayout.STACK,
                // control: SwiperControl(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
