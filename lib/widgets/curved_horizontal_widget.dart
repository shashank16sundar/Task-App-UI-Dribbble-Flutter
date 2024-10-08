import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';

class CurvedHorizontalWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imgUrl;
  final String desc;
  final int tasks;
  final Color bgColor;

  const CurvedHorizontalWidget({
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
      width: double.maxFinite,
      height: height,
      padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(imgUrl),
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LargeText(
                text: desc,
                size: 18,
                color: Colors.black,
              ),
              MediumText(
                text: '$tasks Tasks',
                color: Colors.black54,
                size: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
