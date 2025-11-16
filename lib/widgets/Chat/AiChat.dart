import 'package:eams/common/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AiChat extends StatefulWidget {
  AiChat({super.key, required this.item});
  final Map item;
  State<AiChat> createState() => _AiChat();
}

class _AiChat extends State<AiChat> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      spacing: 10,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(widget.item['avatar']),
            backgroundColor: whiteColor,
          ),
        ),
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  widget.item['time'],
                  style: TextStyle(fontSize: 14, color: greyColor2),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryTheme,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.item['text'],
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(child: null,),
        )
      ],
    );
  }
}
