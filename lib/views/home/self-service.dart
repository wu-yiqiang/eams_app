import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelfServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color.fromARGB(255, 255, 255, 255)),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, //横轴三个子widget
              childAspectRatio: 1.0, //宽高比为1时，子widget
            ),
            children: <Widget>[
              Icon(Icons.ac_unit, size: 40,),
              Icon(Icons.airport_shuttle, size: 40),
              Icon(Icons.all_inclusive, size: 40),
              Icon(Icons.beach_access, size: 40),
              Icon(Icons.cake, size: 40),
              Icon(Icons.free_breakfast, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
