import 'package:eams/common/const.dart';
import 'package:eams/utils/EventBus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({Key? key, required this.item}) : super(key: key);
  final Map item;
  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      icon: Flex(
        spacing: 4,
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(widget.item['icon'], width: 34, height: 34),
          SizedBox(
            child: Text(
              widget.item['label'],
              style: TextStyle(fontSize: 12, color: blackColor, fontWeight: FontWeight.w500 ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      onPressed: () {
        eventBus.emit(Events.NAVIGATE.name, widget.item['path']!);
      },
    );
  }
}
