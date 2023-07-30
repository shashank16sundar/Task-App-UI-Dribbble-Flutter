import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';

class OngoingWidget extends StatelessWidget {
  final String importanceLevel;
  final int completedPercent;
  final String title;
  final String startTime;
  final String endTime;
  final String dueMonth;
  final int dueDate;

  const OngoingWidget({
    super.key,
    required this.importanceLevel,
    required this.completedPercent,
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.dueMonth,
    required this.dueDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppStyles1.lightBgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffbc6c25),
                ),
                child: Center(
                  child: MediumText(
                    text: importanceLevel,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
              MediumText(text: '$completedPercent%')
            ],
          ),
          const SizedBox(height: 10),
          LargeText(
            text: title,
            size: 20,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.clock,
                color: AppStyles1.greyTextColor,
              ),
              const SizedBox(width: 10),
              MediumText(
                text: '$startTime - $endTime',
                size: 18,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              MediumText(text: 'Due Date : $dueMonth $dueDate'),
              Expanded(child: Container()),
              FaIcon(
                FontAwesomeIcons.person,
                color: AppStyles1.greyTextColor,
              ),
              FaIcon(
                FontAwesomeIcons.person,
                color: AppStyles1.greyTextColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
