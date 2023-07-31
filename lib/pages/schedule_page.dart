import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';
import 'package:task_app_dribbble/widgets/calendar_widget.dart';
import 'package:task_app_dribbble/widgets/daily_schedule.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles1.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 160,
                    height: 50,
                    //color: Colors.yellow,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const MediumText(
                          text: 'July 2023',
                          color: Colors.white,
                          size: 23,
                        ),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: AppStyles1.greyTextColor,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppStyles1.lightBgColor,
                      border: Border.all(
                        width: 1.0,
                        color: AppStyles1.greyTextColor,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icons.checklist_rounded,
                      color: AppStyles1.greyTextColor,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppStyles1.lightIconColor,
                      border: Border.all(
                        width: 1.0,
                        color: AppStyles1.greyTextColor,
                      ),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icons.auto_awesome_mosaic_rounded,
                      color: AppStyles1.bgColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const CalendarCreator(),
            Divider(
              height: 30,
              color: AppStyles1.lightBgColor,
              thickness: 2.5,
            ),
            const SizedBox(height: 30),
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                child: ListView(
                  children: List.generate(
                    3,
                    (index) => const Column(
                      children: [
                        DailySchedule(),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
