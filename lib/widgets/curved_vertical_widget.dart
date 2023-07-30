import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';

class CurvedVerticalWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imgUrl;
  final String desc;
  final int tasks;
  final Color bgColor;

  const CurvedVerticalWidget({
    super.key,
    required this.width,
    required this.height,
    required this.imgUrl,
    required this.desc,
    required this.tasks,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
        boxShadow: [
          BoxShadow(
              color: Colors.white.withAlpha(100),
              spreadRadius: 5.0,
              blurRadius: 10.0,
              offset: const Offset(0.0, 3.0))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(imgUrl),
            width: 60,
            height: 60,
          ),
          const SizedBox(height: 40),
          LargeText(
            text: desc,
            size: 20,
            color: Colors.black,
          ),
          MediumText(
            text: '$tasks Tasks',
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
