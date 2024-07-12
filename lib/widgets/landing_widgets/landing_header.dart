import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/images_name.dart';

class LandingHeader extends StatelessWidget {
  const LandingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(logo, height: mediaQuery.height * 0.2, width: 200),
        const Text(
          'ITI Quiz App',
          style: TextStyle(
            fontFamily: 'TitilliumWeb',
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
          ),
        ),
        const Text(
          'we are creative, enjoy your app',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: sideTextColor,
            fontFamily: 'TitilliumWeb',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
