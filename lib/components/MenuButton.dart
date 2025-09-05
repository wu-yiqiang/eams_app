import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


class MenuButton extends StatefulWidget {
  const MenuButton({Key? key,required this.item}) : super(key: key);
  final Map item;
  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Column(
        spacing: 4,
        children: [
          SvgPicture.asset(widget.item['icon'], width: 34, height: 34),
          SizedBox(child: Text(widget.item['label'], style: TextStyle(fontSize: 12))),
        ],
      ),
      onPressed: () {
        Get.toNamed(widget.item['path']);
      },
    );
  }
}