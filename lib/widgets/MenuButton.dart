import 'package:eams/common/const.dart';
import 'package:eams/utils/EventBus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuButton extends StatefulWidget {
  MenuButton({super.key, required this.item});
  final Map item;
  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    final Map obj = widget.item;
    return IconButton(
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      icon: Flex(
        spacing: 4,
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(obj['icon'], width: 34, height: 34),
          SizedBox(
            child: Text(
              obj['label'],
              style: TextStyle(
                fontSize: 12,
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      onPressed: () {
        eventBus.emit(Events.NAVIGATE.name, obj['path']!);
      },
    );
  }
}
