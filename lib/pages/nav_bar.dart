import 'package:flutter/material.dart';
import 'package:task_app_dribbble/pages/chat_page.dart';
import 'package:task_app_dribbble/pages/home_page.dart';
import 'package:task_app_dribbble/pages/profile_page.dart';
import 'package:task_app_dribbble/pages/schedule_page.dart';

import '../utils/app_styles.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  List pageRoutes = [
    const HomePage(),
    const SchedulePage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  int currentPage = 0;

  onNavButtonTap(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageRoutes[currentPage],
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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => onNavButtonTap(0),
                child: const Icon(
                  Icons.home_outlined,
                  color: Color(0xfff1faee),
                  size: 30,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => onNavButtonTap(1),
                child: const Icon(
                  Icons.checklist_outlined,
                  color: Color(0xfff1faee),
                  size: 30,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => onNavButtonTap(2),
                child: const Icon(
                  Icons.chat_bubble_outline,
                  color: Color(0xfff1faee),
                  size: 30,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => onNavButtonTap(3),
                child: const Icon(
                  Icons.person_2_outlined,
                  color: Color(0xfff1faee),
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
