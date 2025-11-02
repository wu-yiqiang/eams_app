import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.vertical,
          spacing: 30,
          children: [
            SvgPicture.asset("assets/svg/nodata.svg", width: 100, height: 100),
            Text('noData'.tr, style: TextStyle( fontSize: 20),
            ),
          ],
        ),
    );
  }
}
