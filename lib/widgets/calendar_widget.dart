import 'package:flutter/material.dart';
import 'package:task_app_dribbble/widgets/individual_date.dart';

class CalendarCreator extends StatefulWidget {
  const CalendarCreator({super.key});

  @override
  State<CalendarCreator> createState() => _CalendarCreatorState();
}

class _CalendarCreatorState extends State<CalendarCreator> {
  int selectedDate = 0;

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
              child: IndividualDate(
                selectedDate: selectedDate,
                index: index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
