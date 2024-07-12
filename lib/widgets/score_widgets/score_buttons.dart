import 'package:flutter/material.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/landing_screen.dart';

import 'package:quiz_app/utils/alert_dialoge.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/globel.dart';

class ScoreButtons extends StatelessWidget {
  const ScoreButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            score = 0;
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoryScreen(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: sideColor[700],
          ),
          child: const Text(
            'Play Again',
            style: TextStyle(
              color: sideTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            showAlertDialog(
              context,
              message: 'Are you sure?',
              title: 'Exit',
              onPressed: () {
                score = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingScreen(),
                  ),
                );
              },
            );
          },
          style: TextButton.styleFrom(backgroundColor: sideTextColor),
          child: const Text(
            'Exit',
            style: TextStyle(
              color: primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
