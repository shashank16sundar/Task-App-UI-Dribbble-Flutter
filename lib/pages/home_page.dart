import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';
import 'package:task_app_dribbble/widgets/curved_horizontal_widget.dart';
import 'package:task_app_dribbble/widgets/curved_vertical_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            )
          ],
        ),
      ),
    );
  }
}
