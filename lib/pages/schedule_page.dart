import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';
import 'package:task_app_dribbble/widgets/calendar_widget.dart';

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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 140,
                    height: 30,
                    //color: Colors.yellow,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const MediumText(
                          text: 'July 2023',
                          color: Colors.white,
                          size: 23,
                        ),
                        Expanded(child: Container()),
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 300,
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  image: DecorationImage(
                    image: AssetImage('img/more-diagonals.png'),
                    fit: BoxFit.cover,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
