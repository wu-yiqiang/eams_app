import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eams/components/video_view.dart';

class TrainingPage extends StatelessWidget {
  final String cover = 'sdsd';
  late String url =
      'https://stream7.iqilu.com/10339/upload_transcode/202002/18/20200218114723HDu3hhxqIT.mp4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("培训")),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: VideoView(url = url, cover: cover),
            ),
          ],
        ),
      ),
    );
  }
}
