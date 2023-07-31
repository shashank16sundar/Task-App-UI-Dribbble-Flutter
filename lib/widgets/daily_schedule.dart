import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';
import 'package:task_app_dribbble/widgets/individual_date.dart';

class DailySchedule extends StatelessWidget {
  const DailySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: double.maxFinite,
      height: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Expanded(child: Container()),
              const IndividualDate(selectedDate: 15, index: 10),
              Expanded(child: Container()),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MediumText(text: '10:00 - 19:00'),
              const SizedBox(height: 15),
              Expanded(
                flex: 2,
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: const BoxDecoration(
                    color: Colors.white12,
                    image: DecorationImage(
                      image: AssetImage('img/more-diagonals.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MediumText(
                        text: '10:00 - 16:00',
                        size: 14,
                      ),
                      LargeText(
                        text: 'Salon App Wireframe',
                        size: 15,
                      ),
                      Icon(
                        Icons.people_alt_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 2,
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: const BoxDecoration(
                    color: Colors.white12,
                    image: DecorationImage(
                      image: AssetImage('img/more-diagonals.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MediumText(
                        text: '12:00 - 19:00',
                        size: 14,
                      ),
                      LargeText(
                        text: 'Website App Wireframe',
                        size: 15,
                      ),
                      Icon(
                        Icons.people_outline,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 0,
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/more-diagonals.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MediumText(text: 'Break'),
                      LargeText(
                        text: '13:00 - 14:00',
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
