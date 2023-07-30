import 'package:flutter/material.dart';
import 'package:task_app_dribbble/utils/app_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles1.bgColor,
      body: const Center(
        child: LargeText(
          text: "My Profile",
        ),
      ),
    );
  }
}
