import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app_dribbble/utils/app_data.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';
import 'package:task_app_dribbble/widgets/curved_horizontal_widget.dart';
import 'package:task_app_dribbble/widgets/curved_vertical_widget.dart';
import 'package:task_app_dribbble/widgets/ongoing_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedNavIndex = 0;
  late String appBarIconName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles1.bgColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          MediumText(text: 'Howdy '),
                          MediumText(
                            text: 'Shashank 👋',
                            color: Colors.white,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      LargeText(text: 'Manage Your Daily Tasks'),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles1.lightBgColor,
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.bell,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const SizedBox(
              width: double.maxFinite,
              height: 200,
              child: Row(
                children: [
                  CurvedVerticalWidget(
                    width: 140,
                    height: 200,
                    imgUrl: 'img/iphone.png',
                    desc: 'Mobile',
                    tasks: 6,
                    bgColor: Color(0xfff8edeb),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        CurvedHorizontalWidget(
                          width: 150,
                          height: 80,
                          imgUrl: 'img/idea.png',
                          desc: 'Wireframe',
                          tasks: 12,
                          bgColor: Color(0xfff8edeb),
                        ),
                        SizedBox(height: 30),
                        CurvedHorizontalWidget(
                          width: 150,
                          height: 80,
                          imgUrl: 'img/website.png',
                          desc: 'Website',
                          tasks: 5,
                          bgColor: Color(0xfff8edeb),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LargeText(
                  text: 'Ongoing',
                  size: 30,
                ),
                MediumText(
                  text: 'View All',
                  color: Color(0xffffcdb2),
                  size: 18,
                ),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              children: List.generate(
                3,
                (index) {
                  return OngoingWidget(
                    importanceLevel: ongoingWidgetData[index]
                        ["importanceLevel"],
                    completedPercent: ongoingWidgetData[index]
                        ["completedPercent"],
                    title: ongoingWidgetData[index]["title"],
                    startTime: ongoingWidgetData[index]["startTime"],
                    endTime: ongoingWidgetData[index]["endTime"],
                    dueMonth: ongoingWidgetData[index]["dueMonth"],
                    dueDate: ongoingWidgetData[index]["dueDate"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFff1faee),
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: AppStyles1.lightBgColor,
                blurRadius: 10.0,
                spreadRadius: 10,
              )
            ]),
        child: BottomAppBar(
          elevation: 20.0,
          color: AppStyles1.lightBgColor,
          height: 60,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_outlined,
                color: Color(0xfff1faee),
                size: 30,
              ),
              Icon(
                Icons.checklist_outlined,
                color: Color(0xfff1faee),
                size: 30,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.chat_bubble_outline,
                color: Color(0xfff1faee),
                size: 30,
              ),
              Icon(
                Icons.person_2_outlined,
                color: Color(0xfff1faee),
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
