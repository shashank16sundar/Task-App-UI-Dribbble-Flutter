import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_data.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';

class IndividualDate extends StatelessWidget {
  final int selectedDate;
  final int index;
  const IndividualDate({
    super.key,
    required this.selectedDate,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediumText(
          text: dateFinder(index),
          color: selectedDate == (index + 1)
              ? AppStyles1.lightIconColor
              : AppStyles1.greyTextColor,
          size: 15,
        ),
        const SizedBox(height: 7),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedDate == (index + 1)
                ? AppStyles1.lightIconColor
                : AppStyles1.lightBgColor,
          ),
          child: Center(
            child: MediumText(
              text: (index + 1).toString(),
              color: selectedDate == (index + 1)
                  ? AppStyles1.bgColor
                  : AppStyles1.greyTextColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
