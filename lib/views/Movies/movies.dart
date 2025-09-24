import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:ehse/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ehse/pages/Movies/program.dart';
import 'package:ehse/pages/Movies/videoLists.dart';

class MoviesPage extends StatelessWidget {
  MoviesController moviesController = Get.put(MoviesController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text("顶部搜索栏"),
        Container(
          padding: EdgeInsets.all(10.0),
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Text("占位"),
          ),
        ),
      ],
    );
  }
}
