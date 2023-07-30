import 'package:flutter/material.dart';

class AppStyles1 {
  static Color bgColor = const Color.fromARGB(255, 19, 19, 19);
  static Color largeTextColor = Colors.white;
  static Color greyTextColor = const Color(0xff86A3B8);
  static Color lightBgColor = const Color(0xff212529);
}

class LargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const LargeText({
    super.key,
    this.size = 35,
    required this.text,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MediumText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final FontWeight weight;

  const MediumText({
    super.key,
    this.size = 17,
    required this.text,
    this.color = const Color(0xff86A3B8),
    this.weight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
