import 'package:eams/router/routers.dart';
import 'package:eams/utils/EventBus.dart';
import 'package:eams/views/portal/training/training_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams/widgets/video_player/video_view.dart';
import 'package:card_swiper/card_swiper.dart';
class TrainingPage extends StatelessWidget {
  TrainingController trainingController = Get.put(TrainingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("培训")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 220,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            final int inde = index + 1;
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(
                                "assets/images/training$inde.png",
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                          itemCount: 4,
                          // pagination: SwiperPagination(),
                          // control: SwiperControl(),
                        ),
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
                      ...trainingController.courses.map((v) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(219, 219, 219, 0.298),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 6,
                                children: [
                                  Image.network(
                                    v['url']!,
                                    fit: BoxFit.fitHeight,
                                    height: 60,
                                  ),
                                  Text(
                                    v['title']!,
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),

                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Text(
                                  "学习",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  eventBus.emit(
                                    Events.NAVIGATE.name,
                                    routerMap['COURSE'] as EventCallback,
                                  );
                                },
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
        )
      ),
    );
  }
}
