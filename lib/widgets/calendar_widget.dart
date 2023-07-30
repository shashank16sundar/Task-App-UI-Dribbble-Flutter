import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';

class CalendarCreator extends StatefulWidget {
  const CalendarCreator({super.key});

  @override
  State<CalendarCreator> createState() => _CalendarCreatorState();
}

class _CalendarCreatorState extends State<CalendarCreator> {
  int selectedDate = 0;

  String dateFinder(int date) {
    if (date % 7 == 1) {
      return "Mon";
    } else if (date % 7 == 2) {
      return "Tue";
    } else if (date % 7 == 3) {
      return "Wed";
    } else if (date % 7 == 4) {
      return "Thu";
    } else if (date % 7 == 5) {
      return "Fri";
    } else if (date % 7 == 6) {
      return "Sat";
    } else {
      return "Sun";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          31,
          (index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  selectedDate = index + 1;
                });
              },
              child: Column(
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
